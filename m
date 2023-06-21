Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EA4EB64DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 08:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7kjOv1SWj2/nLZYFpSXq5Q9H9obaYvxP/plDwgA9QQ=; b=Bn1Sd7v6DUANpm
	5J91+Ux+sS1aboJOX328VMjUjAHc/wzg0k4Gt3Ejo6gKePWA9euH9p3c6pCksyXgRvgGx3tS6QY4g
	2St74wzwDFOWBKQqvNdVHzE6UqhqilMsQ6ohmzRPA7iz/AwkO+PcmyjZDDNxv5BDoOuBtoElzhTgK
	EF7aTvN6Kmpuyi92z6kMDdi0n8XEShaggniJWNqbZ/7w9DbzA/b+8Zo+QPQ8ZftLGA2PuZl7zV9uI
	/HOQ67TaUESQVaba+BzaYvQ8rzGryhHs05LaS/mKKjX40/bNhhxWOu2JhuYBLoo5+MVTPIixkJpQU
	P+5V+IG2ObxqVUEB/pUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsqo-00Dddd-0U;
	Wed, 21 Jun 2023 08:06:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsql-00Ddbf-1l
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 08:06:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsqe-0008Km-B6; Wed, 21 Jun 2023 10:05:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsqd-00056l-Ub; Wed, 21 Jun 2023 10:05:51 +0200
Date: Wed, 21 Jun 2023 10:05:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Mark Yao <markyao0591@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] drm/rockchip: vop: Use cleanup helper directly as
 destroy funcs
Message-ID: <20230621080551.GW18491@pengutronix.de>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
 <20230620064732.1525594-3-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620064732.1525594-3-jonas@kwiboo.se>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_010559_583495_EB2034BD 
X-CRM114-Status: GOOD (  22.02  )
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

On Tue, Jun 20, 2023 at 06:47:37AM +0000, Jonas Karlman wrote:
> vop_plane_destroy and vop_crtc_destroy are plain wrappers around
> drm_plane_cleanup and drm_crtc_cleanup. Use them directly as plane and
> crtc funcs to closer match VOP2 driver.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 60b23636a3fe..25c873d4ff53 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -766,11 +766,6 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
>  	}
>  }
>  
> -static void vop_plane_destroy(struct drm_plane *plane)
> -{
> -	drm_plane_cleanup(plane);
> -}
> -
>  static inline bool rockchip_afbc(u64 modifier)
>  {
>  	return modifier == ROCKCHIP_AFBC_MOD;
> @@ -1131,7 +1126,7 @@ static const struct drm_plane_helper_funcs plane_helper_funcs = {
>  static const struct drm_plane_funcs vop_plane_funcs = {
>  	.update_plane	= drm_atomic_helper_update_plane,
>  	.disable_plane	= drm_atomic_helper_disable_plane,
> -	.destroy = vop_plane_destroy,
> +	.destroy = drm_plane_cleanup,
>  	.reset = drm_atomic_helper_plane_reset,
>  	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_plane_destroy_state,
> @@ -1602,11 +1597,6 @@ static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>  	.atomic_disable = vop_crtc_atomic_disable,
>  };
>  
> -static void vop_crtc_destroy(struct drm_crtc *crtc)
> -{
> -	drm_crtc_cleanup(crtc);
> -}
> -
>  static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
>  {
>  	struct rockchip_crtc_state *rockchip_state;
> @@ -1711,7 +1701,7 @@ vop_crtc_verify_crc_source(struct drm_crtc *crtc, const char *source_name,
>  static const struct drm_crtc_funcs vop_crtc_funcs = {
>  	.set_config = drm_atomic_helper_set_config,
>  	.page_flip = drm_atomic_helper_page_flip,
> -	.destroy = vop_crtc_destroy,
> +	.destroy = drm_crtc_cleanup,
>  	.reset = vop_crtc_reset,
>  	.atomic_duplicate_state = vop_crtc_duplicate_state,
>  	.atomic_destroy_state = vop_crtc_destroy_state,
> @@ -1962,7 +1952,7 @@ static void vop_destroy_crtc(struct vop *vop)
>  	 */
>  	list_for_each_entry_safe(plane, tmp, &drm_dev->mode_config.plane_list,
>  				 head)
> -		vop_plane_destroy(plane);
> +		drm_plane_cleanup(plane);
>  
>  	/*
>  	 * Destroy CRTC after vop_plane_destroy() since vop_disable_plane()
> -- 
> 2.41.0
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
