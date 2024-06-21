Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70872C2BA18
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 01:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hHqJrmMwRA3NZgwaYDhId+ZGY8pEgMFs5ACglPft0VE=; b=tyUCthRd1d8Nzs
	QKXak7MyQ++unvhT+x2/UnOduaBHqEsTGg7T1POl0Rki9F5yOuVry0XCaU8pSiHg7HmnO7/NrqpNE
	MuwId6vnG86kKFfGMyHhule9r33YflpUK4y30HJybtUZDcOa1b4ZVisxC7MSdYHFH2vfqaM28/fAw
	kdx3QEKBCdMn/GFiQveCTijsNiptFdf4Fd1KI1kyGlqRFNmEfLthZTVwEy09hriK07Te6eTmsOXcM
	N4C8TGQg40m0v/wne4ZcqgFQceJJFOmQxAOI8JnvWBFkYLXs0R7FDSAIILbQzryIZ7fZx2tAUtkdY
	M/Yg5COqjGZdiqdiMB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKT0H-00000007JsT-0jz9;
	Fri, 21 Jun 2024 01:23:49 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKT0C-00000007Jrc-381V;
	Fri, 21 Jun 2024 01:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718933022;
	bh=S/Y+XD9EEnIR15Y7mRl6RrqRYyY+K+WmygZUm5wATzo=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=L2dz/yDSW0PG56ChLFne9pA3VPa3SAhhoxfa6nEqxFvc+g92GCayvWkpfw3N9lckd
	 PUdCvjFlmNg2Q+A4yNwfa627epfMxTufbR5lm8s9Ypck4O3wuANihNFOEOSfAMHwu+
	 2eCysVofl9oyYQzfjbNOmFp2A6R5n601anu6SyQzNCCXqRgls5EwFtcs0KbRQ6JBC2
	 pC0xPHkWOmbIlw8H5wvU91IXsQnBytxR/OCNlEIYF0pger3soEk89cb9rL6KF8fEt4
	 G37KYh7o3d/s9JsCaNxhTVXxbg/cKSjmMFhMM14BCurmPsoUYQ1EBuYUgq2+/k5O6O
	 4fjoFBQn0OLfA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B1D5A3780FF1;
	Fri, 21 Jun 2024 01:23:41 +0000 (UTC)
Message-ID: <1fce65a2-b752-4bab-84e5-314b60d682f0@collabora.com>
Date: Fri, 21 Jun 2024 04:23:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3568-rock-3a
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
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
 <4015ded1-5ec4-4374-982e-9c7f23b43884@collabora.com>
Content-Language: en-US
In-Reply-To: <4015ded1-5ec4-4374-982e-9c7f23b43884@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_182345_006160_E738E630 
X-CRM114-Status: GOOD (  17.78  )
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

On 6/19/24 3:56 PM, Cristian Ciocaltea wrote:
> Hi Jonas,
> 
> On 6/19/24 3:22 PM, Jonas Karlman wrote:
>> Hi Cristian,
>>
>> On 2024-06-19 13:23, Cristian Ciocaltea wrote:
>>> The 'mic-in-differential' DT property supported by the RK809/RK817 audio
>>> codec driver is actually valid if prefixed with 'rockchip,':
>>>
>>>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>>>   rk3568-rock-3a.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
>>> 	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>>
>>> Make use of the correct property name.
>>>
>>> Fixes: a84ffd2ef1ff ("arm64: dts: rockchip: Fix mic-in-differential usage on rock-3a")
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> index ebdedea15ad1..0b54dfe92d6e 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> @@ -533,7 +533,7 @@ regulator-state-mem {
>>>  		};
>>>  
>>>  		codec {
>>> -			mic-in-differential;
>>> +			rockchip,mic-in-differential;
>>
>> If I understand the schematics correctly, only one wire is connected so
>> this board cannot really use differential signaling, and this should
>> probably instead be dropped.
> 
> Thanks for pointing this out, I will drop it in v2.

I've also checked the schematics which indicate the PMIC RK809 CODEC
receives both MIC1_INN and MIC1_INP signals; the former comes from the
Jack input, while the latter is generated by the SLM42Q3AT MEMS Microphone.

However, I'm not sure the Mic presence on the board is dependent on the
HW revision - on REV V1.3 the "NC_" prefix under U24 component label
suggests it is not connected.  So maybe we should keep the property?!

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
