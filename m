Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77226C04FFE
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 13:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xn0KSOikOFvQpd3HKVxloRxOlFdtiLNxj4eWDkZc3MY=; b=5GNuAjJ4UPoZi9DoQ4sKqR8sAo
	uSBGAnY5wQmdj6KMR8ugDFiF4uUe4kzD2wVijs0ykRQUIQUyFj2Kx92Ejp5/AWDkmgRW7HR4JwuKL
	j6Ut1F4YJPswYHn62RXG+XcwEWG6VylB/hiXc/Yek8fHU2dbsqOU8tdd/Id9kOV2pkI4pO1lI/ARp
	w3A3c9J9KvJ2YndhPZ0FZ2o/AGuXcK8LhDAqwjJcti6XO7BSBT5jKzH9CXeHr5A858pyoiEXNeveg
	VXl33apXWXX4pe1VNub5l185YiGf2bSJj4Aq3MiLS9lkHFq2PykkkWFYWte5oi3aREwSOb5PiormC
	8A2eJfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2WnP-0000000CqOp-1juE;
	Thu, 02 May 2024 13:48:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2WnJ-0000000CqNk-2qgZ;
	Thu, 02 May 2024 13:48:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1714657694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LEqxNv/ZEWBiZkoBrhIM8aPkJu0KWOsw1ID/dBB65tg=;
	b=L7qM0YehjtUFSjdsa58JGuf67lT/LgsRo+SnwLmVUAMtYfNhGU6+yCYcuael2rf3nes9hG
	cXsFKLRIXvDezfO42WqVeDJp4Amob1ZuUvkRMJUoJLhQoW/FH687xnPKvsHCM9Ph48pkNn
	qa+w3eUZd90UfecMfb0k0tEfgGLYZ2UI4PevXFXo/SV8bw5Pxlo1N15nCrELahXO2Om/Lq
	icahHzdrzA39F/izxMeItIC6R0wCCjx3jzixI7IWXwfaWlpdz+uPXFK0DRr09YoxX26WLH
	8kc8GgUzimVuXZOMzDK5I4fIBYwrNCITx5MM9jfdyen2grhWwO4x08kzTkBwsg==
Date: Thu, 02 May 2024 15:48:09 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Folker Schwesinger <dev@folker-schwesinger.de>, Chukun Pan
 <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
In-Reply-To: <832d6c37-a6c5-4468-9a23-1637b2affb90@kwiboo.se>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
 <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
 <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
 <832d6c37-a6c5-4468-9a23-1637b2affb90@kwiboo.se>
Message-ID: <afa32c669ded2d37a4c11a54f1fc05b0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_064818_207472_E9248E72 
X-CRM114-Status: GOOD (  11.47  )
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

Hello Jonas,

On 2024-05-02 14:17, Jonas Karlman wrote:
> On 2024-05-02 03:28, Dragan Simic wrote:
>> On 2024-04-30 07:42, Folker Schwesinger wrote:
>>> On Sun Apr 28, 2024 at 2:36 PM CEST, Chukun Pan wrote:
>>>> [...]
>>>> +&sdhci {
>>>> +	bus-width = <8>;
>>>> +	max-frequency = <200000000>;
>>>> +	mmc-hs200-1_8v;
>>> 
>>> Out of curiosity, does this board also support HS400? From a very 
>>> brief
>>> look this board seems quite similar to Rock 4 series boards, that do
>>> support HS400.
>> 
>> In a word, no, unfortunately.  In more detail, the Rockchip RK3566
>> and RK3568 SoCs support the eMMC modes up to and including HS200, but
>> not the HS400 mode.
> 
> The datasheet for RK3568 only mention HS200 mode, however, HS400 mode 
> is
> working in U-Boot after adjusting tap number for transmit clock [1].
> Linux may need similar adjustment to make HS400 mode work on RK3568.
> 
> RK3566 that this board use only support HS200, as specified in 
> datasheet.

Oh, that's very interesting, thanks for pointing it out!

What makes me a bit worried about enabling the undocumented HS400 mode
on the RK3568 is that neither the RK3568 Hardware Design Guide (HDG),
version 1.2, [2] mentions HS400 support.  I mean, the RK3568 datasheet
may be wrong about not mentioning HS400, but what are the chances for
the RK3568 HDG to also be wrong there?

In other words, maybe there are some hard-to-trigger hardware issues
in the RK3568 that made the HS400 mode, although actually present in
hardware, officially unsupported for the RK3568?  Maybe there's even
some non-public errata from Rockchip, who knows.

[1] 
https://source.denx.de/u-boot/u-boot/-/commit/5c053f3adc69eaf83645b5d44c6adbb2d49a3fa7
[2] https://dl.xkwy2018.com/downloads/RK3568/RK356X/Hardware/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
