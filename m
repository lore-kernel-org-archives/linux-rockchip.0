Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ECCEC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 13:19:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6004464FC8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 13:19:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6004464FC8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LvqXeXVTYzGj9F85e1gJG4bwAEYdnnmDApysXX/0NSY=; b=hIBtynExbRWTjkk7fA+gx0C4t
	jObZdie5xNBFpoUVwiLTUyrPu4rYXYd/qbT/6HmcEaLsOXuNrYqVbNmZQAs2ORDlLdTqhhTavXcjr
	fOOqaqasXvdJvTKel0/N8ZeZA1AnAcnyEm6ifVIMQoS3hGNdntcdOXhd+pyxMAukk3nT8Adf/A7/9
	U7WF5B2FT5BhU7SlU+JQD786LR0eQnbGJpZ5ouYFdPjvfhZ63lDQkjH95hh0Pq+alfpfWj0wYVzx4
	nZw1ylTqy6kV3qkI+OA8En9aWM7ST7r4+vaqx9TPxFYwUum87GfvupHzeZxG1yMIcP8QqTZt8Umu1
	rcF/TVb5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJykT-006svP-5R; Wed, 10 Mar 2021 13:19:37 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJykP-006suo-LZ
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 13:19:36 +0000
IronPort-SDR: 3eGPriLc1bk0A6rrl3K6CP3O36mcbBj0wQ50ZEzYQeejHP4beRKrjXjGC9oUybi7zc0FSkPubS
 aOmZG45rUpww==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="208264766"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="208264766"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 05:19:26 -0800
IronPort-SDR: UoCZgp8YuTtvo110xAQM2oa+NwaeA/AZklg4wXuKwMfI0F6/HudLKjLYf+yaF792TBVSND+2EY
 QFtQ9ZAa1wag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; d="scan'208";a="376960350"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.76])
 ([10.237.72.76])
 by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2021 05:19:24 -0800
Subject: Re: [PATCH v3 3/3] mmc: sdhci-of-dwcmshc: add rockchip platform
 support
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
 <1615254990-192784-3-git-send-email-shawn.lin@rock-chips.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <283761f8-3811-c879-f23b-ef0a8d83f2d2@intel.com>
Date: Wed, 10 Mar 2021 15:19:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <1615254990-192784-3-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_131934_121855_862E7630 
X-CRM114-Status: GOOD (  33.83  )
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

On 9/03/21 3:56 am, Shawn Lin wrote:
> sdhci based synopsys MMC IP is also used on some rockchip platforms,
> so add a basic support here.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

