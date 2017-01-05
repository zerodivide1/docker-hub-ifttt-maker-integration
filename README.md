# docker-hub-ifttt-maker-integration
Docker image to translate webhook POSTs from Docker Hub to IFTTT Maker incoming webhooks.

## Background
Allows you to convert the payload from Docker Hub webhooks to a simplified IFTTT Maker
payload.

The project currently only outputs the Docker Hub repository name from which the webhook
was triggered.

## Running
The image requires that the `IFTTT_MAKER_KEY` environment variable be set on the container:

```
docker run -d -p 9000:9000 -e "IFTTT_MAKER_KEY=abc1234...." zerodivide1/docker-hub-ifttt-maker-integration
```

## IFTTT Configuration
1. Create a new IFTTT applet.
2. For the 'this' part, select Maker 'Receive a web request'.
3. Configure a event name as 'docker_hub'
4. Configure the rest of the applet as you'd like.

## Docker Hub Configuration
1. Go to the 'Webhooks' section of the repository.
2. Add a new web hook, pointing to where the container is running. Obviously, the container
needs to be accessible over the Internet.
