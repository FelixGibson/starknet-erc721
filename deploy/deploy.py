def str_to_felt(text):
    b_text = bytes(text, "ascii")
    return int.from_bytes(b_text, "big")

"""deploy contract in starknet """
import os
import json
import asyncio

print(str_to_felt("kio"))
print(str_to_felt("o"))
print("0x59e68dff84da40431e1be0b43ec655ff03b910651293cbbe5b037d5248ba155")
print(str_to_felt("0x59e68dff84da40431e1be0b43ec655ff03b910651293cbbe5b037d5248ba155"));
