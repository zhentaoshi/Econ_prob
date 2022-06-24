# Introduction

**(2022 summer, CUHK)**

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

Welcome to the 2022 summer short course for MSc.

This is the first time I experiment with Jupyter Book.
The teaching materials will be edited when the dates approach.

```{warning}
This is a project under construction.
```

```{tableofcontents}
```



## Extensive reading
Besides the lecture notes in this Github repository, you will find self-contained lecture notes in the first two chapters of
Kevin Sheppard's [Financial Economics I](https://www.kevinsheppard.com/teaching/mfe/notes/) for MSc at Oxford University.


![](https://github.com/zhentaoshi/Econ_prob/blob/master/macau.jpg)


## Interactive code

The following approaches make it possible to interact with the code cells in the Jupyter notebooks. They are ranking from the most convenient to the most cumbersome in term of configuration.


1. Click [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/zhentaoshi/Econ_prob/HEAD). It may take some time to build the environment. Be patient. Changes cannot be saved by this approach, and thus they will get lost after closing your web browser.
2. Log in CUHK Econ's [SCRP server](https://scrp-login-2.econ.cuhk.edu.hk/jupyter). Git and IRkernel are already installed there. Download the Github repos by copy and paste `git clone https://github.com/zhentaoshi/Econ_prob.git`
3. Install [Docker](https://docs.docker.com/get-docker/). Download the [Docker image](https://hub.docker.com/repository/docker/ztshi/msc_prob_and_stat) for this course by running `docker pull ztshi/msc_prob_and_stat` in a terminal. The Github repository is already written in the folder. Run `docker run -p 10000:8888 ztshi/msc_prob_and_stat` in a terminal. A token must be copied to log in the web browser interface.
4. Download to your local computer the Github repository. Copy and paste `git clone https://github.com/zhentaoshi/Econ_prob.git` in a terminal if the Git is installed. Jupyter notebook must be installed to run the cells.



## License


This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
