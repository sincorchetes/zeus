Zeus will be a cloud and container manager.

# Requirements
- Installed Docker with Docker compose plugin
- Fedora 36 or later

### Docker - Fedora
Install Docker with the following steps:
```
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl enable --now docker.service
```

Setting up your user to use Docker daemon:
```
sudo gpasswd -a $USER docker
```

Re-login your session or use the new privileges:
```
newgrp docker
```

### First steps
Build first the project image:
```
docker compose build
```

Let's start the project in the foreground (see the logs):
```
docker compose up
```
Or run over the background:
```
docker compose up -d 
```

__NOTE:__ It does not need recreate the container each you want to change the code.