# Development

Please make sure that the following is already installed on your computer.

- Docker Desktop
- This git repository

## Building an Image to Docker Desktop

To build the image to docker desktop, you must create a volume with the modpack 
already contained within it. When the container starts up it will use the modpack 
files to start the server.

### Building a Volume for Rogue Like

```shell
    // create a folder named data
    mkdir data
```

Once the `data` directory exists, you will need to move the Rogue Like Dungeons modpack 
files into it. Only then can you use an external directory binding when creating your 
container.

```shell
    // build the image
    docker build -t your-registry/rogue-like-dungeons .
    docker create --name rogue-like-dungeons your-registry/rogue-like-dungeons -v ./data:/data -p 25565:25565
```

The commands above will build a docker image that runs a curseforge minecraft server 
that will expect the modpack zip file for Rogue Like Dungeons at 
`/data/RAD-Serverpack-1.49.zip`. It will then set up the modpack for us and start the 
server for us automatically if these conditions are met.

Go to the link below and download the `Minecraft 1.12 Server Packs`.

**[Download like for Rogue Like Dungeons](https://www.curseforge.com/minecraft/modpacks/roguelike-adventures-and-dungeons)**

