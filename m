Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A63CCC52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 15:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtKlHI4NCVSNpgFyOutjoQC08sMAQ7f+WeJn2A8BTFs=; b=YN19hH13q0bgn1
	C+biouurwUs4xqnb/RD5DJq8owTbY9J168DQlUSFu7HxpTADG+dKz6wBrQEh6JAK8lR08VObYG+G5
	ThlEkRLiJTsEefpzLPBYlbWz8z/cmNOj6+K6MIEmbi2p6yKHa2Pl1exIKO/2xsmYW2HuxHln2Rxyk
	p9CtVrgeK2wT0Tn4k9OqDw++oNa4Gs0ozVw6grM8fUjGLja2qy6xp+ek6hjEc0QXiSfpW3fA0zxIv
	hRREyJy9rU/7Pp94YX2B71X8uy/JPwEowOHKROH8eF1SmiRTvUD58pUhvm5tUSbmK96LtkyzvW4ML
	M/p6Fiy5yOPBeRJfRWsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg4OH-00000001xXV-2c2L;
	Mon, 19 Aug 2024 15:33:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg4ND-00000001xKF-4Bej;
	Mon, 19 Aug 2024 15:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SLlYEWCuNlmtfOcJ9Ii4P0bORwGt2kKn5OsiFEYKC8U=; b=EvzxNyLMtlH+d7Xa6LNZf7A+Lm
	ndhIsplu7wPf4gzPcK6Pr8aYLs+D6kutBW5O6m0a014YMckw3ncm4kbPg5cTxZIKWEOearQ2/AHdP
	Tpo+oitGZ025mTMtGNGH4tpJs+G1c5T32yVHoHIs0ayiFaisUpwkCQdLVfCs5l1A3Lpl9HODNTxUH
	GBD8AXEbEWid620BRuSF0VADvqYk0o5g2n3bVD//UYi/UD8FH/XFPW4BUe847w3SBwibj77lXTXqR
	awguoMXxiTsuIW9Rxq6KUFD0K+pafrmYG8z91JS/23PdPXX7UdnfyzObT1giEaXT8mVOoTScEHCW2
	QTns7rqg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sg4N1-0001Ty-FW; Mon, 19 Aug 2024 17:32:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Steven Liu <steven.liu@rock-chips.com>
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: Add rk3576 pinctrl support
Date: Mon, 19 Aug 2024 17:32:52 +0200
Message-ID: <8982170.VV5PYv0bhD@diego>
In-Reply-To: <3025828.e9J7NaK4W3@trenzalore>
References: <20240814223217.3498-1-detlev.casanova@collabora.com>
 <5865327.fQeU5cv6pJ@diego> <3025828.e9J7NaK4W3@trenzalore>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_083248_057162_7A8D79B2 
X-CRM114-Status: GOOD (  33.81  )
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

Am Montag, 19. August 2024, 17:01:50 CEST schrieb Detlev Casanova:
> Hi Heiko,
> =

> On Thursday, 15 August 2024 10:05:08 EDT Heiko St=FCbner wrote:
> > Am Donnerstag, 15. August 2024, 00:30:39 CEST schrieb Detlev Casanova:
> > > From: Steven Liu <steven.liu@rock-chips.com>
> > > =

> > > Add support for the 5 rk3576 GPIO banks.
> > > =

> > > This also adds support for optionnal support of the sys-grf syscon,
> > =

> > only one "n" in optional
> > =

> > > used for i3c software controlled weak pull-up.
> > > =

> > > Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> > > [rebase, reword commit message]
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > > =

> > >  drivers/pinctrl/pinctrl-rockchip.c | 228 +++++++++++++++++++++++++++=
++
> > >  drivers/pinctrl/pinctrl-rockchip.h |   2 +
> > >  2 files changed, 230 insertions(+)
> > > =

> > > diff --git a/drivers/pinctrl/pinctrl-rockchip.c
> > > b/drivers/pinctrl/pinctrl-rockchip.c index 0eacaf10c640f..110ed81d650=
be
> > > 100644
> > > --- a/drivers/pinctrl/pinctrl-rockchip.c
> > > +++ b/drivers/pinctrl/pinctrl-rockchip.c
> [...]
> > > @@ -1234,6 +1263,20 @@ static int rockchip_set_mux(struct
> > > rockchip_pin_bank *bank, int pin, int mux)> =

> > >  	if (bank->recalced_mask & BIT(pin))
> > >  	=

> > >  		rockchip_get_recalced_mux(bank, pin, &reg, &bit, =

> &mask);
> > > =

> > > +	if (ctrl->type =3D=3D RK3576) {
> > > +		if ((bank->bank_num =3D=3D 0) && (pin >=3D RK_PB4) && (pin <=3D =

> RK_PB7))
> > > +			reg +=3D 0x1FF4; /* =

> GPIO0_IOC_GPIO0B_IOMUX_SEL_H */
> > =

> > 0x1ff4 please
> > =

> > > +		/* i3c0 weakpull controlled by software */
> > > +		if (((bank->bank_num =3D=3D 0) && (pin =3D=3D RK_PC5) && (mux =

> =3D=3D 0xb)) ||
> > > +		    ((bank->bank_num =3D=3D 1) && (pin =3D=3D RK_PD1) && (mux =

> =3D=3D 0xa)))
> > > +			regmap_update_bits(regmap_sys, 0x4, =

> 0xc000c0, 0xc000c0);
> > > +		/* i3c1 weakpull controlled by software */
> > > +		if (((bank->bank_num =3D=3D 2) && (pin =3D=3D RK_PA5) && (mux =

> =3D=3D 0xe)) ||
> > > +		    ((bank->bank_num =3D=3D 2) && (pin =3D=3D RK_PD6) && (mux =

> =3D=3D 0xc)) ||
> > > +		    ((bank->bank_num =3D=3D 3) && (pin =3D=3D RK_PD1) && (mux =

> =3D=3D 0xb)))
> > > +			regmap_update_bits(regmap_sys, 0x4, =

> 0x3000300, 0x3000300);
> > =

> > this setting belongs into drivers/soc/rockchip/grf.c .
> > =

> > You want to decide that the i3c controller has no say over the pull
> > settings, but instead pinctrl should always be in control.
> =

> So If i understand correctly, the GRF driver should contain a rk3576 spec=
ific =

> entry for default values where i3c0 and i3c1 are activated by default and=
 not =

> to be changed later then ?
> =

> I didnt realize that in this driver, the bits are only set to one, never =

> cleared. So it would make sens to have them set by the GRF driver.
> =

> Something like this should do it:
> =

> #define RK3576_SYSGRF_SOC_CON1		0x6004
> =

> static const struct rockchip_grf_value rk3576_defaults[] __initconst =3D {
> 	{ "i3c0 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 6) =

> },
> 	{ "i3c1 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 8) =


you're actually not configuring the "weak pull" itself, but only the mark
them as software-configured - via pinctrl. In the default setting, the i3c
controller seems to do some voodoo itself, but in the kernel we generally
want to keep control ourself, to not get surprised by the hardware doing
stuff.

So yes, that is exactly what we want.


When you do the grf-"driver" addition, you can also add the sdmmc/jtag thing
which seems to be in TOP_IOC_MISC_CON[1] ... sdmmc_force_jtag,
because we that most of the time causes issues with sd-cards down the
road.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
