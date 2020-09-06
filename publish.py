import collections
import json
import os
import subprocess


def main() -> None:
    scores: list = []

    with os.scandir() as dir_entries:
        for entry in dir_entries:
            if entry.is_dir() and entry.name[0].isalpha():
                scores.append(parse_score(entry.name))

    print(json.dumps(scores, indent=4))


def parse_score(score_slug: str) -> collections.defaultdict:
    """Parses header, retrieves timestamp, and returns JSON."""

    score = collections.defaultdict(str)

    score['slug'] = score_slug
    score['timestamp'] = retrieve_timestamp_of_score(score_slug)

    return score


def retrieve_timestamp_of_score(score_slug: str) -> str:
    """Returns score's timestamp based on git commit."""
    git_command_to_get_timestamp = [
        'git', 'log', '--max-count', '1', '--format=format:%cI',
        score_slug,
    ]

    return subprocess.check_output(git_command_to_get_timestamp).decode()


if __name__ == '__main__':
    main()
