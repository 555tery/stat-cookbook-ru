The [probability and statistics cookbook][stat-cookbook] contains a succinct
representation of various topics in probability theory and statistics. It
provides a comprehensive mathematical reference reduced to its essence, rather
than aiming for elaborate explanations.

Feel encouraged to extend the cookbook by forking it and submitting pull
requests.

Build Setup
-----------

You can build the cookbook locally via:

    make

This first generates the distribution plots via R and then compiles the LaTeX source.
You may have to install a few missing packages via CRAN.

Russian version
---------------

The Russian translation is in `ru/stat-cookbook-ru.tex`; the English document
and default `make` build remain unchanged. Build the translation with `make ru`.
This target creates separately localized plots with the existing R script and
compiles them with Tectonic (a XeTeX-based engine). R, the packages required by
`figs/distributions.R`, Tectonic, and the Times New Roman, Arial, and Courier New
fonts must be available.

See the [Russian version and build instructions](ru/README.md), or download the
[compiled Russian PDF](ru/stat-cookbook-ru.pdf).

License
-------

This work is licensed under a [Attribution-NonCommercial-ShareAlike 4.0
International License][by-nc-sa].

[![Creative Commons License][by-nc-sa-img]][by-nc-sa]

[stat-cookbook]: http://statistics.zone
[by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[by-nc-sa-img]: http://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png
