Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16A29C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 13:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDvPG/ThI3lWAZ/iVeImY6JRmU1BNFoSmYA0ZCx4+dA=; b=vkjRIK/yOms2vS
	usLav5RwgMg01jMsCtsJ9UPb58IPMsrQ0SKOWGpRNHnvEi3iH2MlL8c+QShJ8I9v3KTM0anZAcw7/
	QGMCLAUNfmfR32YR6s/LG8W4qnXb5ENiAvKGdPK7+/K144RmUiB5OlNIrM+n2wRfqJbztCLBnYhL9
	wHCZFzM5WvRpL6elZRuK343SYkex0dcD5ojmF7BC/9uNZoF6raktUBrNHNZLYvNio/fUnwQb/nFAt
	U3tzfbSVO9mCelK3aqZpRBEif/F3aLHj3I76rNu1dE+nZBI7ucFRISygBgfXK0nSpEnYFr8vjz8Yc
	Zhj9hjUg4hWHLIvXeHQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ89N-00AI3Q-Gb; Fri, 04 Mar 2022 13:39:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ885-00AHPv-5Q; Fri, 04 Mar 2022 13:37:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADEDD1396;
 Fri,  4 Mar 2022 05:37:55 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA9903F70D;
 Fri,  4 Mar 2022 05:37:52 -0800 (PST)
Message-ID: <cd14d9f2-5bd5-ed45-8e49-42e6d5e69a38@arm.com>
Date: Fri, 4 Mar 2022 13:37:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Addy Ke <addy.ke@rock-chips.com>, Doug Anderson <dianders@chromium.org>
Cc: linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220303015151.1711860-1-pgwipeout@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220303015151.1711860-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_053757_360322_4C7DC56E 
X-CRM114-Status: GOOD (  31.53  )
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

On 2022-03-03 01:51, Peter Geis wrote:
> The Rockchip ciu clock cannot be set as low as the dw-mmc hardware
> supports. This leads to a situation during card initialization where the
> ciu clock is set lower than the clock driver can support. The
> dw-mmc-rockchip driver spews errors when this happens.
> For normal operation this only happens a few times during boot, but when
> cd-broken is enabled (in cases such as the SoQuartz module) this fires
> multiple times each poll cycle.
> 
> Fix this by testing the minimum frequency the clock driver can support
> that is within the mmc specification, then divide that by the internal
> clock divider. Set the f_min frequency to this value, or if it fails,
> set f_min to the downstream driver's default.
> 
> Fixes: f629ba2c04c9 ("mmc: dw_mmc: add support for RK3288")
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>   drivers/mmc/host/dw_mmc-rockchip.c | 31 ++++++++++++++++++++++++++----
>   1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
> index 95d0ec0f5f3a..c198590cd74a 100644
> --- a/drivers/mmc/host/dw_mmc-rockchip.c
> +++ b/drivers/mmc/host/dw_mmc-rockchip.c
> @@ -15,7 +15,9 @@
>   #include "dw_mmc.h"
>   #include "dw_mmc-pltfm.h"
>   
> -#define RK3288_CLKGEN_DIV       2
> +#define RK3288_CLKGEN_DIV	2
> +#define RK3288_MIN_INIT_FREQ	375000
> +#define MMC_MAX_INIT_FREQ	400000
>   
>   struct dw_mci_rockchip_priv_data {
>   	struct clk		*drv_clk;
> @@ -27,6 +29,7 @@ struct dw_mci_rockchip_priv_data {
>   static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>   {
>   	struct dw_mci_rockchip_priv_data *priv = host->priv;
> +	struct mmc_host *mmc = mmc_from_priv(host);
>   	int ret;
>   	unsigned int cclkin;
>   	u32 bus_hz;
> @@ -34,6 +37,10 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>   	if (ios->clock == 0)
>   		return;
>   
> +	/* the clock will fail if below the f_min rate */
> +	if (ios->clock < mmc->f_min)
> +		ios->clock = mmc->f_min;
> +
>   	/*
>   	 * cclkin: source clock of mmc controller
>   	 * bus_hz: card interface clock generated by CLKGEN
> @@ -51,7 +58,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
>   
>   	ret = clk_set_rate(host->ciu_clk, cclkin);
>   	if (ret)
> -		dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
> +		dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
>   
>   	bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
>   	if (bus_hz != host->bus_hz) {
> @@ -290,13 +297,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
>   
>   static int dw_mci_rockchip_init(struct dw_mci *host)
>   {
> +	struct mmc_host *mmc = mmc_from_priv(host);

Hang on, "host" here is a struct dw_mci allocated directly by 
dw_mci_pltfm_register(), not as private data via mmc_alloc_host(), so 
surely this is bogus?

If I've followed things through correctly, I think it's host->slot->mmc 
that we need to propagate a non-default f_min to, except that that 
hasn't been allocated yet at this point.

Having multiple different types of "host", "slot" and "mmc" variables 
certainly does no favours to making sense of this stuff :(

Robin.

> +	int ret;
> +
>   	/* It is slot 8 on Rockchip SoCs */
>   	host->sdio_id0 = 8;
>   
> -	if (of_device_is_compatible(host->dev->of_node,
> -				    "rockchip,rk3288-dw-mshc"))
> +	if (of_device_is_compatible(host->dev->of_node, "rockchip,rk3288-dw-mshc")) {
>   		host->bus_hz /= RK3288_CLKGEN_DIV;
>   
> +		/* clock driver will fail if the clock is less than the lowest source clock
> +		 * divided by the internal clock divider. Test for the lowest available
> +		 * clock and set the f_min freq to clock / clock divider. If we fail, set
> +		 * it to the downstream hardcoded value.
> +		 */
> +		ret = clk_round_rate(host->ciu_clk, MMC_MAX_INIT_FREQ * RK3288_CLKGEN_DIV);
> +		if (ret < 0) {
> +			dev_warn(host->dev, "mmc safe rate failed: %d\n", ret);
> +			mmc->f_min = RK3288_MIN_INIT_FREQ;
> +		} else {
> +			mmc->f_min = ret / RK3288_CLKGEN_DIV;
> +		}
> +	}
> +
>   	return 0;
>   }
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
