Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A02C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 12:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7H69dIIIW665Nj6yU4WmlIPY6UTUNqO/mAmXCyABs4=; b=3du/8nxxdCY8Q2
	YfsmmNUg3z9HGierxpU28R4TNnUXLdCPAxr1nEenvsTZAlaTb5iWVHjMY2vDljyD9lqZRTZJl3ivG
	ZtxsKaMKEn+6nnEtPeJFlpMSq9Lh+9fQ11bYmlp86Me5NRFVOsUNxLujs5ef4AEl0RUD9U9o14N0G
	PELQFI3DaRdNAb54+dKrfiZk5xZMEyKKhoQJeE5sRQ5GE7liHSu9lItz8xj66C0cggekKFAvwJEOL
	2iabJtEW12V/jeETeyAuZo7GYL3iIhGwzM9pB+FJdReyS8xbLrsOu+k/SMx5gQaAyqKx8be4LoD3A
	Oi6/iyZ/yK98a/GHHG7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJurk-00000001FGf-4AXx;
	Wed, 19 Jun 2024 12:56:44 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJurh-00000001FFV-3ZzV;
	Wed, 19 Jun 2024 12:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718801799;
	bh=CV/Tc2pxa3ANa+QjAhEaKD0qTxtoiav6L/E0jjqRJCk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PvvATBFX0Wxgq+KNUYEvS5s5cgTMyRVf4WFkP7aAQB+TC60caSub09yxcSvVThweQ
	 f9v/oh0xyWBBBuBxD1+ESODj9UPfP9DFA8Gusc0DQn3MrDH2rD0da17kyWUt4RuBdU
	 lcDDNArCF3ok60MZCCaNXEu7qoqNz5rcf48oBTRqL38cgFTi0tP48pWsEdVcWiFmyI
	 yhVzpDNuKbv+I5jEN4jKslvRKwo/HWqzB/sI0NaBcslu2q/uY0LOIoocKYFmV2RnC9
	 tGCuWJ5XXmpU9NR/VlfSefVcxT1S4RosNeDV/UzrMMa9RZli03QZ6QIBVBA83WlBrM
	 5sqUP75zGOD4w==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 08FF73782159;
	Wed, 19 Jun 2024 12:56:37 +0000 (UTC)
Message-ID: <4015ded1-5ec4-4374-982e-9c7f23b43884@collabora.com>
Date: Wed, 19 Jun 2024 15:56:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3568-rock-3a
To: Jonas Karlman <jonas@kwiboo.se>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Furkan Kardame <f.kardame@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-3-fa93bc5313f4@collabora.com>
 <c35b3e80-7889-473d-8365-88436c3cb9a9@kwiboo.se>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <c35b3e80-7889-473d-8365-88436c3cb9a9@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_055642_057243_13ACC926 
X-CRM114-Status: GOOD (  16.60  )
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

Hi Jonas,

On 6/19/24 3:22 PM, Jonas Karlman wrote:
> Hi Cristian,
> 
> On 2024-06-19 13:23, Cristian Ciocaltea wrote:
>> The 'mic-in-differential' DT property supported by the RK809/RK817 audio
>> codec driver is actually valid if prefixed with 'rockchip,':
>>
>>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>>   rk3568-rock-3a.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>
>> Make use of the correct property name.
>>
>> Fixes: a84ffd2ef1ff ("arm64: dts: rockchip: Fix mic-in-differential usage on rock-3a")
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> index ebdedea15ad1..0b54dfe92d6e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> @@ -533,7 +533,7 @@ regulator-state-mem {
>>  		};
>>  
>>  		codec {
>> -			mic-in-differential;
>> +			rockchip,mic-in-differential;
> 
> If I understand the schematics correctly, only one wire is connected so
> this board cannot really use differential signaling, and this should
> probably instead be dropped.

Thanks for pointing this out, I will drop it in v2.

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