One minor comment below, otherwise, for sdhci:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
> 
> Changes in v3: None
> 
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 220 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 213 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 59d8d96..959084c 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -9,9 +9,11 @@
>  
>  #include <linux/clk.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/iopoll.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/sizes.h>
>  
>  #include "sdhci-pltfm.h"
> @@ -21,11 +23,43 @@
>  /* DWCMSHC specific Mode Select value */
>  #define DWCMSHC_CTRL_HS400		0x7
>  
> +/* Rockchip specific Registers */
> +#define DWCMSHC_HOST_CTRL3		0x508
> +#define DWCMSHC_EMMC_CONTROL		0x52c
> +#define DWCMSHC_EMMC_ATCTRL		0x540
> +#define DWCMSHC_EMMC_DLL_CTRL		0x800
> +#define DWCMSHC_EMMC_DLL_RXCLK		0x804
> +#define DWCMSHC_EMMC_DLL_TXCLK		0x808
> +#define DWCMSHC_EMMC_DLL_STRBIN		0x80c
> +#define DWCMSHC_EMMC_DLL_STATUS0	0x840
> +#define DWCMSHC_EMMC_DLL_START		BIT(0)
> +#define DWCMSHC_EMMC_DLL_RXCLK_SRCSEL	29
> +#define DWCMSHC_EMMC_DLL_START_POINT	16
> +#define DWCMSHC_EMMC_DLL_INC		8
> +#define DWCMSHC_EMMC_DLL_DLYENA		BIT(27)
> +#define DLL_TXCLK_TAPNUM_DEFAULT	0x8
> +#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
> +#define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
> +#define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
> +#define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
> +#define DWCMSHC_EMMC_DLL_TIMEOUT	BIT(9)
> +#define DLL_RXCLK_NO_INVERTER		1
> +#define DLL_RXCLK_INVERTER		0
> +#define DWCMSHC_ENHANCED_STROBE		BIT(8)
> +#define DLL_LOCK_WO_TMOUT(x) \
> +	((((x) & DWCMSHC_EMMC_DLL_LOCKED) == DWCMSHC_EMMC_DLL_LOCKED) && \
> +	(((x) & DWCMSHC_EMMC_DLL_TIMEOUT) == 0))
> +#define ROCKCHIP_MAX_CLKS		3
> +
>  #define BOUNDARY_OK(addr, len) \
>  	((addr | (SZ_128M - 1)) == ((addr + len - 1) | (SZ_128M - 1)))
>  
>  struct dwcmshc_priv {
>  	struct clk	*bus_clk;
> +
> +	/* Rockchip specified optional clocks */
> +	struct clk_bulk_data rockchip_clks[ROCKCHIP_MAX_CLKS];
> +	int txclk_tapnum;
>  };
>  
>  /*
> @@ -100,6 +134,97 @@ static void dwcmshc_set_uhs_signaling(struct sdhci_host *host,
>  	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
>  }
>  
> +static void dwcmshc_rk_hs400_enhanced_strobe(struct mmc_host *mmc,
> +					     struct mmc_ios *ios)
> +{
> +	u32 vendor;
> +	struct sdhci_host *host = mmc_priv(mmc);
> +
> +	vendor = sdhci_readl(host, DWCMSHC_EMMC_CONTROL);
> +	if (ios->enhanced_strobe)
> +		vendor |= DWCMSHC_ENHANCED_STROBE;
> +	else
> +		vendor &= ~DWCMSHC_ENHANCED_STROBE;
> +
> +	sdhci_writel(host, vendor, DWCMSHC_EMMC_CONTROL);
> +}
> +
> +static void dwcmshc_rk_set_clock(struct sdhci_host *host, unsigned int clock)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct dwcmshc_priv *priv = sdhci_pltfm_priv(pltfm_host);
> +	u32 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT, extra;
> +	int err;
> +
> +	host->mmc->actual_clock = 0;
> +
> +	/* DO NOT TOUCH THIS SETTING */

The comment could be more helpful if it explained why this setting
in particular should not be touched.

