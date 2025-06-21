FROM texlive/texlive:latest

WORKDIR /app


COPY . .

RUN pdflatex -interaction=nonstopmode main.tex


RUN pdflatex -interaction=nonstopmode main.tex

CMD ["cp", "main.pdf", "/output/"]