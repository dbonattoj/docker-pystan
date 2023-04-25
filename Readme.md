# Introduction

Unfortunately, pyStan is not compatible with Windows/Mac by default. However, this repository provides a containerized version that can be used on any environment. Users can add Python scripts in the `./stan/` directory, which will be automatically copied to the containerized Linux environment.

# Installation

To use `docker-compose` to execute a particular script named `fululu.py` located in the `./stan/` directory, follow these steps:

1. Open a terminal and navigate to the directory containing the `docker-compose.yml` file and the `fululu.py` script.

2. Build the Docker image by running the following command:

   ```
   docker-compose build
   ```

# Usage

1. Once the build is complete, start the container and run the `fululu.py` script by running the following command:

   ```
   docker-compose run pystan python fululu.py
   ```

   This command starts the container and runs the `fululu.py` script using the Python interpreter installed in the container.

2. Alternatively, you can use the following command to start a Jupyter Notebook environment, which allows for creating notebooks for Bayesian data analysis:

   ```
   docker-compose up
   ```

   This command starts a Jupyter Notebook environment accessible at `http://127.0.0.1:8888`.

3. To execute Python from inside the docker, run the following command:

   ```
   docker-compose run pystan python
   ```

4. Once any of the commands finish running, the container will automatically stop and remove itself.

# Editing Scripts

The scripts can be edited using any text editor. At each launch of the script using `docker-compose`, the scripts will be copied to the Linux environment and executed there.

Note: Certain functions, such as `plt.plot()`, do not work natively. It is better to use `plt.savefig()` instead.