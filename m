Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00E8FE81E1E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 18:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndUxLZiqF6WbNQnqHkFESTT53uXM2tHhoM8Rf5znaUU=; b=3WHBA9wAB23iP6
	iJ0s+8bn/RD+jlmolb/MU8RfJ8An+WHk++OXD5d3/jYzkcdHv3bTOIbVIXO5ycT1qS0MAyGL32Ext
	1xTdI8/dyD9o0nkhSyw8UACsqfglJZEJkL9U4j5K0js5cyHjf2VOkDVLzUYztdcNCwQjo62Vbpvbq
	TauQaYhOoc4nS8J2zzp7fjpGwB2zWaEbfS1vz+WeSnJDzoZ3BUcRQRHyTpWSZsvesUSq7K9t6qEVA
	0PgWMcb+9+xjnjVIk6x0bQb24V5laV1FxcJZ/7O7Z06SJdkS828N32tpZycJJes0bxqDzhaBXXOB2
	nYiRvqPDqTNneOnykYPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qopi8-006KHP-0B;
	Fri, 06 Oct 2023 18:38:04 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qopi4-006KFz-0Y;
	Fri, 06 Oct 2023 18:38:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F25C7CE28E4;
	Fri,  6 Oct 2023 18:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A256DC433C7;
	Fri,  6 Oct 2023 18:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696617475;
	bh=IE1bF8kdC9VMb3KABS+1fAZSI1WmO3d4DmO0mYqCYU4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iLiHCtc35wuVkfpj7gS1mDntDlZUCW4IUvjH0kro2FzIQWgv2uTdWKgUpbgKSE+E1
	 3vetV+UMfUZEiVWpR8YR4BtWPDSKpGln/gRpDXTWiPsDfA37dvYp9m+vmScjZp6GJ1
	 3mrMHzvZyY4xeyJSI3i4ARc6OAhuYEo5bgGMUMieLIiqZy7iAk1mZP1QK+elEDykyI
	 MIhZfrvgMhSqnVM0gobcq7T/wsfOW3Jy5yvOQN08FFd3kcOvvCJ06u7GysQ/tPLqL/
	 VmmuKH3b7tAWA2K49DLIPBSDZGI81AP+05F7fUSH/SB1NmPpKMFSjA9wziX7nu2N/3
	 VnAW43xq9IdDg==
Message-ID: <fbe836a5-97c5-340e-3644-1b0e046d3fbb@kernel.org>
Date: Sat, 7 Oct 2023 03:37:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 15/26] PM / devfreq: rockchip-dfi: give variable a
 better name
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
 <20230704093242.583575-16-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20230704093242.583575-16-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_113800_558255_661EA9FC 
X-CRM114-Status: GOOD (  23.29  )
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

On 23. 7. 4. 18:32, Sascha Hauer wrote:
> struct dmc_count_channel::total counts the clock cycles of the DDR
> controller. Rename it accordingly to give the reader a better idea
> what this is about. While at it, at some documentation to struct
> dmc_count_channel.
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index 8a7af7c32ae0d..50e497455dc69 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -46,9 +46,14 @@
>  #define DDRMON_CH1_COUNT_NUM		0x3c
>  #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
>  
> +/**
> + * struct dmc_count_channel - structure to hold counter values from the DDR controller
> + * @access:       Number of read and write accesses
> + * @clock_cycles: DDR clock cycles
> + */
>  struct dmc_count_channel {
>  	u32 access;
> -	u32 total;
> +	u32 clock_cycles;
>  };
>  
>  struct dmc_count {
> @@ -150,7 +155,7 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
>  			continue;
>  		count->c[i].access = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> -		count->c[i].total = readl_relaxed(dfi_regs +
> +		count->c[i].clock_cycles = readl_relaxed(dfi_regs +
>  				DDRMON_CH0_COUNT_NUM + i * 20);
>  	}
>  }
> @@ -182,29 +187,29 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
>  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
>  	struct dmc_count count;
>  	struct dmc_count *last = &dfi->last_event_count;
> -	u32 access = 0, total = 0;
> +	u32 access = 0, clock_cycles = 0;
>  	int i;
>  
>  	rockchip_dfi_read_counters(dfi, &count);
>  
>  	/* We can only report one channel, so find the busiest one */
>  	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> -		u32 a, t;
> +		u32 a, c;
>  
>  		if (!(dfi->channel_mask & BIT(i)))
>  			continue;
>  
>  		a = count.c[i].access - last->c[i].access;
> -		t = count.c[i].total - last->c[i].total;
> +		c = count.c[i].clock_cycles - last->c[i].clock_cycles;
>  
>  		if (a > access) {
>  			access = a;
> -			total = t;
> +			clock_cycles = c;
>  		}
>  	}
>  
>  	edata->load_count = access * 4;
> -	edata->total_count = total;
> +	edata->total_count = clock_cycles;
>  
>  	dfi->last_event_count = count;
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
