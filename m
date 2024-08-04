Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BDB1C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mnq/MLXmCzDVvJSP+NpgYEpsy1Kvre9U2QeNAdGET5M=; b=dNf725sPY3Li04
	e1Tqs2vc57esjDG5/a1biE82YnqsHEaD5GPuC12+kT0/4O1M73VEZZVRzVWf/KyWgWPayrVuaCegW
	xlVszbTay5XS2Q4gbNKxXl5ZfhFsszyMX2vsw4NDdC8hC3pU+eBP15S6MfmOeTwaO2r6TfHUMvL+5
	cjOneEugETatvSiYopcz5s+XcN+iIzeuNRRR9TM9w7YDBmtSwHk9rClP4oS2/VWfP7HGdS7KWMDZ7
	XJ7BCYcb1HzDhR7phHNjH9u1E0t+CYfGY5aeOv6dsdAZxcOy+HnXDtAc2D4tgXJcXHeBqTtEz5olt
	R+Dmg7n72A1kYAHLd7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saago-0000000DGed-3kSM;
	Sun, 04 Aug 2024 12:50:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saagI-0000000DGWv-3UvI;
	Sun, 04 Aug 2024 12:49:52 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1saafy-0008En-TS; Sun, 04 Aug 2024 14:49:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Sun, 04 Aug 2024 14:49:28 +0200
Message-ID: <10507028.U7f9L36N0a@diego>
In-Reply-To: <56bd1478-ce8c-4c1d-ab16-afe4ad462bf5@kernel.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
 <56bd1478-ce8c-4c1d-ab16-afe4ad462bf5@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_054950_910996_9EA4CDB2 
X-CRM114-Status: GOOD (  16.16  )
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

Hi Krzysztof,

Am Sonntag, 4. August 2024, 12:05:11 CEST schrieb Krzysztof Kozlowski:
> On 03/08/2024 14:55, Yao Zi wrote:
> > This initial device tree describes CPU, interrupts and UART on the chip
> > and is able to boot into basic kernel with only UART. Cache information
> > is omitted for now as there is no precise documentation. Support for
> > other features will be added later.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---

> > +		compatible = "fixed-clock";
> > +		#clock-cells = <0>;
> > +		clock-frequency = <24000000>;
> > +		clock-output-names = "xin24m";
> > +	};
> > +
> > +	gic: interrupt-controller@fed01000 {
> 
> Why this all is outside of SoC?

I guess you mean outside of a "soc {}" node?

Here the rk3528 simply follows all other Rockchip SoCs :-) .

Digging into the history, the first rk3066a and initial rk3288 submission
did use a soc {} node, which later got removed as suggested by arm-soc
maintainers at the time [0].

I guess that changed since then?


Heiko


[0] https://lore.kernel.org/linux-arm-kernel/20140716005528.GA26207@quad.lixom.net/
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c3030d30d9c99c057b5ddfa289cffa637a2775f5



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
