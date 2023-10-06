Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D6E0E81E19
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 16:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjD5Yy3quWIWsKUqwrPM77gR+0vxq1a5tfyWD70uS8g=; b=Hr+RAKN3qm0uMV
	dNqSv2g1elBANRX6zfcODcX/HMpfFzfkC85rmc8RsH8EhVa7MH1ZF5ua3MvwKS6WD/jQQ4TcSk3X8
	nEFKEhROv+8Fw/5TRmDxu7TGd5o5j6a80ptloGRaoPie5TdOjHm94N8pnnFdFVNzyAkJFi38QllTb
	L93yrQ3bk/HUHRVPyjy0PcpE6nKawIxY9RTDBBjGpoznK1aSoHAZGPpmTFplvVaVPogyYkRbsIBww
	qLPXyVuJEE50SdBNVfeslPcJXjSeBHdsFKV+mzAm+7NKkYET1tJiyJJLQ9GcXxIF/3bD+uh33n63v
	URUUy0HgtiYdSXyBYK7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qonbC-006B1p-13;
	Fri, 06 Oct 2023 16:22:46 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qonb8-006B09-17;
	Fri, 06 Oct 2023 16:22:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E0886CE28C2;
	Fri,  6 Oct 2023 16:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24B26C433C7;
	Fri,  6 Oct 2023 16:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696609358;
	bh=uBFklTtcxYYolSP1xeVJ+qDQ45NL1scnT8mlqYObgng=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ExHkbbykJhmkAWEtl2xsVh5Yo76a3FDW+JZz3ZIG02s8kMluIsuN/5EDTF69w5f8k
	 66sHcHImRQUNpqNfybn/aiRGQS8aO4zRJX11icoKdY3G0vxf1hGUmIB7J8jJwP1VFW
	 J6RiMlpSsUOx+ytr+9vCml3UXM0NvAao8T9JsK5CSOR4Q+qNmXZJ3c7IfNmw8288iB
	 aeE88wuvk5vpHH+LglqINv0iQp0pnoWfcbeU8rq5q+WVm9smsAHRCS71nL1TVXcz/z
	 N23QkA+PvjNxHgMIzx4U04r8DscZ47VUothGEX7AwvH9FvwxIfskAGSdCYI3Sr6tqb
	 Faua7ZQwTeMqg==
Message-ID: <5f4dec5b-88a6-ee72-78a9-71c6b20b8da2@kernel.org>
Date: Sat, 7 Oct 2023 01:22:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 04/26] PM / devfreq: rockchip-dfi: Add SoC specific
 init function
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-5-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-5-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_092242_725762_544C701F 
X-CRM114-Status: GOOD (  27.24  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Move the RK3399 specifics to a SoC specific init function to make
> the way free for supporting other SoCs later.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - use of_device_get_match_data()
>     - use a callback rather than a struct type as driver data
> 
>  drivers/devfreq/event/rockchip-dfi.c | 48 +++++++++++++++++++---------
>  1 file changed, 33 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index e19e5acaa362c..6b1ef29df7048 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -17,6 +17,7 @@
>  #include <linux/slab.h>
>  #include <linux/list.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  
>  #include <soc/rockchip/rk3399_grf.h>
>  
> @@ -55,27 +56,21 @@ struct rockchip_dfi {
>  	void __iomem *regs;
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
> +	u32 ddr_type;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>  {
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	void __iomem *dfi_regs = dfi->regs;
> -	u32 val;
> -	u32 ddr_type;
> -
> -	/* get ddr type */
> -	regmap_read(dfi->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> -	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> -		    RK3399_PMUGRF_DDRTYPE_MASK;
>  
>  	/* clear DDRMON_CTRL setting */
>  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
>  
>  	/* set ddr type to dfi */
> -	if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> +	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
>  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> -	else if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> +	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
>  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
>  
>  	/* enable count, use software mode */
> @@ -167,8 +162,26 @@ static const struct devfreq_event_ops rockchip_dfi_ops = {
>  	.set_event = rockchip_dfi_set_event,
>  };
>  
> +static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> +{
> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> +	u32 val;
> +
> +	dfi->clk = devm_clk_get(dfi->dev, "pclk_ddr_mon");
> +	if (IS_ERR(dfi->clk))
> +		return dev_err_probe(dfi->dev, PTR_ERR(dfi->clk),
> +				     "Cannot get the clk pclk_ddr_mon\n");
> +
> +	/* get ddr type */
> +	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> +	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> +			RK3399_PMUGRF_DDRTYPE_MASK;
> +
> +	return 0;
> +};
> +
>  static const struct of_device_id rockchip_dfi_id_match[] = {
> -	{ .compatible = "rockchip,rk3399-dfi" },
> +	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
> @@ -179,6 +192,12 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	struct rockchip_dfi *dfi;
>  	struct devfreq_event_desc *desc;
>  	struct device_node *np = pdev->dev.of_node, *node;
> +	int (*soc_init)(struct rockchip_dfi *dfi);
> +	int ret;
> +
> +	soc_init = of_device_get_match_data(&pdev->dev);
> +	if (!soc_init)
> +		return -EINVAL;
>  
>  	dfi = devm_kzalloc(dev, sizeof(*dfi), GFP_KERNEL);
>  	if (!dfi)
> @@ -188,11 +207,6 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	if (IS_ERR(dfi->regs))
>  		return PTR_ERR(dfi->regs);
>  
> -	dfi->clk = devm_clk_get(dev, "pclk_ddr_mon");
> -	if (IS_ERR(dfi->clk))
> -		return dev_err_probe(dev, PTR_ERR(dfi->clk),
> -				     "Cannot get the clk pclk_ddr_mon\n");
> -
>  	node = of_parse_phandle(np, "rockchip,pmu", 0);
>  	if (!node)
>  		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
> @@ -209,6 +223,10 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
>  	desc->driver_data = dfi;
>  	desc->name = np->name;
>  
> +	ret = soc_init(dfi);
> +	if (ret)
> +		return ret;
> +
>  	dfi->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
>  	if (IS_ERR(dfi->edev)) {
>  		dev_err(&pdev->dev,


Applied it. Thanks.
-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
