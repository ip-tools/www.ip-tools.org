################
IP Tools website
################


About
=====
This repository contains the sources of https://ip-tools.org/.

Contributions are welcome!


Usage
=====

Create development sandbox in ``.venv`` folder::

    {apt,brew,yum,zypper} install python3 git
    export NODEJS_VERSION=14.20.0
    export NPM_VERSION=6.14.17
    export YARN_VERSION=1.22.19
    source /dev/stdin <<<"$(curl -s https://raw.githubusercontent.com/cicerops/supernode/main/supernode)"

Bundle Javascript and CSS assets using webpack::

    yarn install
    yarn run build

Watch files for rebundling::

    yarn run watch

Have a look::

    open ./htdocs/index.html

