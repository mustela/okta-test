#!/bin/bash
# Docker entrypoint script.

bin="/app/bin/okta_test"

# start the elixir application
exec "$bin" "start"