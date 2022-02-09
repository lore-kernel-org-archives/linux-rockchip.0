Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2A9BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y79Cl4K4ZngFFbBzhCLlGmnqfAIKDfDjD99+CExe+7k=; b=XX2j2ES7NtxsEu
	FZf8rsp4KtNqBOhxvNzuJcZz8D1GH54AHrZq4pQmb3TbYq/Z8BXWiUdSgzdHzB+82jf97r8qKjjLt
	ro8TztMWZ21nARvToAUUgYrIfro0wN7wZmm2qVmzApLcHnHW7cnXNVyYjjuI1JrPGgYZglQzJcyLo
	GNxlQgPXrlXCkcJSJs/ziVzPaLcNN/EX42n4zFyeXP1dvdvd0TU2U8pJP0Dd2LjwO3NUHs36OSOa7
	oWD7l0C2NwvfI+0bOo1fQN7zmks/7noHb90dD09Rsi+rCwb1jxkK/mDa0+JWjOT0MTRPdPySgcqoE
	4WTL46uT06YwbCwJ9sjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHk7K-00HDWU-Ny; Wed, 09 Feb 2022 10:22:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjpT-00H5eP-Kc; Wed, 09 Feb 2022 10:04:05 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHjpP-0008Rc-En; Wed, 09 Feb 2022 11:03:59 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v5 02/23] drm/rockchip: dw_hdmi: Do not leave clock
 enabled in error case
Date: Wed, 09 Feb 2022 11:03:58 +0100
Message-ID: <2395553.0l50XtO9Ib@diego>
In-Reply-To: <20220209095350.2104049-3-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_020403_741847_33200AA7 
X-CRM114-Status: GOOD (  19.64  )
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

Am Mittwoch, 9. Februar 2022, 10:53:29 CET schrieb Sascha Hauer:
> The driver returns an error when devm_phy_optional_get() fails leaving
> the previously enabled clock turned on. Change order and enable the
> clock only after the phy has been acquired.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

just a note for me, already applied to drm-misc-fixes:
https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=c0cfbb122275da1b726481de5a8cffeb24e6322b

> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 830bdd5e9b7c..8677c8271678 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -529,13 +529,6 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  		return ret;
>  	}
>  
> -	ret = clk_prepare_enable(hdmi->vpll_clk);
> -	if (ret) {
> -		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
> -			      ret);
> -		return ret;
> -	}
> -
>  	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
>  	if (IS_ERR(hdmi->phy)) {
>  		ret = PTR_ERR(hdmi->phy);
> @@ -544,6 +537,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  		return ret;
>  	}
>  
> +	ret = clk_prepare_enable(hdmi->vpll_clk);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
> +			      ret);
> +		return ret;
> +	}
> +
>  	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
>  	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
