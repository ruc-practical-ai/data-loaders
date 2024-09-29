# Downloads Location

This is the location where downloaded datasets will be stored.

## Data Persistence when Using VS Code and Dev Containers

As long as the host machine's corresponding folder remains intact, Dev Containers for this repository can be stopped and started and downloaded data will not be lost, since the entire project workspace is automatically mounted when the Dev Container is started.

## Default Structure

Each folder in the downloads folder represents a specific dataset, e.g.,

```bash
.
|-- README.md
|-- basic_ml
|   |-- ...
|   `-- README.md
`-- nbia
    |-- ...
    `-- README.md
```

## Custom Mounts

If a different download mount is desired, editing `.devcontainer/devcontainer.json` will be required.

Mounts can be specified in `devcontainer.json` as follows.

```json
 "mounts": [
    "source=/path/to/host/data,target=/workspaces/data-loaders/downloads/nbia,type=bind"
  ],
```

