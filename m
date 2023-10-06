Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B09E81E1B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 17:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlDJcB1gmsNW+hdWTVG3o16/Qnm/YmBZ0C9zJBLNHqs=; b=vJtipxbwaVweWT
	6BZRL2pjV7m18sJR0ayFLTu3xs92QSjqHODG7fST9D4UyJbBWxxcawwKSosGpODCdMy3t/sjI5Rgc
	2hYXlU1G3GvgteU+f1T2Q+QUAVjjCUifl8FxaZy9IVL6Lcl5MIKztKwSgmeN7nB/xR7uIlZXkQ4n3
	yoUVDk3659NZPtuz1rT78wUjN1BQOSt9fmOW4W5BhWWltROiRFD+QduHjOyhxNpvNaFgRyGiH4ire
	GcW35q4IsUR0bLg5nJ67Tm/pRq430YDf8wVmrDuv9zn2rpa3N/Kh+fqoKIDkArR2TfUTHR9AXhjem
	cWqRvKYy/O3qSWOYXyaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qooVu-006F4G-1K;
	Fri, 06 Oct 2023 17:21:22 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qooVp-006F2w-1d;
	Fri, 06 Oct 2023 17:21:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E1AD9B829FC;
	Fri,  6 Oct 2023 17:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524E7C433C7;
	Fri,  6 Oct 2023 17:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696612875;
	bh=hEX8GICdbnocfUQaerMPod0XxNCYLb4HKRbbA7Fb65g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rCtCmb+tjfrjb/T/TOG+QdU88a3tIujtPHGZNkq6Bkpmffy1q9BSym/lhBeLt29n4
	 Sx8hik6Av7AiF/apzPTW03eHrgGzR6cGTZXXdbZxzWvRR92IYXu3E67OgmaigXVMan
	 S37MIdGaAmaC2PRd1DEQCWx82lq0RkQNgWqiuGKJ2AWlHqLHu5vvKSxZh8VGdBwXUc
	 8ww4yQS1DzJtP6SIrJp3U01s7mvZWMC4SkFDScR6iWhoZTMIYRuWt9T+MQP0nvwG7y
	 muXXCL0vKpRxXAEHC1XLIwUrPsZx5de8sK11VdZT+4tEHKjx5HExMJB24PZjCSPphf
	 ni96WDrKD1OqA==
Message-ID: <859b0091-e361-6060-2977-4aba13af418a@kernel.org>
Date: Sat, 7 Oct 2023 02:21:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 07/26] PM / devfreq: rockchip-dfi: introduce channel
 mask
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
 <20230704093242.583575-8-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_102117_831678_93DEB7CD 
X-CRM114-Status: GOOD (  24.45  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> Different Rockchip SoC variants have a different number of channels.
> Introduce a channel mask to make the number of channels configurable
> from SoC initialization code.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 126bb744645b6..82de24a027579 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -18,10 +18,11 @@
>  #include <linux/list.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/bits.h>
>  
>  #include <soc/rockchip/rk3399_grf.h>
>  
> -#define RK3399_DMC_NUM_CH	2
> +#define DMC_MAX_CHANNELS	2
>  
>  /* DDRMON_CTRL */
>  #define DDRMON_CTRL	0x04
> @@ -44,7 +45,7 @@ struct dmc_count_channel {
>  };
>  
>  struct dmc_count {
> -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
>  };
>  
>  /*
> @@ -61,6 +62,7 @@ struct rockchip_dfi {
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
>  	u32 ddr_type;
> +	unsigned int channel_mask;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> @@ -95,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> @@ -145,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	rockchip_dfi_read_counters(edev, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> -		u32 a = count.c[i].access - last->c[i].access;
> -		u32 t = count.c[i].total - last->c[i].total;
> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {

Instead of DMC_MAX_CHANNELS defintion,
you can initialize the max channel in each rkXXXX_dfi_init() like 'dfi->channel_count'.
It reduces the unnecessary loop by initializing the proper max channel.

> +		u32 a, t;
> +
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
> +
> +		a = count.c[i].access - last->c[i].access;
> +		t = count.c[i].total - last->c[i].total;
>  
>  		if (a > access) {
>  			access = a;
> @@ -185,6 +194,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
>  			RK3399_PMUGRF_DDRTYPE_MASK;
>  
> +	dfi->channel_mask = GENMASK(1, 0);
> +
>  	return 0;
>  };
>  

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
