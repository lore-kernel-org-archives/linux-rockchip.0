Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44673CDB482
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 08:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XFIpJ2154dT1za+gq8U8dbiUyVrrkLGDvhpDT2NMb3o=; b=nl5bPUnyEUQdrm
	FMrnavCcDAWtHPaTgWTK9N32K6MHjOjnkNugVcReONY1B4EEG/A3WT+6OR/llAi5Y4OkA2mEE40M+
	P/k4MhCkeR5YeApzjeJIoXGzyZpzx3kfA+R7c2EtIyxCI/m0ziiTkI+/9+Ni5Y/X828Q4SJA9gJPW
	nFvg+dbFq3blNCFh0rd/5BnhXpHyV2QK6/dOomctKdYzIkS26x6IWfcVPwXQ3BxWJHvnrPFigcl+s
	FwTMYHcjlPsHEKj7TBUxFiGrZpuQyHsyhnH40Rwnrlcf65qrbKiSBh/vJNhTMXK1ZNW+PrxagawK4
	ZCMXu411VHAF+X/Iqz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfYf-00BhV8-0v;
	Tue, 17 Oct 2023 08:36:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfYb-00BhRs-0Z;
	Tue, 17 Oct 2023 08:36:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8B82DB81CB6;
	Tue, 17 Oct 2023 08:36:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ADC4C433CC;
	Tue, 17 Oct 2023 08:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531762;
	bh=bxQ82IWwFTe1mvFeMo6rviRKyG0XFF3pKDzAPLI6B2I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dP8t75ijL7gCWo4Ij5upi9+y6xFi/bvXqcHsVyAFyryOsCnpN/aMRDtfTGNcX1CNf
	 0Bd1Br7vd/qT0gzTlU4ZSoFkULGhfSy8kGwlBusRJjIrEvv1YiJh8mbLz2bSyNq7eh
	 c9KI+Q3wu2V+LzQAkBq4bK2/TkWt75avov5+2tuwhf8jY6ZUy1VUpEYKHaP8v/8fyL
	 aF+zUWnJ5Qi+roCFsiCiT+GlFTY3pBbPdzz8z1eXgCxQd97qAn/YZzdpg7LHDGq0g2
	 4rcLAmVK2vW/9o1YlhjrPxi6jN5meZUolG4TzGk0oOXs3SfzvQR7Q8xUi+s7Su0WbK
	 QeescrVeMeImQ==
Message-ID: <b7bf3dc2-c249-4a5c-9715-de35b77706cd@kernel.org>
Date: Tue, 17 Oct 2023 17:35:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 18/26] PM / devfreq: rockchip-dfi: account for multiple
 DDRMON_CTRL registers
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-19-s.hauer@pengutronix.de>
 <98c448be-8ea8-a0bd-62cc-3bc3a5cf5569@kernel.org>
 <20231016124903.GC3359458@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231016124903.GC3359458@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_013605_516227_BDE66EBA 
X-CRM114-Status: GOOD (  20.73  )
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

