
<!--#echo json="package.json" key="name" underline="=" -->
midijssf-timgm6mb-pmb
=====================
<!--/#echo -->

<!--#echo json="package.json" key="description" -->
(Huge output files not yet included.) MIDI.js sound font: timgm6mb. Converted
TimGM6mb.sf2 from Debian package timgm6mb-soundfont, GPL v2.
<!--/#echo -->




<!--#toc stop="scan" -->


Build
-----

Run `npm start` (or `nodejs convert.js`) to (re)build the wavetable files.

* [How to obtain the original `.sf2` on Windows][deb-win]



Known issues
------------

* The package is absurdly huge due to the output directories:
  * `mp3low-cjwt/`, `mp3low-midijs/`: 124 MB  each
  * `ogglow-cjwt/`, `ogglow-midijs/`: 147 + 148 MB
  * &rArr; Need to find a better distribution strategy than naive `npm pub`




&nbsp;

  [deb-win]: https://github.com/mk-pmb/midijssf-from-sf2-pmb/blob/master/docs/windows/import_ubuntu2win.md




License
-------
<!--#echo json="package.json" key=".license" -->
GPL-2
<!--/#echo -->

* Copyright (C) 2004 Tim Brechbill (http://www.timbrechbill.com)
* Converted and re-packaged by @mk-pmb
