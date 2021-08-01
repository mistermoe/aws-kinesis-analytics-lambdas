import sys

def handler(event, context):
    return f"Hello from zops-reader! {sys.version}"