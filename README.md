# srd5

Export data from the [System Reference Document 5.1](http://dnd.wizards.com/articles/features/systems-reference-document-srd) in several machine-friendly formats.

Use this data to build your own tools, render documentation, or extend your homebrew material.

## Features

* Exports data as plain text, CSV, JSON, and SQLite3.
* Completely automated: just point it at the PDF.

## Dependencies

* Python 3.6+
* [GNU awk](https://www.gnu.org/software/gawk/)
* [jq](https://stedolan.github.io/jq/)
* pdftotext (from [poppler](https://poppler.freedesktop.org/))

To install dependencies on macOS with [Homebrew](https://brew.sh/), run:

```
brew bundle
```

## Usage

First, download a copy of the SRD:

```
wget http://media.wizards.com/2016/downloads/DND/SRD-OGL_V5.1.pdf
```

Then extract the data you want using `make`.
For example, to load all available data into an SQLite3 database, run:

```
make srd5.sqlite3
```

Run `make help` for to see all targets.

## Limitations

* Currently only extracts spell data.

## License

Software is licensed under the MIT license.

SRD content (including any published data) is licensed under the Open Game License v1.0a. See [`OGLv1.0a.txt`](OGLv1.0a.txt).
