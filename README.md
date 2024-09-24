# Data Loading Tools

This repository holds tools for loading datasets to be used in RUC's Practical AI class.

## Installation and Usage via Codespaces or a Devcontainer (Recommended)

### Installation via Codespaces (Recommended)

To use this repository via codespaces simply click on the `code` &rarr; `codespaces` &rarr; `create codespace on main` buttons.

Once the codespace is open in the browser, click the three bars in the top left corner and select `Open in VS Code Desktop`.

Widgets might work better when using VS Code Desktop vs. in the browser.

Note the codespace might take a long time to build. This is usually due to TexLive dependencies. Use `Cmd` / `Ctrl` + `Shift` + `P` &rarr; `Codespaces: View Creation Logs` to check status.

If required, use `Cmd` / `Ctrl` + `Shift` + `P` &rarr; `Codespaces: Rebuild Container` to rebuild the container. Do not use `gh codespace rebuild`. This takes a long time since it re-downloads the entire image.

### Installation via a Devcontainer

To install via a locally hosted devcontainer, confirm your machine has a local devcontainer compatible environment (e.g., confirm you have Docker Desktop and Windows Subsystem Linux if running on Windows). Clone the repository.

```bash
git clone https://github.com/ruc-practical-ai/data-loaders.git
cd data-loaders
```

Navigate to the repository directory and open it in VS Code.

```bash
code .
```

VS Code should prompt you to open in a devcontainer. If it does not or if the container does not build, use the command `Cmd` / `Ctrl` + `Shift` + `P` &rarr; `Devcontainers: Rebuild Container`

### Using the Python Data Generators via Codespaces or a Devcontainer

@TODO (Mauro Sanchirico): Populate

### Using the NBIA Data Loaders via Codespaces or a Devcontainer

@TODO (Mauro Sanchirico): Populate

### Display of Presentations in Codespaces or a Devcontainer

This repository contains some presentations made in reveal.js. To view this, navigate to the `presentations` folder.

```bash
cd presentations
```

Start an http-server.

```bash
bash ../scripts/start_server.sh
```

## Local Installation and Use (Not Recommended)

### Dependencies for Local Installation

It is recommended to use this repository via codespaces or in a locally hosted devcontainer. If attempting to install locally, the following dependencies are required.

#### Expect

Scripts in this repository require the [expect](https://linux.die.net/man/1/expect) linux utility. Some scripts require expect to work. Install expect using the preferred method for your system.

#### Reveal.js

This project uses [reveal.js](https://revealjs.com/) for some presentations in the `presentations` folder. All reveal.js dependencies are included in the repository. The repository itself is a modified [basic setup](https://revealjs.com/installation/#basic-setup) of reveal.js.

#### Poetry

This project is built on Python 3.12. Poetry is required for installation. To install Poetry, view the instructions [here](https://python-poetry.org/docs/).

In codespaces, Poetry installation is handled in the development container. The user does not need to install Poetry if working in codespaces.

#### TexLive

This project also requires TexLive to render math fonts. Texlive can be installed via the following commands.

```bash
sudo apt-get -y update
sudo apt-get -y install texlive
sudo apt-get -y install dvipng texlive-latex-extra texlive-fonts-recommended cm-super
```

In codespaces, TexLive installation is also handled in the development container. The user does not need to install these packages if working in codespaces.

### Local Installation

#### Project Cloning

To install locally, first install the required dependencies (Poetry and TexLive), then clone the repository and navigate to its directory.

```bash
git clone https://github.com/ruc-practical-ai/data-loaders.git
cd data-loaders
```

#### Installing Python Dependencies Locally

To install locally, first install the required dependencies (Poetry and TexLive), then clone the repository and navigate to its directory.

```bash
git clone https://github.com/ruc-practical-ai/data-loaders.git
cd data-loaders
```

Configure Poetry to install its virtual environment inside the repository directory.

```bash
poetry config virtualenvs.in-project true
```

Install the repository's Python dependencies.

```bash
poetry install
```

Check where Poetry built the virtual environment with the following command.

```bash
poetry env info --path
```

Open the command pallette with `Ctrl` + `Shift` + `P` and type `Python: Select Interpreter`.

Now specify that VSCode should use the that interpreter (the one in `./.venv/Scripts/python.exe`). Once you specify this, Jupyter notebooks should show the project's interpreter as an option when you click the `kernel` icon or the small icon showing the current version of python (e.g., `Python 3.12.1`) and then click `Select Another Kernel`, and finally click `Python Environments...`.

### Using the Python Data Generators from a Local Installation

@TODO(Mauro Sanchirico): Populate

### Using the NBIA Data Loaders from a Local Installation

@TODO(Mauro Sanchirico): Populate

### Display of Presentations from a Local Installation

This repository contains some documentation in the form of reveal.js presentations, hosted as HTML pages. To view HTML pages directly in a browser, simply navigate to the pages of interest and open them with a preferred web browser.

#### Using the Python Data

## License

This repository is provided with an MIT license. See the `LICENSE` file.

## Contributing

Please email Mauro Sanchirico at ms3978@camden.rutgers.edu (academic) or sanchirico.mauro@gmail.com (personal) with questions, comments, bug reports, or suggestions for improvement.

## To-do

The following improvements need to be made.

* Refactor `.devcontainer/configure_environment.sh` to use a function for each tool to be installed.