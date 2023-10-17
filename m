Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2046CDB483
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 08:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTK15UPwcaMG0LvZHEuP0FxvIhZKEcjvoKJ1HxNcNZ0=; b=rY/9XP5TEboHDh
	N+FDNhiwhhizHuxiNClP5Zy/8LNqW9bWQnFNyJy+lafgZ96VZmRp1IQtoCFgtMx1ahE8ES8wPtYrL
	NkLQAbPt/2N1pnr9wJU4cM6AumushtM/zvL5Kg/PQl7Skp/Lg6MwpXvBbUj4iCjl464H6ehHgOdab
	CNl+HmG/aYUUYVdywCCUf+QC9Os5OkkkWYC+jHbM4kneMvWXeGoRKLT+JbHnpzR8o/u2kkT6uwOtI
	ipUoluOuY57L8eGNR8JDJ/VpwSuVHsVs4+P+7q+iSyvDdav29ams/CYxLso/5FQOdZ6M6o31qUU9w
	kvFZ3MSNHBSMKVWbkXyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfWq-00Bh7g-1c;
	Tue, 17 Oct 2023 08:34:16 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfWm-00Bh6X-26;
	Tue, 17 Oct 2023 08:34:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CF8BACE1D6B;
	Tue, 17 Oct 2023 08:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D562C433C7;
	Tue, 17 Oct 2023 08:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531649;
	bh=zrm1i5SAMgOXYBPvInwmP/Oua5+hUfSCy1kEBtBeSwg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cTWToO0e2QxlyQQzKUfIXKw/bpenFghpDFpjKFcfOyQKt4/Z40djM4y4oIFVKx5WN
	 rin4VNQsOLw4DtyY32DQ6HQPPhzXItja12pe73Enw/8mcNAcFpQbEUxnhgo8LBphzS
	 uRChcB2BHYsK9EEtpac4pM/ZJgVgmcpOwft+fljdA8wCpNz+JauTaqJQNF/LYVdXxe
	 echEaqvgCoOZYjhcaIf7k8J+ZaR5DJQ+6EyGfPGrxFF4Zc4PC+9ORfOwuHqRu/Y1+i
	 TU5ISzZN/ryIrFVCxaFSYyjzC0Nd/ewbfzMkzq3zT/aHL/ySdeHgxIHuXrkqNdtmJs
	 5bs5YIMIgC9cw==
Message-ID: <d0bb9b15-991d-4b87-be42-4f183d560b5e@kernel.org>
Date: Tue, 17 Oct 2023 17:34:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 09/26] PM / devfreq: rockchip-dfi: Clean up DDR type
 register defines
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
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-10-s.hauer@pengutronix.de>
 <1eaa8d5b-af6b-71bb-df7a-d438b483f5bb@kernel.org>
 <20231016120351.GA3359458@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231016120351.GA3359458@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_013413_057762_B9C790BF 
X-CRM114-Status: GOOD (  26.77  )
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

