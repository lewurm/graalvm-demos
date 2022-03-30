This is a modified version of https://github.com/graalvm/graalvm-demos

## Steps

Download GraalVM at https://www.graalvm.org/

Set `JAVA_HOME` and `PATH` accordingly:

```sh
$ export JAVA_HOME=$path_to_unpacked_graalvm
$ export PATH=$JAVA_HOME/bin:$PATH
```

download and prepare additional artifacts

```sh
$ gu install python ruby native-image nodejs
$ gu rebuild-images libpolyglot
```

and then have a look at `run.sh`.
