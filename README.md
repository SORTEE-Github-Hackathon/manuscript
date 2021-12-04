# Working title to be determined

<!-- usage note: edit the H1 title above to personalize the manuscript -->

[![HTML Manuscript](https://img.shields.io/badge/manuscript-HTML-blue.svg)](https://SORTEE-Github-Hackathon.github.io/manuscript-test/v/freeze/)
[![PDF Manuscript](https://img.shields.io/badge/manuscript-PDF-blue.svg)](https://SORTEE-Github-Hackathon.github.io/manuscript-test/manuscript.pdf)
[![GitHub Actions Status](https://github.com/SORTEE-Github-Hackathon/manuscript-test/actions/workflows/manubot.yaml/badge.svg)](https://github.com/SORTEE-Github-Hackathon/manuscript-test/actions/workflows/manubot.yaml)

### Subject: The use of Github in Ecology and Evolution

## Manuscript description

<!-- usage note: edit this section. -->

(Add a few sentences descirbing the overall goal of the study).

This repository tests the implementation of manubot for our collaborative writing. 

Actual manuscript instances will clone this repository (see [`SETUP.md`](SETUP.md)) and replace this paragraph with a description of their manuscript.

## Contributing

A free, personal [Github Account](https://github.com/join?source=header-home) is necessary to contribute to this project.

To contribute in writing, you must follow the guidelines described [here]().

In a nutshell, suggestions about the literature require the creation of [issues](), and written contributions require the modification of files within the [content]() directory and pushing changes through [pull requests]().

## Authorship Guidelines

Authorship contributions are categorized following the guidelines from the [CRediT Taxonomy](https://casrai.org/credit/) and the [International Committee of Medical Journal Editors](http://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html).

All authors must fill their [author information](https://github.com/SORTEE-Github-Hackathon/manuscript-test/blob/main/USAGE.md#manuscript-metadata) through a pull request on the [content/metadata.yaml]() file.

### Repository directories & files

The directories and main files are as follows:
+ [`/` (`main` root)]() this directory contains this document `README.md`, which helps uses with the general information about this repository and our project.
+ [`CONTRIBUTING.md`]() contains procedures and directions for prospective authors to contribute to this manuscript.
+ [`content`](content) contains the manuscript source, which includes markdown files as well as inputs for citations and references.
  See [`USAGE.md`](USAGE.md) for information on formatting text, citing references, adding figures and tables, and other manuscript editing.
+ [`output`](output) contains the outputs (generated files) from Manubot including the resulting manuscript files (in `HTML`, `PDF`, and other formats).
  You should not edit these files manually, because they will get overwritten.
+ [`webpage`](webpage) is a directory meant to be rendered as a static webpage for viewing the HTML manuscript.
+ [`build`](build) contains commands and tools for building the manuscript.
+ [`ci`](ci) contains files necessary for deployment via continuous integration.
+ [LICENSE.md]() and [LICENSE-CC0.md]() contain the licenses associated with manubot and with the content we are developing in this project. Please see the "License" section below.

### Continuous Integration

Whenever a pull request is opened, CI (continuous integration) will test whether the changes break the build process to generate a formatted manuscript.
The build process aims to detect common errors, such as invalid citations. 
If your pull request build fails, see the CI logs for the cause of failure and revise your pull request accordingly.

When a commit to the `main` branch occurs (for example, when a pull request is merged), CI builds the manuscript and writes the results to the [`gh-pages`](https://github.com/SORTEE-Github-Hackathon/manuscript-test/tree/gh-pages) and [`output`](https://github.com/SORTEE-Github-Hackathon/manuscript-test/tree/output) branches.
The `gh-pages` branch uses [GitHub Pages](https://pages.github.com/) to host the following URLs:

+ **HTML manuscript** at https://sortee-github-hackathon.github.io/manuscript-test/
+ **PDF manuscript** at https://sortee-github-hackathon.github.io/manuscript-test/manuscript.pdf

For continuous integration configuration details, see [`.github/workflows/manubot.yaml`](.github/workflows/manubot.yaml).

## License

<!--
usage note: edit this section to change the license of your manuscript or source code changes to this repository.
We encourage users to openly license their manuscripts, which is the default as specified below.
-->

[![License: CC BY 4.0](https://img.shields.io/badge/License%20All-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)
[![License: CC0 1.0](https://img.shields.io/badge/License%20Parts-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

Except when noted otherwise, the entirety of this repository is licensed under a CC BY 4.0 License ([`LICENSE.md`](LICENSE.md)), which allows reuse with attribution.
Please attribute by linking to https://github.com/manubot/rootstock.

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

Please open [an issue](https://github.com/manubot/rootstock/issues) for any question related to licensing.

## About Manubot

<!-- usage note: do not edit this section -->

Manubot is a system for writing scholarly manuscripts via GitHub.
Manubot automates citations and references, versions manuscripts using git, and enables collaborative writing via GitHub.
An [overview manuscript](https://greenelab.github.io/meta-review/ "Open collaborative writing with Manubot") presents the benefits of collaborative writing with Manubot and its unique features.
The [rootstock repository](https://git.io/fhQH1) is a general purpose template for creating new Manubot instances, as detailed in [`SETUP.md`](SETUP.md).
See [`USAGE.md`](USAGE.md) for documentation how to write a manuscript.

Please open [an issue](https://git.io/fhQHM) for questions related to Manubot usage, bug reports, or general inquiries.
