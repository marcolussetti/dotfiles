#!/usr/bin/env python3

import argparse
import os
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument("search_path")
parser.add_argument("search_string")
parser.add_argument("target_path")

args = parser.parse_args()

search_path = args.search_path
target_path = args.target_path
search_string = args.search_string

print(f"Searching for `{search_string}` in `{search_path}`. Will link to `{target_path}`")

if not os.path.exists(target_path):
    os.makedirs(target_path)

for item in Path(search_path).glob(f"**/*{search_string}*"):
    # print(item)
    if item.is_file():
        target = f"{target_path}/{item.name}"
        if os.path.exists(target):
            # print(f"Target already exists for {item.name}")
            pass
        else:
            os.symlink(item, target)
            print(f"Linked {item}->{target}")
