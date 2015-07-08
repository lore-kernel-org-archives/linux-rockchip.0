From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Wed, 8 Jul 2015 11:01:06 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.1507081055050.2243-100000@iolanthe.rowland.org>
References: <CAODwPW-O8g+X8wiPH=m8q+BR1-V36dcgykM12DofiXZMU=9_3A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAODwPW-O8g+X8wiPH=m8q+BR1-V36dcgykM12DofiXZMU=9_3A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Julius Werner <jwerner@chromium.org>
Cc: Felipe Balbi <balbi@ti.com>, Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, John Youn <johnyoun@synopsys.com>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, Chris Zhong <zyw@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Andrew Bresticker <abrestic@chromium.org>, Alexandru Stan <amstan@chromium.org>, lyz <lyz@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 7 Jul 2015, Julius Werner wrote:

> > Doug, how would you feel about reworking the patch that exports
> > usb_wakeup_enabled_descendants()?  Instead of doing it that way, create
> > and export a new subroutine in hcd.c called
> > usb_hcd_wakeup_not_needed(), or something similar.
> 
> We have a use case with another host controller (Tegra, which I think
> is still in the process of being upstreamed) where we are able to
> power down PHYs (and thus reduce power consumption) per port. I think
> we should prefer the more flexible 'number of wake devices in subtree'
> interface to be able to support cases like that. (And for the simple
> case, 'if (usb_hcd_wakeup_not_needed(hcd))' and 'if
> (!usb_wakeup_enabled_descendants(hcd->self.root_hub))' look pretty
> similar anyway.)

Okay, that's a good point.

But I don't see how you will make it work when the root hub itself is
not enabled for wakeup and a non-hub device plugged into one of the
root hub's ports is enabled.

It seems like you would need a usb_hcd_wakeup_not_needed(hcd, port) 
subroutine.

Alan Stern
