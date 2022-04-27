Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D17C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 07:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypf+CodFVei7d/gxLjFRpgAaBb43iUEj0mI60++5amA=; b=TD/8PLKE7yByh7
	eAK9iRWeqdyei/jFr6sCeYfV+9jZ8DhziSKlUNCHiFYw1fx6D32gKS27UIC7BlpG3/E9DvpMJdYPe
	u3YXEMDrj2vuHGWlUPklwxU6e2HFAWrzfz+BpXN9Qf/1N1wthHlgvNgN5zn7qjyka59nxJ/RXzBBM
	/dPE7hyHgkHiCFsmwGqUHpP2ygkcKPH3Ua8h5PrUCU2DTuVA0itoFKCf+a2xOAUM29AR5x/wLVX9N
	xfc+UlUMe0/Ym31OulOwY6M575920f7qBQxFH2CqU0CacuW7R1NP9DJcY2utfIuPUwOLWYN7CmJxh
	pKxMW5mWlz6Az1r7MI/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcS1-000OTB-6g; Wed, 27 Apr 2022 07:51:05 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcRn-000OOj-Oq; Wed, 27 Apr 2022 07:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651045851; x=1682581851;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GGOTDAFzwuzwMxFsrqdMQraFAoaOmt/NogVcz01weJU=;
 b=Zk3BkOku6dZZ+/pJZsF1Z11cjOr5FjeenvNcOFiebSIPeSVoi22WkVfe
 qPE4C2EzP0jUOgS+4Z6qvEd5KN/NgJH46+3/lcv5uf7Fmm37uwtXoQeWf
 1Ca+4d79e9CeHE7U53ka75dLZloKlXXaxXSmCOhyh8VNrdTfKryzdPoj3
 rZ8vEfNjf+hRRNxy0NT+vvKVTgoYouBNBkUr19UdTipMAqrExEkdpuPWf
 eEDD6/YBpxU7Z2i0LTaU1pbrgLGhhW65FbwaS4K6XIoZPEqFMWaKuSVtn
 aQnGPu3iGjlDL/tR4vrXCvcKXscsOLZupDwgHrNdoNv79IWGLRQijRse/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="245773837"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="245773837"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 00:50:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580450624"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15])
 ([10.252.60.122])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 00:50:44 -0700
Message-ID: <65b64001-0b85-8524-64c4-67eafed54697@intel.com>
Date: Wed, 27 Apr 2022 10:50:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Subject: Re: [PATCHv1 08/19] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-9-sebastian.reichel@collabora.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <20220422170920.401914-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_005051_870462_7D9BB268 
X-CRM114-Status: GOOD (  21.18  )
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

On 22/04/22 20:09, Sebastian Reichel wrote:
> From: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> 
> The reset function build in the SDHCI will not reset the logic
> circuit related to the tuning function, which may cause data
> reading errors. Resetting the complete SDHCI controller through
> the reset controller fixes the issue.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> [rebase]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index bac874ab0b33..d95ae6ca1256 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -15,6 +15,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/reset.h>
>  #include <linux/sizes.h>
>  
>  #include "sdhci-pltfm.h"
> @@ -63,6 +64,7 @@
>  struct rk3568_priv {
>  	/* Rockchip specified optional clocks */
>  	struct clk_bulk_data rockchip_clks[RK3568_MAX_CLKS];
> +	struct reset_control *reset;
>  	u8 txclk_tapnum;
>  };
>  
> @@ -255,6 +257,23 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>  	sdhci_writel(host, extra, DWCMSHC_EMMC_DLL_STRBIN);
>  }
>  
> +static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
> +	struct rk35xx_priv *priv = dwc_priv->priv;
> +
> +	if (mask & SDHCI_RESET_ALL) {
> +		if (!IS_ERR_OR_NULL(priv->reset)) {
> +			reset_control_assert(priv->reset);
> +			udelay(1);
> +			reset_control_deassert(priv->reset);
> +		}
> +	}
> +
> +	sdhci_reset(host, mask);
> +}
> +
>  static const struct sdhci_ops sdhci_dwcmshc_ops = {
>  	.set_clock		= sdhci_set_clock,
>  	.set_bus_width		= sdhci_set_bus_width,
> @@ -269,7 +288,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk3568_ops = {
>  	.set_bus_width		= sdhci_set_bus_width,
>  	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
>  	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
> -	.reset			= sdhci_reset,
> +	.reset			= rk35xx_sdhci_reset,
>  	.adma_write_desc	= dwcmshc_adma_write_desc,
>  };
>  
> @@ -292,6 +311,13 @@ static int dwcmshc_rk3568_init(struct sdhci_host *host, struct dwcmshc_priv *dwc
>  	int err;
>  	struct rk3568_priv *priv = dwc_priv->priv;
>  
> +	priv->reset = devm_reset_control_array_get_exclusive(mmc_dev(host->mmc));
> +	if (IS_ERR_OR_NULL(priv->reset)) {
> +		err = PTR_ERR(priv->reset);
> +		dev_err(mmc_dev(host->mmc), "failed to get reset control %d\n", err);
> +		return err;
> +	}
> +
>  	priv->rockchip_clks[0].id = "axi";
>  	priv->rockchip_clks[1].id = "block";
>  	priv->rockchip_clks[2].id = "timer";


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
