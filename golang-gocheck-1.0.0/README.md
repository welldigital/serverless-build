# gocheck

A docker container for running static security analysis tools against Go code during CI builds.

## Example

Get the `github.com/golang-migrate/migrate` package:

```bash
go get -u github.com/golang-migrate/migrate/...
```

Run various tools against the package inside the Docker container with:

```
bash run.sh
```

The `gocheck.sh` runs the tools:

```bash
# Look for problems in the code. This tool is directory based and checks all subdirectories.
# https://golang.org/cmd/vet/
go tool vet /go/src/github.com/golang-migrate/migrate
# Look for stylistic issues. This tool is package based.
# http://github.com/golang/lint
golint github.com/golang-migrate/migrate/...
# Look for SQL injection vulnerabilities. This tool requires a main() entrypoint as the input package.
# https://github.com/stripe/safesql
safesql github.com/golang-migrate/migrate/cmd/migrate
# Check for security problems. This tool is package based.
# https://github.com/securego/gosec
gosec github.com/golang-migrate/migrate/...
```

## Usage

Create a gocheck.sh file run the tools against your packages instead of the defaults (see `gocheck.sh`).

Run the tool inside Docker.

```bash
docker run --rm -v `pwd`/gocheck/:/gocheck -v ~/go/src/:/go/src welldigital/gocheck:latest
```

This command line:

* Runs the latest version of the welldigital/gocheck container.
* Mounts your `goheck.sh` file into the Docker container (assumes that you're using bash to get the current working directory with the `pwd` command) with the `-v` option.
* Mounts all of your Go code into the Docker container (assumes that your Go code is at ~/go/src) with the `-v` option.
* Removes the Docker container when it's finished running (`--rm`).
* Executes the `gocheck.sh` file inside the Docker container.

## Building

To rebuild the Docker container.

```bash
make build
```