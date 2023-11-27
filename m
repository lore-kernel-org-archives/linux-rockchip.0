Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2533FC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFdxRzgJRslj0co1g0PmqdjzNnYECHoIoB96V3ZDMxk=; b=ZzfB7qIsM0hQiS
	gMn8vS4PDitFdaQYBZZnq2gdL+1teJtS2Eee6a6w+PyfebHuWeZk2MU1BT26HphV1tKhN8Q3kddTa
	4gNlvvMcR235gRAV5Drd1u2yLYWHGnRqNJJnlpl2rl4kILXZ3log9AS+2JGCpve+bzkWspOUVFHtt
	BuMY6n2OVxcG8YV6Ah0tFkc7XFWBGrtOx5YEOOd4TEJ0Luc+Jv2i+YHfiKkAQ2eLueIUuPHKi+oEf
	8SxRqnzTAT+mTe5gqA5UHvrVDnDWC0oZSyMrMLARmk/fdyj+pUumeOJRcmzQgsRRmuZdY9thVLayM
	pJ9xBcBpgAeW1hfR0Raw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cDi-002eGK-2f;
	Mon, 27 Nov 2023 14:04:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cDf-002eFG-2q
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 14:04:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDc-0006Xd-V7; Mon, 27 Nov 2023 15:04:12 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDc-00BxOJ-Gd; Mon, 27 Nov 2023 15:04:12 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDc-0046wB-Dz; Mon, 27 Nov 2023 15:04:12 +0100
Date: Mon, 27 Nov 2023 15:04:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 02/12] Revert "drm/rockchip: vop2: Use regcache_sync()
 to fix suspend/resume"
Message-ID: <20231127140412.GC977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125400.3454430-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125400.3454430-1-andyshrk@163.com>
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
X-CRM114-CacheID: sfid-20231127_060415_917745_E0A3A60C 
X-CRM114-Status: GOOD (  27.24  )
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

On Wed, Nov 22, 2023 at 08:54:00PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This reverts commit b63a553e8f5aa6574eeb535a551817a93c426d8c.
> 
> regcache_sync will try to reload the configuration in regcache to
> hardware, but the registers of 4 Cluster windows and Esmart1/2/3 on
> the upcoming rk3588 can not be set successfully before internal PD
> power on.
> 
> Also it's better to keep the hardware register as it is before we really
> enable it.
> 
> So let's revert this version, and keep the first version:
> commit afa965a45e01 ("drm/rockchip: vop2: fix suspend/resume")
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 312da5783362..57784d0a22a6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -217,6 +217,8 @@ struct vop2 {
>  	struct vop2_win win[];
>  };
>  
> +static const struct regmap_config vop2_regmap_config;
> +
>  static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
>  {
>  	return container_of(crtc, struct vop2_video_port, crtc);
> @@ -883,7 +885,11 @@ static void vop2_enable(struct vop2 *vop2)
>  		return;
>  	}
>  
> -	regcache_sync(vop2->map);
> +	ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
> +	if (ret) {
> +		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
> +		return;
> +	}
>  
>  	if (vop2->data->soc_id == 3566)
>  		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
> @@ -913,8 +919,6 @@ static void vop2_disable(struct vop2 *vop2)
>  
>  	pm_runtime_put_sync(vop2->dev);
>  
> -	regcache_mark_dirty(vop2->map);
> -
>  	clk_disable_unprepare(vop2->aclk);
>  	clk_disable_unprepare(vop2->hclk);
>  }
> -- 
> 2.34.1
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
