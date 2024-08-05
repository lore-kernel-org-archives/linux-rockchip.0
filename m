Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B0DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnJU4MypjT5oz14AOmFv4Cmf4HRrq8o+TvHONShkPBM=; b=ifQK1MZQUGYttk
	O1OeRA1zdzrZ0khL2Ec7S8JgY1QE3MuzDmJ1mt5husDLoKmDOHbzwaFLuOBq7EZafyeO/2ngPIz3f
	zoxEJqtpBvfLcxW5O6bzpJ4miF4VAWya8xwdN5fzaG+3rCJv+w+Nrf4uyh+ZQLssSS7P/thKGYISr
	oDdNYL8a/Aqa+0L1cK438Unf3Styg66IMMpA7drFXHkNjPkwXRD9FFiyJA0ACdyXT16wNQjxPBNHw
	gSgUMmDJ94EK/DQYBC/Yjtb8mddkHNDsypsiMyxxvWFj23+JWTJgeGOEUcWXZASKk8dE6ffN/KDMq
	PU4CRwpwbw1p1AQTyP8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Uu-0000000GUiB-0xT1;
	Mon, 05 Aug 2024 16:23:48 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0UA-0000000GUY6-48Dz;
	Mon, 05 Aug 2024 16:23:05 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9CCCD40C91;
	Mon,  5 Aug 2024 18:22:57 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qDXlvlnU29eC; Mon,  5 Aug 2024 18:22:56 +0200 (CEST)
Date: Tue, 6 Aug 2024 00:22:15 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722874976; bh=6qIlI/ZA8suC3l92XJ5goqxx350QpUDQOkwCZyfLITo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UelkwFNfMZ5qaYl1Ax+fpc0ktTmc1h+H2/PvIEsUSB33ul2dVsoBrgWw2kfifxk+a
	 ZNapY89XNiZFMyDuB/iJ/gOr53fmVm9WUJHtok7zl6dq8rSaDkqXgUYv4W0OcXfL2J
	 L+gEybNbuYS0834qzBjTRxbXwSJdh8gSYVCcvfPSF2lHxU/Cl0fployJ+Ij2CXfzz/
	 AUryQu2DN3o+Rq72zca20Fb2wP9QH1ZnPpCRME8Srt0maxdrvD3/uEDhIR5knSprg8
	 WAwyvBfOIME16f7syGH7kCclq/Qb4xNSYQ1hIfjq33TEOzZWnhQcoWCT+2g0GZ/Gta
	 Odf00auRkCe/g==
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Message-ID: <ZrD8N7_tYAiKCg-C@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
 <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org>
 <7941737.iedYuu7f5S@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7941737.iedYuu7f5S@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092303_457811_0D64D775 
X-CRM114-Status: GOOD (  27.07  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 05, 2024 at 01:47:45PM +0200, Heiko St=FCbner wrote:
> Am Montag, 5. August 2024, 13:37:11 CEST schrieb Dragan Simic:
> > On 2024-08-05 12:59, Yao Zi wrote:
> > > On Sun, Aug 04, 2024 at 04:05:24PM +0200, Krzysztof Kozlowski wrote:
> > >> On 04/08/2024 15:20, Yao Zi wrote:
> > >> >>
> > >> >>> +		compatible =3D "fixed-clock";
> > >> >>> +		#clock-cells =3D <0>;
> > >> >>> +		clock-frequency =3D <24000000>;
> > >> >>> +		clock-output-names =3D "xin24m";
> > >> >>> +	};
> > >> >>> +
> > >> >>> +	gic: interrupt-controller@fed01000 {
> > >> >>
> > >> >> Why this all is outside of SoC?
> > >> >
> > >> > Just as Heiko says, device tree for all other Rockchip SoCs don't =
have
> > >> > a "soc" node. I didn't know why before but just follow the style.
> > >> >
> > >> > If you prefer add a soc node, I am willing to.
> > >> =

> > >> Surprising as usually we expect MMIO nodes being part of SoC to be =

> > >> under
> > >> soc@, but if that's Rockchip preference then fine.
> > >> =

> > > =

> > > Okay, then I would leave it as is.
> > > =

> > > For the fixed-clock node, I think "xin24m: clock-24m { }" is okay and
> > > follows the new rule?
> > =

> > I find "xin24m: clock-xin24m { }" better, because keeping the "xin24m"
> > part in /sys listing(s), for example, can only be helpful.
> =

> I would second that :-) . Like on a number of boards we have for example
> 125MHz gmac clock generators ... with 2 gmacs, there are 2 of them.
> =

> I'm not sure the preferred name accounts for that?
> =

> Similarly we also keep the naming in the regulator node,
> it's regulator-vcc3v3-somename {} instead of just regulator-3v3 {}.
> =


"clock-xin24m" wouldn't be more descriptive than "clock-24m" and there
are usually only a few fixed clocks in dt, thus finding corresponding
definition isn't a problem I think.

For the gmac case, Krzysztof, do you think something like
"clock-125m-gmac1" is acceptable, just like what has been done for
regulators?

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
