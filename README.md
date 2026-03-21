# WEISS Demonstration IOCs

This repository provides the source code for the IOCs used by WEISS in the
[public live demo](https://demo.weiss-controls.org/).

The corresponding demonstration OPIs can be found in the live demo itself or in the
[weiss-demo-opis repository](https://github.com/weiss-controls/weiss-demo-opis).

---

## Build and run

All IOCs can be built and started either manually (standard EPICS build procedure), or by using
Docker containers (recommended). In this section you will find instructions for the latter.

> All docker images are built using [epics-in-docker](https://github.com/cnpem/epics-in-docker).

1. If not already done, [install Docker Engine](https://docs.docker.com/engine/install/).

2. Clone the repository recursively (required to get epics-in-docker):

```bash
git clone --recursive https://github.com/weiss-controls/weiss-demo-iocs.git
```

2. Build and start the IOCs

```bash
cd weiss-demo-iocs
docker compose up -d
```

If you need to run only one of them, you can pass the service name defined in the compose file. For
example, to run only the `motorSim-ioc`, use:

```bash
docker compose up -d motorSim-ioc
```

If building the images for the first time, it may take a few minutes to complete.

To access the IOC Shell, use the following command:

```bash
docker exec -ti <container> nc -U ioc.sock
```

Where `<container>` is the name of the container running the IOC you want to access. You can find
the container names by running `docker ps`.
