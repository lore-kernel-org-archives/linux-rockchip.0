From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
Date: Mon, 06 Jan 2020 15:23:04 +0100
Message-ID: <12698221.yjhRjYoh56@diego>
References: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
 <30349756.SWxbmzi8ve@phil> <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3d0f69d5-739a-0566-b1d7-bc3c2f0c8045-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

Am Mittwoch, 1. Januar 2020, 14:01:32 CET schrieb Robin Murphy:
> On 2019-12-31 11:50 am, Heiko Stuebner wrote:
> > Am Sonntag, 29. Dezember 2019, 18:48:05 CET schrieb Robin Murphy:
> >> Apparently I wasn't paying enough attention... And nor is the lazy
> >> test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
> >> the correct polarity, let's also hook up a keymap now that one for
> >> the standard Beelink remote has handily appeared.
> >>
> >> Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> >> ---
> > 
> > applied for 5.6
> 
> Thanks Heiko - although if you have any other fixes to send for 5.5 do 
> you think this might be able to sneak in too? Someone mentioned on IRC 
> that unlike mine, their box wouldn't even generate interrupts with the 
> polarity backwards.

I've moved the patch over to a shiny new fixes branch for 5.5 now :-)

Heiko
