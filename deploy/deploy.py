def str_to_felt(text):
    b_text = bytes(text, "ascii")
    return int.from_bytes(b_text, "big")

"""deploy contract in starknet """
from ctypes import util
import os
import json
import asyncio

from .. import hex_to_felt

print(str_to_felt("kio"))
print(str_to_felt("o"))
print(hex_to_felt(0x4be820949abaa49aed57dda04149958475a56004dc49a7f076f1d32d88495c7))
