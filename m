Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 150CFD3B986
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Nov 2024 11:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNIUOPs2tMWLTw3i8uKAHpFVnfu3TabWVRxZPn7V2xg=; b=1ZeADa8aA/AKxB
	NhtB4bVir+gWmdWKhwtRaStYzEoSSwdEEVz5flHIsmudR59RGZBvF1GAR9aILts7waTW2sf7HhT+O
	fv9lkgIo4qeK197MeZ3QZ+3BDIK58gqomqhAyd8m+7+OPkQNS30mjtPLzXoo8dtSS0kC9I9JJEiP5
	CYFoidojcSMHN2ZZrXLPtFvpn4Nr6g4saPaX9tx0twNn+RiQHGp8i+KjKfsAJdNhLgM9d6ftbvBh4
	jqaDP8UFfMdIkwoAkCfLg/vQ4FAvk2fmipg5FkIoMNpjNRDX5hRM/dziHkPKwfHHm4zbGHenxq7Rb
	lqPJQQMevqLkDHrKPXrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFtr5-0000000AQFZ-0lrI;
	Tue, 26 Nov 2024 11:35:43 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFtql-0000000AQBG-4BSX
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Nov 2024 11:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1732620924; x=1764156924;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=bF5b26M8pzRgYqkj4JR94qllcx+NlQr0QLIFrLOiXTg=;
  b=g1Tlyppd9uZg3LXnTNlTfrthSj17938WK3xdwN2k388VF37ksHQguD1u
   Kt2Vb9iy/+NPk/YvMGeRnFOGIFhMRd1H4TFB1C22QHtxlr9e9+Rtw2XXz
   9MkMZOXtk/Gjh3h3LoI4xPNI5KpbOdYjFxa5wb1Cl1C7mCDz1PSpTWnOf
   hv7dbOOG3TsLyKpyXyQbswiYxvtvoha7iZPtepbFYZ7Jf9DqknRx1KbN+
   bGiW2USsfHh48QS+Av+5wPZhxxrwXDg99FZBHNFclEudpIOy7bFOcn5Cn
   LzICVGR00DOP1I2S6uMGC9we/e+0Rm8BsuJFNF33sRQVWAN/HOI20umK4
   g==;
X-CSE-ConnectionGUID: CSYUB+AgQ1mpsBv01qrZ5Q==
X-CSE-MsgGUID: gXqkco/RTquraeWBlKOf6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="55274568"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; 
   d="scan'208";a="55274568"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2024 03:35:21 -0800
X-CSE-ConnectionGUID: qjDhpS3DTHmYi/oVK+1EOw==
X-CSE-MsgGUID: RTVar3xLSIytXs+upa7CwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; 
   d="scan'208";a="91206500"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15]) ([10.246.16.81])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2024 03:35:18 -0800
Message-ID: <bd3166b6-dbaf-4fab-ba96-9f10955ff4b1@intel.com>
Date: Tue, 26 Nov 2024 13:35:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Restore missing regs for RK3576
 platform
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: YiFeng Zhao <zyf@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org
References: <1732267448-72548-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <1732267448-72548-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_033524_121200_E87A62C0 
X-CRM114-Status: GOOD (  23.95  )
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

On 22/11/24 11:24, Shawn Lin wrote:
> DECMSHC_EMMC_MISC_CON is introduced from RK3576 which need to be
> saved and restore after .reset() with SDHCI_RESET_ALL is called,
> because we assert the reset line. Otherwise the entire controller
> is broken anyway.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 8999b97..aa46655 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -81,6 +81,8 @@
>  #define DWCMSHC_EMMC_DLL_TXCLK		0x808
>  #define DWCMSHC_EMMC_DLL_STRBIN		0x80c
>  #define DECMSHC_EMMC_DLL_CMDOUT		0x810
> +#define MISC_INTCLK_EN			BIT(1)
> +#define DECMSHC_EMMC_MISC_CON		0x81c
>  #define DWCMSHC_EMMC_DLL_STATUS0	0x840
>  #define DWCMSHC_EMMC_DLL_START		BIT(0)
>  #define DWCMSHC_EMMC_DLL_LOCKED		BIT(8)
> @@ -213,6 +215,7 @@ enum dwcmshc_rk_type {
>  struct rk35xx_priv {
>  	struct reset_control *reset;
>  	enum dwcmshc_rk_type devtype;
> +	bool has_misc_con;
>  	u8 txclk_tapnum;
>  };
>  
> @@ -720,6 +723,7 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
>  	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
>  	struct rk35xx_priv *priv = dwc_priv->priv;
> +	int misc_con;
>  
>  	if (mask & SDHCI_RESET_ALL && priv->reset) {
>  		reset_control_assert(priv->reset);
> @@ -728,6 +732,12 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>  	}
>  
>  	sdhci_reset(host, mask);
> +
> +	/* Restore DECMSHC_EMMC_MISC_CON */
> +	if (priv->has_misc_con) {
> +		misc_con = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
> +		sdhci_writel(host, misc_con | MISC_INTCLK_EN, DECMSHC_EMMC_MISC_CON);
> +	}
>  }
>  
>  static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
> @@ -735,7 +745,7 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
>  {
>  	static const char * const clk_ids[] = {"axi", "block", "timer"};
>  	struct rk35xx_priv *priv;
> -	int err;
> +	int err, misc_con;
>  
>  	priv = devm_kzalloc(dev, sizeof(struct rk35xx_priv), GFP_KERNEL);
>  	if (!priv)
> @@ -746,6 +756,9 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
>  	else
>  		priv->devtype = DWCMSHC_RK3568;
>  
> +	if (of_device_is_compatible(dev->of_node, "rockchip,rk3576-dwcmshc"))
> +		priv->has_misc_con = true;

Not needed for this patch, but instead of keeping on adding
'if (of_device_is_compatible())', it would be nicer to get parameters
from a table.  Using sdhci_dwcmshc_dt_ids[] might be overkill, but
dwcmshc_rk35xx could have its own little table for has_misc_con and
whatever devtype is for, read using of_match_node() for example.

> +
>  	priv->reset = devm_reset_control_array_get_optional_exclusive(mmc_dev(host->mmc));
>  	if (IS_ERR(priv->reset)) {
>  		err = PTR_ERR(priv->reset);
> @@ -767,6 +780,10 @@ static int dwcmshc_rk35xx_init(struct device *dev, struct sdhci_host *host,
>  	/* Reset previous settings */
>  	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_TXCLK);
>  	sdhci_writel(host, 0, DWCMSHC_EMMC_DLL_STRBIN);
> +	if (priv->has_misc_con) {
> +		misc_con = sdhci_readl(host, DECMSHC_EMMC_MISC_CON);
> +		sdhci_writel(host, misc_con | MISC_INTCLK_EN, DECMSHC_EMMC_MISC_CON);
> +	}

Probably a bit neater to put that in a separate function since it
is the same code as in rk35xx_sdhci_reset()

>  
>  	dwc_priv->priv = priv;
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
