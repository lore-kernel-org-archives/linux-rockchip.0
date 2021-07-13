Return-Path: <SRS0=z+fE=MF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.6 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00BF1C07E95
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 11:41:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B870860240
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 11:41:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B870860240
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4oeHSaR+omkyr4K0VF9pMG+QvoS3fpP/oHThxjLjOa8=; b=Cv0k0QGyGwPS2X5URRUG5pft0I
	+1wEPjsmTYSIJOAR0z7VlE2OU/T2XkFHwMn3pElFgEV9yBDp1vHKoy2+qbKXn5laXACzr9qNCxx2u
	2uU9kymJh/E14ZsNRQ5ut0tBKQYMZM71Kbw2diMsKES3edNEnpDdVVeco1Y3uFVSnfMiBNZLx1f4O
	JTQjQQ/0O2Uq55EIn9Z3fBYMz6vFEaa76gtwDDQ7wKXkuAP3EUFdycPmml/3XyOSGLr4SesomNHaV
	bEgHnEqNKP4jOQUrRRaY+xegUXXSUchlTzcIOZ4ogKM4OV7zhlwOQXSpGvLY060UMoDC7GJx4m1iW
	SGIBn4Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3Gma-00AGR3-TT; Tue, 13 Jul 2021 11:41:00 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3GmX-00AGPb-Gp; Tue, 13 Jul 2021 11:41:00 +0000
Received: by mail-wm1-x331.google.com with SMTP id
 i2-20020a05600c3542b02902058529ea07so2115890wmq.3; 
 Tue, 13 Jul 2021 04:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Y85wNOtup5hmkCmTfLo1pIpQShIZxRh6DcPrPzi4Ol4=;
 b=YwuIbl+0FSKIRy3WwoIS7w4iUYVf3dnRDGgv33bj6Hij0BnxVWbphZn1bpgpcEgFfh
 IDKr4p16DEwBdLfCIzhWXIyZdJd71+xfo6pKH4P6tgdCja8jIV9lBGct6C3L2xTBDrWL
 3mdgEO83Mif3eTMJiG0RyXe/RRcjhncA9t+VDMgItfpu0/v0LobiH5JylvILh16cjgDc
 t0WEKux/2SRyaWgixRe7gd+uPpNVg7veO9wl5CvJ98B2wnY0xU8HZBeM5iUqyri+2bsa
 r6V+gkU+9oob4xkqgg2BvaFmtDOB6y5ZWJKh30mKvAiEmlmucsuH3hCxZ6XVvp97Fnj2
 ejxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y85wNOtup5hmkCmTfLo1pIpQShIZxRh6DcPrPzi4Ol4=;
 b=Je2FIEyv4snyUTe0v3Cl4/ZGGmuCdl7P9hb6SdRXDjs2H41PrUWHvZI0RdJRN6M91L
 uD4EWTz5De8khr0vFX6bbZ5DqOtfOOFmuQoYrzfqBlHVrP48rG0dwy85LxvuvOIQ1ELU
 IODGTE/Utq0egzqxWR1/oe/lcfixsC4GuV7nDb2acwKmLa7bi+s2gnyK+aq4FtnHBwdW
 JE4l5sdJmFU8KebBVqvl5C8H9n1JTQTwoqnTY+O6vGHTNApr7IxBWkMAHKe6zb847Gw6
 2NzatAzWaGISbtqyKj6OUbhgmZBcCEe8AH5kq2xdcOhcQ++dZeGXQKR4W4/SSNIfkF0S
 /YoA==
X-Gm-Message-State: AOAM530TD+cEaB11DjUXgOFr1Aj0HM89AcfOBO6jb0YGSIRrSLrRvHoE
 L8cyG33pY8E0ArQ2zCc7+Q==
