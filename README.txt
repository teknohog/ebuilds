Ebuilds by teknohog
-------------------

x11-drivers/ati-drivers-11.12-r2
Patched for Linux 3.4. Faster than 12.x drivers in Bitcoin mining.

media-video/rtmpdump-yle-1.4.6 from http://users.tkk.fi/~aajanki/rtmpdump-yle/

media-video/yle-dl-2.0.1 from http://users.tkk.fi/~aajanki/rtmpdump-yle/

net-p2p/imule-2.3.2.0 from http://echelon.i2p/imule/


iMule notes
-----------

The daemon mode does not work at the moment. However, there are
several ways around this:

* Use xpra, the "screen for X". Start the client on one machine, and
  you can attach to that window remotely.

* The client accepts remote connections just like the daemon
  would. As a remote GUI, you can use amulegui from aMule. Remember to
  set a suitable port number in the client first, because by default
  it would clash with aMule.

  The client can be running in xpra, Xvfb or plain X. I recommend
  xpra, because initial configuration must be done on the client
  directly. Moreover, there is a confirmation dialog before starting
  each new version.



