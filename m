From: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Tue, 7 Jul 2015 17:06:29 -0700
Message-ID: <CAODwPW-O8g+X8wiPH=m8q+BR1-V36dcgykM12DofiXZMU=9_3A@mail.gmail.com>
References: <20150706190212.GN20779@saruman.tx.rr.com>
	<Pine.LNX.4.44L0.1507071020310.1692-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.1507071020310.1692-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

> Doug, how would you feel about reworking the patch that exports
> usb_wakeup_enabled_descendants()?  Instead of doing it that way, create
> and export a new subroutine in hcd.c called
> usb_hcd_wakeup_not_needed(), or something similar.

We have a use case with another host controller (Tegra, which I think
is still in the process of being upstreamed) where we are able to
power down PHYs (and thus reduce power consumption) per port. I think
we should prefer the more flexible 'number of wake devices in subtree'
interface to be able to support cases like that. (And for the simple
case, 'if (usb_hcd_wakeup_not_needed(hcd))' and 'if
(!usb_wakeup_enabled_descendants(hcd->self.root_hub))' look pretty
similar anyway.)
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
