Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70039EC047D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 09:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9dTq84xrXH2stEboP8uDh9thtKKs6M6yGrHh4J5hG8=; b=ayEO5gJgG/9cuo
	VNjeDENXgiONjmUlrx/ZWA/w+YQ0VgxlSG1mLQruUB0UYeEZP3evWDV21NCMhHKwr5+yfxPgQl1tc
	tCx5jp6/1yuEZRXaanzXmcK2LMA54jY5FQneJ/qwjIuFS7ILfNFMEA3llro0TIjKsO1ExPPh0Iidt
	IjUmrddX9yzhYVo8HA7E9xMHHnnZLGZtuBFnv7Z5k2nsz1VRIRPRuSHJQAVpNhcg+zlYTA5aSSWjg
	ycGrve3DAlp+ELZAnVG9nrEIslCSGUMD7cq5Byjosqdz6lwXvX3RKYA7eUbMaUUplnZrAIRH+J+to
	+7Moq7RveBjgJ+RYd6aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxMH2-0000000EtS9-0z93;
	Tue, 03 Mar 2026 09:42:40 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxMGw-0000000EtKP-2mkC
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 09:42:36 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 1E995C40FB0;
	Tue,  3 Mar 2026 09:42:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7D5085FF29;
	Tue,  3 Mar 2026 09:42:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6472F103682E0;
	Tue,  3 Mar 2026 10:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772530950; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=b4FnwUyggxbhER6+JVaL2FhJxctsR5DXdCcHIQG0bqY=;
	b=iH5gkeS8EZnmbrNwNRBfYKZfDj2+6dd92LdeVnRYQEQmt43nZ0slJ3kwfCRyYzBwnuQ0zi
	pYo/JLluMaAiNz8ZATi9AOBiCaz7D4rKgBt5dgvjyVdIfdXGXrf2U0TiMXhVoV0I9ITfic
	e6yms5btiQDbmY+cEXAiC05DC2JxL4OVgt4w6oxlr11HpEguqvvs7r+lriNP2HjrviKk8/
	g3WtTxiJespsFV8mqBkic79SaORNJjLrGUMJGXgGY4s7wwCBCj5MLEGY2tSl0vV564NlBF
	aT6wn+7sdS1AU6gCtYoqjK+adzSy3+x1vWXVknLbN0AXkcXg6RPuafs+U9Hv3A==
Mime-Version: 1.0
Date: Tue, 03 Mar 2026 10:42:25 +0100
Message-Id: <DGT1S368J0BK.3UA75JNEA1AB8@bootlin.com>
Subject: Re: [PATCH v9 09/15] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <inki.dae@samsung.com>,
 <sw0312.kim@samsung.com>, <kyungmin.park@samsung.com>, <krzk@kernel.org>,
 <alim.akhtar@samsung.com>, <jingoohan1@gmail.com>,
 <p.zabel@pengutronix.de>, <hjc@rock-chips.com>, <heiko@sntech.de>,
 <andy.yan@rock-chips.com>, <dmitry.baryshkov@oss.qualcomm.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <jani.nikula@intel.com>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260210071225.2566099-1-damon.ding@rock-chips.com>
 <20260210071225.2566099-10-damon.ding@rock-chips.com>
In-Reply-To: <20260210071225.2566099-10-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_014234_915670_7E119358 
X-CRM114-Status: GOOD (  15.16  )
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

Hello Damon,

On Tue Feb 10, 2026 at 8:12 AM CET, Damon Ding wrote:
> Apply drm_bridge_connector helper for Analogix DP driver.
>
> The following changes have been made:
> - Apply drm_bridge_connector helper to get rid of &drm_connector_funcs
>   and &drm_connector_helper_funcs.
> - Remove unnecessary parameter struct drm_connector* for callback
>   &analogix_dp_plat_data.attach.
> - Remove &analogix_dp_device.connector.
> - Convert analogix_dp_atomic_check()/analogix_dp_detect() to
>   &drm_bridge_funcs.atomic_check()/&drm_bridge_funcs.detect().
> - Split analogix_dp_get_modes() into &drm_bridge_funcs.get_modes() and
>   &drm_bridge_funcs.edid_read().
> - Set flag DRM_BRIDGE_ATTACH_NO_CONNECTOR for bridge attachment while
>   binding. Meanwhile, make DRM_BRIDGE_ATTACH_NO_CONNECTOR unsuppported
                             ^

Do you mean "!DRM_BRIDGE_ATTACH_NO_CONNECTOR" here (i.e. missing '!')?

Also, unsuppported -> unsupported (typo)

>   in analogix_dp_bridge_attach().
> - Set &drm_bridge.ops according to different cases.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de> (on rk3588)

I had a quick look, looks good overall, for the moment I have only a
question, see below.

I aim at reviewing this patch in depth, but it's not an easy one to
digest. Would it be feasible to split it in smaller logical steps? If it
is, please do, it would be very helpful for reviewing.

> @@ -1532,6 +1481,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_resume);
>
>  int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  {
> +	struct drm_bridge *bridge = &dp->bridge;
>  	int ret;
>
>  	dp->drm_dev = drm_dev;
> @@ -1545,7 +1495,18 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
>  		return ret;
>  	}
>
> -	ret = drm_bridge_attach(dp->encoder, &dp->bridge, NULL, 0);
> +	if (dp->plat_data->panel)
> +		bridge->ops = DRM_BRIDGE_OP_MODES | DRM_BRIDGE_OP_DETECT;
> +	else
> +		bridge->ops = DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_DETECT;
> +
> +	bridge->of_node = dp->dev->of_node;
> +	bridge->type = DRM_MODE_CONNECTOR_eDP;
> +	ret = devm_drm_bridge_add(dp->dev, &dp->bridge);

Can devm_drm_bridge_add() be added to analogix_dp_probe() instead?

> +	if (ret)
> +		goto err_unregister_aux;
> +
> +	ret = drm_bridge_attach(dp->encoder, bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>  	if (ret) {
>  		DRM_ERROR("failed to create bridge (%d)\n", ret);
>  		goto err_unregister_aux;

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
