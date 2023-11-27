Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865D2C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01OUsc0k+D0JuQVxZ6E8EEnUfHeumiGwrd9tRghHeQA=; b=xL6V0TgZLY6VYl
	gGgp8J9nwq4/1DkRoMS5cxAgekg/uCcIvACJ6HY0mW7GZadlO3jXskduSdCcf7E+iQUuQ0ue4DTES
	zgwuQBwHUNAtevJN8ryxTy9m2qFQOEuN8ILvlPJDtz69HBejke77shyBMSQMNIpvF4SvSMIi+qpfE
	tBbD9tS1VjqGyFn4hxazZRmZZtM32t9MIqYi80W/V0UvboQm1lGoViTAm7PFX3Jqg5twT8WnVlBkU
	ZRW0SSLnGHjWXUHkixGtbnfS9joF80W//SJGrO6gjpDmsjBOPJcfF0QUleFXKORW0vP91jW957SNu
	cWItsq7y/Y4zMTBoVnLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cQA-002feW-0e;
	Mon, 27 Nov 2023 14:17:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cPc-002fP4-2A
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 14:16:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cPZ-0008A9-Er; Mon, 27 Nov 2023 15:16:33 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cPY-00Bxqo-6E; Mon, 27 Nov 2023 15:16:32 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cPY-00471C-3F; Mon, 27 Nov 2023 15:16:32 +0100
Date: Mon, 27 Nov 2023 15:16:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 05/12] drm/rockchip: vop2: Set YUV/RGB overlay mode
Message-ID: <20231127141632.GF977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125438.3454608-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125438.3454608-1-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_061647_974839_CE78314D 
X-CRM114-Status: GOOD (  25.79  )
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

On Wed, Nov 22, 2023 at 08:54:38PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Set overlay mode register according to the
> output mode is yuv or rgb.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 19 ++++++++++++++++---
>  2 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> index 3d8ab2defa1b..7a58c5c9d4ec 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> @@ -51,6 +51,7 @@ struct rockchip_crtc_state {
>  	u32 bus_format;
>  	u32 bus_flags;
>  	int color_space;
> +	bool yuv_overlay;

This struct already contains a bool type variable. Please add this one
next to it to keep the struct size smaller.

>  };
>  #define to_rockchip_crtc_state(s) \
>  		container_of(s, struct rockchip_crtc_state, base)
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index a019cc9bbd54..b32a291c5caa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1612,6 +1612,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  
>  	vop2->enable_count++;
>  
> +	vcstate->yuv_overlay = is_yuv_output(vcstate->bus_format);
> +
>  	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
>  
>  	polflags = 0;
> @@ -1639,7 +1641,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  	if (vop2_output_uv_swap(vcstate->bus_format, vcstate->output_mode))
>  		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RB_SWAP;
>  
> -	if (is_yuv_output(vcstate->bus_format))
> +	if (vcstate->yuv_overlay)
>  		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
>  
>  	vop2_dither_setup(crtc, &dsp_ctrl);
> @@ -1948,10 +1950,12 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>  	u16 hdisplay;
>  	u32 bg_dly;
>  	u32 pre_scan_dly;
> +	u32 ovl_ctrl;
>  	int i;
>  	struct vop2_video_port *vp0 = &vop2->vps[0];
>  	struct vop2_video_port *vp1 = &vop2->vps[1];
>  	struct vop2_video_port *vp2 = &vop2->vps[2];
> +	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
>  
>  	adjusted_mode = &vp->crtc.state->adjusted_mode;
>  	hsync_len = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
> @@ -1964,7 +1968,14 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>  	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
>  	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
>  
> -	vop2_writel(vop2, RK3568_OVL_CTRL, 0);
> +	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
> +	if (vcstate->yuv_overlay)
> +		ovl_ctrl |= BIT(vp->id);
> +	else
> +		ovl_ctrl &= ~BIT(vp->id);

Some

#define RK3568_OVL_CTRL__YUV_MODE(vp)	BIT(vp)

Would be nice.

> +
> +	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);

Is it necessary to write this register twice?

> +
>  	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
>  	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
>  
> @@ -2036,9 +2047,11 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
>  		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
>  	}
>  
> +	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
> +
>  	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
>  	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
> -	vop2_writel(vop2, RK3568_OVL_CTRL, RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD);
> +	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
