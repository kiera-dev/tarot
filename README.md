# Tarot

A tarot card application written in Flutter with original art generated
by [Stable Diffusion](https://en.wikipedia.org/wiki/Stable_Diffusion) and
[DALL-E 2](https://openai.com/dall-e-2/).

Try out the most recent version [here](https://tarot.mjcastner.dev/).

<img src="https://github.com/kiera-dev/tarot/raw/main/assets/images/demo.gif" alt="Demo GIF" width="600" height="400"/>

## Build instructions
For local development, simply clone the repo and run with [Flutter](https://docs.flutter.dev/get-started/install):

```
flutter run -d chrome
```

To run via Docker (e.g. for deployment on [AWS Fargate](https://aws.amazon.com/fargate/)
or [Google Cloud Run](https://cloud.google.com/run/)) clone the repo and build
using the provided Dockerfile:

```
docker build -t tarot_app:latest .;
docker run -p 9999:80 tarot_app:latest;
```

Then connect to the docker instance via [localhost:9999](http://localhost:9999).