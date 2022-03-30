#!/bin/bash
set -e

export JAVA_HOME=/Users/lewurm/tu/graalvm-ce-java17-22.0.0.2/Contents/Home/
export PATH=$JAVA_HOME/bin:/usr/local/homebrew/bin:$PATH


####################
cd jvm/hello

vim src/main/java/hello/HelloController.java

./gradle build

$JAVA_HOME/bin/java -jar build/libs/hello-0.1-all.jar

java -jar -XX:+PrintCompilation build/libs/hello-0.1-all.jar

java -jar -Dgraal.PrintCompilation=true build/libs/hello-0.1-all.jar

native-image -jar build/libs/hello-0.1-all.jar

file hello-0.1-all_done

./hello-0.1-all_done


cd ..
#################### 
cd poly
node --version

graalpython

node --jvm --polyglot server.js

node --jvm --polyglot --engine.TraceCompilation server.js

node --native --polyglot server.js

node --native --polyglot --inspect.Path=demo server.js

