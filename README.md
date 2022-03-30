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

lookout for the following node

```sh
IMPORTANT NOTE:
---------------
The Ruby openssl C extension needs to be recompiled on your system to work with the installed libssl.
First, make sure TruffleRuby's dependencies are installed, which are described at:
  https://github.com/oracle/truffleruby/blob/master/README.md#dependencies
Then run the following command:
        $path_to_unpacked_graalvm/languages/ruby/lib/truffle/post_install_hook.sh
```

and then have a look at `run.sh`.