X-Google-Smtp-Source: ABdhPJxZXyl/yIp04pwFo98is7aZrayOSjjNfIszAcOIsR5PYVsPF3guD0dMbpg0o0JYYkbyr0nuAQ==
X-Received: by 2002:a1c:7411:: with SMTP id p17mr19925287wmc.116.1626176455013; 
 Tue, 13 Jul 2021 04:40:55 -0700 (PDT)
Received: from [192.168.200.247] (ip5b429fd6.dynamic.kabel-deutschland.de.
 [91.66.159.214])
 by smtp.gmail.com with ESMTPSA id t15sm17193008wrx.17.2021.07.13.04.40.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Jul 2021 04:40:54 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] drm/rockchip: dw_hdmi: add rk3568 support
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hjc@rock-chips.com,
 heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
 algea.cao@rock-chips.com, andy.yan@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
 <20210707120323.401785-3-benjamin.gaignard@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <a8c5a263-26a6-d4bf-47e7-9266ca1ae5a8@gmail.com>
Date: Tue, 13 Jul 2021 13:40:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707120323.401785-3-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_044057_655652_65587725 
X-CRM114-Status: GOOD (  29.75  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

Am 07.07.21 um 14:03 schrieb Benjamin Gaignard:
> Add a new dw_hdmi_plat_data struct and new compatible for rk3568.
> This version of the HDMI hardware block need two clocks to provide
> phy reference clock: hclk_vio and hclk.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - Add the clocks needed for the phy.

If got Alega's comment correct, it wasn't about the hclks.
It looks like for this variant, there is another reference clock 
required (for the phy) like vpll is already (looks like downstream uses 
HPLL ( = "HDMI-PLL" ?) for that - which also has to switch the frequency 
according the the drm mode rate - the two clocks you added here are get 
just enabled (and disabled) here.

Alega, Andy: Is it really required to enable hclk_vio and hclk(_vop) in 
the hdmi driver? Are they required to be enabled for the other output 
variants (i.e. mipi, dsi, rgb ....) as well and shouldn't better be 
enabled in the (not-yet existing) vop2 driver?

Overall: I'm not sure of the benefit of adding this hdmi variant for a 
SoC where the display driver isn't implemented upstream yet. The "VOP2" 
IP seems widely new and should probably be ported first. (even if the 
HDMI part seems a low hanging fruit according to the vendor sources)

Best,
Alex

> 
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 68 +++++++++++++++++++++
>   1 file changed, 68 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 830bdd5e9b7ce..dc0e255e45745 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -50,6 +50,10 @@
>   #define RK3399_GRF_SOC_CON20		0x6250
>   #define RK3399_HDMI_LCDC_SEL		BIT(6)
>   
> +#define RK3568_GRF_VO_CON1		0x0364
> +#define RK3568_HDMI_SDAIN_MSK		BIT(15)
> +#define RK3568_HDMI_SCLIN_MSK		BIT(14)
> +
>   #define HIWORD_UPDATE(val, mask)	(val | (mask) << 16)
>   
>   /**
> @@ -71,6 +75,8 @@ struct rockchip_hdmi {
>   	const struct rockchip_hdmi_chip_data *chip_data;
>   	struct clk *vpll_clk;
>   	struct clk *grf_clk;
> +	struct clk *hclk_vio;
> +	struct clk *hclk_vop;
>   	struct dw_hdmi *hdmi;
>   	struct phy *phy;
>   };
> @@ -216,6 +222,26 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>   		return PTR_ERR(hdmi->grf_clk);
>   	}
>   
> +	hdmi->hclk_vio = devm_clk_get(hdmi->dev, "hclk_vio");
> +	if (PTR_ERR(hdmi->hclk_vio) == -ENOENT) {
> +		hdmi->hclk_vio = NULL;
> +	} else if (PTR_ERR(hdmi->hclk_vio) == -EPROBE_DEFER) {
> +		return -EPROBE_DEFER;
> +	} else if (IS_ERR(hdmi->hclk_vio)) {
> +		dev_err(hdmi->dev, "failed to get hclk_vio clock\n");
> +		return PTR_ERR(hdmi->hclk_vio);
> +	}
> +
> +	hdmi->hclk_vop = devm_clk_get(hdmi->dev, "hclk");
> +	if (PTR_ERR(hdmi->hclk_vop) == -ENOENT) {
> +		hdmi->hclk_vop = NULL;
> +	} else if (PTR_ERR(hdmi->hclk_vop) == -EPROBE_DEFER) {
> +		return -EPROBE_DEFER;
> +	} else if (IS_ERR(hdmi->hclk_vop)) {
> +		dev_err(hdmi->dev, "failed to get hclk_vop clock\n");
> +		return PTR_ERR(hdmi->hclk_vop);
> +	}
> +
>   	return 0;
>   }
>   
> @@ -467,6 +493,19 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
>   	.use_drm_infoframe = true,
>   };
>   
> +static struct rockchip_hdmi_chip_data rk3568_chip_data = {
> +	.lcdsel_grf_reg = -1,
> +};
> +
> +static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
> +	.mode_valid = dw_hdmi_rockchip_mode_valid,
> +	.mpll_cfg   = rockchip_mpll_cfg,
> +	.cur_ctr    = rockchip_cur_ctr,
> +	.phy_config = rockchip_phy_config,
> +	.phy_data = &rk3568_chip_data,
> +	.use_drm_infoframe = true,
> +};
> +
>   static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
>   	{ .compatible = "rockchip,rk3228-dw-hdmi",
>   	  .data = &rk3228_hdmi_drv_data
> @@ -480,6 +519,9 @@ static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
>   	{ .compatible = "rockchip,rk3399-dw-hdmi",
>   	  .data = &rk3399_hdmi_drv_data
>   	},
> +	{ .compatible = "rockchip,rk3568-dw-hdmi",
> +	  .data = &rk3568_hdmi_drv_data
> +	},
>   	{},
>   };
>   MODULE_DEVICE_TABLE(of, dw_hdmi_rockchip_dt_ids);
> @@ -536,6 +578,28 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>   		return ret;
>   	}
>   
> +	ret = clk_prepare_enable(hdmi->hclk_vio);
> +	if (ret) {
> +		dev_err(hdmi->dev, "Failed to enable HDMI hclk_vio: %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(hdmi->hclk_vop);
> +	if (ret) {
> +		dev_err(hdmi->dev, "Failed to enable HDMI hclk_vop: %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	if (hdmi->chip_data == &rk3568_chip_data) {
> +		regmap_write(hdmi->regmap, RK3568_GRF_VO_CON1,
> +			     HIWORD_UPDATE(RK3568_HDMI_SDAIN_MSK |
> +					   RK3568_HDMI_SCLIN_MSK,
> +					   RK3568_HDMI_SDAIN_MSK |
> +					   RK3568_HDMI_SCLIN_MSK));
> +	}
> +
>   	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
>   	if (IS_ERR(hdmi->phy)) {
>   		ret = PTR_ERR(hdmi->phy);
> @@ -559,6 +623,8 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>   		ret = PTR_ERR(hdmi->hdmi);
>   		drm_encoder_cleanup(encoder);
>   		clk_disable_unprepare(hdmi->vpll_clk);
> +		clk_disable_unprepare(hdmi->hclk_vio);
> +		clk_disable_unprepare(hdmi->hclk_vop);
>   	}
>   
>   	return ret;
> @@ -571,6 +637,8 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
>   
>   	dw_hdmi_unbind(hdmi->hdmi);
>   	clk_disable_unprepare(hdmi->vpll_clk);
> +	clk_disable_unprepare(hdmi->hclk_vio);
> +	clk_disable_unprepare(hdmi->hclk_vop);
>   }
>   
>   static const struct component_ops dw_hdmi_rockchip_ops = {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
