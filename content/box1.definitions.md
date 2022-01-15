<!--# I thought it might be helpful to have a box with short definitions of git/GitHub terminology used in the manuscript. If any of these are discussed more in depth in the main text, they may not need to be here. -->

-   **repository**:

-   **commit**: Commits are like snapshots in the development of a project.
    Commits can include changes in multiple files and must include a brief commit message describing the changes made.
    A typical workflow is to make some related changes in files, make a commit (e.g. "generate and include fig1 in results"), and after several commits to **push** those commits to the remote GitHub **repository**.

-   clone: Cloning a **repository** is a way of making a local copy (i.e. on your computer) of a GitHub **repository**.
    If you have access to **push** to a **repository**, this can be a first step to contributing to a project.

-   branch: Development branches can be created at any point in time and work on each branch can continue independently.
    This is useful for testing out new ideas (both code and text) which may or may not eventually get integrated into the main branch of the project.
    Branches can also be used to isolate contributions of multiple contributors.
    Each person working on their own branch eliminates problems that arise when conflicting edits are pushed to the same branch.
    Changes in a development branch can be merged into the main branch via **pull requests**.
    Branches can only be made by those who are given access to the project **repository**.

-   fork: A fork is a copy of a **repository** hosted on GitHub.
    If a repository is public, then anyone can make a fork.
    Even if they do not have access to push to the original repository, they can make a fork and edit it independently.
    Forks are linked to the original GitHub repository and "upstream" changes (those in the original repository) can be merged to keep the fork up to date with the original project.
    Changes made in the fork can be integrated into the original project via **pull requests**.

-   push/pull: When **commits** are made in a project locally, they must be synced with the remote GitHub repository by "**pushing**" them.
    Changes on a GitHub repository can then be "**pulled**" to keep your local version of the project up to date.

-   pull request: A pull request is a request that the owner of a GitHub repository integrate changes you've made on either a **branch** in the repository or in your own **fork**.
    When you initiate a pull request, you must provide a description of what changes are made.
    Some automated tests may be run and review may be required before integrating your changes.

-   
