From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC PATCH v1 0/2] rk3318 A95X Z2 board
Date: Mon, 22 Jun 2020 10:01:55 +0200
Message-ID: <c421ed14-3b1d-7aca-d106-5e312a38840f@gmail.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200620134659.4592-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

BUG report 1:
About phy-rockchip-inno-usb2.c and rk3318.

Goal is to use ttyUSB0 as console in combination with agetty as long as
we don't have a working HDMI signal on a DVI monitor.
Boot with rk3318 starts normal on emmc with U-boot OK. It then loads the
kernel
and initrd on SD card. Log view on ttyS2 works.
At the end of the init process extcon0 sends 2 events sortly after each
other.
usb2 crashes if extcon0 event reports 'USB=0' and 'DCP=1'.
It looks like there's no consistant init (delay?) in the driver or hardware.

Boot only possible with busybox + initrd with no scripts that delay
event handling.
(Un)plug events are unrelayable. Getty only becomes active
if usb cable connected direct to the board(without usb hub).
With systemd only a kernel log scroll, but never able to use ttyUSB0 as
login.

mdev.conf line to catch the events:

extcon[0-9]+    root:root 666 */bin/cat /sys/class/extcon/extcon0/state
> /dev/kmsg

In extlinux.conf clk and pm must be ignored in the kernel command line
to prevent a crash.

label kernel
    kernel /Image
    fdt /rk3318-a95x-z2.dtb
    initrd /rootfs.cpio
    append console=ttyUSB0,115200n8
           console=ttyS2,1500000n8
           pd_ignore_unused
           clk_ignore_unused
           initcall_debug=1
           debug
           drm.debug=0xe
           video=HDMI-A-1:1280x720@60
           earlycon=uart8250,mmio32,0xff130000,keep
           swiotlb=1
           kpti=0
           no_console_suspend=1
           consoleblank=0
           rootwait

Question:
Does anyone have a solution for usb2 or
was there previous discussion/info about this?

Why has rk3328.dtsi incomplete (see TRM) power-domains and qos? Does
that work?
Was rk3318 VOP+HDMI, gmac2phy tested in Linux mainline before?

Kind regards,

Johan

Kernel log with usb2 OK:

[    0.959594] Run /init as init process
[    0.959937]   with arguments:
[    0.960210]     /init
[    0.960416]   with environment:
[    0.960703]     HOME=/
[    0.960917]     TERM=linux
[    0.961562] process '/bin/busybox' started with executable stack
[    0.967474] usb 1-1: new full-speed USB device number 2 using dwc2

[..]

[    6.785160] USB=1
[    6.785160] USB-HOST=0
[    6.785160] SDP=1
[    6.785160] CDP=0
[    6.785160] DCP=0
[    6.785160] SLOW-CHARGER=0
[    6.785165] USB=1
[    6.785165] USB-HOST=0
[    6.785165] SDP=1
[    6.785165] CDP=0
[    6.785165] DCP=0
[    6.785165] SLOW-CHARGER=0
[   13.729625] random: crng init done
[   31.715450] vcc_host_vbus: disabling

Kernel log with usb2 crash:

[    0.940666] Run /init as init process
[    0.941005]   with arguments:
[    0.941280]     /init
[    0.941490]   with environment:
[    0.941781]     HOME=/
[    0.941999]     TERM=linux
[    0.942536] process '/bin/busybox' started with executable stack
[    0.967442] usb 1-1: new full-speed USB device number 2 using dwc2

[..]

[    7.300792] USB=0
[    7.300792] USB-HOST=0
[    7.300792] SDP=0
[    7.300792] CDP=0
[    7.300792] DCP=1
[    7.300792] SLOW-CHARGER=0
