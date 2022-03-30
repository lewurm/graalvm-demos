This is a modified version of https://github.com/graalvm/graalvm-demos

## Steps

Download GraalVM at https://www.graalvm.org/

Set `JAVA_HOME` and `PATH` accordingly:

```sh
$ export JAVA_HOME=$path_to_unpacked_graalvm
$ export PATH=$JAVA_HOME/bin:$PATH
```

Install remaining modules and trigger rebuild of images:
```sh
$ gu install native-image ruby python nodejs
$ JAVA_HOME/languages/ruby/lib/truffle/post_install_hook.sh
$ gu rebuild-images polyglot libpolyglot
```

Install language dependencies for polyglot example:
```sh
$ gem install svg-graph
$ (cd poly && npm install)
```

Then have a look at `run.sh`.
