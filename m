Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9734AC07CB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKgaoLEj85SddOWszEGbZlFs0juCx7kuA6jClQWyDoM=; b=3fJT2m0IoKf7oO
	BBdQBT5avXyQCqknRRYv2NubS91h36ILIu0nnaBqD+d0EY6oRSlKjYQ+4MPJQgrUjYWTI0gDSeb61
	NxdWKAatlpNdzZxMw/rq8kv4vNybuHQP1ylta6CyUcz5OYCchj4NbUbPF8td3e/ckL9eIZvLnNygL
	WoadPvcOPFX9gn0baTvb4CyrZlw9DO4yO026qkTiDbpZVS3/sawQwj/vPGXfA/VytuHn4Ic+xU3Zj
	rmdMPlR6BMHuOH42/nEKXtHwqLRILLc9hSGmfawL+9NKSHuFNIx2w6GsP35ei4baOarB3cCKvZA1m
	zvMm/eFjwJ6SPJtbPlEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cQu-002g71-1n;
	Mon, 27 Nov 2023 14:17:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cQg-002g0E-0h
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 14:17:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cQd-0008RP-9s; Mon, 27 Nov 2023 15:17:39 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cQc-00Bxr0-12; Mon, 27 Nov 2023 15:17:38 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cQb-00471t-UZ; Mon, 27 Nov 2023 15:17:37 +0100
Date: Mon, 27 Nov 2023 15:17:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 06/12] drm/rockchip: vop2: rename grf to sys_grf
Message-ID: <20231127141737.GG977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125454.3454671-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125454.3454671-1-andyshrk@163.com>
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
X-CRM114-CacheID: sfid-20231127_061742_276446_C5FF8469 
X-CRM114-Status: GOOD (  25.35  )
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

On Wed, Nov 22, 2023 at 08:54:54PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The vop2 need to reference more grf(system grf, vop grf, vo0/1 grf,etc)
> in the upcoming rk3588.
> 
> So we rename the current system grf to sys_grf.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index b32a291c5caa..4bcc405bcf11 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -190,7 +190,7 @@ struct vop2 {
>  	void __iomem *regs;
>  	struct regmap *map;
>  
> -	struct regmap *grf;
> +	struct regmap *sys_grf;
>  
>  	/* physical map length of vop2 register */
>  	u32 len;
> @@ -1503,9 +1503,9 @@ static void rk3568_set_intf_mux(struct vop2_video_port *vp, int id,
>  		dip &= ~RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL;
>  		dip |= FIELD_PREP(RK3568_DSP_IF_POL__RGB_LVDS_PIN_POL, polflags);
>  		if (polflags & POLFLAG_DCLK_INV)
> -			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
> +			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16) | BIT(3));
>  		else
> -			regmap_write(vop2->grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
> +			regmap_write(vop2->sys_grf, RK3568_GRF_VO_CON1, BIT(3 + 16));
>  		break;
>  	case ROCKCHIP_VOP2_EP_HDMI0:
>  		die &= ~RK3568_SYS_DSP_INFACE_EN_HDMI_MUX;
> @@ -2764,7 +2764,7 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  			return PTR_ERR(vop2->lut_regs);
>  	}
>  
> -	vop2->grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
> +	vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
>  
>  	vop2->hclk = devm_clk_get(vop2->dev, "hclk");
>  	if (IS_ERR(vop2->hclk)) {
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
