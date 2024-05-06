FROM ghcr.io/navikt/pdfgen:2.0.33
LABEL org.opencontainers.image.source=https://github.com/navikt/syfooppdfgen

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources
