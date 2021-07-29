import sys

def handler(event, context):
    return f"Hello from containerized lambda! {sys.version}"