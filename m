Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E17D5C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 14:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mwG33/WKK943nJxVX4fFCJOm8bAIM+n/LVNOUInA/yc=; b=awqswnpLp6GcHOy37K9Pk64rTm
	WHyoO6HNJkof4WSr190hoqseTHRQ9Ai6Wq8A1rwzzcrdzfJuNJNs/kha0Nk50TKvEqPKjqAmrOY5m
	ar7t+wqhs/oyRKD1nO84DEe1EJyOuGzqWQm4hQa0B7N7atY/w3xsfNzI7GC75dAZIPDPpfX3zJmHr
	LNK8EDq/6ciIBGGH6M8MrbGO83N2r7YLlUe8W4HlH8yQnmw0N6M0uSZg1oWdD5e5eLvlMjgPd503L
	O6WZ0c2gshgouzqvQHm9ngTl+nTZaTujt3Q1dNVn5b7U6Zfc7XOWholMNek7DTQqZY7J65oPaT1Yz
	I0C2DNrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmUn-00000009Lj3-0hKb;
	Wed, 21 Aug 2024 14:39:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgmUj-00000009Lfd-1074
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 14:39:31 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724251165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=af/USMng0ATq4RdHLWtR6P/XVEHh9dXoWbxHkvOzCjw=;
	b=rdL2SywOcYjMLgkgvnTBaC/qHQzppS8gH/CDvJWNX6hoJonQ3CqO2NWEzjuJdp8HvRt+gK
	aOD5r37OpjpzDdtISd4Ul5Vz8Z8VpHzdySqll6/RlmwM/QW3LadAZgqnfGQR8Uqi6jyokD
	s8Ud71FfKwQo6Ev/3t9XoZBA0CxxAyHzDlsRwbiWEcuceWDkPpJOFmXlHWeQtA+GGtrEx2
	fAMwH2fh46ku2BmfmZ6W68MZcMCkIDTOzfd3/CcQ/3P0jMBdlM0aH+/zkJzF10Jx+qvQrh
	HqqnJIxMXu8n4+SZizSXnBh8B/P4QDfUI30SH0NIlRnILN8X6DnBySnMESs0mQ==
Date: Wed, 21 Aug 2024 16:39:25 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 naoki@radxa.com
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
In-Reply-To: <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
Message-ID: <622eb49ded6ae0a13b318ac0fae21d92@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_073929_998606_329A4794 
X-CRM114-Status: GOOD (  18.16  )
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

On 2024-08-21 15:13, Krzysztof Kozlowski wrote:
> On 21/08/2024 12:26, Marcin Juszkiewicz wrote:
>> FriendlyELEC introduced a second version of NanoPC-T6 SBC.
>> 
>> The miniPCIe slot got removed and USB 2.0 configuration has changed.
>> There are two external accessible ports and two ports on the internal
>> header.
>> 
>> There is an on-board USB hub which provides:
>> - one external connector (bottom one)
>> - two internal ports on pin header
>> - one port for m.2 E connector
>> 
>> The top USB 2.0 connector comes directly from the SoC.
>> 
>> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile              |  1 +
>>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61 
>> ++++++++++++++++++++++
>>  2 files changed, 62 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile 
>> b/arch/arm64/boot/dts/rockchip/Makefile
>> index fda1b980eb4b..0f982c741243 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>> new file mode 100644
>> index 000000000000..e950e40632cf
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
>> @@ -0,0 +1,61 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2023 Thomas McKahan
>> + * Copyright (c) 2024 Linaro Ltd.
>> + *
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "rk3588-nanopc-t6.dts"
> 
> Do not include DTS files. Please rename board to DTSI (which is for
> includes) and then include it in respective boards. Remember to 
> generate
> patches with proper -M/-B/-C so the rename will be properly recognize.

This is perhaps a good opportunity to discuss this.  I already saw at
least half a dozen of instances where a board dts file is included in
another board dts file that modifies or extends it for another version
of the same board, or something like that.

Moreover, we'll most likely have to introduce quite a few new board dts
files, for board versions that use different type of DRAM and so far 
were
handled in U-Boot only. [1]

Thus, I think this is a good opportunity to conclude what to do there.
If you insist on converting already existing dts files into dtsi files,
we'll be introducing much more changes, which I'd be fine with, but I'd
then also like to convert _all_ existing cases of dts file inclusion 
into
proper inclusion of dtsi files, which will result in even more new files
being introduced, etc.

[1] 
https://lore.kernel.org/linux-rockchip/172408433165.1619643.7928785825448507704.robh@kernel.org/T/#m52de793f30579a8063f66eb2e64026776da55a66

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
