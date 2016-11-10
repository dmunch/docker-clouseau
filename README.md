# docker-clouseau

Runs [clouseau](http://github.com/cloudant-labs/clouseau) inside a Docker container.

## Build

If you want to build your own image instead of using the provided pre-built images at 
[dmunch/clousea](https://hub.docker.com/r/dmunch/clouseau/) follow these instructions. 

- Clone and build clouseau: `mvn package`
- Clone this repository, copy the file `clouseau/target/clouseau-2.10.0-SNAPSHOT.tar.gz` and the directory 
`clouseau/target/test-classes` to this directory.
- Run `docker build -t yourimagename .`

## Run
It's best used in combination with [couch-dreyfus](http://github.com/dmunch/docker-couchdb) which
contains a recent build of CouchDB 2.0 with the necessary dreyfus patches applied.
An example can be found in [docker-compose.yml](docker-compose.yml).

In order to spin up a single-node CouchDB 2.0 with full-text search enabled and configured, just run:
```
docker-compose up
``` 

# References
[Search 2.0](
https://cloudant.com/blog/search-2-0/)

[Search Faceting from Scratch [Tutorial]](
https://cloudant.com/blog/search-faceting-from-scratch-2/)

[Enable Full Text Search in Apache CouchDB™](
https://cloudant.com/blog/enable-full-text-search-in-apache-couchdb/)

[Understanding Mango View-Based Indexes vs. Search-Based Indexes](
https://cloudant.com/blog/mango-json-vs-text-indexes/)


[Open-Sourcing IBM Cloudant’s CouchDB Search Integration with Lucene](
https://cloudant.com/blog/open-sourcing-cloudant-search/)