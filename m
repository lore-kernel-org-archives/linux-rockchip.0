Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E436C3DA45
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 03:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZ27iS17TcrvL6D12WeRy3loaB+zhBrMALlq8r+24fE=; b=svey4oPu2MfDX4
	+Qb8FrpN6IaPsCsYLMsyy4dOwzdZnBV6yRU/o4iG9rL/eC/S0LkDhNKoBZ3tERbaAii7kX6LWU4l7
	oTk4wwwV/bnM6GvxfleUXY9XjRXQDer68oJPnIe+4RyBgwAiYwVxQtnYY1ffVoa6BNXZrtFDj4IA1
	iw3RpzA6ShyjLjlEiRGyAbp7Pn42NSSgOFtdiivKoPaooHrIi9A3Guibn9vaU0mPD/mPkH7OvDDm9
	fzwJOCcdwfbp3HYZTJHfhDKohsk1i8d/Iowy6vQWVa5EGWpebTbmTPlhzIkYI/ox0kWi+uubYDDbm
	VBXjqduOBotEfaLpuHHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS79Y-0000000GILq-1GL1;
	Fri, 12 Jul 2024 03:41:00 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS79T-0000000GIJD-3L3v
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 03:40:58 +0000
X-QQ-mid: bizesmtpsz7t1720755611t6drgaj
X-QQ-Originating-IP: yNLfQGZ+RcZlY39cE3yRtP7XpoC5rc7V8MYl4buS170=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 12 Jul 2024 11:40:09 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1781228452713325488
Message-ID: <64319FB6206F6D90+691cf441-ada8-43a6-84f2-5d628f97d3c3@radxa.com>
Date: Fri, 12 Jul 2024 12:40:09 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E
 v3.0
To: Diederik de Haas <didi.debian@cknow.org>, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org
References: <20240711210526.40448-1-naoki@radxa.com>
 <8266220.dYGNU97SPr@bagend>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <8266220.dYGNU97SPr@bagend>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_204056_283782_CDCE50F6 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

Hi

On 7/12/24 08:02, Diederik de Haas wrote:
> On Thursday, 11 July 2024 23:05:25 CEST FUKAUMI Naoki wrote:
>> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3288 chip.
>>
>> [1] https://radxa.com/products/rockpi/pie
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> b/Documentation/devicetree/bindings/arm/rockchip.yaml index
>> 1ef09fbfdfaf..3caa4e6428be 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -782,6 +782,7 @@ properties:
>>         - description: Radxa ROCK Pi E
>>           items:
>>             - const: radxa,rockpi-e
>> +          - const: radxa,rockpi-e-v3
>>             - const: rockchip,rk3328
>>
>>         - description: Radxa ROCK Pi N8
> 
> This is about modifying the binding, but the patch subject indicates something
> else (and is the same as patch 2).

thank you for pointing. I'll fix them in v2.

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
