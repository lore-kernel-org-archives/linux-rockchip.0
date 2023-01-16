Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48197C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 20:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqN6TW29+HAAf7YER88VPujBgjjgp4B7sJt2ZekbrH4=; b=FU3XsCrPJ4KkuF
	Bpa75p1IdXXnIIy8+hOFAeJbfsuf0p+jJygpdAwxHO41WScocQw2CT8BNbWSq67gBsHj2x5mSYttC
	Com4uFeBXb5+RQfydrvwVf0gq9OJpX4z3lNG9JckYxHI4T6TBLCVkBLa+e/2s2ljgvtqXL/jfCR8L
	vdCrvVLq2flg3EHtvPnDkGpOxM9JsKvDZflQkeEgQ+ZfDmtGAjYojy/fDDtXfL/O2dEfn+1SKh5G8
	uWeZW+ihe9Np4jJQij4aARt7C6h06O5AnsTGTkfnn2/Kld+HNidZ0aPK6ZSaofUwBle58XHEdZSUc
	FPWS7bs/oxshwHe+cUPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHW4j-00BzEL-Pl; Mon, 16 Jan 2023 20:27:25 +0000
Received: from mailrelay4-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:403::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHW4g-00BzBX-KI
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 20:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=U6Ag7c7NdZCMU3zYe0zGoudpAKYkP6dwFAin/8jJBMo=;
	b=oNj8qiOf1lrWzsz6KUDFWXXnNwXYbURvC0zUEYYDp3q/8wsv+KLHJvTkctv3NQ2vjAXehbJWn+KGO
	 poG6BENvqtqLoYlMAEljEDng1Z3J66/tGKYWWcYCeF+BE+W0YTivvHyVtqYN+qMRDBl+jvIVp6H5bV
	 M+6sVKdA0t6NiI/OcLn72gkHvd1UyQq4249nlQ460+4dcIyGTfFqoEBefbZwDrEYTcRKFncz4UZH5y
	 kM83slAZqlNdKdaKPjOEm3YUtp4xNrWIFDm7XLK12vfRY7jmBF7dcFlifrQ4X71Wyy2/D4JnhObQcM
	 AdBNwIeSeFySTXXItiqoyfrqrhkrTFQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=U6Ag7c7NdZCMU3zYe0zGoudpAKYkP6dwFAin/8jJBMo=;
	b=2ykuu+6MFi70+L+AeqMtfIxINz9CczWoB44YxRNe+mrUMT4GDb5GtxnY6k1MB439QnFan+F0Oqp0L
	 ueln40ZDw==
X-HalOne-ID: 2988dd34-95dc-11ed-88e6-87783a957ad9
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay4 (Halon) with ESMTPSA
	id 2988dd34-95dc-11ed-88e6-87783a957ad9;
	Mon, 16 Jan 2023 20:27:16 +0000 (UTC)
Date: Mon, 16 Jan 2023 21:27:15 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
	nouveau@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 05/22] drm/aspeed: Remove unnecessary include statements
 for drm_crtc_helper.h
Message-ID: <Y8WzI8LNLHAbcUzl@ravnborg.org>
References: <20230116131235.18917-1-tzimmermann@suse.de>
 <20230116131235.18917-6-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230116131235.18917-6-tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_122722_856659_DD15A0A0 
X-CRM114-Status: GOOD (  15.53  )
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

On Mon, Jan 16, 2023 at 02:12:18PM +0100, Thomas Zimmermann wrote:
> Several source files include drm_crtc_helper.h without needing it or
> only to get its transitive include statements; leading to unnecessary
> compile-time dependencies.
> 
> Directly include required headers and drop drm_crtc_helper.h where
> possible.

Nitpicking... The above is the standard text you use.
But in many cases, like this case, the patch just drop the wrong use of
the header and do not include any required headers.

If you want to rephrase for future changelog diggers or leave it as is,
is up to you.

	Sam

> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c | 1 -
>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c  | 1 -
>  drivers/gpu/drm/aspeed/aspeed_gfx_out.c  | 1 -
>  3 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> index 55a3444a51d8..7877a57b8e26 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
> @@ -5,7 +5,6 @@
>  #include <linux/reset.h>
>  #include <linux/regmap.h>
>  
> -#include <drm/drm_crtc_helper.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_fb_dma_helper.h>
>  #include <drm/drm_fourcc.h>
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> index 718119e168a6..ecfb060d2557 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
> @@ -14,7 +14,6 @@
>  #include <linux/reset.h>
>  
>  #include <drm/drm_atomic_helper.h>
> -#include <drm/drm_crtc_helper.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_fbdev_generic.h>
>  #include <drm/drm_gem_dma_helper.h>
> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_out.c b/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
> index 4f2187025a21..78775e0c853f 100644
> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_out.c
> @@ -3,7 +3,6 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_connector.h>
> -#include <drm/drm_crtc_helper.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_probe_helper.h>
>  
> -- 
> 2.39.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
