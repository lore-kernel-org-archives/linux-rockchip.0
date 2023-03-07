Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770CEC678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 22:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9jbYW9a7604j5R8AC88P0Vdk3gyTwtHtdRHx/PCHr4=; b=G9il2ZlKvMxhHT
	nZQCCk/Ag0BEr7htaftJmLEwC+Zf4JFjmj2bXZRYixZeAlzZufMBlCr5qXteajHxQlkXHu3ZPWmmM
	aQY2GXEmrb6tLfRuvFFJt7pYFTRLLFEKqDjuvSiRmbUYJv/BkK4refsBO/IsTp126CpeOnDTWMUm7
	1JOH+B4nCpYWfe4GX+7nja/gKkEPK7kCu50ExtLbgJHWNNstQ+mm42y3DQui5FM2vk/ZKIN2pX115
	txViy9U2P1FZx4SLC4NTWoSEilta1wlFxS0a65r3No5ZgDdSr0P3FmWmn+He8NAKi4+3osFeM1Qjb
	ZbRK1ZXpo1AHTybZp86Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfgN-002dqa-P4; Tue, 07 Mar 2023 22:21:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfgL-002doo-0L
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 22:21:18 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZfgC-0001g0-HR; Tue, 07 Mar 2023 23:21:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Robin Murphy <robin.murphy@arm.com>, Dan Johansen <strit@manjaro.org>,
 FUKAUMI Naoki <naoki@radxa.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject:  Re: [PATCH v6 1/4] drm/rockchip: vop: limit maximium resolution to hardware
 capabilities
Date: Tue, 07 Mar 2023 23:21:16 +0100
Message-ID: <839117967.0ifERbkFSE@diego>
In-Reply-To: <20230216102447.582905-2-s.hauer@pengutronix.de>
References:  <20230216102447.582905-1-s.hauer@pengutronix.de>
 <20230216102447.582905-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_142117_084587_E85814B2 
X-CRM114-Status: GOOD (  31.67  )
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

Hi Sascha,

Am Donnerstag, 16. Februar 2023, 11:24:44 CET schrieb Sascha Hauer:
> The different VOP variants support different maximum resolutions. Reject
> resolutions that are not supported by a specific variant.
> 
> This hasn't been a problem in the upstream driver so far as 1920x1080
> has been the maximum resolution supported by the HDMI driver and that
> resolution is supported by all VOP variants. Now with higher resolutions
> supported in the HDMI driver we have to limit the resolutions to the
> ones supported by the VOP.
> 
> The actual maximum resolutions are taken from the Rockchip downstream
> Kernel.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v5:
>     - fix wrong check height vs. width
>     
>     Changes since v4:
>     - Use struct vop_rect for storing resolution
>     
>     Changes since v3:
>     - new patch
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 ++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 -----
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 ++++++++++++++++++
>  4 files changed, 39 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index fa1f4ee6d1950..40c688529d44e 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1174,6 +1174,20 @@ static void vop_crtc_disable_vblank(struct drm_crtc *crtc)
>  	spin_unlock_irqrestore(&vop->irq_lock, flags);
>  }
>  
> +static enum drm_mode_status vop_crtc_mode_valid(struct drm_crtc *crtc,
> +						const struct drm_display_mode *mode)
> +{
> +	struct vop *vop = to_vop(crtc);
> +
> +	if (vop->data->max_output.width && mode->hdisplay > vop->data->max_output.width)
> +		return MODE_BAD_HVALUE;
> +
> +	if (vop->data->max_output.height && mode->vdisplay > vop->data->max_output.height)
> +		return MODE_BAD_VVALUE;
> +
> +	return MODE_OK;
> +}

I'm very much in favor of codifying the possible resolutions. Hopefully
this will also enable better vop-selection down the road.

But ...

The above does break the px30-minievb display.
While the px30 TRM does say it supports a 1920x1080 resolution only, the
px30-minievb comes with a 720x1280 DSI display and normally runs just
fine with it.

Looking at the vendor-code [0], it seems they only seem to check for the
hvalue. Looking deeper, the height-check was present in the beginning [1],
but then was removed later on.

Looking a bit more, I find [2] which says that
	"Actually vop hardware has no output height limit"

I re-checked this on both px30+dsi and rock64+1080p-hdmi and with
> +	if (vop->data->max_output.height && mode->vdisplay > vop->data->max_output.height)
> +		return MODE_BAD_VVALUE;
line gone, rock64 is still happy and the px30 works correctly again.

So, do you see an issue with removing the output-height check?


Heiko


[0] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/gpu/drm/rockchip/rockchip_drm_vop.c#L2446
[1] https://github.com/rockchip-linux/kernel/commit/7e3e0c5e2eb16901ab5dce1cb981e1ac58fe42c6
[2] https://github.com/rockchip-linux/kernel/commit/28c41da2693fe448aeda7c03070c376290b93805



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
