Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD26C43458
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jul 2026 13:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6UnyGaxYIzK/LnT0HImK/EnCNo/TtiNY2CzeMKkMgo=; b=2elavA7iNo2IY+
	rWpodGYkIjMNaLfdBg7otoFljMzNJpfKMnfIQIHYSXhmmn7pmMFt/KMA+oBg7A6ZDCRhQWfkAMzSv
	1eKhtoC6SDjB06x09VwPBOolGk518tx57gGN3PCVvCYWbBR9qhk0oDZEuDo0q0aZX1RG5zwK3I+VJ
	ere/N4WDdI9+GyCixi43UADABXHhe5PXdYs6hkLidU6lNrLjVl5MvcWHc1q1Rq3tPLXTU+TkCXm8c
	51OnfkqvyaYBo2D40oASUkh8xm2s1713gLbe+hCuCTKMFTxm/xoE2dEuGbGNDJO5glRopkAycSuDH
	LxgMka1tkkzcAEpMhNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgMtw-00000009LOU-0kmo;
	Sun, 05 Jul 2026 13:28:52 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgMts-00000009LNO-4BSu
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jul 2026 13:28:50 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783258116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=75Oki2p9+J8O5hmX2u7GRFERo3z7tGNIzsRExUr/bFI=;
	b=XYHKqX4RHFHTovZ8pNtZLcq0rLACm9xJXFqbwJadyOVHCIPZGKc340EjYgwtr8jzMiCqpM
	FTE1me1ac8Sj5P+yTb2aq1yzr9cKfh92pVudKInUov6vZoym/NbPUb/9ion90ZoFu/onOG
	6iLkpfc7/oQjKX5VhNUIVz1cdChdwL/MQYvkqlyIZMZecKkc3TCzIFiFtYCoJ9kGFlXD+l
	KmpxNXjy5uMJNtnuwQ/FHQxLEhbfI6rlR7gibAmgU+Q7Gei1zu67zYcuBxq9Tp+ZLTRwyp
	N/sNzDjIVGAb2QvXG0qBZhSnUN1xbYJwnzSxK2XV07BeUEq6u1QccegmuE6kwg==
Date: Sun, 05 Jul 2026 15:28:29 +0200
Message-Id: <DJQO8Q4J2LDP.1G8I4FVF6J7TK@cknow-tech.com>
Cc: <kernel@collabora.com>, "Andy Yan" <andyshrk@163.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/9] drm/rockchip: vop2: Reset AXI and DCLK to improve
 robustness
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "David Airlie" <airlied@gmail.com>,
 "Simona Vetter" <simona@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Philipp Zabel" <p.zabel@pengutronix.de>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
