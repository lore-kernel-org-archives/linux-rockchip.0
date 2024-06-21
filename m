Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99487C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 11:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0srPAXTYZ6MNNW2kdFv0tmexEeqi1JJu2EWE660W8kM=; b=iR5YJVDV/AqJCT
	eqMt1kuE40EM7rOQSlcdoeNRq6p76/VhzgebXWba0aUb+dQ/ygPCyfSchZBfffJbzQFk5nkPpU1ga
	DO3+cNLHSjzHZZ4h7Fs/4e+SSligOdPWL8RPD7DC2mIj0+LJSXfJBIWxMsLA5kZoIcryCAHWO+rJB
	kjcid9Gm10YsFOtMHztKLC2Vl2TSaeO1VUm/2xEcq+Gzfktdpi75OCIfCKiNw/kOgrfYUk35otEV9
	600w3J2VHLwR+FMzuHMCmEB8V8oiS3NQ0XgeXPLFlQnDzfA6u7FwWHk0FVE8ajScFynm3O58HiTjw
	19iYG9n6+BExr6APSPQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKceH-00000008zG1-0OBY;
	Fri, 21 Jun 2024 11:41:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKceE-00000008zEm-0kEV
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 11:41:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKcdd-0007pj-RL; Fri, 21 Jun 2024 13:41:05 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKcdY-003voe-7z; Fri, 21 Jun 2024 13:41:00 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKcdY-0008gu-0V;
	Fri, 21 Jun 2024 13:41:00 +0200
Message-ID: <fa9aee7a6cbe4f1320a83db1097a4a486ca1781c.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Daniel Golle <daniel@makrotopia.org>, Aurelien Jarno
 <aurelien@aurel32.net>,  Olivia Mackall <olivia@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=
 <ukleinek@debian.org>,  Sebastian Reichel
 <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>, 
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 21 Jun 2024 13:41:00 +0200
In-Reply-To: <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
	 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_044142_222143_3CFA2B78 
X-CRM114-Status: GOOD (  24.16  )
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

Hi,

On Fr, 2024-06-21 at 02:25 +0100, Daniel Golle wrote:
> From: Aurelien Jarno <aurelien@aurel32.net>
> 
> Rockchip SoCs used to have a random number generator as part of their
> crypto device, and support for it has to be added to the corresponding
> driver. However newer Rockchip SoCs like the RK356x have an independent
> True Random Number Generator device. This patch adds a driver for it,
> greatly inspired from the downstream driver.
> 
> The TRNG device does not seem to have a signal conditionner and the FIPS
> 140-2 test returns a lot of failures. They can be reduced by increasing
> RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
> has been adjusted to get ~90% of successes and the quality value has
> been set accordingly.
> 
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> [daniel@makrotpia.org: code style fixes]
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  MAINTAINERS                           |   1 +
>  drivers/char/hw_random/Kconfig        |  14 ++
>  drivers/char/hw_random/Makefile       |   1 +
>  drivers/char/hw_random/rockchip-rng.c | 229 ++++++++++++++++++++++++++
>  4 files changed, 245 insertions(+)
>  create mode 100644 drivers/char/hw_random/rockchip-rng.c
> 
[...]
> diff --git a/drivers/char/hw_random/rockchip-rng.c b/drivers/char/hw_random/rockchip-rng.c
> new file mode 100644
> index 000000000000..6070abb73847
> --- /dev/null
> +++ b/drivers/char/hw_random/rockchip-rng.c
> @@ -0,0 +1,229 @@
[...]
> 
> +static int rk_rng_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rk_rng *rk_rng;
> +	int ret;
> +
> +	rk_rng = devm_kzalloc(dev, sizeof(*rk_rng), GFP_KERNEL);
> +	if (!rk_rng)
> +		return -ENOMEM;
> +
> +	rk_rng->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(rk_rng->base))
> +		return PTR_ERR(rk_rng->base);
> +
> +	rk_rng->clk_num = devm_clk_bulk_get_all(dev, &rk_rng->clk_bulks);
> +	if (rk_rng->clk_num < 0)
> +		return dev_err_probe(dev, rk_rng->clk_num,
> +				     "Failed to get clks property\n");
> +
> +	rk_rng->rst = devm_reset_control_array_get(&pdev->dev, false, false);

Please use devm_reset_control_array_get_exclusive() instead.


regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
