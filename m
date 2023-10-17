Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0A7CDB474
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 08:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxpWEiMJuSTcOJ6rTbg5ujz8uqeOZckaOaV+KM1c0ek=; b=WFCUwFGob0H8dc
	uQBgvnVPfVnFMV2wiEDpKuxkPrWCFDdCaqjczL0dztkxAgWQdYpYndEEk2Bxm+zRqQW570988MDX7
	UKWtjdAumtDVoMQn9RS87TEOkte+e6vIQsf0KchVmXweMbbR9gwROsNa5A+YB1uO/xjY7Aj1Lqy7x
	1w7SfNO/QfPzOjPr3Yvna9kHBE3cCaWPndlOl0Bz7Jk26jDrzYJQk2OhCgYFHrt5DcAbgErxjA0cn
	jiRwMSGj70bOxagY+ql3sJGbNoytRQOyJrcENWszGfVwhpm7mRyxCXz55j7bTw9gMMQ8Xu9BdP0Qc
	wYgFy4AKJXsuXjniSqig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfTy-00BgeA-1L;
	Tue, 17 Oct 2023 08:31:18 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsfTv-00Bgcc-0v;
	Tue, 17 Oct 2023 08:31:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id C2ED1B81CB9;
	Tue, 17 Oct 2023 08:31:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59C70C433C8;
	Tue, 17 Oct 2023 08:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697531473;
	bh=sV57NWu1mWWa2mHpvDUHkKn7U2+oSh51miAvxpzYdC8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=limWfxRwQD1a//4aVP0bZ4acqnOQpo/86hRSXt85GQcD0THK4EKvF1kz5dY7zz9ew
	 WMmSBZPEOVl+7eHhnY2VbuZ1JcP/6CYkOzgdsfBuS9c9pa2haV7zGHlCPGFczOI3zh
	 hOc46EJXW4BHj3kA7y7IzOboZiJhFvlPh/vLFDzuU3bMKvvI5H/84fa5lswfBs1O9P
	 FM2Q/7M91KW3s3IJJpx0TZiPubUtNtNlXi5D2dZ3pqbWXfKJfku70lXTMcI+Aj2rGC
	 a89MGuis9NSDIhzkWzhDHwPMoQMEsMm8eXYcSp1fAhLH6ygpWac6I+/u9e1ri/ifem
	 H8/IYIBF9d4jA==
Message-ID: <258a5d1b-46b2-4f79-89cf-157d5bf89f15@kernel.org>
Date: Tue, 17 Oct 2023 17:31:07 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
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
 <20230704093242.583575-11-s.hauer@pengutronix.de>
 <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
 <20231016113442.GZ3359458@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231016113442.GZ3359458@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_013115_599464_1509A286 
X-CRM114-Status: GOOD (  20.50  )
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

On 23. 10. 16. 20:34, Sascha Hauer wrote:
> On Sat, Oct 07, 2023 at 03:17:14AM +0900, Chanwoo Choi wrote:
>> On 23. 7. 4. 18:32, Sascha Hauer wrote:
>>> This adds RK3568 support to the DFI driver.  Only iniitialization
>>> differs from the currently supported RK3399.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
>>>  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
>>>  2 files changed, 33 insertions(+)
>>>  create mode 100644 include/soc/rockchip/rk3568_grf.h
>>>
>>> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
>>> index 6b3ef97b3be09..261d112580c9e 100644
>>> --- a/drivers/devfreq/event/rockchip-dfi.c
>>> +++ b/drivers/devfreq/event/rockchip-dfi.c
>>> @@ -23,6 +23,7 @@
>>>  
>>>  #include <soc/rockchip/rockchip_grf.h>
>>>  #include <soc/rockchip/rk3399_grf.h>
>>> +#include <soc/rockchip/rk3568_grf.h>
>>>  
>>>  #define DMC_MAX_CHANNELS	2
>>>  
>>> @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
>>>  	return 0;
>>>  };
>>>  
>>> +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
>>> +{
>>> +	struct regmap *regmap_pmu = dfi->regmap_pmu;
>>> +	u32 reg2, reg3;
>>> +
>>> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
>>> +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
>>> +
>>> +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> 
> The ddr_type is 5 bits wide. The lower three bits are here.
> 
>>> +
>>> +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
>>> +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
> 
> The upper two bits are here, hence we need to shift the value above the
> lower three bits.
> 
>>
>> There are no reason of why shifting the '3'.
>> Could you add the comment about '3' or add the constant definition '3'?
> 
> I don't think adding a constant makes sense. I'll add a comment making
> it more clear what happens.

It is enough to add the comment. Thanks.

> 
>>
>>> +
>>> +	dfi->channel_mask = 1;
>>
>> nitpick.
>> On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
>> In order to keep the consistency, it is better to use BIT() macro as following:
>> 	dfi->channel_mask = BIT(0);
> 
> Ok, will do.

Thanks.

> 
> Sascha
> 

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
