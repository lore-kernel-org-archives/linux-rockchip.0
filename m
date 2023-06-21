Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9961BEB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 08:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyItllVzS7kb+pYysq/KO6e3BKR+JFH19xp3DzRKkrc=; b=E+tLOQM1roW+pm
	/EO1c0s+KYaSSX8D++oQdQCblj52MjZaDMEMiBmivTzHrzUUQtYcwT/yKwrcSB6B09ls9nZbt8Dpr
	sl02Fy1yR1BiLtfKukLfK57gEj79iqF8b4ht8HwjdW/0PE9ToVsoPcKVHrQfRwW/trqzqylhVcS/+
	RKMx88ghguY4e0c6Xx+zMLmvboSTVME3YFzkziYoFP7+hFVeE14bZb6LlJ28WTtYNnp0OCldPa+XI
	3dBiFLeUD+pf7KCFKWTDcBC23i3CTJDUSIw6RWJJdNt+mmhIgi0uh1ASGfPulThvGG8KEW/q8ZAvP
	qo87BMNeJr7RawJtZ1sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsqc-00DdXs-2e;
	Wed, 21 Jun 2023 08:05:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBsqa-00DdW5-2O
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 08:05:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsqQ-0008H8-EV; Wed, 21 Jun 2023 10:05:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qBsqN-00056Q-PQ; Wed, 21 Jun 2023 10:05:35 +0200
Date: Wed, 21 Jun 2023 10:05:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Mark Yao <markyao0591@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] drm/rockchip: vop: Fix reset of state in duplicate
 state crtc funcs
Message-ID: <20230621080535.GV18491@pengutronix.de>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
 <20230620064732.1525594-2-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620064732.1525594-2-jonas@kwiboo.se>
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
X-CRM114-CacheID: sfid-20230621_010548_776875_E1540651 
X-CRM114-Status: GOOD (  22.07  )
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

On Tue, Jun 20, 2023 at 06:47:36AM +0000, Jonas Karlman wrote:
> struct rockchip_crtc_state members such as output_type, output_bpc and
> enable_afbc is always reset to zero in the atomic_duplicate_state crtc
> funcs.
> 
> Fix this by using kmemdup on the subclass rockchip_crtc_state struct.
> 
> Fixes: 4e257d9eee23 ("drm/rockchip: get rid of rockchip_drm_crtc_mode_config")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index a530ecc4d207..60b23636a3fe 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1614,7 +1614,8 @@ static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
>  	if (WARN_ON(!crtc->state))
>  		return NULL;
>  
> -	rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
> +	rockchip_state = kmemdup(to_rockchip_crtc_state(crtc->state),
> +				 sizeof(*rockchip_state), GFP_KERNEL);
>  	if (!rockchip_state)
>  		return NULL;
>  
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
