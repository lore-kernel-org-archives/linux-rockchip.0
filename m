Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D1E5C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5007Qhv/kiFApVTEmY/xas5PgqZCtth8oNCBZ4g9Gg=; b=hmx0kGBBy//gKH
	fuhSXMKL4awNkrYKWM+NjADukbDDM3+kIuZGQh5xTzN2jfe3RZ5Wk9Npyc1t/UjvHsJxqKRGiJNeX
	gXmCO3p2X27vRfbJZ4Ii8zYeriznSnfbRGygvWI0b9w7giH6RB/vYGuJDLeMof1xR0b6HD54t2Jgr
	xlRrIWlHdfkuE95IuAM+phUGfxZ2+O06M703+yyno3DTIxQixJbM0SwYHpeDizPhtMjnFALW2TxJr
	mX3u/uFsmttXOGblnJqPJ/r+VNbVBPeG8UG0x5B6rD76YhpVqdzRRJSrkAjZMxx+sCwCwxmF3/TTm
	eG37y8KeWW287tL5lRPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYES-0000000846a-45Nd;
	Fri, 21 Jun 2024 06:58:48 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKYEO-00000008447-2V5i
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 06:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718953096;
 bh=wuLrixmm9mNItymNAgLNb/E3azKTDfSKGMXK8se96Fg=;
 b=fCQgsxBNHkuFS1z62RU/VUZaXp3TsQ9b5GHwAzHFImPMWn/gWKBocMV2QIzE6YS7Aj5/zWpXt
 4bklNla1MfdslTLQZmQLnTdeYgaIa8k2mPn5FSyn1IwDtUiF87trVsJE/h3b5AEjt8lWaMTX5vN
 sBV9z8Hp0bhGNoEtr0vXrsQTiBfH24BD96l5etYOnv8xQHHFcZg6+3xASN1NpaV2hYpRmBiwb+F
 J43Xok0sVtX6irfEJQaRkJ3i/tOB0bfak/AiAtFvBDWCjPRc/26P6G+gsVeqttuKWEm9a5apsrw
 iG7mBOCNT5qsqPHtFDpQ8F1G8FLEGW/IcueQ/2Dpwmlw==
Message-ID: <dbf9d54e-1197-4731-80f2-91ff7c9954e4@kwiboo.se>
Date: Fri, 21 Jun 2024 08:58:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Fix mic-in-differential usage
 on rk3568-rock-3a
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, Furkan
 Kardame <f.kardame@manjaro.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-3-fa93bc5313f4@collabora.com>
 <c35b3e80-7889-473d-8365-88436c3cb9a9@kwiboo.se>
 <4015ded1-5ec4-4374-982e-9c7f23b43884@collabora.com>
 <1fce65a2-b752-4bab-84e5-314b60d682f0@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <1fce65a2-b752-4bab-84e5-314b60d682f0@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 667524847560ce51b8f26441
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_235844_837253_7C87F208 
X-CRM114-Status: GOOD (  19.12  )
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

Hi Cristian,

On 2024-06-21 03:23, Cristian Ciocaltea wrote:
> On 6/19/24 3:56 PM, Cristian Ciocaltea wrote:
>> Hi Jonas,
>>
>> On 6/19/24 3:22 PM, Jonas Karlman wrote:
>>> Hi Cristian,
>>>
>>> On 2024-06-19 13:23, Cristian Ciocaltea wrote:
>>>> The 'mic-in-differential' DT property supported by the RK809/RK817 audio
>>>> codec driver is actually valid if prefixed with 'rockchip,':
>>>>
>>>>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>>>>   rk3568-rock-3a.dtb: pmic@20: codec: 'mic-in-differential' does not match any of the regexes: 'pinctrl-[0-9]+'
>>>> 	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>>>
>>>> Make use of the correct property name.
>>>>
>>>> Fixes: a84ffd2ef1ff ("arm64: dts: rockchip: Fix mic-in-differential usage on rock-3a")
>>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>>> ---
>>>>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> index ebdedea15ad1..0b54dfe92d6e 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>> @@ -533,7 +533,7 @@ regulator-state-mem {
>>>>  		};
>>>>  
>>>>  		codec {
>>>> -			mic-in-differential;
>>>> +			rockchip,mic-in-differential;
>>>
>>> If I understand the schematics correctly, only one wire is connected so
>>> this board cannot really use differential signaling, and this should
>>> probably instead be dropped.
>>
>> Thanks for pointing this out, I will drop it in v2.
> 
> I've also checked the schematics which indicate the PMIC RK809 CODEC
> receives both MIC1_INN and MIC1_INP signals; the former comes from the
> Jack input, while the latter is generated by the SLM42Q3AT MEMS Microphone.
> 
> However, I'm not sure the Mic presence on the board is dependent on the
> HW revision - on REV V1.3 the "NC_" prefix under U24 component label
> suggests it is not connected.  So maybe we should keep the property?!

There is no such mic on the board, at least on the rev 1.3 that I have.

This prop should be used to indicate that the attached microphone uses
differential signaling, e.g. should have its two output signals
connected to both INP(+) and INN(-).

The SLM42Q3AT or the single wire from headphone jack indicate that a
single-ended microphone is/can be used/wired on this board.

The current use of non-working mic-in-differential was wrong, adding
the rockchip,mic-in-differential would change behavior and wrongly
describe hw of this board.

Regards,
Jonas

> 
> Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
