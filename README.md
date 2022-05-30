# Nonideality-Aware Training to Make Memristive Neural Networks Accurate, Robust and Energy-Efficient

## About

Source files for the slides of my talk at [E-MRS Spring Meeting 2022](https://www.european-mrs.com/meetings/2022-spring-meeting-0):

> E 12.2 **Nonideality-Aware Training to Make Memristive Neural Networks Accurate, Robust and Energy-Efficient**  
> <ins>Dovydas Joksas</ins>, Erwei Wang, Nikolaos Barmpatsalos, Wing H. Ng, Anthony J. Kenyon, George A. Constantinides, and Adnan Mehonic  
> *15:45 on June 1, 2022*
>  
> Nowadays, machine learning is employed in a large number of cognitive tasks. Although a promising computing paradigm, approaches like artificial neural networks require repetitive movement of large amounts of data between memory and computing units in von Neumann architecture, contributing to both slow operation and high power consumption. To address this, memristor-based crossbar arrays have been proposed—they can act as fast and energy-efficient hardware accelerators for neural networks. However, memristor nonidealities can decrease accuracy, while current approaches to mitigate this often introduce design trade-offs, such as those between power and reliability. We propose a nonideality-aware ex-situ training scheme which produces more accurate, power-efficient and robust memristive neural networks. By employing this scheme, we demonstrate the feasibility of utilising highly nonlinear high-resistance devices—using experimental data, we estimate that energy efficiency is increased by three orders of magnitude while maintaining similar accuracy. As part of the scheme, we also present a weight implementation method which biases memristors towards less conductive states through regularisation and thus increases energy efficiency even further. Finally, we propose an improved training validation procedure which then leads to more reliable estimates of stochastic memristive neural network performance. We demonstrate the robustness of our approach through exposure to a wide range of nonidealities.

## PDF

### Download

You can download the PDF of the slides

- [with gradual reveal](https://github.com/joksas/emrs-spring-2022/releases/latest/download/slides-joksas-emrs-spring-2022.pdf) (i.e. the ones I used for the talk)
- [without gradual reveal](https://github.com/joksas/emrs-spring-2022/releases/latest/download/handout-joksas-emrs-spring-2022.pdf) (i.e. the "handout" version)

### Compile

Alternatively, you can compile the PDF yourself.
To get the original version of the slides, execute
```console
make
```

For the handout version, before compiling, include class option `handout` in [`main.tex`](/main.tex) like this:
```diff
\documentclass[
  aspectratio=169,
  hyperref={breaklinks=true, colorlinks, citecolor=blue, linkcolor=blue, urlcolor=blue},
+ handout
]{beamer}
```

Compilation requires

- TeX Live 2022
- Inkscape
- Fira Sans and Fira Mono fonts
