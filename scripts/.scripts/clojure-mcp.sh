#!/usr/bin/env bash

export JAVA_HOME="/opt/homebrew/opt/sdkman-cli/libexec/candidates/java/17.0.15-tem"
export PATH="$JAVA_HOME/bin:$PATH"

exec clojure -X:mcp
