#!/usr/bin/env python

"""The script collects scores' meta and sends it to the server.

Needs PUBLISH_TOKEN environment variable to be set.
"""

import argparse
import operator
import os
import subprocess
import sys

import requests


SUPPORTED_HEADER_FIELDS = [
    'arranger', 'composer', 'instruments', 'title',
]


def main() -> None:
    """Scan for directories with scores, make JSON and send request."""
    parser = argparse.ArgumentParser()
    parser.add_argument('url')
    args = parser.parse_args()

    scores: list = []

    with os.scandir() as dir_entries:
        for entry in dir_entries:
            if entry.is_dir() and entry.name[0].isalpha():
                scores.append(parse_score(entry.name))

    headers = {'Authorization': 'Token {}'.format(os.getenv('PUBLISH_TOKEN'))}

    response = requests.post(args.url, headers=headers, json=scores)

    if response.status_code == 200:
        print(response.content.decode())
    else:
        print(f'Code {response.status_code}: {response.content}')
        sys.exit(1)


def parse_score(score_slug: str) -> dict:
    """Parses header, retrieves timestamp, and returns JSON."""

    score = {
        'slug': score_slug,
        'timestamp': retrieve_timestamp_of_score(score_slug),
        **parse_lilypond_header(score_slug),
    }

    return score


def retrieve_timestamp_of_score(score_slug: str) -> str:
    """Returns score's timestamp based on git commit."""
    git_command_to_get_timestamp = [
        'git', 'log', '--max-count', '1', '--format=format:%cI',
        score_slug,
    ]

    return subprocess.check_output(git_command_to_get_timestamp).decode()


def parse_lilypond_header(score_slug: str) -> dict:
    """Returns dict with score's meta retrieved from LilyPond header."""

    header = {}

    with open(f"{score_slug}/{score_slug}.ly") as ly_file:
        reading_header = False

        for line in ly_file:  # pylint: disable=too-many-nested-blocks
            if reading_header:
                if '=' in line:
                    field, value = map(
                        operator.methodcaller('strip'), line.split('='))

                    if len(field) > 0 and len(value) > 0:
                        if '"' in value:
                            value = value.strip('"')

                        if len(value) > 0:
                            field = field.lower()

                            if field in SUPPORTED_HEADER_FIELDS:
                                header[field] = value

                if '}' in line:
                    reading_header = False
                    break
            elif r'\header' in line:
                reading_header = True

    return header


if __name__ == '__main__':
    main()
