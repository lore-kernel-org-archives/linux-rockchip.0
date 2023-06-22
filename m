Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 261ADEB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 11:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/Tt1n4VUmVi/H83sGGMfU4I6qYTzVTlFpXHSOdLUdk=; b=Ftv0ynQlMmzTzk
	o5Gp7TMOWUfG9/5FiUKNfQg+LJ+3vDyDX9zHHTimq+irKL2U+PfeT2ZVslMXtQ0mUIcKlY4LuCfv4
	vEljdmSTr4fW7ceIRN9f/KYNaHmA9n6BVKN+118uQzQ+ycOdkYG6oN3CiWt0kwi7jyM/uLJN7Hs3y
	lMpwuAdlUqx0WBgkhzdonOFJYpugqwwL7sbVrJVbE12DJT8DQY5PA2wwATYURs9LuMIvKFvWAg+8N
	RQggYw3vJyI9UDn1LXRbwRmEdWWMIZSrNJQ2hVeHyScUoAne9BxwG2jZrh9oj1P5b4fW329Pwv8KT
	k/Nz0UnJ369tJpbDpxJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCIb7-000Qua-0Q;
	Thu, 22 Jun 2023 11:35:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCIb4-000Qt4-1l
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 11:35:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCIav-0004ku-D1; Thu, 22 Jun 2023 13:35:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qCIau-0001Un-Cy; Thu, 22 Jun 2023 13:35:20 +0200
Date: Thu, 22 Jun 2023 13:35:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Mark Yao <markyao0591@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] drm/rockchip: vop: Fix call to crtc reset helper
Message-ID: <20230622113520.GM18491@pengutronix.de>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
 <20230621223311.2239547-4-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621223311.2239547-4-jonas@kwiboo.se>
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
X-CRM114-CacheID: sfid-20230622_043530_585659_C2B5E8F0 
X-CRM114-Status: GOOD (  24.33  )
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

On Wed, Jun 21, 2023 at 10:33:20PM +0000, Jonas Karlman wrote:
> Allocation of crtc_state may fail in vop_crtc_reset, causing an invalid
> pointer to be passed to __drm_atomic_helper_crtc_reset.
> 
> Fix this by adding a NULL check of crtc_state, similar to other drivers.
> 
> Fixes: 01e2eaf40c9d ("drm/rockchip: Convert to using __drm_atomic_helper_crtc_reset() for reset.")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> v2:
> - New patch
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 25c873d4ff53..23bc79064e78 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1630,7 +1630,10 @@ static void vop_crtc_reset(struct drm_crtc *crtc)
>  	if (crtc->state)
>  		vop_crtc_destroy_state(crtc, crtc->state);
>  
> -	__drm_atomic_helper_crtc_reset(crtc, &crtc_state->base);
> +	if (crtc_state)
> +		__drm_atomic_helper_crtc_reset(crtc, &crtc_state->base);
> +	else
> +		__drm_atomic_helper_crtc_reset(crtc, NULL);
>  }
>  
>  #ifdef CONFIG_DRM_ANALOGIX_DP
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
