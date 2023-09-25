# Docker Python

This repository holds the Dockerfile code to generate rever python images

### Adding new images

To add a new image:

1. Create a new folder with the name of the tag that the image will have (if the image tag will have . replace those with - in the name of the folder).

2. Add the Dockerfile in the folder you just created.

3. Update the file `job__docker_build_image_python.groovy` in the jenkins-dsl repository:

    update the cd instruction (line 45 as the time of writing) and set it to the name of the folder you created in step 1

    update the docker buildx build instruction (line 46 as the time of writing), change the tag after `${IMAGE_NAME}:` to the tag of your new image.

4. Make sure to push the jenkins-dsl first and make sure the dsl--jobs runs without issues.
5. Push the changes from this repository, the job `docker-build-image--rever-python` should start to run in jenkins, if the job passes then the image should be uploaded to Docker hub. You may run the job manually if needed.

**Example**

1. I need to add a python 3.9-debian image, so in this repository I create the folder `3-9-debian`.
2. Inside  `3-9-debian` I would add the Dockerfile that will generate the image. I test it locally to make sure it works.
3. I would update line 45 and line 46 in `job__docker_build_image_python.groovy` file in jenkins-dsl repository to add the folder and image tag, the lines look like:
    ```bash
    cd 3-9-debian
    docker buildx build --platform ${PLATFORMS_TO_BUILD} -t ${IMAGE_NAME}:3.9-debian --push .
    ```
4. I would push the changes in jenkins-dsl repository and make sure that dsl--jobs finishes.
5. I would pish this repository changes and monitor the `docker-build-image--rever-python` job, if it passes my image should be available to pull from our rever repository, ie `rever/python:3.9-debian`
