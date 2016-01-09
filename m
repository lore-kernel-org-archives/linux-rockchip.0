From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: Change RTC_DRV_HYM8563 to builtin
Date: Sat, 09 Jan 2016 23:45:52 +0100
Message-ID: <2746599.O3XccuMTWz@phil>
References: <1452367683-11160-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <4578616.QcQm44RoCq@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4578616.QcQm44RoCq@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 9. Januar 2016, 20:33:51 schrieb Heiko Stuebner:
> Am Samstag, 9. Januar 2016, 20:28:02 schrieb Sjoerd Simons:
> > Apart from providing an RTC the hym8563 chip on some rockchip boards
> > (e.g. rock2 square and firefly) also provide the 32khz clock used by the
> > SoCs thermal sensors.
> > 
> > Switch the driver from a module to builtin such that the thermal
> > protection can work even if modules aren't used/loaded.
> > 
> > Signed-off-by: Sjoerd Simons <sjoerd.simons-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org>
> 
> Personally I'm ok with the reasoning for requiring rtc to be build in,
> but I guess others might disagree. Nevertheless
> 
> Acked-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> 
> and we'll let armsoc-people decide ;-) .
> 
> 
> Ideally we would do the same for the rk808 rtc as well - as it is exactly
> the same argument / case.

just so nobody gets the wrong idea, on the rk808, the needed clkout is 
separate in CONFIG_COMMON_CLK_RK808, not in the rtc. Still currently build 
as module, so depending on if we can build-in the hym8563, we should change 
the rk808-clkout accordingly.
