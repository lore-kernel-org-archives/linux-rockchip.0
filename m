Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B41E81E1B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 18:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox5rw4DSpDJv0sZO1PhEYTLzZ83zB4e3kXxvAoBAxC0=; b=o78YlxxD7GiEde
	2wcOxAxXN2BcXabye2OPS4nEWIPUzPpSBZRY7flfy9aRKfwZ5N1i3nf3/JtlWmj5J6s5R60slSi04
	nghhMRiL+tG3MqRAvvHYv+rTDGr9sw2+jpHHQRPpchbqloXKWKrysfJE7S53bUl2vp1IXBjTTwgCZ
	m83v47wuTZFC42zLCGK6PeD9gZ32y+YtS2USoxFrzDOI7bjJap7hKhwQ9Lg15h0AaZzRq39JlHNR4
	yhncfY+YkFUG382puBR4MeJTAt9EZnCEYlxUebog3ExiDMcWZ+nbRzI4QkuSmvhX/Wo/YxNrEjaxp
	ITse4Qr1DAcYmVgVCOcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qopOB-006InZ-2H;
	Fri, 06 Oct 2023 18:17:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qopO7-006ImG-0X;
	Fri, 06 Oct 2023 18:17:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id AB6DCB829FB;
	Fri,  6 Oct 2023 18:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334F3C433C8;
	Fri,  6 Oct 2023 18:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696616241;
	bh=Q5nU/VnkY41EgR/l98nYHQwwOM+DruvUM8ho7kEhbRA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Yx/Z2MezLls8bssK8inWG6QIM0MhXOLRR7hmISdcAzRWTNwLKvZmD1pNagCqVXfSl
	 S5oXVsbVRk5qtmmQBbXkc03z/UVNFSTvu90R7N8po8u3NYTCUEEVsX77cfEJ1jXVn1
	 zrGvg9TAUMlO5bQ5FAk1FM3YxYNedM8E/2o1Xl14xjytHXWnbQk0l506NHVwepliJn
	 JQTbALADom1AK532Pcqc7iAOJuQSfg7OChOAN5BY2P3fZnugPSsPqwCMNqLU0R6Sgj
	 dXEpop5n0iTWWFje3eKRfzmXJ3TJ1g6H7IKIRTTmv19P51e+o46rxl45SpeKfcOL+W
	 I4kb54FdDrE4A==
Message-ID: <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
Date: Sat, 7 Oct 2023 03:17:14 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
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
 <20230704093242.583575-11-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_111723_629792_1A3447A3 
X-CRM114-Status: GOOD (  24.29  )
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
> This adds RK3568 support to the DFI driver.  Only iniitialization
> differs from the currently supported RK3399.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
>  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 include/soc/rockchip/rk3568_grf.h
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 6b3ef97b3be09..261d112580c9e 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -23,6 +23,7 @@
>  
>  #include <soc/rockchip/rockchip_grf.h>
>  #include <soc/rockchip/rk3399_grf.h>
> +#include <soc/rockchip/rk3568_grf.h>
>  
>  #define DMC_MAX_CHANNELS	2
>  
> @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	return 0;
>  };
>  
> +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
> +{
> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> +	u32 reg2, reg3;
> +
> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
> +
> +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> +
> +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;

There are no reason of why shifting the '3'.
Could you add the comment about '3' or add the constant definition '3'?

> +
> +	dfi->channel_mask = 1;

nitpick.
On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
In order to keep the consistency, it is better to use BIT() macro as following:
	dfi->channel_mask = BIT(0);

> +
> +	return 0;
> +};
> +
>  static const struct of_device_id rockchip_dfi_id_match[] = {
>  	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
> +	{ .compatible = "rockchip,rk3568-dfi", .data = rk3568_dfi_init },
>  	{ },
>  };
> +
>  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
>  
>  static int rockchip_dfi_probe(struct platform_device *pdev)
> diff --git a/include/soc/rockchip/rk3568_grf.h b/include/soc/rockchip/rk3568_grf.h
> new file mode 100644
> index 0000000000000..575584e9d8834
> --- /dev/null
> +++ b/include/soc/rockchip/rk3568_grf.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +#ifndef __SOC_RK3568_GRF_H
> +#define __SOC_RK3568_GRF_H
> +
> +#define RK3568_PMUGRF_OS_REG2		0x208
> +#define RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO		GENMASK(15, 13)
> +
> +#define RK3568_PMUGRF_OS_REG3		0x20c
> +#define RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3		GENMASK(13, 12)
> +#define RK3568_PMUGRF_OS_REG3_SYSREG_VERSION		GENMASK(31, 28)
> +
> +#endif /* __SOC_RK3568_GRF_H */

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
