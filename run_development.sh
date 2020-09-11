#!/bin/bash

CURRENT_PATH="$(cd "$(dirname "$1")"; pwd)/$(basename "$1")"

docker pull docker.pkg.github.com/navikt/pdfgen/pdfgen:72efbbafa20fb858d206894de67ae077876a9cc2
docker run \
        -v "$CURRENT_PATH/templates:/app/templates" \
        -v "$CURRENT_PATH/fonts:/app/fonts" \
        -v "$CURRENT_PATH/data:/app/data" \
        -v "$CURRENT_PATH/resources:/app/resources" \
        -p 8080:8080 \
        -e DISABLE_PDF_GET=false \
        -it \
        --rm \
        docker.pkg.github.com/navikt/pdfgen/pdfgen:72efbbafa20fb858d206894de67ae077876a9cc2
