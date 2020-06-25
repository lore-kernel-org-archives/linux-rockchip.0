From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC PATCH v1 0/2] rk3318 A95X Z2 board
Date: Thu, 25 Jun 2020 10:38:33 +0200
Message-ID: <58daf826-1a7b-0c7d-5c55-50746af408ec@gmail.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200620134659.4592-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Status update.

On 6/20/20 3:46 PM, Johan Jonker wrote:
> status: EXPERIMENTAL

> What works:
>  uart2
>  mmc
>  emmc
>  sd card
>  usb2

///////////////////////////

USB2:

The usb2 port only works reliable with:

	dr_mode = "host";

Question for Heiko:
Should we change that in rk3328.dtsi or in rk3318-a95x-z2.dts?

///////////////////////////

USB3:

The usb3 port does work with the drivers phy-rockchip-inno-usb3.c and
dwc3-rockchip-inno.c. This work around however still gives a warning for
storage devices..

Disconnect a ttyUSB device gives this log:

[   25.215260] cp210x 4-1:1.0: cp210x converter detected
[   25.219970] usb 4-1: cp210x converter now attached to ttyUSB1

[..]

[   27.413766] usb 4-1: USB disconnect, device number 2
[   27.415492] cp210x ttyUSB1: cp210x converter now disconnected from
ttyUSB1
[   27.416517] cp210x 4-1:1.0: device disconnected

When we disconnect a USB Mass Storage device it give a warning about the
cable.

[   61.597606] usb 5-1: new SuperSpeed Gen 1 USB device number 2 using
xhci-hcd
[   61.622267] usb-storage 5-1:1.0: USB Mass Storage device detected
[   61.624285] scsi host0: usb-storage 5-1:1.0

[..]

[   81.238511] usb 5-1: USB disconnect, device number 2

[..]

[   83.737413] usb usb5-port1: Cannot enable. Maybe the USB cable is bad?
[   86.370725] usb usb5-port1: attempt power cycle

///////////////////////////

adc-key test OK with:

./evtest

///////////////////////////

ir test OK with:

./insmod  gpio-ir-recv.ko
./ir-keytable -w /usr/etc/rc-keymaps/protocols/a95x_z2.toml
./evtest

The remote control has 2 buttons for KEY_VOLUMEDOWN and KEY_VOLUMEUP.
The linux definitions have only definitions for 1 key set.

Question:

How can I differentiate between them?

a95x_z2.toml:

[[protocols]]
name = "a95_z2"
protocol = "nec"
variant = "nec"
[protocols.scancodes]
0xdf1c = "KEY_POWER"
0xdff1 = "KEY_POWER2"
0xdff2 = "KEY_VIDEO_NEXT"
0xdff3 = "KEY_MUTE"
0xdff4 = "KEY_VOLUMEDOWN"
0xdff5 = "KEY_VOLUMEUP"
0xdf4b = "KEY_PROG1"
0xdf4f = "KEY_PROG2"
0xdf01 = "KEY_PLAY"
0xdf5f = "KEY_HELP"
0xdf5c = "KEY_VOLUMEDOWN"
0xdf5d = "KEY_VOLUMEUP"
0xdf42 = "KEY_HOME"
0xdf0a = "KEY_BACK"
0xdf1a = "KEY_UP"
0xdf47 = "KEY_LEFT"
0xdf07 = "KEY_RIGHT"
0xdf48 = "KEY_DOWN"
0xdf06 = "KEY_OK"
0xdf03 = "KEY_REPLY"
0xdf18 = "KEY_MENU"
0xdf54 = "KEY_1"
0xdf16 = "KEY_2"
0xdf15 = "KEY_3"
0xdf50 = "KEY_4"
0xdf12 = "KEY_5"
0xdf11 = "KEY_6"
0xdf4c = "KEY_7"
0xdf0e = "KEY_8"
0xdf0d = "KEY_9"
0xdf41 = "KEY_FN"
0xdf0c = "KEY_0"
0xdf10 = "KEY_DELETE"

///////////////////////////
