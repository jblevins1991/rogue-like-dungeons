FROM itzg/minecraft-server:java8

WORKDIR /data

ENV EULA="TRUE"
ENV TYPE="CURSEFORGE"
ENV CF_SERVER_MOD="/data/RAD-Serverpack-1.49.zip"
ENV INIT_MEMORY="4G"
ENV MAX_MEMORY="8G"
ENV MEMORY=""
ENV DEBUG_MEMORY="TRUE"
ENV ALLOW_FLIGHT="TRUE"
ENV ICON="https://www.google.com/url?sa=i&url=https%3A%2F%2Fshattered-pixel-dungeon.en.uptodown.com%2Fandroid&psig=AOvVaw3mw8uC-GvRCFcICN7_Qw-X&ust=1645801687771000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNDduq7PmPYCFQAAAAAdAAAAABAD"

EXPOSE 25565
