Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898AAC531DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 06:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anOzCmu0RPXDsDtCOXuZZWK4VdIgxQfeY15T6vsaQcw=; b=2xkBVfCzmyI9Zn
	6qP8uORq/iBrvcJf0fh0qBH+y8SNrjxAe0LlqM0LXS3bSA+KYxN56lQ+GDoI9RT9/aBsKVFV75Csf
	0xF8laQgMAPh6KLAXnaNCercWprC0lhBgZuOT1Xs0PK/B27JJ7EAkJtwzebN9EAX12Ck/FqDj+tXp
	liyowv8zB5ffV1YBzWqeBapirJihOGi0QPcVc23135XwczQSQJe+d4KQRVj1bil7iNpBaYzIwve2l
	pO8mc0Z6NpQEU3rNTzcg/LMeJbi9zJaJJxomYEoyUeozSXOA3zEafipxj7e9uIsDL+vi801TWvq/m
	o/TceFqAY5aTrVagrvfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1Ly-0000000Bc4m-1eUA;
	Thu, 22 Aug 2024 06:31:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh1Ln-0000000Bc2B-2CDj
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 06:31:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B82A26121E;
	Thu, 22 Aug 2024 06:31:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00289C4AF0C;
	Thu, 22 Aug 2024 06:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724308274;
	bh=ZxJfycTaBY0dq4ecQ48ngOYSwDMnMpjI0LZURi1O7gM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q5IWkfBlIOppHuuDArgnMcsn8Ydc27kvciSsEvT6POZZakvHcfmcMXxUUfB7ag/le
	 sfb5deMANHfi15HZDv1JeL1fUNhmF+vo/qJt/UAzQBufgsj87s2GPKo15TMMbgFHp1
	 d4pzku1izoq6VD374OAf7ZtS5AOtax/MTVWHQiimBBkbheuCDcxizJRmLUudH5MNIE
	 dKjnAK5opLBZJqz5G1BRF3IsoniA1m5dn9Rx1Cn7avRZJKb9RALeKvFDozsPk7c/j1
	 M44iN18FbqvxNS3E+/cs9SfmeRAHUlWnGcJUDeHLiJrJvjtOGR5EIn4JQAQrcNmzkl
	 XABGMbHg42p9Q==
Message-ID: <5771ebfe-eb9d-46ee-9810-44e1fff03171@kernel.org>
Date: Thu, 22 Aug 2024 08:31:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
To: Dragan Simic <dsimic@manjaro.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, naoki@radxa.com
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
 <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_233115_704052_E7EE9D6C 
X-CRM114-Status: GOOD (  22.26  )
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

On 21/08/2024 16:39, Dragan Simic wrote:
> Hello Krzysztof,
> 
> On 2024-08-21 15:13, Krzysztof Kozlowski wrote:
>> On 21/08/2024 12:26, Marcin Juszkiewicz wrote:
>>> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>>>
>>> The miniPCIe slot got removed and USB 2.0 configuration has changed.
>>> There are two external accessible ports and two ports on the internal
>>> header.
>>>
>>> There is an on-board USB hub which provides:
>>> - one external connector (bottom one)
>>> - two internal ports on pin header
>>> - one port for m.2 E connector
>>>
>>> The top USB 2.0 connector comes directly from the SoC.
>>>
>>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>>>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61 
>>> ++++++++++++++++++++++
>>>  2 files changed, 62 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile 
>>> b/arch/arm64/boot/dts/rockchip/Makefile
>>> index fda1b980eb4b..0f982c741243 100644
>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts 
>>> b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>> new file mode 100644
>>> index 000000000000..e950e40632cf
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>>> @@ -0,0 +1,61 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>>> + * Copyright (c) 2023 Thomas McKahan
>>> + * Copyright (c) 2024 Linaro Ltd.
>>> + *
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "rk3588-nanopc-t6.dts"
>>
>> Do not include DTS files. Please rename board to DTSI (which is for
>> includes) and then include it in respective boards. Remember to 
>> generate
>> patches with proper -M/-B/-C so the rename will be properly recognize.
> 
> This is perhaps a good opportunity to discuss this.  I already saw at
> least half a dozen of instances where a board dts file is included in
> another board dts file that modifies or extends it for another version
> of the same board, or something like that.
> 
> Moreover, we'll most likely have to introduce quite a few new board dts
> files, for board versions that use different type of DRAM and so far 
> were
> handled in U-Boot only. [1]
> 
> Thus, I think this is a good opportunity to conclude what to do there.
> If you insist on converting already existing dts files into dtsi files,

I did not write anything about this.

> we'll be introducing much more changes, which I'd be fine with, but I'd
> then also like to convert _all_ existing cases of dts file inclusion 
> into

Don't understand. If I insist on converting already existing DTS, then
convert all existing DTS?

> proper inclusion of dtsi files, which will result in even more new files
> being introduced, etc.
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/172408433165.1619643.7928785825448507704.robh@kernel.org/T/#m52de793f30579a8063f66eb2e64026776da55a66

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
