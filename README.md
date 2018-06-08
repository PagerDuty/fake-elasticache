# Fake ElastiCache

A local (fake) instance of ElastiCache, backed by memcached, for local development.

Inspired heavily by https://github.com/stevenjack/fake_elasticache ...


## Usage

```
docker build -t fake-elasticache .
docker run -d -p 11212:11212 --name=memcached memcached
docker run --rm -it -p 11211:11211 --link memcached fake-elasticache
```

You will now be able to point your ElastiCache endpoint to http://localhost:11211
