# Not just for programmers: A friendly guide on the versatility/benefits of GitHub for accelerating collaborative research in Ecology and Evolution


<!-- usage note: edit the H1 title above to personalize the manuscript -->

[![HTML Manuscript](https://img.shields.io/badge/manuscript-HTML-blue.svg)](https://sortee-github-hackathon.github.io/manuscript/v/latest/index.html)
[![PDF Manuscript](https://img.shields.io/badge/manuscript-PDF-blue.svg)](https://SORTEE-Github-Hackathon.github.io/manuscript/v/latest/manuscript.pdf)
[![GitHub Actions Status](https://github.com/SORTEE-Github-Hackathon/manuscript/actions/workflows/manubot.yaml/badge.svg)](https://github.com/SORTEE-Github-Hackathon/manuscript/actions/workflows/manubot.yaml)

### Subject: The use of Github in Ecology and Evolution

## Manuscript description

<!-- usage note: edit this section. -->

A friendly guide to GitHub and all the things you can **currently** do with it. Very few papers focus on GitHub as a tool for collaboration. We will also mention where GitHub falls short as a tool for collaboration.  

## Important links and dates
In this section you'll find a few important links to help us keep track of documents we use outside of the GitHub ecosystem.  This includes a google slide deck where we are working on figures, the original outline we made for the manuscript in HackMD, as well as meeting notes.

**Links**
[Figure brainstorming](https://docs.google.com/presentation/d/1SnAwK4XLlKf-XqGCqianW3-cGp3SlQYnCZ6ASJDKn_c/edit#slide=id.gf6fdd2a2d0_1_26)
- [Figures for manuscript](https://docs.google.com/presentation/d/1b_8r7FHeVzP1tQ1H5mHVxw6xYU5A2KWCT3VbyrypWjs/edit?usp=sharing)
- [Manuscript outline on HackMD](https://hackmd.io/@SORTEE-Github-Hackathon/Bki-SID8K)
- Meeting notes from: 
  - [Jan 2022 (*including sign-up sheet for manuscript and figures*)](https://hackmd.io/@SORTEE-Github-Hackathon/S1KmI66TF), 
  - [Dec 2021](https://hackmd.io/@SORTEE-Github-Hackathon/r1nKg_CYK), 
  - [Oct 2021](https://hackmd.io/@SORTEE-Github-Hackathon/HkCsWuNLY), 
  - [Aug 2021](https://hackmd.io/@SORTEE-Github-Hackathon/H1NwRum4K)

**Dates**
- **February 16, 2022**: first drafts of each section. Gather citations, high level overview of why topic is important.
- **February 23, 2022**: everyone does read through for general edits
- **February 23, 2022**: figures and tables complete
- **TBD**: Incorporate edits
- **TBD**: Several authors do final detailed read through
- **TBD**: Everyone approved before submission

## Contributing

A free, personal [Github Account](https://github.com/join?source=header-home) is necessary to contribute to this project.

To contribute in writing, you must follow the guidelines described [within the CONTRIBUTING.md](CONTRIBUTING.md) file.

In a nutshell, suggestions about the literature require the creation of [discussions](https://github.com/SORTEE-Github-Hackathon/manuscript/discussions), and written contributions require the modification of files within the [content](https://github.com/SORTEE-Github-Hackathon/manuscript/tree/main/content) directory and pushing changes through [pull requests](https://github.com/SORTEE-Github-Hackathon/manuscript/pulls).

## Authorship Guidelines

Authorship contributions are categorized following the guidelines from the [CRediT Taxonomy](https://casrai.org/credit/) and the [International Committee of Medical Journal Editors](http://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html).

All prospective authors must follow the contributing guidelines [within the CONTRIBUTING.md](CONTRIBUTING.md) file. There you will find out that you are encouraged to write a few words about yourself in the [Self-Introductions](https://github.com/SORTEE-Github-Hackathon/manuscript/discussions/4) discussion section, and you will also see how to fill-in your [author information](https://github.com/SORTEE-Github-Hackathon/manuscript/blob/main/USAGE.md#manuscript-metadata) once you [contribute](https://github.com/SORTEE-Github-Hackathon/manuscript/blob/main/CONTRIBUTING.md#contributing-with-writing) to this project.

### Repository directories & files

The directories and main files are as follows:
+ [`/` (`main` root)](https://github.com/SORTEE-Github-Hackathon/manuscript/) this directory contains this document `README.md`, which helps uses with the general information about this repository and our project.
+ [`CONTRIBUTING.md`](CONTRIBUTING.md) contains procedures and directions for prospective authors to contribute to this manuscript.
+ [`USAGE.md`](USAGE.md) contains a getting started with Git guidelines, information on formatting text, citing references, adding figures and tables, and other manuscript editing.
+ [`content`](content) contains the manuscript source, which includes markdown files as well as inputs for citations and references.
+ [`output`](output) (and the `output` and `gh-pages` branches) contains the outputs (generated files) from Manubot including the resulting manuscript files (in `HTML`, `PDF`, and other formats).
  You should not edit these files manually, because they will be overwritten by the Manubot.
+ [`webpage`](webpage) is a directory meant to be rendered as a static webpage for viewing the HTML manuscript.
+ [`build`](build) contains commands and tools for building the manuscript.
+ [`ci`](ci) contains files necessary for deployment via continuous integration.
+ [LICENSE.md](LICENSE.md) and [LICENSE-CC0.md](LICENSE-CC0.md) contain the licenses associated with Manubot and with the content we are developing in this project. Please see the "License" section below.

### Continuous Integration

Whenever a pull request is opened, CI (continuous integration) will test whether the changes break the build process to generate a formatted manuscript.
The build process aims to detect common errors, such as invalid citations. 
If your pull request build fails, see the CI logs for the cause of failure and revise your pull request accordingly.

When a commit to the `main` branch occurs (for example, when a pull request is merged), CI builds the manuscript and writes the results to the [`gh-pages`](https://github.com/SORTEE-Github-Hackathon/manuscript/tree/gh-pages) and [`output`](https://github.com/SORTEE-Github-Hackathon/manuscript/tree/output) branches.
The `gh-pages` branch uses [GitHub Pages](https://pages.github.com/) to host the following URLs:

+ **HTML manuscript** at https://sortee-github-hackathon.github.io/manuscript/v/latest/index.html
+ **PDF manuscript** at https://sortee-github-hackathon.github.io/manuscript/v/latest/manuscript.pdf

For continuous integration configuration details, see [`.github/workflows/manubot.yaml`](.github/workflows/manubot.yaml).

## License

<!--
usage note: edit this section to change the license of your manuscript or source code changes to this repository.
We encourage users to openly license their manuscripts, which is the default as specified below.
-->

[![License: CC BY 4.0](https://img.shields.io/badge/License%20All-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)
[![License: CC0 1.0](https://img.shields.io/badge/License%20Parts-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

Except when noted otherwise, the entirety of this repository is licensed under a CC BY 4.0 License ([`LICENSE.md`](LICENSE.md)), which allows reuse with attribution.
Please attribute by linking to https://github.com/SORTEE-Github-Hackathon/manuscript.

Since CC BY is not ideal for code and data, certain repository components are also released under the CC0 1.0 public domain dedication ([`LICENSE-CC0.md`](LICENSE-CC0.md)).
All files matched by the following glob patterns are dual licensed under CC BY 4.0 and CC0 1.0:

+ `*.sh`
+ `*.py`
+ `*.yml` / `*.yaml`
+ `*.json`
+ `*.bib`
+ `*.tsv`
+ `.gitignore`

All other files are only available under CC BY 4.0, including:

+ `*.md`
+ `*.html`
+ `*.pdf`
+ `*.docx`

Please open [an issue](https://github.com/SORTEE-Github-Hackathon/manuscript/issues) for any question related to licensing.

## About Manubot

<!-- usage note: do not edit this section -->

Manubot is a system for writing scholarly manuscripts via GitHub.
Manubot automates citations and references, versions manuscripts using git, and enables collaborative writing via GitHub.
An [overview manuscript](https://greenelab.github.io/meta-review/ "Open collaborative writing with Manubot") presents the benefits of collaborative writing with Manubot and its unique features.
The [rootstock repository](https://git.io/fhQH1) is a general purpose template for creating new Manubot instances, as detailed in [`SETUP.md`](SETUP.md).
See [`USAGE.md`](USAGE.md) for documentation how to write a manuscript.

Please open [an issue](https://git.io/fhQHM) for questions related to Manubot usage, bug reports, or general inquiries.
