Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6650C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifhYCu0HuuXazd9N0mKZCTUlgBSvEFURrsCDqup32QU=; b=qysh7KmqakVEJL
	koSn3pIYzxsgBntvIGFs1UKCKcsSUftgkmnoIJ4fJj2ASEniEh/qXFk1X1xopg4AraThOQL3aGpd+
	eKYIIWKcDfCiW5Nsmy8Hp58lZM8m0J0qzOWzNJrBrn2urIR3zdRmWZwCEq1TYrD+EZbxQOJxGGuw5
	DEsCR0InbT5MMFvYoTpvmTykinebtwEGPMQJuM/XjFgEYhdZ56qnCkbNIO4zKFmp5rUUuoll0dfjJ
	Bo1MKAGlXDBV9PGg9ysBOTTXpmB9C5DjOPu0L12uH5Il3eXuRxqpgbH+ujTSlw74gXVBDJTGEMwVF
	kIaXp86EkJU/kdeDx0PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawCa-0000000FiqI-2tcH;
	Mon, 05 Aug 2024 11:48:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sawC4-0000000Fijx-1De4;
	Mon, 05 Aug 2024 11:48:05 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sawBm-0001Hv-Lc; Mon, 05 Aug 2024 13:47:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Mon, 05 Aug 2024 13:47:45 +0200
Message-ID: <7941737.iedYuu7f5S@diego>
In-Reply-To: <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
 <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_044804_365887_2EF76F74 
X-CRM114-Status: GOOD (  25.02  )
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

Am Montag, 5. August 2024, 13:37:11 CEST schrieb Dragan Simic:
> On 2024-08-05 12:59, Yao Zi wrote:
> > On Sun, Aug 04, 2024 at 04:05:24PM +0200, Krzysztof Kozlowski wrote:
> >> On 04/08/2024 15:20, Yao Zi wrote:
> >> >>
> >> >>> +		compatible = "fixed-clock";
> >> >>> +		#clock-cells = <0>;
> >> >>> +		clock-frequency = <24000000>;
> >> >>> +		clock-output-names = "xin24m";
> >> >>> +	};
> >> >>> +
> >> >>> +	gic: interrupt-controller@fed01000 {
> >> >>
> >> >> Why this all is outside of SoC?
> >> >
> >> > Just as Heiko says, device tree for all other Rockchip SoCs don't have
> >> > a "soc" node. I didn't know why before but just follow the style.
> >> >
> >> > If you prefer add a soc node, I am willing to.
> >> 
> >> Surprising as usually we expect MMIO nodes being part of SoC to be 
> >> under
> >> soc@, but if that's Rockchip preference then fine.
> >> 
> > 
> > Okay, then I would leave it as is.
> > 
> > For the fixed-clock node, I think "xin24m: clock-24m { }" is okay and
> > follows the new rule?
> 
> I find "xin24m: clock-xin24m { }" better, because keeping the "xin24m"
> part in /sys listing(s), for example, can only be helpful.

I would second that :-) . Like on a number of boards we have for example
125MHz gmac clock generators ... with 2 gmacs, there are 2 of them.

I'm not sure the preferred name accounts for that?

Similarly we also keep the naming in the regulator node,
it's regulator-vcc3v3-somename {} instead of just regulator-3v3 {}.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
