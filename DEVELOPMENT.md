# Development

Please make sure that the following is already installed on your computer.

- Docker Desktop
- This git repository

## Building an Image to Docker Desktop

To build the image to docker desktop, you must create a volume with the modpack 
already contained within it. When the container starts up it will use the modpack 
files to start the server.

### Building a Volume for Rogue Like

Before you can create a volume you have to make a folder on your host computer/desktop 
to link it to. That folder is where you will copy your Rogue Like Dungeons Server Pack.

```shell
    // create a folder named data
    mkdir data
```

Go to the link below and download the `Minecraft 1.12 Server Packs`.

**[Download like for Rogue Like Dungeons](https://www.curseforge.com/minecraft/modpacks/roguelike-adventures-and-dungeons)**

After you have downloaded the Server Pack and copied the zip file into, you have to 
create a container that mounts our `data` directory into a volume. This will gaurantee 
that we don't lose data between server restarts.

We can do this in the `docker create` stage.

```shell
    // build the image
    docker build -t your-registry/rogue-like-dungeons .
    docker create --name rogue-like-dungeons your-registry/rogue-like-dungeons -v ./data:/data -p 25565:25565
```

The commands above will build a docker image that runs a curseforge minecraft server 
that will expect the modpack zip file for Rogue Like Dungeons at 
`/data/RAD-Serverpack-1.49.zip`. It will then set up the modpack for us and start the 
server for us automatically if these conditions are met.
