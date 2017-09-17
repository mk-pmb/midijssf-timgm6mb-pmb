/*jslint indent: 2, maxlen: 80, node: true */
/* -*- tab-width: 2 -*- */
'use strict';
require('midijssf-from-sf2-pmb')({ destDir: module,

  sf2file:      '/usr/share/sounds/sf2/TimGM6mb.sf2',
  timidityCfg:  '/etc/timidity/timgm6mb.cfg',

  fmt_oggLow: { add: true },
  fmt_mp3Low: { add: true },

  whichInstruments: function (allIns) {
    // return [ allIns[0], allIns[125], ];
    return allIns;
  },


  });
