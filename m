Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1717FC352A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 06:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EGpMVGRokY/hY813y1QCpm/7uJd2RjPrXPM+iBzn2Q=; b=xV7TowEaYEfHM5
	Auh5fPuHNp0K3PnpNl8cJxnwbTSwMBglMCb1gXjdszVo1FwNw/Q4pej6rz31/pU/xauiDIQk0h18D
	jVQoNfPKOunpV2TQkctjWUWtN8/REMhei4SQ9amHutHWQEzp9zbVorw5KyNntf9s4a/f30svxcMf2
	cNa4/LwsjAn6cEKCW5bTSDGdWTfNVERaXeg4/RMry2iFsy85yjZUCmW5fEutYK7jTfOP7F474dlKW
	u3vX8fju1NFj6Jxt6tGMSiZjAN1AvM1/q5uVJiaajUjibOZAQtfhukrscB3nzjosgbMW03i0L5McX
	2FXXATDA484tVZsaBivA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oHS-00DNWy-Fh; Wed, 07 Dec 2022 06:51:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oHG-00DNF6-SX
	for linux-rockchip@lists.infradead.org; Wed, 07 Dec 2022 06:51:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oHE-0006zz-L7; Wed, 07 Dec 2022 07:51:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oHD-0000Bu-FU; Wed, 07 Dec 2022 07:51:31 +0100
Date: Wed, 7 Dec 2022 07:51:31 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 4/5] drm/rockchip: vop2: add support for the rgb output
 block
Message-ID: <20221207065131.GW29728@pengutronix.de>
References: <20221130140217.3196414-1-michael.riesch@wolfvision.net>
 <20221130140217.3196414-5-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130140217.3196414-5-michael.riesch@wolfvision.net>
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
X-CRM114-CacheID: sfid-20221206_225134_930150_D34AB42E 
X-CRM114-Status: GOOD (  27.84  )
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

On Wed, Nov 30, 2022 at 03:02:16PM +0100, Michael Riesch wrote:
> The Rockchip VOP2 features an internal RGB output block, which can be
> attached to the video port 2 of the VOP2. Add support for this output
> block.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 21 ++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 94fddbf70ff6..16041c79d228 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -39,6 +39,7 @@
>  #include "rockchip_drm_gem.h"
>  #include "rockchip_drm_fb.h"
>  #include "rockchip_drm_vop2.h"
> +#include "rockchip_rgb.h"
>  
>  /*
>   * VOP2 architecture
> @@ -212,6 +213,9 @@ struct vop2 {
>  	struct clk *hclk;
>  	struct clk *aclk;
>  
> +	/* optional internal rgb encoder */
> +	struct rockchip_rgb *rgb;
> +
>  	/* must be put at the end of the struct */
>  	struct vop2_win win[];
>  };
> @@ -2697,11 +2701,25 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
>  	if (ret)
>  		return ret;
>  
> +	vop2->rgb = rockchip_rgb_init(dev, &vop2->vps[2].crtc, vop2->drm, 2);

Here you assume that the RGB output can only be connected to VP2, but it
could be connected to any other VP as well, and we can find the
description where it actually shall be connected in the device tree.

As mentioned in my comment to patch 1, the question is "Is there
something connected to VPx at endpoint ROCKCHIP_VOP2_EP_RGB0?"

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
