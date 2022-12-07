Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6996BC4708E
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 06:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43DmV7CwNEd/WfiE470Woh8M76vbblYLwVcXiaMme54=; b=GB8CdlXUekY7iv
	Wwzi6PcN44HP6N5ZruFxsD+KQFbG8qL0U97pgnD0xZE9FLZRxpHT+aZqmFUrcJR+BRwaSaagW+O6B
	sQ1bmttzxG+YPheK/QUc9oNHzPwGXgH+fZXhAvF9Z4sHhO5iDt79X+v7UZWZiqTUFKRn42PjXy3ZG
	PIVh9tn/eZWTqLJ7E5tomZ4aAdoZbfoNi4o2FS5GziIP60ar0TlK4vN+ANZft9lbj2dw80XaXEpN9
	uNSupgGST/sfyDFxau4302BtbUsBiE5zVQHYi+xrd44brPE3JsMoZO/UrfgUUKiGWqxxXF7XI8aA4
	UjE98tfYA137flSUzNug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oBL-00DDjv-77; Wed, 07 Dec 2022 06:45:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oBI-00DDiq-Bk
	for linux-rockchip@lists.infradead.org; Wed, 07 Dec 2022 06:45:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oBE-0006IE-Kn; Wed, 07 Dec 2022 07:45:20 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oB1-0008S8-Sx; Wed, 07 Dec 2022 07:45:07 +0100
Date: Wed, 7 Dec 2022 07:45:07 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/5] drm/rockchip: rgb: embed drm_encoder into
 rockchip_encoder
Message-ID: <20221207064507.GV29728@pengutronix.de>
References: <20221130140217.3196414-1-michael.riesch@wolfvision.net>
 <20221130140217.3196414-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130140217.3196414-2-michael.riesch@wolfvision.net>
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
X-CRM114-CacheID: sfid-20221206_224524_422320_CD6DE554 
X-CRM114-Status: GOOD (  29.03  )
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

On Wed, Nov 30, 2022 at 03:02:13PM +0100, Michael Riesch wrote:
> Commit 540b8f271e53 ("drm/rockchip: Embed drm_encoder into
> rockchip_decoder") provides the means to pass the endpoint ID to the
> VOP2 driver, which sets the interface MUX accordingly. However, this
> step has not yet been carried out for the RGB output block. Embed the
> drm_encoder structure into the rockchip_encoder structure and set the
> endpoint ID correctly.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/gpu/drm/rockchip/rockchip_rgb.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> index 75eb7cca3d82..16201a5cf1e8 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> @@ -18,17 +18,17 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_simple_kms_helper.h>
>  
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_vop.h"
>  #include "rockchip_rgb.h"
>  
> -#define encoder_to_rgb(c) container_of(c, struct rockchip_rgb, encoder)
> -
>  struct rockchip_rgb {
>  	struct device *dev;
>  	struct drm_device *drm_dev;
>  	struct drm_bridge *bridge;
> -	struct drm_encoder encoder;
> +	struct rockchip_encoder encoder;
>  	struct drm_connector connector;
>  	int output_mode;
>  };
> @@ -125,7 +125,7 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
>  		return ERR_PTR(ret);
>  	}
>  
> -	encoder = &rgb->encoder;
> +	encoder = &rgb->encoder.encoder;
>  	encoder->possible_crtcs = drm_crtc_mask(crtc);
>  
>  	ret = drm_simple_encoder_init(drm_dev, encoder, DRM_MODE_ENCODER_NONE);
> @@ -161,6 +161,8 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
>  		goto err_free_encoder;
>  	}
>  
> +	rgb->encoder.crtc_endpoint_id = ROCKCHIP_VOP2_EP_RGB0;

This is vop2 specific. This code is used with the vop1 as well, so it
doesn't look like it belongs here, at least not hidden in a patch titled
"embed drm_encoder into rockchip_encoder".

Normally the crtc_endpoint_id is set by the encoder, coming from the
encoder node, asking the question "To which port on the VOP am I
connected to?"

Here the situation is different. We are called from the VOP and the
question instead is: "Is there something connected to VPx endpoint id
ROCKCHIP_VOP2_EP_RGB0?"

You might need a vop2 specific entry to this code.

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
