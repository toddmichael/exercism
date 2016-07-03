# Gonna Learn Go

*My personal journey from [Golang](https://golang.org/) Noob to \_\_\_\_ (Monk(?)) via the wonderful [Exercism](http://exercism.io/getting-started) project.*

Just me __learning out loud__.

## Layout

The layout here may prove a bit unconventional, but I'm trying to:

 1. maintain the Exercism lesson hierarchy.
 1. layout my lesson function/package names to work with the Exercism tests.
 1. create my own main package files that allow me to import and use the public functions from my lessons.
 1. allow me to host all my Exercism foo in a single Git repository aligned with my `$GOPATH` environment.

all in a new __Go__ ecosystem that I'm just learning.

So here's how this is laid out at the moment:

 1. there is a subdirectory for each lesson.
 1. in that directory is my Go code along with the the Exercism provided `README` and test file.
 1. my Go code filename is `lesson_name.go` as this aligns nicely with the Exercism provided `lesson_name_test.go` file.
 1. the package and function names are taken from the test code.the
 1. to import and use these lessons as packages I simply write a `lesson_name.go` program in the root directory of this repository and import the lesson package via  `import "github.com/toddmichael/exercism/lesson_name"`.

## Instructions

 - Use [TDD](https://en.wikipedia.org/wiki/Test-driven_development).
 - Run `go fmt` before submitting.
 - Run `go lint` before submitting.

### leap

The following runs my leap.go (main) file
```golang
$ go run leap.go -year=2000
2000 Is a leap year.
```

To perform Exercism test:
```golang
$ go test github.com/toddmichael/exercism/leap
ok    github.com/toddmichael/exercism/leap  0.006s
```

## Resources

 - [Excercism - Getting Started with Go](http://help.exercism.io/getting-started-with-go.html)
 - [Go Code Review Comments](https://code.google.com/p/go-wiki/wiki/CodeReviewComments)
 - [How to Write Go Code](https://golang.org/doc/code.html)
 - [My Code on Exercism](http://exercism.io/toddmichael)
