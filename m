From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [REPOST PATCH 3/3] USB: dwc2: Don't turn off the usbphy in
 suspend if wakeup is enabled
Date: Mon, 6 Jul 2015 12:39:27 -0700
Message-ID: <CAD=FV=V1oOdYLZyw3RpdYUQMCKnhcZ=AymnTDzy6Zm=MXqnehQ@mail.gmail.com>
References: <1436207224-21849-4-git-send-email-dianders@chromium.org>
	<Pine.LNX.4.44L0.1507061450190.1860-100000@iolanthe.rowland.org>
	<20150706190212.GN20779@saruman.tx.rr.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20150706190212.GN20779-HgARHv6XitJaoMGHk7MhZQC/G2K4zDHf@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Cc: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Andrew Bresticker <abrestic-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lyz <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Jul 6, 2015 at 12:02 PM, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org> wrote:
> On Mon, Jul 06, 2015 at 02:58:16PM -0400, Alan Stern wrote:
>> On Mon, 6 Jul 2015, Douglas Anderson wrote:
>>
>> > If the 'snps,need-phy-for-wake' is set in the device tree then:
>> >
>> > - We know that we can wakeup, so call device_set_wakeup_capable().
>> >   The USB core will use this knowledge to enable wakeup by default.
>> > - We know that we should keep the PHY on during suspend if something
>> >   on our root hub needs remote wakeup.  This requires the patch (USB:
>> >   Export usb_wakeup_enabled_descendants()).  Note that we don't keep
>> >   the PHY on at suspend time if it's not needed because it would be a
>> >   power draw.
>>
>> You know, this is the first time I've run across this optimization.
>>
>> In principle it applies to any USB host controller, not just to PHYs.
>> There's no reason to enable wakeup for a controller if none of the
>> attached devices can issue a wakeup request.
>>
>> I don't know if implementing this in other HCDs would save any power.
>> Any ideas?
>
> most likely it would. Enabling wakeup usually boils down to keeping a
> tiny part of the controller (or PHY) powered up. Sometimes that lies in
> an always-on power domain, so there would be no difference.

As per Andrew Bresticker (CCed on this email), the optimization made
sense in Tegra.  If you're willing to look into the chromeos-3.10
tree, you can see that Andrew added a usb_port_may_wakeup() call in
<https://chromium-review.googlesource.com/196593>.  He then used it in
the tegra XHCI driver in
<https://chromium-review.googlesource.com/196594>.  Recently I talked
to Andrew and he indicated that rather than add usb_port_may_wakeup()
like he did it probably made sense to just export
usb_wakeup_enabled_descendants().

-Doug
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
