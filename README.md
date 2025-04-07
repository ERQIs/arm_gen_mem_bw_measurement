# ARM Memory Bandwidth Measurement – Experimental Data for Paper

This repository contains scripts and tools related to the experiments presented in the paper.

The structure of the repository is as follows:

- **analysis**: Jupyter notebooks used for data analysis  
- **config**: Configuration files for SPEC CPU 2017 used in the experiments  
- **data**: Directory where collected data and analysis results (figures and processed data) are stored  
- **scripts**: Scripts for collecting memory bandwidth data  



## Execution Order:

1. Make sure **SPEC CPU 2017** is successfully installed, and copy the configuration files from the `config` directory into the configuration directory of SPEC.  
2. Run the scripts in the `scripts` directory to collect data. This process may take **10–20 hours**.  
3. Run the scripts in the `analysis` directory to analyze the collected data.  
