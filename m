Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D443EC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9z6r6BXYOISv8hOq44dgjFE6Vrf8IdimGKMK01QSjTo=; b=oHWqTceYYViFDO
	YWpLtM5YoZaRGmBspcBxDsSxDQhSrHwiezGytO0lF6Mw10eRo4yUrngMAXuv6bgUUpOL0O+DL5Bgr
	whc4IhwXdh5hnIy0e47eNZpQrVCCZk++Td34rlnk1DKu0P4MTG604tqHXOeC0XlsGkO7TRagrU7xw
	XWs7omhu6+U1lnbKG8WRmy0o7qVFlhLyWoAeDOJ1J8yOH6DrQ//na+REjIbr4EqW1s2kDABxotc7N
	W6T2GvjMFIAeyMRKCsCBouhhltDm2SIysip/tSplhn2HAWZSpWIfcTkNjJ/GFmIj0aLiyDueFScKV
	VJPtixiC26dbFT81YNJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKauI-00000008d33-1W7A;
	Fri, 21 Jun 2024 09:50:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKauE-00000008d16-2f7J;
	Fri, 21 Jun 2024 09:50:07 +0000
Received: from i5e8616cf.versanet.de ([94.134.22.207] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKatj-0000eb-JF; Fri, 21 Jun 2024 11:49:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>,
 Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
Date: Fri, 21 Jun 2024 11:49:33 +0200
Message-ID: <1772829.KUTt5R2Mg1@diego>
In-Reply-To: <5870442.3KgWVfgXFx@bagend>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <bd08c142ce6b32cd98014c875c7ccf3657c63f23.1718921174.git.daniel@makrotopia.org>
 <5870442.3KgWVfgXFx@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_025006_710934_063FF948 
X-CRM114-Status: GOOD (  16.02  )
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

Am Freitag, 21. Juni 2024, 11:36:45 CEST schrieb Diederik de Haas:
> On Friday, 21 June 2024 03:25:30 CEST Daniel Golle wrote:
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..57c8103500ea
> > 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -1855,6 +1855,15 @@ usb2phy1_otg: otg-port {
> >                 };
> >         };
> > 
> > +       rng: rng@fe388000 {
> > +               compatible = "rockchip,rk3568-rng";
> > +               reg = <0x0 0xfe388000 0x0 0x4000>;
> > +               clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
> > +               clock-names = "core", "ahb";
> > +               resets = <&cru SRST_TRNG_NS>;
> > +               reset-names = "reset";
> > +       };
> > +
> >         pinctrl: pinctrl {
> >                 compatible = "rockchip,rk3568-pinctrl";
> >                 rockchip,grf = <&grf>;
> > --
> 
> I had placed the node between ``sdhci: mmc@fe310000`` and
> ``i2s0_8ch: i2s@fe400000`` which I think is the proper order.

correct.
If a node has an address in its name, sort by that address.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
