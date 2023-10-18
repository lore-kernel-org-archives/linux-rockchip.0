Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62C6DCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c5acPqRaG5UsyBBYwB+/B1CyVXpVda3tKlO7uKRmZ8w=; b=EdeYyvmltEuEM5
	aeZBQXfeVQdVYuVHLCO53VemVnSfQrgyJ4uqn+eRKTa8ADHCy5Wjv2+lkR7t0Jb03t+41jMBrzu6r
	HHg9vp9IFyJJSwlCnvenck92y8a8o6byDk9CAjtXQaGxT+wv6aiBTtAL8U+rbzdbqLV0L1qmMTx5O
	kD1xEUkR8VhxlLfLAvJj19t7PU6b4mGMnhU819RfG01qCPBoj0VQfeqGnMNm3Sl8LsgSwAzbHE5Nb
	AfOQJcTrftDHHRHyibKZhgRdwRo7i7lsN/cpEGBnGJhhfrVbx+bl/8j4+Ye9uyHYYKtF22rfeqxyJ
	Lbl16sKdvZELLVUb5zTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt87B-00EzI4-32;
	Wed, 18 Oct 2023 15:05:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt877-00EzGl-37;
	Wed, 18 Oct 2023 15:05:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E77D61804;
	Wed, 18 Oct 2023 15:05:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AECCC433C7;
	Wed, 18 Oct 2023 15:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641537;
	bh=PIiIXKenjlTWbp5gHz845HTrHDmcuL0MzMQD6MsERgo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=U3bPPdQvqZ+XEXd7ak7qMUBqO7WZuOCU4DR5EpGHN4/6IAlxRPknFvV/Gt5TCvGi1
	 PAk/iRwWaeJlZF1g/G6fqiPIofi0cWU92B1Jj7UtMkuRfbufllIFvkvMCZx7XYmLIA
	 ZIu9prqmZ1/W/1atPM/q0MAkVmHQHSqZqA9PuS6jzJuiNCkfJ6nN0B/Fe/XjzSX/j+
	 CCysyr74f+UDVlwSojvutLUU/IMdeGFrN+GttW/MwCrjGC4pgmmyy8lN7I3igncsyO
	 ezdWEi9s2VcTfz+Mcos0nTaI4MAtil+RetoEulJeVB8m+o0rc3w15q+KjPzADeIqgq
	 Qow1ONdjj7oUg==
Message-ID: <99477a81-08d1-4e5d-8b20-22da58921041@kernel.org>
Date: Thu, 19 Oct 2023 00:05:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 07/26] PM / devfreq: rockchip-dfi: introduce channel
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
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-8-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_080538_090423_2AC8F117 
X-CRM114-Status: GOOD (  22.78  )
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

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> Different Rockchip SoC variants have a different number of channels.
> Introduce a channel mask to make the number of channels configurable
> from SoC initialization code.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>      - Loop only over channels present on a SoC
> 
>  drivers/devfreq/event/rockchip-dfi.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 126bb744645b6..28c18bbf6baa5 100644
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
> @@ -61,6 +62,8 @@ struct rockchip_dfi {
>  	struct regmap *regmap_pmu;
>  	struct clk *clk;
>  	u32 ddr_type;
> +	unsigned int channel_mask;
> +	unsigned int max_channels;
>  };
>  
>  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> @@ -95,7 +98,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
>  	u32 i;
>  	void __iomem *dfi_regs = dfi->regs;
>  
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> +	for (i = 0; i < dfi->max_channels; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
>  		count->c[i].total = readl_relaxed(dfi_regs +
> @@ -145,9 +150,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	rockchip_dfi_read_counters(edev, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
> -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> -		u32 a = count.c[i].access - last->c[i].access;
> -		u32 t = count.c[i].total - last->c[i].total;
> +	for (i = 0; i < dfi->max_channels; i++) {
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
> @@ -185,6 +195,9 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
>  			RK3399_PMUGRF_DDRTYPE_MASK;
>  
> +	dfi->channel_mask = GENMASK(1, 0);
> +	dfi->max_channels = 2;
> +
>  	return 0;
>  };
>  

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
