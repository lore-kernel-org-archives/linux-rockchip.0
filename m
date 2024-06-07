Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127C7C27C5F
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 14:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/AgATMcVS0/9gLfMp3YqCW1dG+JuVM7wdd2eLNSWxA=; b=tF57rgDIhUUdl9
	IGcnd2WGW3JIg7TID0GSkmG5E/C0pYuYoH3g+Guz28Ap1D4Bpig9rPRZ465k90FzkATSnXuMU7C0n
	hKFvIy3GaTaekTPW8SxZqE01B1LGvi858i/xFlaL0n/ajrUuhA8G82LYW2XN3c9ND3UCaT5C1CcBq
	P4Bwb8lYy88/pTcVHI402EdHZj9u4msk5AA0pFu6QqULKTE/ZyJpHo3WYbVu13v88Qk7mqxetEdQw
	1uC8mNDwsPDjbSDNTIsZxhKgGNedUGl6SSMenho6s9dElvIOXrhG3aRx/FxIghIQ6AMp/7LoXnKct
	nfYKisoGj9ZFW34NDj6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFark-0000000EV8N-1iFj;
	Fri, 07 Jun 2024 14:46:52 +0000
Received: from mail.eh5.me ([2001:19f0:7001:3edf:5400:4ff:fe32:f2e0])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFarh-0000000EV4h-1hul;
	Fri, 07 Jun 2024 14:46:50 +0000
Message-ID: <3dab2269-a048-4750-bea8-cce245df075a@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1717771593;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=706MONW8kwoOXWqy8lP/xTe9KGJQQ7km3fno9upjptk=;
	b=P3P6vckAe+9O51qpHIr+vhuqx+or43Mdi2J3KmjjDmpZdnZ5GpVvg0ejQr1GkPyGv9t9sz
	uv0N/Q/MYxWm8fBGq0HkyUT5HN1lGOE5xQHeJa23B1/QS5p1EdRK3+ckhKGVQkvNWGlzjT
	LD0u9azQVehcATSjJhF8ueFykN0P8ps=
Date: Fri, 7 Jun 2024 22:46:19 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/4] pinctrl: rockchip: fix pinmux bits for RK3328
 GPIO3-B pins
To: Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, kever.yang@rock-chips.com
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240606125755.53778-1-i@eh5.me>
 <20240606125755.53778-3-i@eh5.me> <4786379.ElGaqSPkdT@phil>
Content-Language: en-US
From: Huang-Huang Bao <i@eh5.me>
In-Reply-To: <4786379.ElGaqSPkdT@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_074649_599571_2ECE5F7B 
X-CRM114-Status: GOOD (  19.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 6/7/24 20:32, Heiko Stuebner wrote:
> Am Donnerstag, 6. Juni 2024, 14:57:53 CEST schrieb Huang-Huang Bao:
>> The pinmux bits for GPIO3-B1 to GPIO3-B6 pins are not explicitly
>> specified in RK3328 TRM, however we can get hint from pad name and its
>> correspinding IOMUX setting for pins in interface descriptions. The
>> correspinding IOMIX settings for these pins can be found in the same
>> row next to occurrences of following pad names in RK3328 TRM.
>>
>> GPIO3-B1:  IO_TSPd5m0_CIFdata5m0_GPIO3B1vccio6
>> GPIO3-B2: IO_TSPd6m0_CIFdata6m0_GPIO3B2vccio6
>> GPIO3-B3: IO_TSPd7m0_CIFdata7m0_GPIO3B3vccio6
>> GPIO3-B4: IO_CARDclkm0_GPIO3B4vccio6
>> GPIO3-B5: IO_CARDrstm0_GPIO3B5vccio6
>> GPIO3-B6: IO_CARDdetm0_GPIO3B6vccio6
>>
>> Add pinmux data to rk3328_mux_recalced_data as mux register offset for
>> these pins does not follow rockchip convention.
>>
>> Signed-off-by: Huang-Huang Bao <i@eh5.me>
> 
> This matches the information that I found in my TRM, thanks to your
> detailed explanation.
> 
> Though I of course can't say if the TRM is just wrong or the hardware
> changed after the pads-description was written.
> 
> Did you test the usage of these pins on your board?
> 

My board(NanoPi R2S) is kinda integrated and does not have GPIO3 pins so
I can't test these pins directly.

 From DTS for RK3328(arch/arm64/boot/dts/rockchip/rk3328*.dts*), there is
pinctrl/cif-0/dvp_d2d9_m0 referencing part of GPIO3-B1+ pins(GPIO3-B1 to
GPIO3-B4) that indeed matches "Table 15-1 TSP interface description"
which contains hint pad names. And this DTS node exists from
initial commit to add RK3328 dtsi
(52e02d377a72 "arm64: dts: rockchip: add core dtsi file for RK3328 SoCs").

Though this node is not actually used in any RK3328 DTSs. So I can't
test indirectly either.

Huang-Huang

> 
> Heiko
> 
> 
> 
>> ---
>>   drivers/pinctrl/pinctrl-rockchip.c | 51 ++++++++++++++++++++++++++++++
>>   1 file changed, 51 insertions(+)
>>
>> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
>> index 78dcf4daccde..23531ea0d088 100644
>> --- a/drivers/pinctrl/pinctrl-rockchip.c
>> +++ b/drivers/pinctrl/pinctrl-rockchip.c
>> @@ -634,17 +634,68 @@ static struct rockchip_mux_recalced_data rk3308_mux_recalced_data[] = {
>>   
>>   static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
>>   	{
>> +		/* gpio2_b7_sel */
>>   		.num = 2,
>>   		.pin = 15,
>>   		.reg = 0x28,
>>   		.bit = 0,
>>   		.mask = 0x7
>>   	}, {
>> +		/* gpio2_c7_sel */
>>   		.num = 2,
>>   		.pin = 23,
>>   		.reg = 0x30,
>>   		.bit = 14,
>>   		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b1_sel */
>> +		.num = 3,
>> +		.pin = 9,
>> +		.reg = 0x44,
>> +		.bit = 2,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b2_sel */
>> +		.num = 3,
>> +		.pin = 10,
>> +		.reg = 0x44,
>> +		.bit = 4,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b3_sel */
>> +		.num = 3,
>> +		.pin = 11,
>> +		.reg = 0x44,
>> +		.bit = 6,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b4_sel */
>> +		.num = 3,
>> +		.pin = 12,
>> +		.reg = 0x44,
>> +		.bit = 8,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b5_sel */
>> +		.num = 3,
>> +		.pin = 13,
>> +		.reg = 0x44,
>> +		.bit = 10,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b6_sel */
>> +		.num = 3,
>> +		.pin = 14,
>> +		.reg = 0x44,
>> +		.bit = 12,
>> +		.mask = 0x3
>> +	}, {
>> +		/* gpio3_b7_sel */
>> +		.num = 3,
>> +		.pin = 15,
>> +		.reg = 0x44,
>> +		.bit = 14,
>> +		.mask = 0x3
>>   	},
>>   };
>>   
>>
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
