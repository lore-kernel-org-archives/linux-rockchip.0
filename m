From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable DW USB2 support and
 rockchip phy
Date: Mon, 07 Sep 2015 09:53:11 +0200
Message-ID: <1447076.WCyUA0P2ql@diego>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441609832.8778.4.camel@collabora.co.uk> <55ED3BC5.8050603@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <55ED3BC5.8050603-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Krzysztof Kozlowski <k.kozlowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Cc: Kevin Hilman <khilman-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Javier Martinez Canillas <javier-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, Ray Jui <rjui-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>, Kukjin Kim <kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Alexandre Belloni <alexandre.belloni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, Stephen Warren <swarren-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Marek Szyprowski <m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 7. September 2015, 16:24:53 schrieb Krzysztof Kozlowski:
> On 07.09.2015 16:10, Sjoerd Simons wrote:
> > Hey Krzysztof,
> > 
> > On Mon, 2015-09-07 at 09:02 +0900, Krzysztof Kozlowski wrote:
> >> On 07.09.2015 05:16, Sjoerd Simons wrote:
> >>> The DesignWare HS OTG USB 2.0 is used in various SoC families among
> >>> wich
> >>> the various rockchip SoCs, enable the driver and the PHY glue for
> >>> rockchip
> >> 
> >> +Cc Marek and Kukjin,
> >> 
> >> This would conflict with Marek's:
> >> [PATCH v2] ARM: multi_v7_defconfig: Enable DWC2 USB driver and USB
> >> ethernet gadget
> >> http://www.spinics.net/lists/linux-samsung-soc/msg46743.html
> >> 
> >> Probably your series and Marek's change should go together to the
> >> same
> >> tree. How about rebasing your work on top of it?
> > 
> > Thanks for the pointer! I'm entirely happy to rebase on Mareks patch or
> > this one dropped for now until Mareks patch lands.
> > 
> > These patches were based on current linux-next, so i guess Mareks pathc
> > didn't land just yet? Tbh, i don't really know what tries multi_v7
> > tends to go through (especially for non-platform specific changes)
> 
> It was too late for Marek's patch to go for v4.3 merge window, so I
> applied it but not pushed to my for-next branch. AFAIU, Stephen does not
> want v4.4 material during merge window because of mangling with statistics.
> 
> 
> If you want to rebase (or cherry-pick), you can find Marek's patch here:
> branch: defconfig-for-next
> repo: git://github.com/krzk/linux.git
> 
> However this *branch will be rebased on v4.3-rc1* (because this is
> material for v4.4). After v4.3-rc1 I can prepare a tag for other
> interested parties.
> 
> 
> As for multi_v7_defconfig policy, I got impression from the
> Arnd/Olof/Kevin comments on LKML, that platform specific changes should
> go through platform tree. However this is multi-platform change so maybe
> we can push both patches through arm-soc.
> 
> 
> Arnd, Olof, Kevin (BTW, you missed to CC him),
> 
> How do you wish to handle this case (USB_DWC2 and two patches: Marek's
> and Sjoerd's)?

I guess the easiest option would be to just drop the dwc2 from here, only 
keeping the phy enablement and let everything (Marek's and Sjoerd's patch) 
come together in the armsoc defconfig branch? As the rest of both patches don't 
seem to touch common areas, they should be easily mergable from different trees 
as well.


Heiko
