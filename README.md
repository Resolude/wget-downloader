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

    http://example.com/path/to/file/episode_4487.mp4
    http://example.com/path/to/file/episode_4637.mp4
    http://example.com/path/to/file/episode_4822.mp4
    http://example.com/path/to/file/episode_4850.mp4
    http://example.com/path/to/file/episode_4885.mp4
    http://example.com/path/to/file/episode_4911.mp4
    http://example.com/path/to/file/episode_4944.mp4
    http://example.com/path/to/file/episode_4958.mp4
    http://example.com/path/to/file/episode_7032.mp4
    http://example.com/path/to/file/episode_7401.mp4
    http://example.com/path/to/file/episode_7524.mp4
    http://example.com/path/to/file/episode_7749.mp4
    http://example.com/path/to/file/episode_7981.mp4
    http://example.com/path/to/file/episode_8186.mp4
    http://example.com/path/to/file/episode_8541.mp4
    http://example.com/path/to/file/episode_8749.mp4

    http://example.com/path/to/file/episode_14662.mp4
    http://example.com/path/to/file/episode_15659.mp4
    http://example.com/path/to/file/episode_16115.mp4
    http://example.com/path/to/file/episode_16737.mp4
    http://example.com/path/to/file/episode_16869.mp4
    http://example.com/path/to/file/episode_17212.mp4
    http://example.com/path/to/file/episode_17830.mp4
    http://example.com/path/to/file/episode_17989.mp4
    http://example.com/path/to/file/episode_20210.mp4
    http://example.com/path/to/file/episode_20565.mp4
    http://example.com/path/to/file/episode_20669.mp4
    http://example.com/path/to/file/episode_20792.mp4
    http://example.com/path/to/file/episode_20899.mp4
    http://example.com/path/to/file/episode_21076.mp4
    http://example.com/path/to/file/episode_21174.mp4
    http://example.com/path/to/file/episode_21287.mp4

    http://example.com/path/to/file/episode_25600.mp4
    http://example.com/path/to/file/episode_25730.mp4
    http://example.com/path/to/file/episode_25851.mp4
    http://example.com/path/to/file/episode_25999.mp4
    http://example.com/path/to/file/episode_26113.mp4
    http://example.com/path/to/file/episode_26274.mp4
    http://example.com/path/to/file/episode_26499.mp4
    http://example.com/path/to/file/episode_26705.mp4
    http://example.com/path/to/file/episode_28154.mp4
    http://example.com/path/to/file/episode_28273.mp4
    http://example.com/path/to/file/episode_28412.mp4
    http://example.com/path/to/file/episode_28752.mp4
    http://example.com/path/to/file/episode_28867.mp4
    http://example.com/path/to/file/episode_29015.mp4
    http://example.com/path/to/file/episode_29187.mp4
    http://example.com/path/to/file/episode_29506.mp4

    http://example.com/path/to/file/episode_32715.mp4
    http://example.com/path/to/file/episode_32849.mp4
    http://example.com/path/to/file/episode_33001.mp4
    http://example.com/path/to/file/episode_33182.mp4
    http://example.com/path/to/file/episode_33357.mp4
    http://example.com/path/to/file/episode_33455.mp4
    http://example.com/path/to/file/episode_33655.mp4
    http://example.com/path/to/file/episode_33819.mp4
    http://example.com/path/to/file/episode_34867.mp4
    http://example.com/path/to/file/episode_34996.mp4
    http://example.com/path/to/file/episode_35154.mp4
    http://example.com/path/to/file/episode_35319.mp4
    http://example.com/path/to/file/episode_35476.mp4
    http://example.com/path/to/file/episode_35592.mp4
    http://example.com/path/to/file/episode_35701.mp4
    http://example.com/path/to/file/episode_35861.mp4

Files can also end with _hd.mp4.

The shows are separated by newlines to denote the beginning of a new season. The episodes must be listed in order and cannot skip episodes. For example, if you have ten episodes in one season, they must be in ascending order from one to ten with no gaps in between. If the start point is not season one, episode one, then an alternate start point can be specified by using arguments as described in the usage section.
