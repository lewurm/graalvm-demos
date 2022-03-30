#!/usr/bin/env bash

set -ex

# $JAVA_HOME/bin/node --engine.TraceCompilation --jvm --polyglot server.js
$JAVA_HOME/bin/node --jvm --polyglot server.js
# $JAVA_HOME/bin/node --native --polyglot server.js
