FROM navikt/pdfgen:72efbbafa20fb858d206894de67ae077876a9cc2
LABEL org.opencontainers.image.source=https://github.com/navikt/syfooppdfgen

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources
