How you can run?

# First Step:

## Build the Dockerfile with:

```sh
 docker build -t v8 .
```

# Second step: 
## We need to give some priviligies to our container to run the LLDB.

```sh
docker run --privileged --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -it v8
```

# Third step: 

## Enter in:

```sh
 cd out/x64.debug
```
## And after, you run:

```sh
 lldb ./d8 yourArchive.js
```

# Four and last step

## To set breakpoints, you type:

```sh
 b ParseIfStatement(Or the function that you want to debug)
```

## To run, you type:

```sh
 run
```

## To stop the debug, you type:

```sh
 c
```

Enjoy ;)