> +	extra = DWCMSHC_EMMC_DLL_DLYENA |
> +		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL;
> +	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_RXCLK);
> +
> +	if (clock == 0)
> +		return;
> +
> +	/* Rockchip platform only support 375KHz for identify mode */
> +	if (clock <= 400000)
> +		clock = 375000;
> +
> +	err = clk_set_rate(pltfm_host->clk, clock);
> +	if (err)
> +		dev_err(mmc_dev(host->mmc), "fail to set clock %d", clock);
> +
> +	sdhci_set_clock(host, clock);
> +
> +	/* Disable cmd conflict check */
> +	extra = sdhci_readl(host, DWCMSHC_HOST_CTRL3);
> +	extra &= ~BIT(0);
> +	sdhci_writel(host, extra, DWCMSHC_HOST_CTRL3);
> +
> +	if (clock <= 400000) {
> +		/* Disable DLL to reset sample clock */
> +		sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_CTRL);
> +		return;
> +	}
> +
> +	/* Reset DLL */
> +	sdhci_writel(host, BIT(1), DWCMSHC_EMMC_DLL_CTRL);
> +	udelay(1);
> +	sdhci_writel(host, 0x0, DWCMSHC_EMMC_DLL_CTRL);
> +
> +	/* Init DLL settings */
> +	extra = 0x5 << DWCMSHC_EMMC_DLL_START_POINT |
> +		0x2 << DWCMSHC_EMMC_DLL_INC |
> +		DWCMSHC_EMMC_DLL_START;
> +	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_CTRL);
> +	err = readl_poll_timeout(host->ioaddr + DWCMSHC_EMMC_DLL_STATUS0,
> +				 extra, DLL_LOCK_WO_TMOUT(extra), 1,
> +				 500 * USEC_PER_MSEC);
> +	if (err) {
> +		dev_err(mmc_dev(host->mmc), "DLL lock timeout!\n");
> +		return;
> +	}
> +
> +	extra = 0x1 << 16 | /* tune clock stop en */
> +		0x2 << 17 | /* pre-change delay */
> +		0x3 << 19;  /* post-change delay */
> +	sdhci_writel(host, extra, DWCMSHC_EMMC_ATCTRL);
> +
> +	if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
> +	    host->mmc->ios.timing == MMC_TIMING_MMC_HS400)
> +		txclk_tapnum = priv->txclk_tapnum;
> +
> +	extra = DWCMSHC_EMMC_DLL_DLYENA |
> +		DLL_TXCLK_TAPNUM_FROM_SW |
> +		txclk_tapnum;
> +	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_TXCLK);
> +
> +	extra = DWCMSHC_EMMC_DLL_DLYENA |
> +		DLL_STRBIN_TAPNUM_DEFAULT |
> +		DLL_STRBIN_TAPNUM_FROM_SW;
> +	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
> +}
> +
>  static const struct sdhci_ops sdhci_dwcmshc_ops = {
>  	.set_clock		= sdhci_set_clock,
>  	.set_bus_width		= sdhci_set_bus_width,
> @@ -109,21 +234,91 @@ static const struct sdhci_ops sdhci_dwcmshc_ops = {
>  	.adma_write_desc	= dwcmshc_adma_write_desc,
>  };
>  
> +static const struct sdhci_ops sdhci_dwcmshc_rk_ops = {
> +	.set_clock		= dwcmshc_rk_set_clock,
> +	.set_bus_width		= sdhci_set_bus_width,
> +	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
> +	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
> +	.reset			= sdhci_reset,
> +	.adma_write_desc	= dwcmshc_adma_write_desc,
> +};
> +
>  static const struct sdhci_pltfm_data sdhci_dwcmshc_pdata = {
>  	.ops = &sdhci_dwcmshc_ops,
>  	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
>  	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
>  };
>  
> +static const struct sdhci_pltfm_data sdhci_dwcmshc_rk_pdata = {
> +	.ops = &sdhci_dwcmshc_rk_ops,
> +	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> +		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> +	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +		   SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
> +};
> +
> +static int rockchip_pltf_init(struct sdhci_host *host, struct dwcmshc_priv *priv)
> +{
> +	int err;
> +
> +	priv->rockchip_clks[0].id = "axi";
> +	priv->rockchip_clks[1].id = "block";
> +	priv->rockchip_clks[2].id = "timer";
> +	err = devm_clk_bulk_get_optional(mmc_dev(host->mmc), ROCKCHIP_MAX_CLKS,
> +					 priv->rockchip_clks);
> +	if (err) {
> +		dev_err(mmc_dev(host->mmc), "failed to get clocks %d\n", err);
> +		return err;
> +	}
> +
> +	err = clk_bulk_prepare_enable(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
> +	if (err) {
> +		dev_err(mmc_dev(host->mmc), "failed to enable clocks %d\n", err);
> +		return err;
> +	}
> +
> +	if (of_property_read_u32(mmc_dev(host->mmc)->of_node, "rockchip,txclk-tapnum",
> +				 &priv->txclk_tapnum))
> +		priv->txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT;
> +
> +	/* Disable cmd conflict check */
> +	sdhci_writel(host, 0x0, DWCMSHC_HOST_CTRL3);
> +	/* Reset previous settings */
> +	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
> +	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_STRBIN);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
> +	{
> +		.compatible = "snps,dwcmshc-sdhci",
> +		.data = &sdhci_dwcmshc_pdata,
> +	},
> +	{
> +		.compatible = "rockchip,dwcmshc-sdhci",
> +		.data = &sdhci_dwcmshc_rk_pdata,
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sdhci_dwcmshc_dt_ids);
> +
>  static int dwcmshc_probe(struct platform_device *pdev)
>  {
>  	struct sdhci_pltfm_host *pltfm_host;
>  	struct sdhci_host *host;
>  	struct dwcmshc_priv *priv;
> +	const struct sdhci_pltfm_data *pltfm_data;
>  	int err;
>  	u32 extra;
>  
> -	host = sdhci_pltfm_init(pdev, &sdhci_dwcmshc_pdata,
> +	pltfm_data = of_device_get_match_data(&pdev->dev);
> +	if (!pltfm_data) {
> +		dev_err(&pdev->dev, "Error: No device match data found\n");
> +		return -ENODEV;
> +	}
> +
> +	host = sdhci_pltfm_init(pdev, pltfm_data,
>  				sizeof(struct dwcmshc_priv));
>  	if (IS_ERR(host))
>  		return PTR_ERR(host);
> @@ -161,6 +356,15 @@ static int dwcmshc_probe(struct platform_device *pdev)
>  
>  	host->mmc_host_ops.request = dwcmshc_request;
>  
> +	if (pltfm_data == &sdhci_dwcmshc_rk_pdata) {
> +		host->mmc_host_ops.hs400_enhanced_strobe =
> +			dwcmshc_rk_hs400_enhanced_strobe;
> +
> +		err = rockchip_pltf_init(host, priv);
> +		if (err)
> +			goto err_clk;
> +	}
> +
>  	err = sdhci_add_host(host);
>  	if (err)
>  		goto err_clk;
> @@ -170,6 +374,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
>  err_clk:
>  	clk_disable_unprepare(pltfm_host->clk);
>  	clk_disable_unprepare(priv->bus_clk);
> +	clk_bulk_disable_unprepare(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
>  free_pltfm:
>  	sdhci_pltfm_free(pdev);
>  	return err;
> @@ -185,6 +390,7 @@ static int dwcmshc_remove(struct platform_device *pdev)
>  
>  	clk_disable_unprepare(pltfm_host->clk);
>  	clk_disable_unprepare(priv->bus_clk);
> +	clk_bulk_disable_unprepare(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
>  
>  	sdhci_pltfm_free(pdev);
>  
> @@ -207,6 +413,8 @@ static int dwcmshc_suspend(struct device *dev)
>  	if (!IS_ERR(priv->bus_clk))
>  		clk_disable_unprepare(priv->bus_clk);
>  
> +	clk_bulk_disable_unprepare(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
> +
>  	return ret;
>  }
>  
> @@ -227,18 +435,16 @@ static int dwcmshc_resume(struct device *dev)
>  			return ret;
>  	}
>  
> +	ret = clk_bulk_prepare_enable(ROCKCHIP_MAX_CLKS, priv->rockchip_clks);
> +	if (ret)
> +		return ret;
> +
>  	return sdhci_resume_host(host);
>  }
>  #endif
>  
>  static SIMPLE_DEV_PM_OPS(dwcmshc_pmops, dwcmshc_suspend, dwcmshc_resume);
>  
> -static const struct of_device_id sdhci_dwcmshc_dt_ids[] = {
> -	{ .compatible = "snps,dwcmshc-sdhci" },
> -	{}
> -};
> -MODULE_DEVICE_TABLE(of, sdhci_dwcmshc_dt_ids);
> -
>  static struct platform_driver sdhci_dwcmshc_driver = {
>  	.driver	= {
>  		.name	= "sdhci-dwcmshc",
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
