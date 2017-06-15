wget-downloader
===============

Downloads a show from a specially formatted file containing download URLs using concurrent wget processes in the background.

Usage
-----

    ./download [OPTIONS]... FILE
Options include:
* -s or --season: Sets the season start point for partial downloads. If not set, defaults to 1.
* -e or --episode: Sets the episode start point for partial downloads. If not set, defaults to 1.
* -n or --name: Sets the series name. Avoid using spaces and instead use underscores. If not set, program will prompt for a series name automatically.
