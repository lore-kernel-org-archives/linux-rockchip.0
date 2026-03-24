Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA54FEC0E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 17:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGdicDp+cwYjE2+8N0HWiLoC+TzAbngfOFZUu1FIdvk=; b=W3EBzc5appliny
	kjK3cEQldjff54B44j5KPrVVcUO2Jpzhya2sgYyO9rIof/liQsfs/V5s620jufP5LQXNMyHIPihI9
	HpJLUP3Jmg5jvu3cD2Q9TMW+pL2YfIrUbGHU2L3DykWpoByNXtP+GmGmfZJjnomoT6AJZHog/ZMu7
	btdRYnq+BDg+4gpA8QjBg/Dlk3LtoutIJZpxfdIn8cKuR5JTWRmPogLcKdfcgus4QIWUPEujwi6X3
	I/7LwBEznIW7OTvA+SuBcOIuowNoV8h1AodryxIy5OuaL/yP5hYsgUKxHm3q8wXv7WOBJjLqn6UVJ
	gnapAD9yliOebNJn5r4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55M4-00000001z4j-2TXK;
	Tue, 24 Mar 2026 17:15:48 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55M1-00000001z3n-2HFX
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 17:15:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.xyz;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-58e3cb06d0; t=1774372542;
 bh=fvp7Cw7x/AnM/cgBnxrbRKiY//wCpYd0jLxzFo22pCk=;
 b=UZDsuVVzpbUEeD1QpsaBb3DTRoaFlfNHd/8sT6HuyjvB+ifyR+MMX5CfEu0i4amc3qP/Hk0Qi
 cd5pXpQqRZhbmIPNSGt8cmefcgXAdXnjhR8ke5qv2EPEe8WJZmuZlvlIcsXijyOnNsyTcXx/wG8
 v9AuHD/foe4JaX0m9+/IBVs=
X-Forward-Email-ID: 69c2c6bd0febbe50599c0a27
X-Forward-Email-Sender: rfc822; jonas@kwiboo.xyz, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.6.55
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <533f27c9-e970-449b-a431-4ba41a566aaf@kwiboo.xyz>
Date: Tue, 24 Mar 2026 18:15:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as
 gated-fixed-clock
To: Heiko Stuebner <heiko@sntech.de>, MidG971 <midgy971@gmail.com>
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com,
 jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20260320094441.128263-1-midgy971@gmail.com>
 <177437177535.786081.7519498810130807269.b4-ty@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.xyz>
In-Reply-To: <177437177535.786081.7519498810130807269.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_101545_665967_93F29149 
X-CRM114-Status: GOOD (  13.18  )
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

Hi Heiko,

On 3/24/2026 6:04 PM, Heiko Stuebner wrote:
> 
> On Fri, 20 Mar 2026 10:44:41 +0100, MidG971 wrote:
>> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
>> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
>> This chip is currently modeled only as a fixed regulator
>> (vcc3v3_pi6c_03), with no clock output representation.
>>
>> The PI6C20100 is a clock generator, not a power supply. Model it
>> properly as a gated-fixed-clock, following the pattern established
>> for the Rock 5 ITX and other boards with similar PCIe clock buffer
>> chips.
>>
>> [...]
> 
> Applied, thanks!

My comments from v3 [1] was not addressed in v4 och v5. E.g.
regulator-always-on/boot-on not being removed and redundant comments.

[1] https://lore.kernel.org/all/fec0f25d-733a-4b6c-aef1-2ac51bd15798@kwiboo.se/

Regards,
Jonas

> 
> [1/1] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
>       commit: b61f3c69c87b5f061194f413d810723698534b02
> 
> As I somehow expected, that AI messed up ;-) .
> 
> In the 2nd part of the patch the reported number of lines
> in the header (the 15 there) does not match the number of lines
> in the diff itself (14). I've fixed that up to not have another
> round.
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
