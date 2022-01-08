#! /bin/bash

function main {
    asciidoctor vbasupalli_resume.adoc --out-file vbasupalli_resume.html

    local LINES=$(wc -l vbasupalli_resume.html | awk '{ print $1 }')
    local ETL=$(( LINES - 2 ))
    local STL=$(( ETL - 4 ))

    sed -i '' -E "$STL,${ETL}d" vbasupalli_resume.html

    cp -r vbasupalli_resume.html index.html && \
        git commit -a -m "updated" && git push -u origin master

}

set -x;
main "$@"
