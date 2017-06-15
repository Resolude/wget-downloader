wget-downloader
===============

Downloads a TV show from a specially formatted file containing download URLs using concurrent wget processes in the background.

Installation
------------

Prerequisite: wget must be installed on the system and locatable within the $PATH variable. To verify that the aforementioned is true, run the following command:

    $ which wget

Download and change directory into the repository using the following command:

    $ git clone https://github.com/Resolude/wget-downloader.git
    $ cd wget-downloader/

Mark the script as executable:

    $ chmod u+x ./download

Usage
-----

    $ ./download [OPTIONS]... FILE
Options include:
* -s or --season: Sets the season start point for partial downloads. If not set, defaults to 1.
* -e or --episode: Sets the episode start point for partial downloads. If not set, defaults to 1.
* -n or --name: Sets the series name. Avoid using spaces and instead use underscores. If not set, program will prompt for a series name automatically.

Input File Format
-----------------

The following is an example of an input file used to pass URLs to the concurrent wget processes:

    http://example.com/path/to/file/episode_6063.mp4
    http://example.com/path/to/file/episode_6064.mp4
    http://example.com/path/to/file/episode_6065.mp4
    http://example.com/path/to/file/episode_6066.mp4
    http://example.com/path/to/file/episode_6067.mp4
    http://example.com/path/to/file/episode_6068.mp4

    http://example.com/path/to/file/episode_6077.mp4
    http://example.com/path/to/file/episode_6078.mp4
    http://example.com/path/to/file/episode_6079.mp4
    http://example.com/path/to/file/episode_6080.mp4
    http://example.com/path/to/file/episode_6081.mp4
    http://example.com/path/to/file/episode_6082.mp4
    http://example.com/path/to/file/episode_6083.mp4
    http://example.com/path/to/file/episode_6084.mp4
    http://example.com/path/to/file/episode_6085.mp4
    http://example.com/path/to/file/episode_6086.mp4
    http://example.com/path/to/file/episode_6087.mp4
    http://example.com/path/to/file/episode_6088.mp4
    http://example.com/path/to/file/episode_6089.mp4

    http://example.com/path/to/file/episode_6090.mp4
    http://example.com/path/to/file/episode_6091.mp4
    http://example.com/path/to/file/episode_6092.mp4
    http://example.com/path/to/file/episode_6093.mp4
    http://example.com/path/to/file/episode_6094.mp4
    http://example.com/path/to/file/episode_6095.mp4
    http://example.com/path/to/file/episode_6096.mp4
    http://example.com/path/to/file/episode_6097.mp4
    http://example.com/path/to/file/episode_6098.mp4
    http://example.com/path/to/file/episode_6099.mp4
    http://example.com/path/to/file/episode_6100.mp4
    http://example.com/path/to/file/episode_6101.mp4
    http://example.com/path/to/file/episode_6102.mp4
    http://example.com/path/to/file/episode_6103.mp4
    http://example.com/path/to/file/episode_6104.mp4
    http://example.com/path/to/file/episode_6105.mp4

URLs can also end with _hd.mp4. For example:

    http://example.com/path/to/file/episode_6105_hd.mp4

Tech-savvy people: A unique number associated with a file (and in no way has to do with the episode number associated with the season/episode of the show) will be captured so long as the file name matches one of the following two regular expressions:

    ([0-9]+)\.mp4$
    ([0-9]+)_hd\.mp4$

If the file does not match this name, it will not be included in the file name created by wget upon download.

The URLs are separated by blank lines to denote the beginning of a new season. The episodes must be listed in order and cannot skip episodes. For example, if you have ten episodes in one season, they must be in ascending order from one to ten with no missing episodes in between. If the start point is not season one episode one, then an alternate start point can be specified by using arguments as described in the usage section.
