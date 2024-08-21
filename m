Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A415C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 20:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrsLSmHXv6lmbrape/JD/Hr8FxGkUcrQEgNnOeC1si0=; b=D+bNeron/RHzsX
	OX0B5XKNUHeD59T4amTYW/P2u4KIXSfV2rM79YcCbAlP0EOuwCKpfKghU5kKQdiZcsN/p8Dha8SWO
	LWT9tDaY8m6fHtl5ExFrHwTky8rdtq6AXpuTUqQu3p6rbswZJTcpNEXpS5JSsYrmDyl4zIoPby6eX
	fTUJQ7iZswyxH4oSNp4sMOOzB6PLwLXtIWv6hcYxw9BLD1wLRefVE8rKAPOoNHspM3j8q6qCBomxM
	dlJ6ulBw6BT9GOZn6GfwmldJwNowah/MHHqPhkkdFy1RzkSy14cBcBlbmKbZIhcrOf3nrPYjSToLo
	Kud1XqD2cMTHfE06IoEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgs6X-0000000AJIS-1fEh;
	Wed, 21 Aug 2024 20:38:53 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgs6T-0000000AJHr-1a8A;
	Wed, 21 Aug 2024 20:38:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724272691; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gkPi36rxlLW4SXhcJ7TsEx9UFal77hztufoJNuKbW34wX4mFQkp1p4dH6/D9xqu+7Qw/ZdwuEmtDlHzaFcNgvic8rEXY2vmMH1T/OwiqCGo6kUSyUPPuTNU9z1L5lwKl4jvUNuHs6wbMV2n9RQoiYpF+HVNHLeqUw+mqDBdYwLI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724272691; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=rn/jPcfndwOGlmUfjvgjuRv6xjB54zy9vNZlgxr2C8A=; 
	b=JO26rMR7n8PfcasVMvM8FQ053kPSaxiuJY/mQkLDo6d1S6USefUkix1DBoCJ1pw7+6otUHRPKzG6JuHpyWDAKtN7YO1iEvcCrClS/I8lT3CCMB6lpzuGcl40gefkhEhBvqIESdkq/iraQQtksHDEIZb4OCO8OlUJTfXkdSNdbZ4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724272691;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=rn/jPcfndwOGlmUfjvgjuRv6xjB54zy9vNZlgxr2C8A=;
	b=G2Qgbf+fYDaUCrzI4JUaB+8dp0zKq0j1FNWUxOb97NABn7Dfz+TuVicqioEEn53s
	pUGRjYHNRirFC2ehQArQUMdPNlRXgwn1z98fsdkB0lcfGVkpCg93eZCuiGA533w8pG3
	CWyVVIM7VJ0v2eAFLC+jTO6kioCqH5x7E3wP3A3Q=
Received: by mx.zohomail.com with SMTPS id 1724272689131684.716009062432;
	Wed, 21 Aug 2024 13:38:09 -0700 (PDT)
Message-ID: <5813cea2-4890-4fa9-8826-19be5bf3e161@collabora.com>
Date: Wed, 21 Aug 2024 23:38:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
To: Conor Dooley <conor@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-3-6417c72a2749@collabora.com>
 <20240819-bobbing-purplish-99e48baa2304@spud>
 <ec84bc0b-c4c2-4735-9f34-52bc3a852aaf@collabora.com>
 <20240820-tropics-hunchback-6fdcd0b37f91@spud>
 <038073d0-d4b9-4938-9a51-ea2aeb4530f6@collabora.com>
 <20240821-evoke-mop-fb09ceef3597@spud>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240821-evoke-mop-fb09ceef3597@spud>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_133849_452617_4CF94C93 
X-CRM114-Status: GOOD (  15.51  )
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

On 8/21/24 6:07 PM, Conor Dooley wrote:
> On Tue, Aug 20, 2024 at 11:12:45PM +0300, Cristian Ciocaltea wrote:
>> On 8/20/24 7:14 PM, Conor Dooley wrote:
>>> On Tue, Aug 20, 2024 at 03:37:44PM +0300, Cristian Ciocaltea wrote:
>>>> On 8/19/24 7:53 PM, Conor Dooley wrote:
>>>>> On Mon, Aug 19, 2024 at 01:29:30AM +0300, Cristian Ciocaltea wrote:
>>>>>> +  rockchip,grf:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>>>> +    description:
>>>>>> +      Most HDMI QP related data is accessed through SYS GRF regs.
>>>>>> +
>>>>>> +  rockchip,vo1-grf:
>>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>>>> +    description:
>>>>>> +      Additional HDMI QP related data is accessed through VO1 GRF regs.
>>>>>
>>>>> Why are these required? What prevents you looking up the syscons by
>>>>> compatible?
>>>>
>>>> That is for getting the proper instance:
>>>
>>> Ah, that makes sense. I am, however, curious why these have the same
>>> compatible when they have different sized regions allocated to them.
>>
>> Good question, didn't notice.  I've just checked the TRM and, in both
>> cases, the maximum register offset is within the 0x100 range.  Presumably
>> this is nothing but an inconsistency, as the syscons have been added in
>> separate commits.
> 
> Is that TRM publicly available? I do find it curious that devices sound
> like they have different contents have the same compatible. In my view,
> that is incorrect and they should have unique compatibles if the
> contents (and therefore the programming model) differs.

Don't know if there's an official location to get it from, but a quick
search on internet shows a few repos providing them, e.g. [1].

Comparing "6.14 VO0_GRF Register Description" at pg. 777 with "6.15 VO1_GRF
Register Description" at pg. 786 (from Part1) reveals the layout is mostly
similar, with a few variations though.

[1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet

>>
>>>> 	vo0_grf: syscon@fd5a6000 {
>>>> 		compatible = "rockchip,rk3588-vo-grf", "syscon";
>>>> 		reg = <0x0 0xfd5a6000 0x0 0x2000>;
>>>> 		clocks = <&cru PCLK_VO0GRF>;
>>>> 	};
>>>>
>>>> 	vo1_grf: syscon@fd5a8000 {
>>>> 		compatible = "rockchip,rk3588-vo-grf", "syscon";
>>>> 		reg = <0x0 0xfd5a8000 0x0 0x100>;
>>>> 		clocks = <&cru PCLK_VO1GRF>;
>>>> 	};
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
