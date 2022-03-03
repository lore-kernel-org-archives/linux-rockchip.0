Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B4B2C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 11:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6u1BrRwSXXUg0Vi/oGpozjpRtxkf79cQ6uPzhgRIpNk=; b=Z78s0aXWcXUl7I
	m+aToPFudz14+RZTFcW4f9eaW9epCFjAmfhO0yc7xUXiW9VbqCHpLwumY7nv8mvx1YlZryqkNaDWy
	f93K0BI3enwSG86uFtbQhiuXI/Hr9yFIIHdHVChExV4bKBkT2zVVal3Ts860T2WhsXVaMDk/LsGb2
	6u/WRkq7pgSxTKKFf1wzlYK61BGXtUelTlKT2ngCjYbIM7NTaQLUfpktqnf8vwETBv2JoFkXP+lne
	eMlSm2Ef6+7Y+VcwJ6nazEUEMgWozY2dRM6d/ecjWK7eGO7fJn9CstHnJjhbamZM+y8ib1PrDsH7v
	ZS5q9JUxBSiAKZu538Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPk25-006GN9-UY; Thu, 03 Mar 2022 11:54:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPk1u-006GLL-Cx; Thu, 03 Mar 2022 11:54:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D70C01424;
 Thu,  3 Mar 2022 03:53:54 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A9E733F70D;
 Thu,  3 Mar 2022 03:53:52 -0800 (PST)
Message-ID: <07977a52-a492-4568-7259-7f213af0b0b0@arm.com>
Date: Thu, 3 Mar 2022 11:53:48 +0000
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
X-CRM114-CacheID: sfid-20220303_035358_545882_0D489ADA 
X-CRM114-Status: GOOD (  31.00  )
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
> supports.

Isn't that specific to RK3568, per the downstream fix? Certainly my 
RK3399 has no problem if I simulate polling by plugging in an empty adapter:

[499969.392530] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 
400000Hz, actual 400000HZ div = 0)
[499969.467709] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 
300000Hz, actual 300000HZ div = 0)
[499969.545975] mmc_host mmc1: Bus speed (slot 0) = 200000Hz (slot req 
200000Hz, actual 200000HZ div = 0)
[499969.629824] mmc_host mmc1: Bus speed (slot 0) = 100000Hz (slot req 
100000Hz, actual 100000HZ div = 0)

Even though every card within arm's reach of my desk does seem happy to 
identify at 400KHz, there are apparently some that only work towards the 
lower end of the range, so it's less than ideal to impose this 
limitation where it isn't necessary.

Robin.

> This leads to a situation during card initialization where the
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
