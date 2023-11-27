Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31244C07D59
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jj059qIZ/rlEdeEVhw0FTrNrLmhWbD/w3oQh01c2Iro=; b=ZNbMiRa2h0qMga
	ZkVkriTMwRvumIyRLgvD/49rvrezdoG/LKDNSS0uDYKeS1cYHEkQocSiqt6rXWvUJ32wSQ5eCK8gB
	HvF0AvefrEaZb5mwC0Zz/h7ZXQ1mVUwRrsHB0mH0xH8MfEbnG9ibFa92mOVX6053rW54P23+uYtuQ
	rZ8CzAkMTbV0jHLzH2aKn8fVkNiYrHNbygCuDAK0I4wYy4HFxoDFBMl+meFX7Z2pVtYJy4IRKFrpU
	IR4VJ2w6auBvrNmPaEo/h8GyBBpiB/9RmyzyyGoGnguzPNMS4JIfXVzZgGksBF1W0sFvQKw1essGv
	noi4FMDkBoET+kfdm74Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cDw-002eKr-2N;
	Mon, 27 Nov 2023 14:04:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cDt-002eJL-2Q
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 14:04:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-0006aQ-Qa; Mon, 27 Nov 2023 15:04:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-00BxON-Ad; Mon, 27 Nov 2023 15:04:26 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cDq-0046wg-7w; Mon, 27 Nov 2023 15:04:26 +0100
Date: Mon, 27 Nov 2023 15:04:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 03/12] drm/rockchip: vop2: set half_block_en bit in
 all mode
Message-ID: <20231127140426.GD977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125413.3454489-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125413.3454489-1-andyshrk@163.com>
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
X-CRM114-CacheID: sfid-20231127_060429_784613_05245FE1 
X-CRM114-Status: GOOD (  27.87  )
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

On Wed, Nov 22, 2023 at 08:54:13PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> At first we thought the half_block_en bit in AFBCD_CTRL register
> only work in afbc mode. But the fact is that it control the line
> buffer in all mode(afbc/tile/line), so we need configure it in
> all case.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 25 ++++++++++++++------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 57784d0a22a6..639dfebc6bd1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -521,6 +521,18 @@ static bool rockchip_vop2_mod_supported(struct drm_plane *plane, u32 format,
>  	return vop2_convert_afbc_format(format) >= 0;
>  }
>  
> +/*
> + * 0: Full mode, 16 lines for one tail
> + * 1: half block mode, 8 lines one tail
> + */
> +static bool vop2_half_block_enable(struct drm_plane_state *pstate)
> +{
> +	if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90))
> +		return false;
> +	else
> +		return true;
> +}
> +
>  static u32 vop2_afbc_transform_offset(struct drm_plane_state *pstate,
>  				      bool afbc_half_block_en)
>  {
> @@ -1144,6 +1156,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  	bool rotate_90 = pstate->rotation & DRM_MODE_ROTATE_90;
>  	struct rockchip_gem_object *rk_obj;
>  	unsigned long offset;
> +	bool half_block_en;
>  	bool afbc_en;
>  	dma_addr_t yrgb_mst;
>  	dma_addr_t uv_mst;
> @@ -1236,6 +1249,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  	dsp_info = (dsp_h - 1) << 16 | ((dsp_w - 1) & 0xffff);
>  
>  	format = vop2_convert_format(fb->format->format);
> +	half_block_en = vop2_half_block_enable(pstate);
>  
>  	drm_dbg(vop2->drm, "vp%d update %s[%dx%d->%dx%d@%dx%d] fmt[%p4cc_%s] addr[%pad]\n",
>  		vp->id, win->data->name, actual_w, actual_h, dsp_w, dsp_h,
> @@ -1243,6 +1257,9 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		&fb->format->format,
>  		afbc_en ? "AFBC" : "", &yrgb_mst);
>  
> +	if (vop2_cluster_window(win))
> +		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
> +
>  	if (afbc_en) {
>  		u32 stride;
>  
> @@ -1283,13 +1300,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
>  		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
>  		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
> -		if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90)) {
> -			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 0);
> -			transform_offset = vop2_afbc_transform_offset(pstate, false);
> -		} else {
> -			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 1);
> -			transform_offset = vop2_afbc_transform_offset(pstate, true);
> -		}
> +		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
>  		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
>  		vop2_win_write(win, VOP2_WIN_AFBC_PIC_SIZE, act_info);
>  		vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, transform_offset);
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
