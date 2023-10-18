Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D9B1CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7T/x/nbzijudwmmEzsJRGvRgo+GBbgIu+EgOkgh5Ls=; b=lkkk5ZKfUrNuLt
	+CkrQ8fKCDRtOy4HHXZI5h/vdP9czof3c2AsAf+ykuFkmXvdvPb/JXzBxjKtAKMBI4h6OXPegxdSG
	yM6n1wXArTqJ/XQV9MbXeCSkECnigXj6XqBqPX0TaolxUs4ycoS6eT/XTFiI4tYWfNY+2N7IBkkCU
	5vywD+Nzc/i36jZJOlUrGQ0ir/C3UinjX1EasxiuTjVbxlgDNrC7bgG82sKb9xMZJ/w2yGaI5sUyU
	xXFEa24FXCbYTTflqlLl+jPkrJ0L8SFynFM0ZuJw13W6k2x1rzhzsyEh2SonJWIkuoSm5YPF2YLjt
	WSSf5jkS+syzrveYcJJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8DK-00F0Hs-22;
	Wed, 18 Oct 2023 15:12:02 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8DG-00F0Fs-2f;
	Wed, 18 Oct 2023 15:12:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3A405B8231F;
	Wed, 18 Oct 2023 15:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 986F6C433C9;
	Wed, 18 Oct 2023 15:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641916;
	bh=BVq5OWCZ6MZo+NxOIacDg9B+QepLIBDhicPyWTS22Ho=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kPyUensujQyhzDavNhfzNCC3xa026mleZdL6usRrJUyV9gZoDyN+xyQxU/VOfARpp
	 sstozxbKSHRfCHHGdIXhUhZQzAvCCHNhpJiS0ZETzay5HBxUzQgCxLwXRByW1b+3YE
	 R1gasmq7VIcvQqGqG+Op+33JNA+IlfemgNajT8mSeJQKCzi/soVwiZBqRcWYKwbkDw
	 1F04WLgKUo9pkK9Oz8d0n9fpqjXjYUMdDk5+9gcGHiRcZ67Z9DXfmeI1Q0W+CSpvcU
	 U9WNG3hz/FTRQpbBLPCFwiLyi0Z/a4Yz1huGRsOjjcVdk5cqBufrHeRB0Jhylh+JBR
	 uMWm5eJEPQ8wQ==
Message-ID: <4f7d4701-d40c-4aa4-908a-7e8dd4206c01@kernel.org>
Date: Thu, 19 Oct 2023 00:11:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 18/26] PM / devfreq: rockchip-dfi: account for multiple
 DDRMON_CTRL registers
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
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
 <20231018061714.3553817-19-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-19-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_081159_172374_46B96D6F 
X-CRM114-Status: GOOD (  25.36  )
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

On 23. 10. 18. 15:17, Sascha Hauer wrote:
> The currently supported RK3399 has a set of registers per channel, but
> it has only a single DDRMON_CTRL register. With upcoming RK3588 this
> will be different, the RK3588 has a DDRMON_CTRL register per channel.
> 
> Instead of expecting a single DDRMON_CTRL register, loop over the
> channels and write the channel specific DDRMON_CTRL register. Break
> out early out of the loop when there is only a single DDRMON_CTRL
> register like on the RK3399.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>      - initialize ddrmon_ctrl_single for RK3568
> 
>  drivers/devfreq/event/rockchip-dfi.c | 73 +++++++++++++++++++---------
>  1 file changed, 49 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> index a3d823ac68ace..bf38829a2a4af 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -114,12 +114,13 @@ struct rockchip_dfi {
>  	int burst_len;
>  	int buswidth[DMC_MAX_CHANNELS];
>  	int ddrmon_stride;
> +	bool ddrmon_ctrl_single;
>  };
>  
>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>  {
>  	void __iomem *dfi_regs = dfi->regs;
> -	int ret = 0;
> +	int i, ret = 0;
>  
>  	mutex_lock(&dfi->mutex);
>  
> @@ -133,29 +134,41 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>  		goto out;
>  	}
>  
> -	/* clear DDRMON_CTRL setting */
> -	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
> -		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
> +	for (i = 0; i < dfi->max_channels; i++) {
> +		u32 ctrl = 0;
>  
> -	/* set ddr type to dfi */
> -	switch (dfi->ddr_type) {
> -	case ROCKCHIP_DDRTYPE_LPDDR2:
> -	case ROCKCHIP_DDRTYPE_LPDDR3:
> -		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
> -			       dfi_regs + DDRMON_CTRL);
> -		break;
> -	case ROCKCHIP_DDRTYPE_LPDDR4:
> -	case ROCKCHIP_DDRTYPE_LPDDR4X:
> -		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
> -			       dfi_regs + DDRMON_CTRL);
> -		break;
> -	default:
> -		break;
> -	}
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
>  
> -	/* enable count, use software mode */
> -	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
> -		       dfi_regs + DDRMON_CTRL);
> +		/* clear DDRMON_CTRL setting */
> +		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN |
> +			       DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN),
> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
> +
> +		/* set ddr type to dfi */
> +		switch (dfi->ddr_type) {
> +		case ROCKCHIP_DDRTYPE_LPDDR2:
> +		case ROCKCHIP_DDRTYPE_LPDDR3:
> +			ctrl = DDRMON_CTRL_LPDDR23;
> +			break;
> +		case ROCKCHIP_DDRTYPE_LPDDR4:
> +		case ROCKCHIP_DDRTYPE_LPDDR4X:
> +			ctrl = DDRMON_CTRL_LPDDR4;
> +			break;
> +		default:
> +			break;
> +		}
> +
> +		writel_relaxed(HIWORD_UPDATE(ctrl, DDRMON_CTRL_DDR_TYPE_MASK),
> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
> +
> +		/* enable count, use software mode */
> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
> +
> +		if (dfi->ddrmon_ctrl_single)
> +			break;
> +	}
>  out:
>  	mutex_unlock(&dfi->mutex);
>  
> @@ -165,6 +178,7 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>  static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>  {
>  	void __iomem *dfi_regs = dfi->regs;
> +	int i;
>  
>  	mutex_lock(&dfi->mutex);
>  
> @@ -175,8 +189,17 @@ static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>  	if (dfi->usecount > 0)
>  		goto out;
>  
> -	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
> -		       dfi_regs + DDRMON_CTRL);
> +	for (i = 0; i < dfi->max_channels; i++) {
> +		if (!(dfi->channel_mask & BIT(i)))
> +			continue;
> +
> +		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
> +			      dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
> +
> +		if (dfi->ddrmon_ctrl_single)
> +			break;
> +	}
> +
>  	clk_disable_unprepare(dfi->clk);
>  out:
>  	mutex_unlock(&dfi->mutex);
> @@ -666,6 +689,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
>  
>  	dfi->ddrmon_stride = 0x14;
> +	dfi->ddrmon_ctrl_single = true;
>  
>  	return 0;
>  };
> @@ -694,6 +718,7 @@ static int rk3568_dfi_init(struct rockchip_dfi *dfi)
>  	dfi->buswidth[0] = FIELD_GET(RK3568_PMUGRF_OS_REG2_BW_CH0, reg2) == 0 ? 4 : 2;
>  
>  	dfi->ddrmon_stride = 0x0; /* not relevant, we only have a single channel on this SoC */
> +	dfi->ddrmon_ctrl_single = true;
>  
>  	return 0;
>  };

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
