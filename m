From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 0/2] drm/rockchip: try to fix vblank hang resulting
 from iommu irq change
Date: Wed, 30 May 2018 14:18:18 -0300
Message-ID: <ee02c1ea3ff6f05880cca8b6c72d848892c967fb.camel@collabora.com>
References: <20180528132002.7712-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180528132002.7712-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: marc.zyngier-5wv7dgnIgG8@public.gmane.org, jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, enric.balletbo-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, tomeu.vizoso-ZGY8ohtN/8pPYcu2f3hruQ@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2018-05-28 at 15:20 +0200, Heiko Stuebner wrote:
> This still tries to address the hang seen by Ezequiel Garcia on rk3288.
> 
> As Tomasz noted, trying to count enablement can run into concurrency
> issues, so instead we'll just check if the vop is runtime-enabled
> to see if it could be the source of the irq and then just do our
> own clk_enable in the isr to bridge the possible gap between
> pm_runtime_enable and clk_enable in the core vop_enable() function.
> 
> Display tested to still work on rk3328 and rk3399, but as I don't see
> the hang from Ezequiel I hope that this fixes it.
> 

Yup, this series fixes the issue I reported. Thanks for fixing so quickly.

Tested-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

BTW, don't the patches need some stable tags as well?

Regards,
Eze
