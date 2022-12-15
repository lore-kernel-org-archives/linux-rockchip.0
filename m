Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865ADC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ol5iE7Mp3UgYaZ96KY74OpMvWx58qGKtXHOfLvRfyh4=; b=OoCl6VOksHW9up13Qeeg7VI1VC
	w0pkGgYKC9aIcvqcuPskdHBw2n2ItxJWtcAY0GqUYOljQ13gmplvaPIBo0R+CU+KF2HieQjEkgbKG
	xIafhqIPccSzkWEj4pPIwD2DZgV5BAndASm0xK8uxoCDHwSlEQpkAEkpox2bqqMDqp9DKEXZtfVWv
	ViR8zxqBf2cbPGDZqpm70soimvgLY+LcWmerSvj6kSqo/iUp6t64RcfRXa0pFVAONBvHHM8x4ldpa
	LYKEPNZm9xQnxC4v/Etl6NQA0XZys6tjLkm6Q+hDon6DiNwmLxPSnGLa4ndBdtUcNbOgAua/TRZ5s
	A9aOXO2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5sna-00AnQc-Bh; Thu, 15 Dec 2022 18:17:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5snX-00AnNb-P7
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:17:37 +0000
Received: from mercury (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 67B746602C74;
	Thu, 15 Dec 2022 18:17:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671128249;
	bh=tPqBuypDEG2gjIdV3HpZSKNOgRo5PoSbRevw1WTLn78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UIm+k7b1NTSw75LADYumnmVxlGYJ3gT0q5sLfS8MTD8/KFE+whE2jQY4H2YK7tbGQ
	 /13a30uFEPFLoWuhueOdTmmHvBajDYaQZZUsJDEqPle/KM+JLONk2bQArF+pXGT0Cz
	 a60RjFhXFDbsZUc0YLNio4Dxm94tCTI/60XQ4IPU4eEidWb61g9KgPhWRSVcijwW/W
	 MRpw6PO9kUlqk6z13Q6RMKmt6MaFYjQlQksF0ntnyiAdWoJd2RWofOavatnwkfLZcI
	 ZPZJeKIpnVqvweL283MvCSmGXcUJanGwFqI1ey5Juou+3ZXfhxQ2bGWJubukNANLHK
	 izie65qAzcXlQ==
Received: by mercury (Postfix, from userid 1000)
	id DD0161060F45; Thu, 15 Dec 2022 19:17:26 +0100 (CET)
Date: Thu, 15 Dec 2022 19:17:26 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv6 0/7] Initial rk3588 DT
Message-ID: <20221215181726.75qj6euoy3zgfbre@mercury.elektranox.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221215171828.GA153741-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221215171828.GA153741-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_101736_048303_9009CEB2 
X-CRM114-Status: GOOD (  26.19  )
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
Content-Type: multipart/mixed; boundary="===============6194460290765001006=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6194460290765001006==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6nvfnquhkway6343"
Content-Disposition: inline


--6nvfnquhkway6343
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Dec 15, 2022 at 11:18:28AM -0600, Rob Herring wrote:
> On Wed, Dec 14, 2022 at 07:22:40PM +0100, Sebastian Reichel wrote:
> > Hi,
> >=20
> > This adds initial rk3588(s) DT including two different board
> > devicetrees. All required driver changes have been merged into
> > the respective maintainer trees. There is one warning from the
> > DT check:
> >=20
> > $ make CHECK_DTBS=3Dy rockchip/rk3588-evb1-v10.dtb rockchip/rk3588s-roc=
k-5a.dtb
> >   DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
> > /home/sre/src/collabora/rode/linux-rockchip-upstream/arch/arm64/boot/dt=
s/rockchip/rk3588-evb1-v10.dtb:
> >     ethernet@fe1c0000: Unevaluated properties are not allowed ('interru=
pt-names', 'interrupts', 'mdio',
> >     'power-domains', 'reg', 'reset-names', 'resets', 'rx-queues-config'=
, 'snps,axi-config', 'snps,mixed-burst',
> >     'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'stmmac-axi=
-config', 'tx-queues-config' were unexpected)
> > 	From schema: /home/sre/src/collabora/rode/linux-rockchip-upstream/Docu=
mentation/devicetree/bindings/net/rockchip-dwmac.yaml
> >=20
> > This is for gmac1. gmac0 has the same properties and there is no warnin=
g. Also
> > rk3588s (and thus the Rock 5A) has only gmac1 and there is no warning f=
or the
> > Rock 5A. It looks like for some reason the referenced "snps,dwmac.yaml#"
> > is only checked for the first node. I think it's a bug in dt-validate.
> > Also the same issue can be seen with rk356x.
>=20
> I believe the issue is fixed in v2022.12. I didn't reproduce it. The=20
> problem is with disabled nodes. In some cases 'required' failing in turn=
=20
> triggers unevaluated property failures. So we now filter out both=20
> errors. But that's still not enough in some cases, so the only thing=20
> that works is just removing disabled nodes before validation. That's not=
=20
> great if it is something where the bootloader enables the node and also=
=20
> means whomever enables a block for a board gets to fix the issues.

Indeed, I can no longer reproduce this error with 2022.12
(previously I was on dt-schema 2022.09). Thanks for looking into it.

> BTW, I do also see this warning:
>=20
> arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:0:0: /i2c@feaa0000/rtc@5=
1: failed to match any schema with compatible: ['haoyu,hym8563']

I suppose you are missing:

https://git.kernel.org/pub/scm/linux/kernel/git/abelloni/linux.git/commit/?=
id=3Dc69bffe199270ce001d5764985a8e414c7e05fee

-- Sebastian

--6nvfnquhkway6343
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmObZKwACgkQ2O7X88g7
+ppQDA//VDi6HjP0j7Bb1Bx7v4JlMCRvVcD2toqQelyKcat50wUVFt0Ps6stMusT
VQjGpeacT6XC2NG0eqx9J7HTOpE10SyIQo30Xuq6k5rlihdMMNuiWNEtdWtLHVDq
Lglz/d6qqeooRBs7YT0rD0Ao+6ssZBkOJ6MaE89FCBp3dFgIZC1gH55W4dz6pade
+hfnBWAIPEx1PC3Ny8ltMTrgEnBV3zh1lwygFhQgLI7Ka0IvGiDeOAinhoPUQdLQ
Ffdal/IvZ/fPOFflZRcBKithpJWBouiM88JBN5ygN1bv18PwVdSUnPpgWJUEPmby
j8rDoTdLZB5vqwP52Tbt63Mh7DcvHhCVQ+elyVniai5uaahSkBhwgM8ksKlxgRlh
HVoDtnozZzsgX7Ol5Li9YUmVlzFFDaxOdhmRkThUy/djMfT75nsBwvgbYmeYooyY
+urxNvSfFVj5zosTLUKBUIW1+hKoNkRUkeKGkpdFv2/AWmcPspspJKezaJDd7tXI
0TFQTuzgGKA4pyktH+8v328l0zAXLB8gkMUAyInlHQ7a6tAxswJ/Loe0OmxxndLO
0vx9L7w5eQmjAlMPDEbABI87ePYM/zP5zNUQdufQut21LR6fiHMAfmUnGOczp+p0
STycbf+LbaAEHZEXEnB92vA73mXigKliApB9rvJjJ4n5Vdi5KbQ=
=AGbZ
-----END PGP SIGNATURE-----

--6nvfnquhkway6343--


--===============6194460290765001006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6194460290765001006==--

