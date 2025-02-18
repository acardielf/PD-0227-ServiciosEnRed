# PD-0228-AplicacionesWeb

Programación didáctica para Módulo Profesional 0228 - Aplicaciones Web, correspondiente al Ciclo Formativo de Grado Medio de Sistemas Microinformáticos y Redes.


## Makefile

Debido a la gran cantidad de unidades y utilidades que se presentan en este repositorio, se ha creado un pequeño Makefile para la ayuda a la generación de los diferentes recursos en PDF, HTML, etc. desde Markdown.

## Requirements

Install fonts included in `resources/fonts/source-sans/` using this commands:

```bash
cp resources/fonts/source-sans/* ~/.local/share/fonts 
fc-cache -fv
```
You also need following packages:

```bash
sudo apt install pandoc \
            texlive-extra-utils \
            texlive-lang-spanish \
            texlive-latex-extra \
            texlive-fonts-extra
```

## Generate PD

Execute following command to produce a complete document in PDF and ODT format:

```bash
make prog-didactica
```
