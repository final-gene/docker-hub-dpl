# Dpl (dee-pee-ell)

This is a image to run the [dpl command](https://github.com/travis-ci/dpl).

[Dpl (dee-pee-ell)](https://github.com/travis-ci/dpl) is a deploy tool made for continuous deployment that's developed and used by Travis CI, but can also be used with any other CI.

## How to use this image
Run the `dpl` image:

```bash
docker run \
    --rm \
    --interactive
    --tty
    --volume "$(pwd)":/app \
    finalgene/dpl --provider=...
```

Take a look at GitHub to get a list of all [available providers](https://github.com/travis-ci/dpl#usage).

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/finalgene/docker-hub-dpl/issues

* **Maintained by:**
[The final gene Team](https://github.com/finalgene)

* **Source of this description:**
[Repository README.md](https://github.com/finalgene/docker-hub-dpl/blob/master/README.md)
