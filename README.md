# A Minimal Example

This is intended to provide a minimal reproducible example of how to use [Pandoc](https://pandoc.org/), running in a Docker container, to generate a PDF file from Markdown plaintext using a LaTeX template.

You will need to have Git and Docker installed on your machine. Then simply clone the repository, adjust the `settings.env` file, build the Docker image by running the `build.sh` file in the `docker` folder, and you should be able to `publi.sh` a publishable PDF. 

To actually use this to work on a proper project, you will want to keep the files for that project in its own Git repository. You can then add it as a submodule from the root of this `publisher` repo:

```
git submodule add https://github.com/peterprescott/example
```

(And of course edit the `PROJECT` variable in the `publisher/settings.env` file).