On 23. 10. 16. 21:49, Sascha Hauer wrote:
> On Mon, Oct 09, 2023 at 07:19:04AM +0900, Chanwoo Choi wrote:
>> On 23. 7. 4. 18:32, Sascha Hauer wrote:
>>> The currently supported RK3399 has a set of registers per channel, but
>>> it has only a single DDRMON_CTRL register. With upcoming RK3588 this
>>> will be different, the RK3588 has a DDRMON_CTRL register per channel.
>>>
>>> Instead of expecting a single DDRMON_CTRL register, loop over the
>>> channels and write the channel specific DDRMON_CTRL register. Break
>>> out early out of the loop when there is only a single DDRMON_CTRL
>>> register like on the RK3399.
>>>
>>> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>>> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/devfreq/event/rockchip-dfi.c | 72 ++++++++++++++++++----------
>>>  1 file changed, 48 insertions(+), 24 deletions(-)
>>>
>>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
>>> index 85ec93fd41858..2362d3953ba40 100644
>>> --- a/drivers/devfreq/event/rockchip-dfi.c
>>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>>> @@ -113,12 +113,13 @@ struct rockchip_dfi {
>>>  	int burst_len;
>>>  	int buswidth[DMC_MAX_CHANNELS];
>>>  	int ddrmon_stride;
>>> +	bool ddrmon_ctrl_single;
>>>  };
>>>  
>>>  static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>>>  {
>>>  	void __iomem *dfi_regs = dfi->regs;
>>> -	int ret = 0;
>>> +	int i, ret = 0;
>>>  
>>>  	mutex_lock(&dfi->mutex);
>>>  
>>> @@ -132,29 +133,41 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>>>  		goto out;
>>>  	}
>>>  
>>> -	/* clear DDRMON_CTRL setting */
>>> -	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
>>> -		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
>>> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
>>> +		u32 ctrl = 0;
>>>  
>>> -	/* set ddr type to dfi */
>>> -	switch (dfi->ddr_type) {
>>> -	case ROCKCHIP_DDRTYPE_LPDDR2:
>>> -	case ROCKCHIP_DDRTYPE_LPDDR3:
>>> -		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
>>> -			       dfi_regs + DDRMON_CTRL);
>>> -		break;
>>> -	case ROCKCHIP_DDRTYPE_LPDDR4:
>>> -	case ROCKCHIP_DDRTYPE_LPDDR4X:
>>> -		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
>>> -			       dfi_regs + DDRMON_CTRL);
>>> -		break;
>>> -	default:
>>> -		break;
>>> -	}
>>> +		if (!(dfi->channel_mask & BIT(i)))
>>> +			continue;
>>>  
>>> -	/* enable count, use software mode */
>>> -	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
>>> -		       dfi_regs + DDRMON_CTRL);
>>> +		/* clear DDRMON_CTRL setting */
>>> +		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN |
>>> +			       DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN),
>>> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
>>> +
>>> +		/* set ddr type to dfi */
>>> +		switch (dfi->ddr_type) {
>>> +		case ROCKCHIP_DDRTYPE_LPDDR2:
>>> +		case ROCKCHIP_DDRTYPE_LPDDR3:
>>> +			ctrl = DDRMON_CTRL_LPDDR23;
>>> +			break;
>>> +		case ROCKCHIP_DDRTYPE_LPDDR4:
>>> +		case ROCKCHIP_DDRTYPE_LPDDR4X:
>>> +			ctrl = DDRMON_CTRL_LPDDR4;
>>> +			break;
>>> +		default:
>>> +			break;
>>> +		}
>>> +
>>> +		writel_relaxed(HIWORD_UPDATE(ctrl, DDRMON_CTRL_DDR_TYPE_MASK),
>>> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
>>> +
>>> +		/* enable count, use software mode */
>>> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
>>> +			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
>>> +
>>> +		if (dfi->ddrmon_ctrl_single)
>>> +			break;
>>> +	}
>>>  out:
>>>  	mutex_unlock(&dfi->mutex);
>>>  
>>> @@ -164,6 +177,7 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>>>  static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>>>  {
>>>  	void __iomem *dfi_regs = dfi->regs;
>>> +	int i;
>>>  
>>>  	mutex_lock(&dfi->mutex);
>>>  
>>> @@ -174,8 +188,17 @@ static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
>>>  	if (dfi->usecount > 0)
>>>  		goto out;
>>>  
>>> -	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>>> -		       dfi_regs + DDRMON_CTRL);
>>> +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
>>> +		if (!(dfi->channel_mask & BIT(i)))
>>> +			continue;
>>> +
>>> +		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
>>> +			      dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
>>> +
>>> +		if (dfi->ddrmon_ctrl_single)
>>> +			break;
>>> +	}
>>> +
>>>  	clk_disable_unprepare(dfi->clk);
>>>  out:
>>>  	mutex_unlock(&dfi->mutex);
>>> @@ -666,6 +689,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>>>  	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
>>>  
>>>  	dfi->ddrmon_stride = 0x14;
>>> +	dfi->ddrmon_ctrl_single = true;
>>>  
>>>  	return 0;
>>>  };
>>
>> Even if rk3568 has the only one channle and don't need to check whether 'dfi->ddrmon_ctrl_single'
>> is true or not because of 'if (!(dfi->channel_mask & BIT(i)))',
>> I recommand the add 'dfi->ddrmon_ctrl_single = true;' for rk3568 in order to
>> provide the number of DDRMON_CTRL reigster of rk3568.
>>
>> If rk3568 doesn't have the 'ddrmon_ctrl_single', actually it is not easy
>> to catch what why are there no initilization for rk3568.
> 
> Ok, will change.
> 

Thanks.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
