Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF07C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 17:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwDUBXYMzmmssXAP/igByIKd+HJ4LSI3fStJJKh/cv4=; b=Ei38+OMjY8ux+w
	CDm+hAg+n0XBL9Zhsi2qzTyUFItO7AEg6ZgXV3sn6VzITrpBK6hjrPdD/TembzT0W04a6gvIyEWo1
	wU0akCWZM1ZvKW4MH8jwCJQr4LdL6GH1s9NFiD4FUz6U63obOE7bWNC6MMc4ggjEqMn5YjMUVKJ/w
	+kY/rUXzEfMso4ZVdcOFyy4E3hMoPWJkDKAcNUsvadzhGjRcFt404E0UdXhBAgAZGDTyMwyMpCmfm
	71HoofBCfEy/Ttmmn0/xBl48VFWakQFR7x6EdQ7q5NGNM+0Zlu6vt8rb3gSSHAKe02g5mhNGsCCas
	z0ZuwcmkJrwNwagX5SQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mudqZ-009VWi-OP; Tue, 07 Dec 2021 17:01:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mudqN-009VVA-GP; Tue, 07 Dec 2021 17:01:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36F9011D4;
 Tue,  7 Dec 2021 09:01:30 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 57E6C3F73B;
 Tue,  7 Dec 2021 09:01:28 -0800 (PST)
Message-ID: <d9646a05-2588-339f-24f6-e8cd2f2de746@arm.com>
Date: Tue, 7 Dec 2021 17:01:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 04/12] drm/rockchip: dw_hdmi: add regulator support
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-5-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211117143347.314294-5-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_090131_689731_05998881 
X-CRM114-Status: GOOD (  22.05  )
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

On 2021-11-17 14:33, Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   .../display/rockchip/rockchip,dw-hdmi.yaml    |  6 ++
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   | 58 ++++++++++++++++++-
>   2 files changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 53fa42479d5b7..293b2cfbf739f 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -28,6 +28,12 @@ properties:
>     reg-io-width:
>       const: 4
>   
> +  avdd-0v9-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.
> +
> +  avdd-1v8-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.
> +
>     clocks:
>       minItems: 2
>       items:
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 29608c25e2d0e..b8fe56c89cdc9 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -9,6 +9,7 @@
>   #include <linux/platform_device.h>
>   #include <linux/phy/phy.h>
>   #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>   
>   #include <drm/bridge/dw_hdmi.h>
>   #include <drm/drm_edid.h>
> @@ -83,6 +84,8 @@ struct rockchip_hdmi {
>   	struct clk *vpll_clk;
>   	struct clk *grf_clk;
>   	struct dw_hdmi *hdmi;
> +	struct regulator *avdd_0v9;
> +	struct regulator *avdd_1v8;
>   	struct phy *phy;
>   };
>   
> @@ -222,6 +225,22 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>   	hdmi->vpll_clk = hdmi->clks[RK_HDMI_CLK_VPLL].clk;
>   	hdmi->grf_clk = hdmi->clks[RK_HDMI_CLK_GRF].clk;
>   
> +	hdmi->avdd_0v9 = devm_regulator_get_optional(hdmi->dev, "avdd-0v9");

These are clearly *not* optional, unless the HDMI block is magic and can 
still work without physical power. Use devm_regulator_get(), and if the 
real supply is missing from the DT for whatever reason you should get a 
dummy regulator back, which you can then successfully disable and enable 
without all the conditional mess.

Robin.

> +	if (IS_ERR(hdmi->avdd_0v9)) {
> +		if (PTR_ERR(hdmi->avdd_0v9) != -ENODEV)
> +			return PTR_ERR(hdmi->avdd_0v9);
> +
> +		hdmi->avdd_0v9 = NULL;
> +	}
> +
> +	hdmi->avdd_1v8 = devm_regulator_get_optional(hdmi->dev, "avdd-1v8");
> +	if (IS_ERR(hdmi->avdd_1v8)) {
> +		if (PTR_ERR(hdmi->avdd_1v8) != -ENODEV)
> +			return PTR_ERR(hdmi->avdd_1v8);
> +
> +		hdmi->avdd_1v8 = NULL;
> +	}
> +
>   	return 0;
>   }
>   
> @@ -559,11 +578,27 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>   		return ret;
>   	}
>   
> +	if (hdmi->avdd_0v9) {
> +		ret = regulator_enable(hdmi->avdd_0v9);
> +		if (ret) {
> +			DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: %d\n", ret);
> +			goto err_avdd_0v9;
> +		}
> +	}
> +
> +	if (hdmi->avdd_1v8) {
> +		ret = regulator_enable(hdmi->avdd_1v8);
> +		if (ret) {
> +			DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: %d\n", ret);
> +			goto err_avdd_1v8;
> +		}
> +	}
> +
>   	ret = clk_bulk_prepare_enable(RK_HDMI_NCLOCKS_HDMI, hdmi->clks);
>   	if (ret) {
>   		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
>   			      ret);
> -		return ret;
> +		goto err_clk;
>   	}
>   
>   	if (hdmi->chip_data == &rk3568_chip_data) {
> @@ -587,10 +622,21 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>   	 */
>   	if (IS_ERR(hdmi->hdmi)) {
>   		ret = PTR_ERR(hdmi->hdmi);
> -		drm_encoder_cleanup(encoder);
> -		clk_bulk_disable_unprepare(RK_HDMI_NCLOCKS_HDMI, hdmi->clks);
> +		goto err_bind;
>   	}
>   
> +	return 0;
> +
> +err_bind:
> +	clk_bulk_disable_unprepare(RK_HDMI_NCLOCKS_HDMI, hdmi->clks);
> +	drm_encoder_cleanup(encoder);
> +err_clk:
> +	if (hdmi->avdd_1v8)
> +		regulator_disable(hdmi->avdd_1v8);
> +err_avdd_1v8:
> +	if (hdmi->avdd_0v9)
> +		regulator_disable(hdmi->avdd_0v9);
> +err_avdd_0v9:
>   	return ret;
>   }
>   
> @@ -601,6 +647,12 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
>   
>   	dw_hdmi_unbind(hdmi->hdmi);
>   	clk_bulk_disable_unprepare(RK_HDMI_NCLOCKS_HDMI, hdmi->clks);
> +
> +	if (hdmi->avdd_1v8)
> +		regulator_disable(hdmi->avdd_1v8);
> +
> +	if (hdmi->avdd_0v9)
> +		regulator_disable(hdmi->avdd_0v9);
>   }
>   
>   static const struct component_ops dw_hdmi_rockchip_ops = {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
