From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Wed, 8 Jul 2015 15:58:14 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.1507081555570.2243-100000@iolanthe.rowland.org>
References: <CAODwPW9-5abTDGwLyNRZ0hvn4+6T8ix55TqFhSy_xZx1VVuVNA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAODwPW9-5abTDGwLyNRZ0hvn4+6T8ix55TqFhSy_xZx1VVuVNA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 8 Jul 2015, Julius Werner wrote:

> > But I don't see how you will make it work when the root hub itself is
> > not enabled for wakeup and a non-hub device plugged into one of the
> > root hub's ports is enabled.
> >
> > It seems like you would need a usb_hcd_wakeup_not_needed(hcd, port)
> > subroutine.
> 
> We'd just put that in the Tegra platform driver, I guess. Iterate over
> all ports, call usb_wakeup_enabled_descendants() on the connected
> device (if any) and disable that port's PHY if it returns 0 or wasn't
> connected. Since usb_wakeup_enabled_descendants() also counts
> do_remote_wakeup from the device itself and is safe to call even on
> non-hubs, that should work for all cases.

All right, that seems reasonable.  But remember not to do this if 
wakeup is enabled on the root hub -- in that case all the PHYs must 
remain powered because unplugging and plugging are both wakeup events.

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
