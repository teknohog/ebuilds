Ebuilds by teknohog
-------------------

x11-drivers/ati-drivers-11.12-r3
Patched for Linux 3.[456]. Faster than 12.x drivers in Bitcoin mining on
some HD5xxx GPUs.

media-video/rtmpdump-yle-1.4.6 from http://users.tkk.fi/~aajanki/rtmpdump-yle/

media-video/yle-dl-2.1.0 from http://aajanki.github.io/yle-dl/

net-p2p/imule-2.3.2.3 from http://echelon.i2p/imule/

net-p2p/primecoind-0.1.0-r3 from http://primecoin.org/

net-p2p/primecoind-hp-0.1.1.5 (actually 0.1.1-hp5) from http://sourceforge.net/projects/primecoin-hp/


iMule notes
-----------

The daemon mode may not work at the moment. However, there are several ways
around this:

* Use xpra, the "screen for X". Start the client on one machine, and
  you can attach to that window remotely.

* The client accepts remote connections just like the daemon would.  As a
  remote GUI, you can use amulegui from aMule.  Remember to set a suitable
  port number in the client first, because by default it would clash with
  aMule.  The client can be running in xpra, Xvfb or plain X.

Note: when you start a new version of the graphical client for the first
time, there is a confirmation dialog, so do not start it anywhere out of
sight.
