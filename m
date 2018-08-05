From: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: shutdown drm subsystem on shutdown
Date: Sun, 5 Aug 2018 17:50:38 +0100
Message-ID: <20180805175038.1d3a0c5e@why.wild-wind.fr.eu.org>
References: <5B20F5F0.9090101@rock-chips.com>
 <20180805140911.19205-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180805140911.19205-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Vicente,

On Sun,  5 Aug 2018 16:09:11 +0200
Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> As explained by Robin Murphy:
> > the IOMMU shutdown disables paging, so if the VOP is still
> > scanning out then that will result in whatever IOVAs it was using now going
> > straight out onto the bus as physical addresses.  
> 
> Suggested-by: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Suggested-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index f814d37b1db2..00a06768edb2 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -442,6 +442,14 @@ static int rockchip_drm_platform_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
> +{
> +	struct drm_device *drm = platform_get_drvdata(pdev);
> +
> +	if (drm)
> +		drm_atomic_helper_shutdown(drm);

I'm not completely sure this is the right thing to do here. We want
shutdown to teardown the whole thing, not just the DRM context.

The driver already calls drm_atomic_helper_shutdown as part of the
unbind sequence, which looks very much like what we're trying to
achieve here.

I've already posted a patch[1] which calls the .remove handler,
ensuring that the whole infrastructure gets torn down at shutdown time.

Thanks,

	M.

[1] https://www.spinics.net/lists/arm-kernel/msg670229.html
-- 
Without deviation from the norm, progress is not possible.
