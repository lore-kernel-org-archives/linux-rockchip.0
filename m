Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01CFEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 07:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y4PyIy1fxzVHancPRopRlle7CpLUmICYmktUya2gB90=; b=17d+Yo5ME6r4sWIFrY6NaPaMmm
	WpdR8wJF+pRQD2mOolvIAIFVrqpRWJ5Zvv0arad+uFZoVPs18yXdyumhv10XcpvlGQOEa9oDQEWWb
	LQrE9Z8HYqakNqimwXrOa3kssxYrHyj3LbqnxxBcXgPwG1K54OKZMyA8FID5Y9Mb5ZjByV0TnMEj7
	7pEY07XKs/B+ZEt5wrxhcG6/8aSPFJf2vV3JFKxBo0acrRjGDweDdNLjCe8d3slRa2GK0CfmFRsts
	3+4kKDMd1YgIRO8tQlzlWeeYCJUIwiipz32iXDekOuhH52HxGdMZzDwNU/QDcuSbGgnLxP9NSixol
	G45fPlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh2SB-0000000Bufb-1EXj;
	Thu, 22 Aug 2024 07:41:55 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh2S7-0000000BueH-2Rg4
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 07:41:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724312506;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U/tUeDcmjjH+tT1Pgn1G/YDE4JdZ7FQnGPenollIgXw=;
	b=IFcbWb0L2KgCG/CPhac2VFjxwB0/Vcxl7G8C2LZrbcxIZCtQZkJt3yM+abFsfGiGyHn3Ff
	FhDHJWRFwKwyF/4qR9Mh7dM6ezzF0kKtucUEn62rGLeAe9TFL+6MOkgfhLeZOqY1meT4Up
	FMxoLOWneQKZ9PWetWffkCtNOmObwFXAOUUjGkc4JGeUxNyC+liem1DIxQufoeVtasIOs8
	bbwZwzn1EfzuNglRPb+MpGyd9kpq4L5onlVdVitOvHKPBXy/02GVMesFrxil4psDL4n4rW
	gG2KXsORimtl+ivOTJjl99TkAmgp9k4847b+75tdAtylX9nhXpmpsbDG/O4rYw==
Date: Thu, 22 Aug 2024 09:41:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 naoki@radxa.com
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
In-Reply-To: <5771ebfe-eb9d-46ee-9810-44e1fff03171@kernel.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
 <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
 <5771ebfe-eb9d-46ee-9810-44e1fff03171@kernel.org>
Message-ID: <4a450e76e77d30afcdfc494818167e3a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_004152_261132_0601C33C 
X-CRM114-Status: GOOD (  23.50  )
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

Hello Krzysztof,

On 2024-08-22 08:31, Krzysztof Kozlowski wrote:
> On 21/08/2024 16:39, Dragan Simic wrote:
>> On 2024-08-21 15:13, Krzysztof Kozlowski wrote:
>>> On 21/08/2024 12:26, Marcin Juszkiewicz wrote:
>>>> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>>>> 
>>>> The miniPCIe slot got removed and USB 2.0 configuration has changed.
>>>> There are two external accessible ports and two ports on the 
>>>> internal
>>>> header.
>>>> 
>>>> There is an on-board USB hub which provides:
>>>> - one external connector (bottom one)
>>>> - two internal ports on pin header
>>>> - one port for m.2 E connector
>>>> 
>>>> The top USB 2.0 connector comes directly from the SoC.
>>>> 
>>>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>>>>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61
>>>> ++++++++++++++++++++++
>>>>  2 files changed, 62 insertions(+)
>>>> 
>>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
>>>> b/arch/arm64/boot/dts/rockchip/Makefile
>>>> index fda1b980eb4b..0f982c741243 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>>> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += 
>>>> rk3588-evb1-v10.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> new file mode 100644
>>>> index 000000000000..e950e40632cf
>>>> --- /dev/null
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>>> @@ -0,0 +1,61 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>> +/*
>>>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>>>> + * Copyright (c) 2023 Thomas McKahan
>>>> + * Copyright (c) 2024 Linaro Ltd.
>>>> + *
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +
>>>> +#include "rk3588-nanopc-t6.dts"
>>> 
>>> Do not include DTS files. Please rename board to DTSI (which is for
>>> includes) and then include it in respective boards. Remember to
>>> generate
>>> patches with proper -M/-B/-C so the rename will be properly 
>>> recognize.
>> 
>> This is perhaps a good opportunity to discuss this.  I already saw at
>> least half a dozen of instances where a board dts file is included in
>> another board dts file that modifies or extends it for another version
>> of the same board, or something like that.
>> 
>> Moreover, we'll most likely have to introduce quite a few new board 
>> dts
>> files, for board versions that use different type of DRAM and so far
>> were
>> handled in U-Boot only. [1]
>> 
>> Thus, I think this is a good opportunity to conclude what to do there.
>> If you insist on converting already existing dts files into dtsi 
>> files,
> 
> I did not write anything about this.

True, but I thought it was a good opportunity to discuss that in 
advance,
because it's going to be pretty much the same thing as what we're having
currently with the NanoPC-T6 LTS as a board variant.

>> we'll be introducing much more changes, which I'd be fine with, but 
>> I'd
>> then also like to convert _all_ existing cases of dts file inclusion
>> into
> 
> Don't understand. If I insist on converting already existing DTS, then
> convert all existing DTS?

Let me clarify, please.  With the NanoPC-T6 LTS, you asked for the 
current
NanoPC-T6 board dts file to be converted into a dtsi, from which the two
board variant dts files (the original and the LTS) will descend from.

Then I noticed that we already have board dts files that descend from 
other
board dts files (so, not from dtsi files as they should). [2][3][4]  
Based
on that, I asked do you insist on converting the current NanoPC-T6 dts 
into
a dtsi, because if you do, then we should fix other instances of the dts
inclusion as well.  Which I'm willing to do, by the way.

I hope it all makes more sense now.

[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c-plus.dts?h=v6.11-rc4#n10
[3] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2c.dts?h=v6.11-rc4#n10
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts?h=v6.11-rc4#n5

>> proper inclusion of dtsi files, which will result in even more new 
>> files
>> being introduced, etc.
>> 
>> [1]
>> https://lore.kernel.org/linux-rockchip/172408433165.1619643.7928785825448507704.robh@kernel.org/T/#m52de793f30579a8063f66eb2e64026776da55a66

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
