Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C55EC3DA42
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 06:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBuH7XPCazAy6qMbXx+OLdwzDFNhTF3WuZaGBVCcvwg=; b=DXYNVX1J8RTwH6
	2D6XhznURm/pTwWF4C3/rZGMV2K3n6NNFSZpK8tlNsugAEb4wRU7cBv5NZFntFiu9J1cTgxiNRD4Q
	HLz3h2y00DxqbFvTEgVQGj4CJTpnEBpV3spltt0mApN1ih+dny5ahAwJ55FzXUdifMkN03Qc61NXl
	As8uJ8LuTZ8hmIOccOQa/W6jcidVChStIul1fklOuY6N8M6ANhHYXVQ8dnVdd58aSYPrRSvcJqizO
	wPHYPg/LEt0See/r9MKKNvdjTpNCk4lDeXKAIl1USMpKSLMxrNHuvfPR3yQBLnX6DM1qVuyFiJdfa
	Nm+01VVhdilSGLeNUJuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSt2W-00000003tN4-03yI;
	Sun, 14 Jul 2024 06:48:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSt2C-00000003tL5-04BV;
	Sun, 14 Jul 2024 06:48:38 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 46E6lRAW024417;
	Sun, 14 Jul 2024 01:47:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1720939647;
	bh=gqZD3AlWNrNG3IaqY/F93h4cnT0J0I2HZpA75TQiyzY=;
	h=From:To:Subject:In-Reply-To:References:Date;
	b=tiT2LKNuBXwHix7KsUNgsDWtYg90NEJWcYW183vO78NLJ2exqsmYM9q5n0E8tHw4M
	 BZZbgBc0Di0YpkdkmaRuplu+5rrkRiyfYRF+Yr0vALVlPDq5Gx/hIgA00YuwtGKgTj
	 VsFFemujuugHTOFEwZLcdgFwnY5iLTclpfs9quYI=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 46E6lRft008510
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 14 Jul 2024 01:47:27 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sun, 14
 Jul 2024 01:47:26 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sun, 14 Jul 2024 01:47:26 -0500
Received: from localhost (kamlesh.dhcp.ti.com [172.24.227.123])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 46E6lQYw061884;
	Sun, 14 Jul 2024 01:47:26 -0500
From: Kamlesh Gurudasani <kamlesh@ti.com>
To: Daniel Golle <daniel@makrotopia.org>,
        Daniel Golle
	<daniel@makrotopia.org>,
        Aurelien Jarno <aurelien@aurel32.net>,
        "Olivia
 Mackall" <olivia@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob
 Herring <robh@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Conor
 Dooley <conor+dt@kernel.org>,
        "Heiko Stuebner" <heiko@sntech.de>,
        Philipp
 Zabel <p.zabel@pengutronix.de>,
        "Dragan Simic" <dsimic@manjaro.org>,
        Uwe
 =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
        "Sascha Hauer"
	<s.hauer@pengutronix.de>,
        "Cristian Ciocaltea"
	<cristian.ciocaltea@collabora.com>,
        Martin Kaiser <martin@kaiser.cx>, Ard
 Biesheuvel <ardb@kernel.org>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 2/3] hwrng: add hwrng driver for Rockchip RK3568 SoC
In-Reply-To: <b5036408088f2a448b303d6bc6f6f3cc52702dc5.1720830725.git.daniel@makrotopia.org>
References: <cover.1720830725.git.daniel@makrotopia.org>
 <b5036408088f2a448b303d6bc6f6f3cc52702dc5.1720830725.git.daniel@makrotopia.org>
Date: Sun, 14 Jul 2024 12:17:25 +0530
Message-ID: <87frsc5v2a.fsf@kamlesh.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_234836_283120_1CD96A28 
X-CRM114-Status: GOOD (  43.98  )
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

Daniel Golle <daniel@makrotopia.org> writes:

