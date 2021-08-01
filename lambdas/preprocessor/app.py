import sys

def handler(event, context):
    return f"Hello from preprocessor! {sys.version}"