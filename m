Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED1A8C27C53
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 11:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/wZcD5FQ1ICdOa1kof797KJ+BoaPWgkIilXvZ6271qY=; b=wqzipp2xbOCTVur5VN95WB646s
	QelgxJyEgWKrdYMPNH7imIjOwtvzD8fMmOiRBjh4e0qPgKojL9uhwrpyCG1MKp0Snm8rBf8TVSmhD
	eI5IDxyLC3xaZXar/LjdGlXKQ+APPML76jptsLC6No8SyAYTnbZ+IH4ZzNzB7bHJlU1h2mjf+bWpb
	c+ivE3HWxHBZKISu00qaaa7hgHNowDmBKlrNwldVtChIDWK2LVvvvNX9pYeIuQEEpOK0YoWOIp18Q
	FBRAx3EFKULfVT03+849vWJyHbVwvZO6IK+OgsJfQuth/sGcSlcOfjYQoiS3VvIh1QY8PNkMyyN+k
	8FvzvQ5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIoTw-00000007RpB-0Mxl;
	Sun, 16 Jun 2024 11:55:36 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIoTm-00000007Rnf-2lqM;
	Sun, 16 Jun 2024 11:55:28 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718538921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o/mVBey1pUUAnezlicmXpXgXj8Qwj9yoReY/ospObPs=;
	b=lp8NiBCnAttf4fU8LXw3j5OaeEoGWaQYQsnjPLe/cvcoGDXEQvIKZkK9oyjD352fcL9zhl
	R4ihgLmZMENLAFKITuFMnXgPHWKmTwmRodzzs8ciZnOGUD5OuQHvH+ShL+6z/qW6nOH0Jt
	hydAKz4ELF8p5g+r2u8aDTZQk/O46NG5IyxGIIPdMhuXa4/naOcq9MTkPj/5++TwoOwqOd
	VsOBszOE3gkpAq37w1+vJ3CWsR9PsH2UCBpDlIDcGj5egvKjv7uCXolPHYy3WUDq6NESro
	IExMsXqfAZz3U1dW/VohVUj6Zny5g9m1DotU38/6yBgyP2gQun9o9FCebHRsig==
Date: Sun, 16 Jun 2024 13:55:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Diederik de Haas
 <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rkvdec2 Video Decoder on
 rk3588(s)
In-Reply-To: <f4c140a3-2b11-405c-bfd4-32e50180f6b7@kwiboo.se>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-4-detlev.casanova@collabora.com>
 <944c4296-8dd2-4ffd-b430-1839ff3a3ed2@kwiboo.se> <3666279.iZASKD2KPV@arisu>
 <f4c140a3-2b11-405c-bfd4-32e50180f6b7@kwiboo.se>
Message-ID: <7f649d79666a175da7c9d9fd9377a687@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_045527_275680_BB6F3F8C 
X-CRM114-Status: GOOD (  13.87  )
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

Hello all,

On 2024-06-16 11:17, Jonas Karlman wrote:
> On 2024-06-15 21:55, Detlev Casanova wrote:
>> On Saturday, June 15, 2024 4:25:27 A.M. EDT Jonas Karlman wrote:
>>> On 2024-06-15 03:56, Detlev Casanova wrote:
>>>> Add the rkvdec2 Video Decoder to the RK3588s devicetree.
>>>> 
>>>> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>>>> ---
>>>> 
>>>>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |  4 ++++
>>>>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  4 ++++
>>>>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 19 
>>>> +++++++++++++++++++
>>>>  3 files changed, 27 insertions(+)
>>>> 
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>>> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts index
>>>> c551b676860c..965322c24a65 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>>> @@ -503,6 +503,10 @@ &pwm1 {
>>>> 
>>>>  	status = "okay";
>>>> 
>>>>  };
>>>> 
>>>> +&rkvdec0 {
>>>> +	status = "okay";
>>>> +};
>>> 
>>> Enable of rkvdec0 should probably be split out from the patch that 
>>> adds
>>> the rkvdec0 node to soc dtsi.
>> 
>> Ack
>> 
>>> Also why is rkvdec0 only enabled on rock-5b and orangepi-5?
>> 
>> I only could test on those two but I can enable it on all rk3588 
>> devices.
> 
> Because the decoder is an integrated part of the SoC the default should
> probably be that the IP is enabled, i.e. no status prop required for 
> the
> vdec and related mmu nodes in rk3588s.dtsi.

Agreed, the decoder is a SoC feature.  As such, it should be enabled on
the SoC level, instead of having it enabled on the board level.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