> This message was sent from outside of Texas Instruments. 
> Do not click links or open attachments unless you recognize the source of this email and know the content is safe. If you wish
> to report this message to IT Security, please forward the message as an attachment to phishing@list.ti.com 
>  
> From: Aurelien Jarno <aurelien@aurel32.net>
>
> Rockchip SoCs used to have a random number generator as part of their
> crypto device, and support for it has to be added to the corresponding
> driver. However newer Rockchip SoCs like the RK3568 have an independent
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
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  MAINTAINERS                           |   1 +
>  drivers/char/hw_random/Kconfig        |  14 ++
>  drivers/char/hw_random/Makefile       |   1 +
>  drivers/char/hw_random/rockchip-rng.c | 220 ++++++++++++++++++++++++++
>  4 files changed, 236 insertions(+)
>  create mode 100644 drivers/char/hw_random/rockchip-rng.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7b2b8b1f526c..2745cfe56774 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19698,6 +19698,7 @@ M:	Daniel Golle <daniel@makrotopia.org>
>  M:	Aurelien Jarno <aurelien@aurel32.net>
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml
> +F:	drivers/char/hw_random/rockchip-rng.c
>  
>  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
>  M:	Jacob Chen <jacob-chen@iotwrt.com>
> diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
> index 442c40efb200..2b62cd08f91a 100644
> --- a/drivers/char/hw_random/Kconfig
> +++ b/drivers/char/hw_random/Kconfig
> @@ -573,6 +573,20 @@ config HW_RANDOM_JH7110
>  	  To compile this driver as a module, choose M here.
>  	  The module will be called jh7110-trng.
>  
> +config HW_RANDOM_ROCKCHIP
> +	tristate "Rockchip True Random Number Generator"
> +	depends on HW_RANDOM && (ARCH_ROCKCHIP || COMPILE_TEST)
> +	depends on HAS_IOMEM
> +	default HW_RANDOM
> +	help
> +	  This driver provides kernel-side support for the True Random Number
> +	  Generator hardware found on some Rockchip SoC like RK3566 or RK3568.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called rockchip-rng.
> +
> +	  If unsure, say Y.
> +
>  endif # HW_RANDOM
>  
>  config UML_RANDOM
> diff --git a/drivers/char/hw_random/Makefile b/drivers/char/hw_random/Makefile
> index 32549a1186dc..01f012eab440 100644
> --- a/drivers/char/hw_random/Makefile
> +++ b/drivers/char/hw_random/Makefile
> @@ -48,4 +48,5 @@ obj-$(CONFIG_HW_RANDOM_XIPHERA) += xiphera-trng.o
>  obj-$(CONFIG_HW_RANDOM_ARM_SMCCC_TRNG) += arm_smccc_trng.o
>  obj-$(CONFIG_HW_RANDOM_CN10K) += cn10k-rng.o
>  obj-$(CONFIG_HW_RANDOM_POLARFIRE_SOC) += mpfs-rng.o
> +obj-$(CONFIG_HW_RANDOM_ROCKCHIP) += rockchip-rng.o
>  obj-$(CONFIG_HW_RANDOM_JH7110) += jh7110-trng.o
> diff --git a/drivers/char/hw_random/rockchip-rng.c b/drivers/char/hw_random/rockchip-rng.c
> new file mode 100644
> index 000000000000..7e45e9880e3a
> --- /dev/null
> +++ b/drivers/char/hw_random/rockchip-rng.c
> @@ -0,0 +1,220 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * rockchip-rng.c True Random Number Generator driver for Rockchip RK3568 SoC
> + *
> + * Copyright (c) 2018, Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2022, Aurelien Jarno
> + * Authors:
> + *  Lin Jinhan <troy.lin@rock-chips.com>
> + *  Aurelien Jarno <aurelien@aurel32.net>
> + */
> +#include <linux/clk.h>
> +#include <linux/hw_random.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +
> +#define RK_RNG_AUTOSUSPEND_DELAY	100
> +#define RK_RNG_MAX_BYTE			32
> +#define RK_RNG_POLL_PERIOD_US		100
> +#define RK_RNG_POLL_TIMEOUT_US		10000
> +
> +/*
> + * TRNG collects osc ring output bit every RK_RNG_SAMPLE_CNT time. The value is
> + * a tradeoff between speed and quality and has been adjusted to get a quality
> + * of ~900 (~90% of FIPS 140-2 successes).
> + */
> +#define RK_RNG_SAMPLE_CNT		1000
> +
> +/* TRNG registers from RK3568 TRM-Part2, section 5.4.1 */
> +#define TRNG_RST_CTL			0x0004
> +#define TRNG_RNG_CTL			0x0400
> +#define TRNG_RNG_CTL_LEN_64_BIT		(0x00 << 4)
> +#define TRNG_RNG_CTL_LEN_128_BIT	(0x01 << 4)
> +#define TRNG_RNG_CTL_LEN_192_BIT	(0x02 << 4)
> +#define TRNG_RNG_CTL_LEN_256_BIT	(0x03 << 4)
> +#define TRNG_RNG_CTL_OSC_RING_SPEED_0	(0x00 << 2)
> +#define TRNG_RNG_CTL_OSC_RING_SPEED_1	(0x01 << 2)
> +#define TRNG_RNG_CTL_OSC_RING_SPEED_2	(0x02 << 2)
> +#define TRNG_RNG_CTL_OSC_RING_SPEED_3	(0x03 << 2)
> +#define TRNG_RNG_CTL_ENABLE		BIT(1)
> +#define TRNG_RNG_CTL_START		BIT(0)
> +#define TRNG_RNG_SAMPLE_CNT		0x0404
> +#define TRNG_RNG_DOUT			0x0410
> +
> +struct rk_rng {
> +	struct hwrng rng;
> +	void __iomem *base;
> +	struct reset_control *rst;
> +	int clk_num;
> +	struct clk_bulk_data *clk_bulks;
> +};
> +
> +static int rk_rng_init(struct hwrng *rng)
> +{
> +	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
> +	int ret;
> +
> +	/* start clocks */
> +	ret = clk_bulk_prepare_enable(rk_rng->clk_num, rk_rng->clk_bulks);
> +	if (ret < 0) {
> +		dev_err((struct device *) rk_rng->rng.priv,
> +			"Failed to enable clks %d\n", ret);
> +		return ret;
> +	}
> +
> +	/* set the sample period */
> +	writel(RK_RNG_SAMPLE_CNT, rk_rng->base + TRNG_RNG_SAMPLE_CNT);
> +
> +	/* set osc ring speed and enable it */
> +	writel(TRNG_RNG_CTL_LEN_256_BIT |
> +	       TRNG_RNG_CTL_OSC_RING_SPEED_0 |
> +	       TRNG_RNG_CTL_ENABLE,
> +	       rk_rng->base + TRNG_RNG_CTL);
> +
> +	return 0;
> +}
> +
> +static void rk_rng_cleanup(struct hwrng *rng)
> +{
> +	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
> +
> +	/* stop TRNG */
> +	writel(0, rk_rng->base + TRNG_RNG_CTL);
> +
> +	/* stop clocks */
> +	clk_bulk_disable_unprepare(rk_rng->clk_num, rk_rng->clk_bulks);
> +}
> +
> +static int rk_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> +{
> +	struct rk_rng *rk_rng = container_of(rng, struct rk_rng, rng);
> +	size_t to_read = min_t(size_t, max, RK_RNG_MAX_BYTE);
> +	u32 reg;
> +	int ret = 0;
> +
> +	ret = pm_runtime_resume_and_get((struct device *) rk_rng->rng.priv);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Start collecting random data */
> +	writel(TRNG_RNG_CTL_START, rk_rng->base + TRNG_RNG_CTL);
> +
> +	ret = readl_poll_timeout(rk_rng->base + TRNG_RNG_CTL, reg,
> +				 !(reg & TRNG_RNG_CTL_START),
> +				 RK_RNG_POLL_PERIOD_US,
> +				 RK_RNG_POLL_TIMEOUT_US);
> +	if (ret < 0)
> +		goto out;
> +
> +	/* Read random data stored in the registers */
> +	memcpy_fromio(buf, rk_rng->base + TRNG_RNG_DOUT, to_read);
> +out:
> +	pm_runtime_mark_last_busy((struct device *) rk_rng->rng.priv);
> +	pm_runtime_put_sync_autosuspend((struct device *) rk_rng->rng.priv);
> +
> +	return (ret < 0) ? ret : to_read;
Do we really need to check ret < 0 here?
readl_poll_timeout returns either 0 or -ve.

return ret ? ret : to_read;
would work as well. we save extra evaluation of (ret<0).

Let me know what you think.

Kamlesh

> +}
> +
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
> +	rk_rng->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
> +	if (IS_ERR(rk_rng->rst))
> +		return dev_err_probe(dev, PTR_ERR(rk_rng->rst),
> +				     "Failed to get reset property\n");
> +
> +	reset_control_assert(rk_rng->rst);
> +	udelay(2);
> +	reset_control_deassert(rk_rng->rst);
> +
> +	platform_set_drvdata(pdev, rk_rng);
> +
> +	rk_rng->rng.name = dev_driver_string(dev);
> +	if (!IS_ENABLED(CONFIG_PM)) {
> +		rk_rng->rng.init = rk_rng_init;
> +		rk_rng->rng.cleanup = rk_rng_cleanup;
> +	}
> +	rk_rng->rng.read = rk_rng_read;
> +	rk_rng->rng.priv = (unsigned long) dev;
> +	rk_rng->rng.quality = 900;
> +
> +	pm_runtime_set_autosuspend_delay(dev, RK_RNG_AUTOSUSPEND_DELAY);
> +	pm_runtime_use_autosuspend(dev);
> +	devm_pm_runtime_enable(dev);
> +
> +	ret = devm_hwrng_register(dev, &rk_rng->rng);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Failed to register Rockchip hwrng\n");
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused rk_rng_runtime_suspend(struct device *dev)
> +{
> +	struct rk_rng *rk_rng = dev_get_drvdata(dev);
> +
> +	rk_rng_cleanup(&rk_rng->rng);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused rk_rng_runtime_resume(struct device *dev)
> +{
> +	struct rk_rng *rk_rng = dev_get_drvdata(dev);
> +
> +	return rk_rng_init(&rk_rng->rng);
> +}
> +
> +static const struct dev_pm_ops rk_rng_pm_ops = {
> +	SET_RUNTIME_PM_OPS(rk_rng_runtime_suspend,
> +				rk_rng_runtime_resume, NULL)
> +	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +				pm_runtime_force_resume)
> +};
> +
> +static const struct of_device_id rk_rng_dt_match[] = {
> +	{ .compatible = "rockchip,rk3568-rng", },
> +	{ /* sentinel */ },
> +};
> +
> +MODULE_DEVICE_TABLE(of, rk_rng_dt_match);
> +
> +static struct platform_driver rk_rng_driver = {
> +	.driver	= {
> +		.name	= "rockchip-rng",
> +		.pm	= &rk_rng_pm_ops,
> +		.of_match_table = rk_rng_dt_match,
> +	},
> +	.probe	= rk_rng_probe,
> +};
> +
> +module_platform_driver(rk_rng_driver);
> +
> +MODULE_DESCRIPTION("Rockchip RK3568 True Random Number Generator driver");
> +MODULE_AUTHOR("Lin Jinhan <troy.lin@rock-chips.com>");
> +MODULE_AUTHOR("Aurelien Jarno <aurelien@aurel32.net>");
> +MODULE_AUTHOR("Daniel Golle <daniel@makrotopia.org>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.45.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
