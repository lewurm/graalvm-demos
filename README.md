# Demos @ Uebersetzerbau VO SS2025 at TU Wien

This is an adapted version of https://github.com/graalvm/graalvm-demos and https://github.com/graalvm/graal-languages-demos

## Initial Setup

Download GraalVM at
- Community Edition: https://github.com/graalvm/graalvm-ce-builds/releases/
- Oracle GraalVM: https://www.graalvm.org/

Set `JAVA_HOME` and `PATH` accordingly:

```sh
$ export JAVA_HOME=$PATH_TO_UNPACKED_GRAALVM
$ export PATH=$JAVA_HOME/bin:$PATH
```

```sh
#!/bin/bash
set -e

export JAVA_HOME=/Users/lewurm/tuwien/graalvm-community-openjdk-24+36.1/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH
```

## GraalVM with JIT

Run Micronaut example on GraalVM with JIT:
```sh
$ cd jvm/hello
$ vim src/main/java/hello/HelloController.java

$ ./mvnw -q package
$ java -jar target/default-0.1.jar
$ java -jar -XX:+PrintCompilation build/libs/hello-0.1-all.jar

$ # check browser on http://localhost:8080/hello
```

## GraalVM with Native Image

Build Micronaut app with Native Image:
```sh
$ cd jvm/hello
$ ./mvnw -q clean
$ ./mvnw -q package -Dpackaging=native-image
$ file target/default
$ ./target/default

$ # check browser on http://localhost:8080/hello
```

## Embed GraalPy

Run Micronaut app that embeds GraalPy to use `pygal` package to render a chart:
```sh
$ cd embed
$ ./mvnw -q package mn:run

$ # check browser on http://localhost:8080/java
$ # check browser on http://localhost:8080/python
$ # check browser on http://localhost:8080/mixed
```
