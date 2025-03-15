Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F53C28B28
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Mar 2025 08:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1I678vMgDrZU+KenqOpGsO3hpTfOIO5XFAAN4EbBWew=; b=X6qdiPjOCo3g3t
	NIqTV7HyxH5fECij0pYySZlDROAI0X2AIUr9tRWpLj79aj7vE8YtDVeI07tDL7mj7nMDrKr2tDyx+
	HWejkHoMMuyLM30GAwty0WePjO57eET/ov4jdbZH7+KiuwWEybZOuipecesq9h7+BPwU/Dsbdr/+e
	DfuJBMfyhWi/cMaf6x7Bb020+/6ZhJL3eRSzvQtHCPhqakXBfmRhbNX+15SKzMTrfmxjaOEY+bd9C
	ZX59HrMiabXJMFZP0WduE3toqHKK6rBMfosSJbrf6MNL/5PlX4xgCPTl6mf+xVnS63zAHJshwjW4z
	B43AE6iwUGDD7eDPpypw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttMlD-0000000G1L6-4Ae7;
	Sat, 15 Mar 2025 08:20:47 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttMlA-0000000G1IQ-3WqT
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Mar 2025 08:20:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742026843;
 bh=3eoq8Ip4Lg2/aL44gQkJ166eIGqKVZnzBY67DvJxGBM=;
 b=0TAbMwTtdUc5LFGuMeFmP4yDuyHSGLydpg74hLzNfrKrdT6C2Dg7n2/gceO9TkOAFBjZAtJa3
 +fVloBY7WhuO/D+mNB8yrQzSQkr0OJ5CmlYoZx1q5I0mnmAH5Vdy2BSytHlY+eHJ65lOkyzokOe
 RpeZIrcwH2G5cF0XSJsyg3bgbVO6Bq2cZuWzNz/xw9+tp0L5GoEON6s5f5G/64j0bAMpMXy17MN
 pCXkLhkD6ikrl4GtBRZGvwh1EJUb5iJqvC89h+LaW6nx5A2TWXTpA6s32WkJf1Kpb31jrfX+iw5
 syy/CXe3n2FUX2ZdEjj2KtyniNKJEjQzANItnTdas/Ow==
X-Forward-Email-ID: 67d5383dca5d7787a43350e7
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <6c355664-50dd-4efd-94b7-9d93c02d3e80@kwiboo.se>
Date: Sat, 15 Mar 2025 09:20:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] thermal: rockchip: Support RK3576 SoC in the
 thermal driver
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
References: <20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com>
 <20250228-rk3576-tsadc-upstream-v3-3-4bfbb3b699b9@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250228-rk3576-tsadc-upstream-v3-3-4bfbb3b699b9@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250315_012045_298920_22247B60 
X-CRM114-Status: GOOD (  17.68  )
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

Hi Nicolas,

On 2025-02-28 21:06, Nicolas Frattaroli wrote:
> From: Ye Zhang <ye.zhang@rock-chips.com>
> 
> The RK3576 SoC has six TS-ADC channels: TOP, BIG_CORE, LITTLE_CORE,
> DDR, NPU and GPU.
> 
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> [ported to mainline, reworded commit message]
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/thermal/rockchip_thermal.c | 42 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index a8ad85feb68fbb7ec8d79602b16c47838ecb3c00..bec1930bebd87859a7e519cfc9f05e10b1c31e87 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -1061,6 +1061,22 @@ static void rk_tsadcv3_tshut_mode(int chn, void __iomem *regs,
>  	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
>  }
>  
> +static void rk_tsadcv4_tshut_mode(int chn, void __iomem *regs,
> +				  enum tshut_mode mode)
> +{
> +	u32 val_gpio, val_cru;
> +
> +	if (mode == TSHUT_MODE_GPIO) {
> +		val_gpio = TSADCV2_INT_SRC_EN(chn) | TSADCV2_INT_SRC_EN_MASK(chn);
> +		val_cru = TSADCV2_INT_SRC_EN_MASK(chn);
> +	} else {
> +		val_cru = TSADCV2_INT_SRC_EN(chn) | TSADCV2_INT_SRC_EN_MASK(chn);
> +		val_gpio = TSADCV2_INT_SRC_EN_MASK(chn);
> +	}
> +	writel_relaxed(val_gpio, regs + TSADCV3_HSHUT_GPIO_INT_EN);
> +	writel_relaxed(val_cru, regs + TSADCV3_HSHUT_CRU_INT_EN);
> +}

This function is identical to rk_tsadcv3_tshut_mode() in mainline.

Should the v3 function be renamed to v4 in mainline to match vendor
kernel to avoid confusion?

> +
>  static const struct rockchip_tsadc_chip px30_tsadc_data = {
>  	/* cpu, gpu */
>  	.chn_offset = 0,
> @@ -1284,6 +1300,28 @@ static const struct rockchip_tsadc_chip rk3568_tsadc_data = {
>  	},
>  };
>  
> +static const struct rockchip_tsadc_chip rk3576_tsadc_data = {
> +	/* top, big_core, little_core, ddr, npu, gpu */
> +	.chn_offset = 0,
> +	.chn_num = 6, /* six channels for tsadc */
> +	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC */
> +	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
> +	.tshut_temp = 95000,

Here the default is GPIO and 95 deg, in DT node the default is override
to CRU and 120 deg.

Any reason that is not the default here?

Regards,
Jonas

> +	.initialize = rk_tsadcv8_initialize,
> +	.irq_ack = rk_tsadcv4_irq_ack,
> +	.control = rk_tsadcv4_control,
> +	.get_temp = rk_tsadcv4_get_temp,
> +	.set_alarm_temp = rk_tsadcv3_alarm_temp,
> +	.set_tshut_temp = rk_tsadcv3_tshut_temp,
> +	.set_tshut_mode = rk_tsadcv4_tshut_mode,
> +	.table = {
> +		.id = rk3588_code_table,
> +		.length = ARRAY_SIZE(rk3588_code_table),
> +		.data_mask = TSADCV4_DATA_MASK,
> +		.mode = ADC_INCREMENT,
> +	},
> +};
> +
>  static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
>  	/* top, big_core0, big_core1, little_core, center, gpu, npu */
>  	.chn_offset = 0,
> @@ -1342,6 +1380,10 @@ static const struct of_device_id of_rockchip_thermal_match[] = {
>  		.compatible = "rockchip,rk3568-tsadc",
>  		.data = (void *)&rk3568_tsadc_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3576-tsadc",
> +		.data = (void *)&rk3576_tsadc_data,
> +	},
>  	{
>  		.compatible = "rockchip,rk3588-tsadc",
>  		.data = (void *)&rk3588_tsadc_data,
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