In-Reply-To: <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_062849_200346_C1B51E57 
X-CRM114-Status: GOOD (  23.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cristian,

On Wed Jun 17, 2026 at 8:52 PM CEST, Cristian Ciocaltea wrote:
> Assert the AXI reset in the CRTC disable path, and the VP DCLK reset in
> the enable path.
>
> These resets are intended to leave the hardware in a clean state for the
> next use, helping recover from exceptions such as IOMMU page faults, as
> well as to prevent random display output glitches, such as a blank
> image, observed when switching modes that also change the color format,
> e.g. from RGB to YUV420 and vice versa.
>
> For now this seems to affect only the RK3588, hence the resets are
> optional and will be provided in the device tree for this SoC only.

Why do you think it only effect RK3588? I reported about my RK3568 test here:
https://lore.kernel.org/linux-rockchip/DFRU6ODDM71P.3NQGLRK8IVDUY@cknow-tech.com/
"I then went on to try LibreELEC's builds. The artifacts I (sometimes)
saw, were gone :-D OTOH, I did get several major issues 'in return',
like rk_iommu Page fault resulting in a black screen and the only way to
'recover' from it, was a reboot."

And I reported some more test results here:
https://forum.libreelec.tv/thread/29953-le13-testing-for-rk3288-rk3328-rk3399-rk3566-rk3568-rk3576-rk3588/?postID=204691#post204691

That seems to me a (strong) indication it also affects RK3566/RK3568?

Cheers,
  Diederik

> Co-developed-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 35 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++++
>  2 files changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 4cce3e336f5b..2833fb49ad81 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -17,6 +17,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
> +#include <linux/reset.h>
>  #include <linux/swab.h>
>  
>  #include <drm/drm.h>
> @@ -860,6 +861,26 @@ static int vop2_core_clks_prepare_enable(struct vop2 *vop2)
>  	return ret;
>  }
>  
> +static void vop2_clk_reset(struct vop2 *vop2, struct reset_control *rstc)
> +{
> +	int ret;
> +
> +	if (!rstc)
> +		return;
> +
> +	ret = reset_control_assert(rstc);
> +	if (ret < 0) {
> +		drm_warn(vop2->drm, "failed to assert reset: %d\n", ret);
> +		return;
> +	}
> +
> +	udelay(10);
> +
> +	ret = reset_control_deassert(rstc);
> +	if (ret < 0)
> +		drm_err(vop2->drm, "failed to deassert reset: %d\n", ret);
> +}
> +
>  static void rk3588_vop2_power_domain_enable_all(struct vop2 *vop2)
>  {
>  	u32 pd;
> @@ -938,6 +959,8 @@ static void vop2_disable(struct vop2 *vop2)
>  {
>  	rockchip_drm_dma_detach_device(vop2->drm, vop2->dev);
>  
> +	vop2_clk_reset(vop2, vop2->axi_rst);
> +
>  	pm_runtime_put_sync(vop2->dev);
>  
>  	regcache_drop_region(vop2->map, 0, vop2_regmap_config.max_register);
> @@ -1948,6 +1971,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  
>  	vop2_crtc_atomic_try_set_gamma(vop2, vp, crtc, crtc_state);
>  
> +	vop2_clk_reset(vop2, vp->dclk_rst);
> +
>  	drm_crtc_vblank_on(crtc);
>  
>  	vop2_unlock(vop2);
> @@ -2531,6 +2556,11 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk),
>  					     "failed to get %s\n", dclk_name);
>  
> +		vp->dclk_rst = devm_reset_control_get_optional(vop2->dev, dclk_name);
> +		if (IS_ERR(vp->dclk_rst))
> +			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk_rst),
> +					     "failed to get %s reset\n", dclk_name);
> +
>  		np = of_graph_get_remote_node(dev->of_node, i, -1);
>  		if (!np) {
>  			drm_dbg(vop2->drm, "%s: No remote for vp%d\n", __func__, i);
> @@ -2890,6 +2920,11 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  		return dev_err_probe(drm->dev, PTR_ERR(vop2->pll_hdmiphy1),
>  				     "failed to get pll_hdmiphy1\n");
>  
> +	vop2->axi_rst = devm_reset_control_get_optional(vop2->dev, "axi");
> +	if (IS_ERR(vop2->axi_rst))
> +		return dev_err_probe(drm->dev, PTR_ERR(vop2->axi_rst),
> +				     "failed to get axi reset\n");
> +
>  	vop2->irq = platform_get_irq(pdev, 0);
>  	if (vop2->irq < 0)
>  		return dev_err_probe(drm->dev, vop2->irq, "cannot find irq for vop2\n");
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index ffcb39c130aa..14b437d2d088 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -165,6 +165,8 @@ enum vop2_win_regs {
>  	VOP2_WIN_MAX_REG,
>  };
>  
> +struct reset_control;
> +
>  struct vop2_regs_dump {
>  	const char *name;
>  	u32 base;
> @@ -238,6 +240,7 @@ struct vop2_video_port {
>  	struct vop2 *vop2;
>  	struct clk *dclk;
>  	struct clk *dclk_src;
> +	struct reset_control *dclk_rst;
>  	unsigned int id;
>  	const struct vop2_video_port_data *data;
>  
> @@ -329,6 +332,7 @@ struct vop2 {
>  	struct clk *pclk;
>  	struct clk *pll_hdmiphy0;
>  	struct clk *pll_hdmiphy1;
> +	struct reset_control *axi_rst;
>  
>  	/* optional internal rgb encoder */
>  	struct rockchip_rgb *rgb;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
