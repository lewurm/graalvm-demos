## Demo @ Uebersetzerbau VO SS2022 at TU Wien

This is an adapted version of https://github.com/graalvm/graalvm-demos

## Steps

Download GraalVM at https://www.graalvm.org/

Set `JAVA_HOME` and `PATH` accordingly:

```sh
$ export JAVA_HOME=$PATH_TO_UNPACKED_GRAALVM
$ export PATH=$JAVA_HOME/bin:$PATH
```


Download and prepare additional artifacts:

```sh
$ gu install python ruby native-image nodejs
$ gu rebuild-images libpolyglot
```

Lookout for the following note:

```sh
IMPORTANT NOTE:
---------------
The Ruby openssl C extension needs to be recompiled on your system to work with the installed libssl.
First, make sure TruffleRuby's dependencies are installed, which are described at:
  https://github.com/oracle/truffleruby/blob/master/README.md#dependencies
Then run the following command:
        $JAVA_HOME/languages/ruby/lib/truffle/post_install_hook.sh
```

Install language dependencies for polyglot example:
```sh
$ gem install svg-graph
$ (cd poly && npm install)
```

And then have a look at `run.sh`.
