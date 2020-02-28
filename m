From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for Pinebook Pro
Date: Fri, 28 Feb 2020 16:15:25 +0100
Message-ID: <3144691.gaQQKPV42P@diego>
References: <20200227180630.166982-1-t.schramm@manjaro.org> <12370413.gKdrHkWbHd@diego> <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <37190f26-48aa-dcad-d4b1-8a534ba1360e-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Tobias Schramm <t.schramm-x9ov/VOV9nNAfugRpC6u6w@public.gmane.org>
Cc: Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Markus Reichl <m.reichl-SRyzfwRm/0rPTwkrwQOX7A@public.gmane.org>, Alexis Ballier <aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Tobias,

Am Freitag, 28. Februar 2020, 15:57:10 CET schrieb Tobias Schramm:
> thanks for the review. I'll implement the changes and send a v2.
> 
> >> +	 * of wakeup sources without disabling the whole key
> > Also can you explain the problem a bit? If there is a deficit in the input
> > subsystem regarding wakeup events, dt is normally not the place to work
> > around things [we're supposed to be OS independent]
> 
> The issue is that some users wanted to be able to control the wakeup
> functionality of the keys separately via sysfs. That does not seem to be
> possible when combining both keys into one gpio-keys node. A more
> detailed explanation of the issue can be found at [1].

ok ... but that is really strange, because looking at gpio-keys.c I see
it checking the individual button wakeup-property before setting
the irq-wake in gpio_keys_enable_wakeup() .

Ah, but I guess manually disabling/enabling wakeup via sysfs only
works for the whole device and all wakeup buttons.

In general this sounds more like a gpio-keys deficit, but in the end
we can keep the separate gpio-key nodes here, they don't violate any
dt-bindings ;-) .


Heiko
