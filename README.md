# securitycontainer
This is my attempt to compartmentalize the security tools I want to use like one might do with a VM but without the VM hassle. I'm sure this is a terrible way to do this for a variety of reasons.

## Usage
Dirt simple...hopefully

Pull the container from Docker hub
```
docker pull eccentriccotton/securitycontainer:latest
```

Then run the container
```
docker run -it eccentriccotton/securitycontainer:latest
```
Optionally use the -p [host port]:[container port] to expose a port for external uses like accepting reverse shells.

Again, probably not the best (or a particularly good) approach but it works.
