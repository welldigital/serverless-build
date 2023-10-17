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