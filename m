Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672D6C6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 11:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blqFKZP9QQ3O1VXpr1BgXr/ED/EezbFf6zi5Yu+gtZ4=; b=mrTyaoHImJGYSo
	o8HgS61imjprLa4bq6ZGpyLwwaaGM6Oh6NKuDqaxFaIErmMaqnv70RL3mPcpmn6JsG5ceR8bEPyhR
	8hHzFTwLVeJ2akuYdnJ4+Y64dMMP6s00mbkvc+vqS/27JidjJqVdslbX6mjepRq9/Paldupslfh5r
	rnipMuunLRlKvuuse28LFjlBcxGNIz/GuqMz57jy1z0ELimL9/i1fGFAPVNqeqQRKVIJ5zQe7pjIt
	+Z9u8Zr1jMaab770Chdr0rJZkoC5IO8o/DmL1kufzzJo4+2BwYJDPiMh1zoERDdaUhOOLQGKFWIlS
	7EVetKDOds8VmUMUGlKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pabNi-00ER8t-7d; Fri, 10 Mar 2023 11:57:54 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pabNX-00ER4E-QU; Fri, 10 Mar 2023 11:57:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678449463; x=1709985463;
  h=message-id:date:mime-version:subject:to:references:from:
   in-reply-to:content-transfer-encoding;
  bh=DKnah2lkCe7jHy6Hgj2T8tYgTJ+V9U36AQfst+0kVpM=;
  b=FfGtALclZTRp36PWnbRGt8j0z+SRV2n/W4qeDf2deyVPvY2Z++P1n6xr
   U24TondyQQtKDkcctgFyJwoK4YO/wuX1dFoEE5IgmsdEQ+YUqwkXyyt1n
   Ck0+enotyAWC/jZX/ua4/vRFFEbCy6DcwIM+cjrbMpdCsrMNxNv5Fiehl
   mV/kzA5rFX5R3WI1MCbt2gh95fcJ3WpKG7PldIFl+mtGna1argwgeXXwt
   pVrpcwWupCgtFLoTSChyDo3fI1jxwTeECj/gucJHFV7iJ3Lq143qHpKm0
   q0Mya+tYCFGjgJtrEGfv7YZnRhDEXPmFf13BHjM80PRpTXsmgshAYrDcQ
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="399309928"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; 
   d="scan'208";a="399309928"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2023 03:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="710260075"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; 
   d="scan'208";a="710260075"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15]) ([10.252.60.222])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2023 03:57:40 -0800
Message-ID: <3a0bf35d-779b-b611-aee0-57d1f926537b@intel.com>
Date: Fri, 10 Mar 2023 13:57:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: properly determine max clock on
 Rockchip
Content-Language: en-US
To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20230310010349.509132-1-anarsoul@gmail.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <20230310010349.509132-1-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_035743_965281_ADDEAD34 
X-CRM114-Status: GOOD (  20.26  )
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

On 10/03/23 03:03, Vasily Khoruzhick wrote:
> Currently .get_max_clock returns the current clock rate for cclk_emmc
> on rk35xx, thus max clock gets set to whatever bootloader set it to.
> 
> In case of u-boot, it is intentionally reset to 50 MHz if it boots
> from eMMC, see mmc_deinit() in u-boot sources. As a result, HS200 and
> HS400 modes are never selected by Linux, because dwcmshc_rk35xx_postinit
> clears appropriate caps if host->mmc->f_max is < 52MHz
> 
> cclk_emmc is not a fixed clock on rk35xx, so using
> sdhci_pltfm_clk_get_max_clock is not appropriate here.
> 
> Implement rk35xx_get_max_clock that returns actual max clock for cclk_emmc.
> 
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index d1490469184b..e68cd87998c8 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -126,6 +126,13 @@ static unsigned int dwcmshc_get_max_clock(struct sdhci_host *host)
>  		return pltfm_host->clock;
>  }
>  
> +static unsigned int rk35xx_get_max_clock(struct sdhci_host *host)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +
> +	return clk_round_rate(pltfm_host->clk, ULONG_MAX);
> +}
> +
>  static void dwcmshc_check_auto_cmd23(struct mmc_host *mmc,
>  				     struct mmc_request *mrq)
>  {
> @@ -343,7 +350,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
>  	.set_clock		= dwcmshc_rk3568_set_clock,
>  	.set_bus_width		= sdhci_set_bus_width,
>  	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
> -	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
> +	.get_max_clock		= rk35xx_get_max_clock,
>  	.reset			= rk35xx_sdhci_reset,
>  	.adma_write_desc	= dwcmshc_adma_write_desc,
>  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
