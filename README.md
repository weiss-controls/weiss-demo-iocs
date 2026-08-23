# WEISS Demonstration IOCs

This repository provides the source code for the IOCs used by WEISS in the
[public live demo](https://demo.weiss-controls.org/).

The corresponding demonstration OPIs can be found in the live demo itself or in the
[weiss-demo-opis repository](https://github.com/weiss-controls/weiss-demo-opis).

---

## Build and run

All IOCs are built on top of e3 framework, see [e3 pages](https://e3.pages.ess.eu/).  
If you are not familiar with e3, you can still run all of them by using the docker images provided
in this repository.

Below are the instructions on how to build and run the IOCs using Docker.

1. If not already done, [install Docker Engine](https://docs.docker.com/engine/install/).

2. Clone the repository:

```bash
git clone https://github.com/weiss-controls/weiss-demo-iocs.git
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

A method to access the IOC shell will be provided soon (likely via procServ).
