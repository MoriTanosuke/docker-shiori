# How to use

This container is set up for portable use of [Shiori][0] and uses the `--portable` flag. Data is stored in the directory `/shiori/shiori-data` and should be mounted from a volume:

````bash
docker run --rm -it -v shiori:/shiori/shiori-data -p 8080:8080 shiori
````

[0]: https://github.com/go-shiori/shiori
