Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4247C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 09:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZOeuQ1vdJ2O7ty4AbZMaAgWdOFUxZ9XdNaqmnNC6ZE=; b=WuPz3EFn5JqDDm
	0oZN90dp4BsLBki9Cs43qd/CZf0YlE4rSHhgpwOBskeR0KEoGpWxdOKS32TBH+keby6ZFq4mvz9DO
	whmc3WAh0DvCiIE84/7WTMKuUX24aeeSR2PrDkd0Y7u2x3bkoD7tdGossSjF+GhN9nQPePgAQOpxR
	ftI2WfTzhP6Zmb5NpExYEq4KS6UuYKCfPru23e0HhTqqZcGr0+ciMDovHYhXajOSPMGWTrePw/1Ck
	hwdwpbeRuydcEXSf+QPr7Fz0uwuAoEHKexrseUmDDVBoIKJki9uXKz/Db8tQ+VLaF9zHMpu+b/QYn
	ePYbrdG4xz9cMqe5xUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no03t-00DaRI-3o; Mon, 09 May 2022 09:52:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no03h-00DaOS-8A
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 09:52:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1no03W-0001WQ-Nt; Mon, 09 May 2022 11:51:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1no03T-0007qR-OY; Mon, 09 May 2022 11:51:51 +0200
Date: Mon, 9 May 2022 11:51:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: unlock on error path in
 vop2_crtc_atomic_enable()
Message-ID: <20220509095151.GB4012@pengutronix.de>
References: <YnjZQRV9lpub2ET8@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YnjZQRV9lpub2ET8@kili>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:51:12 up 39 days, 22:20, 93 users,  load average: 0.10, 0.11, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_025205_323668_BC2488C6 
X-CRM114-Status: GOOD (  22.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, May 09, 2022 at 12:05:05PM +0300, Dan Carpenter wrote:
> This error path needs an unlock before returning.

Indeed.

> 
> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Acked-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 0b49fed16535..b68922943825 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1524,6 +1524,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
>  	if (ret < 0) {
>  		drm_err(vop2->drm, "failed to enable dclk for video port%d - %d\n",
>  			vp->id, ret);
> +		vop2_unlock(vop2);
>  		return;
>  	}
>  
> -- 
> 2.35.1
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
