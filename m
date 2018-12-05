From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Allow driver to be shutdown on reboot/kexec
Date: Tue, 4 Dec 2018 19:01:34 -0800
Message-ID: <20181205030127.GA200921@google.com>
References: <20180805124807.18169-1-marc.zyngier@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180805124807.18169-1-marc.zyngier@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Marc Zyngier <marc.zyngier@arm.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

+ others

Hi,

On Sun, Aug 05, 2018 at 01:48:07PM +0100, Marc Zyngier wrote:
> Leaving the DRM driver enabled on reboot or kexec has the annoying
> effect of leaving the display generating transactions whilst the
> IOMMU has been shut down.
> 
> In turn, the IOMMU driver (which shares its interrupt line with
> the VOP) starts warning either on shutdown or when entering the
> secondary kernel in the kexec case (nothing is expected on that
> front).
> 
> A cheap way of ensuring that things are nicely shut down is to
> register a shutdown callback in the platform driver.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---

This patch made it into 4.20-rc1 as well as -stable, and it has caused
regressions for me, on the Kevin and Scarlet [1] RK3399 platforms. On
shutdown/reboot, I see this:

[   94.742559] WARNING: CPU: 4 PID: 2035 at drivers/gpu/drm/drm_mode_config.c:477 drm_mode_config_cleanup+0x1c4/0x294
...
[   94.775904] CPU: 4 PID: 2035 Comm: reboot Tainted: G        W         4.20.0-rc5+ #83
[   94.784651] Hardware name: Google Scarlet (DT)
[   94.789611] pstate: 20000005 (nzCv daif -PAN -UAO)
[   94.794959] pc : drm_mode_config_cleanup+0x1c4/0x294
[   94.800500] lr : drm_mode_config_cleanup+0x108/0x294
...
[   94.898683] Call trace:
[   94.901410]  drm_mode_config_cleanup+0x1c4/0x294
[   94.906565]  rockchip_drm_unbind+0x4c/0x8c
[   94.911138]  component_master_del+0x88/0xb8
[   94.915807]  rockchip_drm_platform_remove+0x2c/0x44
[   94.921243]  rockchip_drm_platform_shutdown+0x20/0x2c
[   94.926881]  platform_drv_shutdown+0x2c/0x38
[   94.931647]  device_shutdown+0x164/0x1b8
[   94.936016]  kernel_restart_prepare+0x40/0x48
[   94.940878]  kernel_restart+0x20/0x68
[   94.944964]  __se_sys_reboot+0x1ac/0x204
[   94.949331]  __arm64_sys_reboot+0x2c/0x38
[   94.953806]  el0_svc_common+0xa4/0xec
[   94.957891]  el0_svc_compat_handler+0x30/0x3c
[   94.962753]  el0_svc_compat+0x8/0x18
[   94.966740] ---[ end trace b9ba2e701f4fb233 ]---
[   95.255169] Memory manager not clean during takedown.
[   95.260824] WARNING: CPU: 4 PID: 2035 at drivers/gpu/drm/drm_mm.c:950 drm_mm_takedown+0x34/0x44
...
[   95.292314] CPU: 4 PID: 2035 Comm: reboot Tainted: G        W         4.20.0-rc5+ #83
[   95.301061] Hardware name: Google Scarlet (DT)
[   95.306020] pstate: 60000005 (nZCv daif -PAN -UAO)
[   95.311369] pc : drm_mm_takedown+0x34/0x44
[   95.315940] lr : drm_mm_takedown+0x34/0x44
...
[   95.415857]  drm_mm_takedown+0x34/0x44
[   95.420042]  rockchip_drm_unbind+0x64/0x8c
[   95.424613]  component_master_del+0x88/0xb8
[   95.429283]  rockchip_drm_platform_remove+0x2c/0x44
[   95.434728]  rockchip_drm_platform_shutdown+0x20/0x2c
[   95.440360]  platform_drv_shutdown+0x2c/0x38
[   95.445127]  device_shutdown+0x164/0x1b8
[   95.449504]  kernel_restart_prepare+0x40/0x48
[   95.454358]  kernel_restart+0x20/0x68
[   95.458436]  __se_sys_reboot+0x1ac/0x204
[   95.462812]  __arm64_sys_reboot+0x2c/0x38
[   95.467287]  el0_svc_common+0xa4/0xec
[   95.471373]  el0_svc_compat_handler+0x30/0x3c
[   95.476235]  el0_svc_compat+0x8/0x18
[   95.480215] ---[ end trace b9ba2e701f4fb234 ]---

It's especially bad on -stable kernels, where I believe the remove()
paths were even worse. This triggers a variety of OOPSes, and it's not
clear if those are simply because of backports (e.g., RK3399 did not
have support in 4.4.y, but our downstream has merged all sorts of
backports to make it work).

Anyway, the above warnings occur on v4.20-rc, which I think is
justification enough for a revert.

I plan to submit a revert which I hope can go to 4.20 as well as
-stable. I'd hope the remove()/shutdown() paths should be fixed before
this gets applied again, and that it does not get shipped to -stable
kernels.

Brian

[1] Technically Scarlet needed a few patches from -next to work at all,
    but Kevin is a similar platform that has been working for several
    releases.

>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index f814d37b1db2..05368fa4f956 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -442,6 +442,11 @@ static int rockchip_drm_platform_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
> +{
> +	rockchip_drm_platform_remove(pdev);
> +}
> +
>  static const struct of_device_id rockchip_drm_dt_ids[] = {
>  	{ .compatible = "rockchip,display-subsystem", },
>  	{ /* sentinel */ },
> @@ -451,6 +456,7 @@ MODULE_DEVICE_TABLE(of, rockchip_drm_dt_ids);
>  static struct platform_driver rockchip_drm_platform_driver = {
>  	.probe = rockchip_drm_platform_probe,
>  	.remove = rockchip_drm_platform_remove,
> +	.shutdown = rockchip_drm_platform_shutdown,
>  	.driver = {
>  		.name = "rockchip-drm",
>  		.of_match_table = rockchip_drm_dt_ids,
