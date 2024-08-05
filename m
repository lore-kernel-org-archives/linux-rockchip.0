Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B8AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2Xhr4oLzAl/EWvneR5eAhzRX23YZA0xZdxeBlqxh7A=; b=is1Q7vuwTMlTVeBXZCkOluZvrJ
	CnNRB7LEgDoO6BNZyEY/mC/WxZQCepQBpRvOphkaMsMz1YMh1k6BRZ5yDNX55FAyqfK1me8LgZvOl
	K/w/8BG0xWcmtG75ly6qhmf7/q7G7iOLq70sHnRZNnMoK8QxuyfZ+FqNzAGnkD5ZDa3pHj5Ce/bMl
	168J9rwxC/i7RhHJnYSoZXw1s1eqCbmrUUUP6Dba9wSLtC2Jln68idWY4Llb4VKGusQyUsKq2owX7
	q0lhjIxVfdqTi3h+N8QvgGvo1r6G4ijZ8Qet3MEnJubK5lHvEYfs1aceFBPofJK2pYWDlgJ2/XLEh
	GIlt216A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saw2A-0000000FhfF-3iii;
	Mon, 05 Aug 2024 11:37:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saw1d-0000000FhW6-2vBh;
	Mon, 05 Aug 2024 11:37:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722857833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eXUv4vhwwDrlK6OrMkKD/adJ3fBSeeUSyzbCZQ61tL0=;
	b=qUUlxRPT1IMSC952YYeidmM0KBYMvEOIsbrWjX5Wcam1Tqn5KVnFKpwl8kQOgxOCNf+9fx
	9WLIi3gt00vx7CwV0DbX2hhKD2/5mp3ir3ZOmOHaJ4c58zU5kLXPWjNpnyxsRtlnvi4u/7
	WOrr4TD7UFyOEH3loM4VszSqwDGpAVOAwdgwD6fWnzOv1sRs+Dru7PRIW9byugYmu5pgVG
	3I09LAldrwTsabdPnpYCVcgJ+eLOWKhToSd0N94QN/YwU39dCX5wjobRLuloLLMtT1vOFY
	7Pp89kj2kr/0co2oV38y7Di/ruP30FVWjRab2fOwVxzjFQQRK4qtsK99Hdl4vg==
Date: Mon, 05 Aug 2024 13:37:11 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn
 <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman
 <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
In-Reply-To: <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
 <56bd1478-ce8c-4c1d-ab16-afe4ad462bf5@kernel.org>
 <Zq-AFWYaqu7zGuz-@ziyaolaptop.my.domain>
 <b967ab05-dd0e-4fc5-bee6-ad7639e47bfb@kernel.org>
 <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
Message-ID: <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_043718_230686_F830CC92 
X-CRM114-Status: GOOD (  15.38  )
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

On 2024-08-05 12:59, Yao Zi wrote:
> On Sun, Aug 04, 2024 at 04:05:24PM +0200, Krzysztof Kozlowski wrote:
>> On 04/08/2024 15:20, Yao Zi wrote:
>> >>
>> >>> +		compatible = "fixed-clock";
>> >>> +		#clock-cells = <0>;
>> >>> +		clock-frequency = <24000000>;
>> >>> +		clock-output-names = "xin24m";
>> >>> +	};
>> >>> +
>> >>> +	gic: interrupt-controller@fed01000 {
>> >>
>> >> Why this all is outside of SoC?
>> >
>> > Just as Heiko says, device tree for all other Rockchip SoCs don't have
>> > a "soc" node. I didn't know why before but just follow the style.
>> >
>> > If you prefer add a soc node, I am willing to.
>> 
>> Surprising as usually we expect MMIO nodes being part of SoC to be 
>> under
>> soc@, but if that's Rockchip preference then fine.
>> 
> 
> Okay, then I would leave it as is.
> 
> For the fixed-clock node, I think "xin24m: clock-24m { }" is okay and
> follows the new rule?

I find "xin24m: clock-xin24m { }" better, because keeping the "xin24m"
part in /sys listing(s), for example, can only be helpful.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
