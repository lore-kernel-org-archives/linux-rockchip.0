From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable hdmi on rk3399-puma-haikou
Date: Thu, 03 May 2018 14:40:37 +0200
Message-ID: <3531525.dDW6PuI0Wm@phil>
References: <20180424142459.3339-1-jakob.unterwurzacher@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180424142459.3339-1-jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 24. April 2018, 16:24:59 CEST schrieb Jakob Unterwurzacher:
> Earlier kernels showed a corrupt image on hdmi, on v4.16 things
> work fine at resolutions up to 1920x1080.
> 
> On v4.17-rc2 two fixes are pending for hdmi to work:
> 
> 1) "iommu/rockchip: make clock handling optional"
>    https://patchwork.kernel.org/patch/10344875/
> 
> 2) Add missing enable_irq in rockchip_drm_vop.c
>    http://lists.infradead.org/pipermail/linux-rockchip/2018-April/020427.html
> 
> These should get merged soon, so I think it's time to enable
> the hdmi output in our dts.
> 
> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> Cc: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> ---

Devicetree support should be independent of actual kernel features, so
it's not really necessary to list kernel-specific changes.
Instead I just shortened the message to
"The Puma-haikou combo supports hdmi output, so enable the hdmi controller
and vop controllers on it."

and applied it for 4.18


Thanks
Heiko
