FROM navikt/pdfgen:f3fda1f27664f189e9cd3b44223da4867189947b

COPY templates /app/templates
COPY fonts /app/fonts
COPY resources /app/resources
