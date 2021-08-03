import sys

def handler(event, context):
    return f"Hello from preprocessor2! {sys.version}"