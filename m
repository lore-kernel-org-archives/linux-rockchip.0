From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with DWC2_POWER_DOWN_PARAM_NONE
Date: Wed, 1 May 2019 16:58:21 -0700
Message-ID: <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
References: <20190418001356.124334-1-dianders@chromium.org> <20190418001356.124334-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190418001356.124334-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, William Wu <william.wu@rock-chips.com>, linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, Chris <zyw@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Amelie Delaunay <amelie.delaunay@st.com>, Julius Werner <jwerner@chromium.org>, Dinh Nguyen <dinguyen@opensource.altera.com>, Elaine Zhang <zhangqing@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,


On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> because apparently it broke the Altera SOCFPGA.
>
> With all the changes that have happened to dwc2 in the meantime, it's
> possible that the Altera SOCFPGA will just magically work with this
> change now.  ...and it would be good to get bus suspend/resume
> implemented.
>
> This change is a forward port of one that's been living in the Chrome
> OS 3.14 kernel tree.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> This patch was last posted at:
>
> https://lkml.kernel.org/r/1446237173-15263-1-git-send-email-dianders@chromium.org
>
> ...and appears to have died the death of silence.  Maybe it could get
> some bake time in linuxnext if we can't find any proactive testing?
>
> I will also freely admit that I don't know tons about the theory
> behind this patch.  I'm mostly just re-hashing the original commit
> from Kever that was reverted since:
> * Turning on partial power down on rk3288 doesn't "just work".  I
>   don't get hotplug events.  This is despite dwc2 auto-detecting that
>   we are power optimized.
> * If we don't do something like this commit we don't get into as low
>   of a power mode.

OK, I spent the day digging more into this patch to confirm that it's
really the right thing to do.  ...and it still seems to be.

First off: I'm pretty sure the above sentence "If we don't do
something like this commit we don't get into as low of a power mode."
is totally wrong.  Luckily it's "after the cut" and not part of the
commit message.  Specifically I did a bunch of power testing and I
couldn't find any instance saving power after this patch.

...but, then I looked more carefully at all the history of this
commit.  I ended up at:

https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/306265/

...where I said that this fixes a resume speed regression.  More
details could be found at the linked bug, AKA:

https://bugs.chromium.org/p/chromium/issues/detail?id=548336

...but, sadly, I wasn't as verbose as I usually am and didn't describe
my exact testing setup.  So I tried to reproduce.  ...and I was able
to.  I tested on an rk3288-veyron-jerry with an empty USB hub plugged
into the left port (the host port) and my "servo 2" debug board hooked
up to the right port.  The "power_Resume" test in Chrome OS certainly
showed a regression in 3.14 when doing a suspend/resume cycle.


Digging into the logs in 3.14, before this patch I saw this in the logs:

usb 3-1: reset high-speed USB device number 2 using dwc2
usb 3-1.7: reset high-speed USB device number 3 using dwc2

...after this patch:

usb 3-1: USB disconnect, device number 2
usb 3-1.7: USB disconnect, device number 3
usb 3-1: new high-speed USB device number 4 using dwc2
usb 3-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
usb 3-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 3-1: Product: USB 2.0 Hub [MTT]
usb 3-1.7: new high-speed USB device number 5 using dwc2
usb 3-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
usb 3-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 3-1.7: Product: USB 2.0 Hub

...so basically my belief is that without this patch we're just sorta
leaving the device hanging and it get confused on resume.  After this
patch we behave slightly better.

I tested on 4.19 and found much the same.  There:

usb 2-1: reset high-speed USB device number 2 using dwc2
usb 2-1.7: reset high-speed USB device number 3 using dwc2

vs.

usb 2-1.7: USB disconnect, device number 3
usb 2-1: USB disconnect, device number 2
usb 2-1: new high-speed USB device number 4 using dwc2
usb 2-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
usb 2-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1: Product: USB 2.0 Hub [MTT]
usb 2-1.7: new high-speed USB device number 5 using dwc2
usb 2-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
usb 2-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1.7: Product: USB 2.0 Hub


On 4.19 I didn't actually notice a the same resume time regression,
presumably because things are happening more asynchronously there (I
didn't confirm this).  ...but in any case it seems like the right
thing to do to actually do the suspend.


I'll also re-iterate once more that I'm not claiming that my patch
helps with "partial power down".  It merely makes the "power savings
disabled" case work more properly.


I'll also note that my patch is already in Felipe's "testing/next"
branch which I continue to believe is correct and good.

-Doug
