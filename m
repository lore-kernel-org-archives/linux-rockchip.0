From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Tue, 7 Jul 2015 10:28:34 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.1507071020310.1692-100000@iolanthe.rowland.org>
References: <20150706190212.GN20779@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20150706190212.GN20779-HgARHv6XitJaoMGHk7MhZQC/G2K4zDHf@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 6 Jul 2015, Felipe Balbi wrote:

> > You know, this is the first time I've run across this optimization.
> > 
> > In principle it applies to any USB host controller, not just to PHYs.  
> > There's no reason to enable wakeup for a controller if none of the 
> > attached devices can issue a wakeup request.
> > 
> > I don't know if implementing this in other HCDs would save any power.  
> > Any ideas?
> 
> most likely it would. Enabling wakeup usually boils down to keeping a
> tiny part of the controller (or PHY) powered up. Sometimes that lies in
> an always-on power domain, so there would be no difference.

Doug, how would you feel about reworking the patch that exports
usb_wakeup_enabled_descendants()?  Instead of doing it that way, create
and export a new subroutine in hcd.c called
usb_hcd_wakeup_not_needed(), or something similar.

The idea is that a host controller driver can do something like this:

	do_wakeup = device_may_wakeup(...);
	if (usb_hcd_wakeup_not_needed(hcd))
		do_wakeup = false;

It encapsulates what you want in a form that can easily be used by 
every HCD.  We can then add this call into the HCDs, over time.

(Merging a change like this would be a challenge.  I guess Felipe would
have to put it in a separate branch which Greg could pull, or vice
versa, so that the new routine would be available to patches submitted
to either maintainer.)

Alan Stern