On 23. 10. 16. 21:03, Sascha Hauer wrote:
> On Sat, Oct 07, 2023 at 04:11:22AM +0900, Chanwoo Choi wrote:
>> On 23. 7. 4. 18:32, Sascha Hauer wrote:
>>> Use the HIWORD_UPDATE() define known from other rockchip drivers to
>>> make the defines look less odd to the readers who've seen other
>>> rockchip drivers.
>>>
>>> The HIWORD registers have their functional bits in the lower 16 bits
>>> whereas the upper 16 bits contain a mask. Only the functional bits that
>>> have the corresponding mask bit set are modified during a write. Although
>>> the register writes look different, the end result should be the same,
>>> at least there's no functional change intended with this patch.
>>>
>>> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
>>>  1 file changed, 21 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
>>> index 6bccb6fbcfc0c..6b3ef97b3be09 100644
>>> --- a/drivers/devfreq/event/rockchip-dfi.c
>>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>>> @@ -26,15 +26,19 @@
>>>  
>>>  #define DMC_MAX_CHANNELS	2
>>>  
>>> +#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
>>> +
>>>  /* DDRMON_CTRL */
>>>  #define DDRMON_CTRL	0x04
>>> -#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
>>> -#define LPDDR4_EN	(0x10001 << 4)
>>> -#define HARDWARE_EN	(0x10001 << 3)
>>> -#define LPDDR3_EN	(0x10001 << 2)
>>> -#define SOFTWARE_EN	(0x10001 << 1)
>>> -#define SOFTWARE_DIS	(0x10000 << 1)
>>> -#define TIME_CNT_EN	(0x10001 << 0)
>>> +#define DDRMON_CTRL_DDR4		BIT(5)
>>> +#define DDRMON_CTRL_LPDDR4		BIT(4)
>>> +#define DDRMON_CTRL_HARDWARE_EN		BIT(3)
>>> +#define DDRMON_CTRL_LPDDR23		BIT(2)
>>> +#define DDRMON_CTRL_SOFTWARE_EN		BIT(1)
>>> +#define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
>>> +#define DDRMON_CTRL_DDR_TYPE_MASK	(DDRMON_CTRL_DDR4 | \
>>> +					 DDRMON_CTRL_LPDDR4 | \
>>> +					 DDRMON_CTRL_LPDDR23)
>>>  
>>>  #define DDRMON_CH0_COUNT_NUM		0x28
>>>  #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
>>> @@ -73,16 +77,20 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
>>>  	void __iomem *dfi_regs = dfi->regs;
>>>  
>>>  	/* clear DDRMON_CTRL setting */
>>> -	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
>>> +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
>>> +		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
>>
>> You mentioned that there are no behavior changes even if the different value is written.
>> But, it looks strange. Could you please explain more detailed about it?
> 
> Many registers on Rockchip SoCs are effectively only 16 bits wide. The
> lower 16 bits are the functional bits. The upper 16 bits contain a mask
> value. The lower 16 bits are only modified when the coresponding bit in
> the upper 16bits is set.
> 
> For example writing 0x0001dead has the same effect as writing
> 0x00010001: The lower bit is set, the remaining are unchanged due to the
> mask value being 0.
> 
>>
>>
>> CLR_DDRMON_CTRL is 0x1f0000
> 
> This clears the lower 5 bits.
> 
>> vs.
>> HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN) = (0 | (BIT(0)|BIT(1)|BIT(3))<<16) = 0xb0000
> 
> This clears BIT(0), BIT(1) and BIT(3), so it clears:
> 
> DDRMON_CTRL_TIMER_CNT_EN, DDRMON_CTRL_SOFTWARE_EN and DDRMON_CTRL_HARDWARE_EN.
> 
> In fact it doesn't clear DDRMON_CTRL_LPDDR23 and DDRMON_CTRL_LPDDR4 like
> the operation with CLR_DDRMON_CTRL does, but the LPDDR type bits are
> handled below:
> 
>> 			
>>>  
>>>  	/* set ddr type to dfi */
>>>  	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
>>> -		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
>>> +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
>>> +			       dfi_regs + DDRMON_CTRL);
>>
>> LPDDR3_EN	(0x10001 << 2) = 0x40004
> 
> This sets BIT(2) aka DDRMON_CTRL_LPDDR23
> 
>> vs.
>> HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK) = (BIT(2) | (BIT(5)|BIT(4)|BIT(2))<<16) = 0x340004
> 
> This sets BIT(2) and *clears* BIT(4) (DDRMON_CTRL_LPDDR4) and BIT(5)
> (DDRMON_CTRL_DDR4). So effectively we no longer clear BIT(4) in the
> first register access as we do with CLR_DDRMON_CTRL, but in the second
> register access instead.
> 
> This also clears BIT(5) which was untouched previously, but this bit had
> never been set by the driver, so should be 0 anyway.
> 
> Sascha
> 

Thanks for the detailed reply.

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
