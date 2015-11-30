# ctc-cq-publisher

This repository contains resources needed to build the CTC CQ Publisher image.
This image supports builds in either bare Docker or
[OpenShift](https://www.openshift.com/).

# Requirements

Network connectivity to the internal Artifactory instance.

# Docker Deployments

This section covers how to deploy this image in a bare Docker environment.

## Building

To build this image from a Dockerfile, run:

```.shell
docker build -t cq-publisher:latest .
```

## Running

To run:

```.shell
docker run -i -t --rm -p 4503:4503 cq-publisher:latest
```

# OpenShift Deployments

For OpenShift build and deployment instructions, see the
[ctc-retailsite-deploy](https://github.com/CanTireInnovations/ctc-retailsite-deploy)
project.

# References

[Adobe CQ 5.5 Install Procedure]
(https://docs.adobe.com/docs/en/cq/5-5/deploying/installing_cq.html)
<https://docs.adobe.com/docs/en/cq/5-5/deploying/installing_cq.html>
