FROM ghcr.io/navikt/pdfgen:2.0.91
LABEL org.opencontainers.image.source=https://github.com/navikt/syfooppdfgen
ENV TZ="Europe/Oslo"

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources
