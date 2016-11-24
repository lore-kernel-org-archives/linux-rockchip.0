From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 7/9] clocksource/drivers/rockchip_timer: implement
 clocksource timer
Date: Thu, 24 Nov 2016 13:17:05 +0100
Message-ID: <1800621.EhepfMxccR@diego>
References: <1479922177-20136-1-git-send-email-al.kochet@gmail.com>
 <1479922177-20136-7-git-send-email-al.kochet@gmail.com>
 <FFD6E644-F68B-4880-BC76-88F6063D070E@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <FFD6E644-F68B-4880-BC76-88F6063D070E-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 24. November 2016, 12:36:20 schrieb Alexander Kochetkov:
> > In order to use the patch you have to setup the timer using
> > 'rockchip,clocksource' device tree property
> 
> Just came in mind, that it is better to replace 'rockchip,clocksource'
> device tree property with KConfig option in order to enable clocksource on
> dedicated timer?
> 
> Someting like:
> [ ] enable clocksource
>    clocksource timer name:

That would mean recompiling the kernel for a maybe board-specific setting and 
is definitly not how things are handled these days :-) .
I.e. the overall goal is to have one kernel image that can actually run on 
multiple arm architectures (rockchip, imx, etc) and only gets configured by the 
devicetree.

In your dts-patch you reuse the rk3288-timer compatible value, which is also 
non-ideal.

What you may want to do is introduce a rockchip,rk3188-timer compatible and 
then make the timer-driver act accordingly, as you then know you are on a 
rk3188-board ... see drivers attaching specific structs to the of_device_id 
entries. From the documentation it also shouldn't really matter which timer 
you use as clocksource, as on the rk3188 it seems all of them act the same way 
(except timer3 being always on).

When touching devicetree-properties, please also adapt the binding document
	Documentation/devicetree/bindings/timer,rockchip,rk-timer.txt
in this case and also include the devicetree maintainers.


Heiko
