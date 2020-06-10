# horde-apache

A container image adding an Apache Webserver to [maintaina-com/horde-composer-docker](https://github.com/maintaina-com/horde-composer-docker). The image exposes port 80.

This image is automatically build using a Github Actions workflow. The workflow is triggered when changes are made to this repository. In addition, successful builds of [maintaina-com/horde-composer-docker](https://github.com/maintaina-com/horde-composer-docker) will trigger a rebuild of this image, too.

The image does not come with a Horde configuration file.

## How to Use the Image

To build a another image on top of this one, use the following in your `Dockerfile`:
```Docker
FROM docker.pkg.github.com/maintaina-com/horde-apache/horde-apache:latest
```
**Note:** The image starts Apache using `CMD`. If you use `ENTRYPOINT` or `CMD` in your `Dockerfile`, it will cancel the launch of Apache.

To start a container based on this image, run:
```bash
docker run -d -p 8080:80 --name my-horde-apache docker.pkg.github.com/maintaina-com/horde-composer-docker/horde-apache:latest
```
Then, navigate to `localhost:8080` in your browser to access Horde.
