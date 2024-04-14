Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB761C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDMUdxqAFwkrBfETtr64Nwc/I2hzPO5vxVaCmRC8WOc=; b=aTrzauU0gcJA3X
	4IdpXxxaA9y/e/WIT5JfIt4f3b8DLng16DQZZl5OnEpIYgAvDfrKd2sTmovG9CG03QVzxX1FahoX3
	inoTe7TpM53WSh8op3oPJsVIFDse3ludxAvCcY1cUEIIsyFV36h3AoU7NbUnbTrShq6iCFlDGjm4W
	oWBiN9zuYra0I0m9/kvIIoBry1qyDV9g1UPuWmNBzqRaV1RKkpquJIngAYHUhxHzh2KfVrnvp7kpl
	hjps5sQqM/NQ/zueO+huuJJlEZsguhsJGE9oxL+nvqmIoInTXNhHNRN53WRZbVlbQHafrvNE5ARra
	Zfb8QydL8mu/hpx+FAxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw0Lm-00000005ZL0-0LRK;
	Sun, 14 Apr 2024 13:56:54 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw0Li-00000005ZJp-3XZc
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 13:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1713103002;
 bh=gx8P+suevGzV8uiQbOy19KfnvZ90tlKgcP/DYTpgTy4=;
 b=T17CLoiXr4IEKkFhQKxP4uikAXGe/O0wqk+qlgKv3tp4FtdE0gZP2BdJB6JA3UyVrliE5PvM7
 xPXa+VSiXYJhvVvsB1u5QRHDVBrwtwTJAZxMeA7UR8vTXqfaZhzXrW/dUhqRAv8/VqeoFhq2foO
 2Q9mFzsP4C+Q77Z9qZhXwxKcKCs2lzahnz+TDCZ+iC329h59Hf2xlL4Hr24aV4GAUEte/M/iNpI
 3820yXUAh1t3tRpFPg1yWY8nHa0JGHKCU0i76e5FB+c6Xs52DRRf9mprjMuA0HZYin0v+gZ1Eex
 egAO0J8G3vnCel14XZZ8y4oQTWVgbw2mC1OkEK0+rQEg==
Message-ID: <3abd2dfe-e4c9-42d0-89a4-4c340c08aea1@kwiboo.se>
Date: Sun, 14 Apr 2024 15:56:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240414131529.1730506-1-jonas@kwiboo.se>
 <20240414131529.1730506-3-jonas@kwiboo.se>
 <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661be0993b53c644336290d9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_065650_979156_16E33320 
X-CRM114-Status: GOOD (  11.79  )
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

Hi Krzysztof,

On 2024-04-14 15:33, Krzysztof Kozlowski wrote:
> On 14/04/2024 15:15, Jonas Karlman wrote:
>> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
>> computer based on the Rockchip RK3566, with a compact form factor and
>> rich interfaces.
>>
>> The ZERO 3W and ZERO 3E are basically the same size and model, but
>> differ only in storage and network interfaces.
>>
>> - eMMC (3W)
>> - SD-card (both)
>> - Ethernet (3E)
>> - WiFi/BT (3W)
>>
>> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>>  3 files changed, 510 insertions(+)
> 
> How do you build your patches? That's rhetorical, because they cannot be
> built... Missing Makefile.

They where built using the generic .dtb-file make target, will include
in Makefile in v2, thanks.

> 
> Are you sure therefore that your dts pass dtbs_check? If this is not in
> Makefile, how did you run the command?

I built and tested dts files using the following make commands:

make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 defconfig
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3w.dtb
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3e.dtb

Regards,
Jonas

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
