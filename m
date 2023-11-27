Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E36C0755A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 11:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7iXm+cCQ+zEbaZi+b77+NsrUC5RW3KlbzZWsXh8ubY=; b=Bxm4fit1PeLbyR
	wwOCX0GBBjclzGM+BiO8gbDCXxYkRSOLLJdI0vdTywgIhyTN1/H+fREr65C/tkOw6YYmecd0WAbxf
	v7/re+w5meUc4pztyaOMA+ZVWDeAUTVEQdSkZ0hsi4JvVkhTaNNwR4n1HjrSsoz1ppyya2IaYhr04
	wJdY81Qk7IrXVrxAgGjMal6GhnNatif+Lh3bl6ylWIJ+wHpgI+S1pdX4ToShisdicbgTUSlSaFfqq
	3RzLCm6CQi3pjMuByCS9uf5muSb3r9alTRUYnqFd0OIBiBHF2r0Q4B8/wcqRlM/psJmntbZufdTes
	JWOvb+B0OfGsnU06KEMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZVK-002Aq0-0b;
	Mon, 27 Nov 2023 11:10:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7ZVH-002ApX-2R;
	Mon, 27 Nov 2023 11:10:16 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7ZVC-0000tQ-Cc; Mon, 27 Nov 2023 12:10:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Tim Lunn <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 12:10:09 +0100
Message-ID: <5119280.687JKscXgg@diego>
In-Reply-To: <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
References: <20231122122232.952696-1-tim@feathertop.org> <4234862.3Lj2Plt8kZ@diego>
 <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_031015_798682_B6E0F009 
X-CRM114-Status: GOOD (  22.60  )
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

Am Montag, 27. November 2023, 11:55:21 CET schrieb Dragan Simic:
> On 2023-11-27 11:50, Heiko St=FCbner wrote:
> > Am Montag, 27. November 2023, 11:43:05 CET schrieb Dragan Simic:
> >> On 2023-11-27 11:29, Heiko St=FCbner wrote:
> >> > Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
> >> >> On 11/27/23 20:45, Heiko St=FCbner wrote:
> >> >>> It's different for mmc, where this naming scheme isn't normally us=
ed,
> >> >>> so we (mostly?) migrated to them being in the board-specific alias
> >> >>> section.
> >> >>
> >> >> What about the ethernet alias, the MAC is part of the SoC, should t=
his
> >> >> stay as it is in patch 6 from this series, or move to board dtsi?
> >> >
> >> > I think judging from everything above (and the other modern boards
> >> > like all rk3588 ones) the ethernet0 alias should move to the board
> >> > dts(i).
> >> >
> >> > The gmac generally does not have this numbering scheme like i2c or
> >> > uarts.
> >> =

> >> Please note there's already an Ethernet alias defined in rk3399.dtsi,
> >> even despite not all RK3399-based devices using the GMAC, for example
> >> the Pinebook Pro.  Perhaps that's something to be fixed as well.
> > =

> > possibly :-)
> > =

> > I guess for starters we shouldn't introduce new instances for it.
> =

> Totally agreed.
> =

> > All the newer SoCs already have their ethernet alias in the board dts
> > (rk356x, rk3568) which came after we also moved the mmc aliases.
> =

> The base rk3399.dtsi file and the RK3399-based board/device dts(i) files =

> are fine when it comes to the mmc aliases.  I can move forward and clean =

> up the Ethernet alias as well, if you agree?

Yep, we moved mmc aliases a while ago.

So moving the ethernet sounds like the right way forward. So if you have
the time for it, then I'd be quite happy to take patches for that change.


Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
