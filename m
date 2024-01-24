Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82FCC46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 08:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qn7l+W0Ly08ZEIwnLfEjn2zifxdTM25teY9UL+IV5nk=; b=iHgH+X8kDJfI5P+MxeP1e/v9QX
	ebUeU60Z0ymCv+rkwQQVkS4O4YUI374xZKsfCb2sA0Mldrk55QSSI/Tyfe/RoravY+j0gTMTkBnCu
	YaFgETn58t9UXf9CPsMvOBLDeArYi1xMe3C+/7To6M9TAzLybE3o74cWcoYc8Y8iUAHIYTWZStOYm
	Bm6jiWpwy6EBODO4fch0VVe3QusxYTYodrtpGFRKDDG+BZNp6rNziyAPiTjHHgKrCzAhCRxSvXY3f
	zxMAes4cUmPjZgk8rqK5FaWAvspr66yqB060OmKFXQ0X1weG1xB9GlZYrgbo4hfskbMKg4VYC2gM1
	3qg6Xr7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYat-0020ZD-2m;
	Wed, 24 Jan 2024 08:26:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSYar-0020YM-0h
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 08:26:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYag-0006T1-8M; Wed, 24 Jan 2024 09:26:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYaf-0020x1-75; Wed, 24 Jan 2024 09:26:33 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rSYaf-006zXL-0P;
	Wed, 24 Jan 2024 09:26:33 +0100
Date: Wed, 24 Jan 2024 09:26:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Johan Jonker <jbx6244@yandex.com>
Cc: linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, kernel@pengutronix.de
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Message-ID: <5swqcqpc5zwa3bfhuoyjnymozyzy3lgurnbsurebybj2c7fck3@ycwk2ugo2ouf>
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
 <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
 <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
MIME-Version: 1.0
In-Reply-To: <210132de-a46b-4f9f-8546-0c36d8a34665@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_002645_250413_F2E29889 
X-CRM114-Status: GOOD (  24.39  )
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
Content-Type: multipart/mixed; boundary="===============6604553074594027421=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6604553074594027421==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g63cxjnywwxblftj"
Content-Disposition: inline


--g63cxjnywwxblftj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Johan,

On Sun, Jan 07, 2024 at 11:30:14AM +0100, Krzysztof Kozlowski wrote:
> On 07/01/2024 00:25, Uwe Kleine-K=F6nig wrote:
> > On Sat, Jan 06, 2024 at 10:25:10PM +0100, Johan Jonker wrote:
> >> On 1/6/24 18:10, Krzysztof Kozlowski wrote:
> >>> On 06/01/2024 15:26, Uwe Kleine-K=F6nig wrote:
> >>>> This fixes the dtbs_check error
> >>>>
> >>>> 	arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb: pwm@10280030: 'inte=
rrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
> >>>> 	from schema $id: http://devicetree.org/schemas/pwm/pwm-rockchip.yam=
l#
> >>>>
> >>>> in several device trees.
> >>>>
> >>>> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >>
> >>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> NAK
> >>
> >> There's a reason why this isn't implemented before:
> >>
> >> [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts property=
 <https://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a27219728=
52@gmail.com/#r>
> >>
> >> https://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a27219=
72852@gmail.com/
> >>
> >> [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588 <ht=
tps://lore.kernel.org/linux-rockchip/20220901135523.52151-1-sebastian.reich=
el@collabora.com/#r>
> >>
> >> https://lore.kernel.org/linux-rockchip/66b5b616-ae9f-a1aa-e2b5-450f570=
cfcdd@gmail.com/
> >>
> >> [PATCH v1 03/11] dt-bindings: pwm: rockchip: add rockchip,rk3128-pwm <=
https://lore.kernel.org/linux-rockchip/f5dd0ee4-d97e-d878-ffde-c06e9b233e38=
@gmail.com/>
> >>
> >> https://lore.kernel.org/linux-rockchip/946d8ac2-6ff2-093a-ad3c-aa755e0=
0d1dd@arm.com/
> >>
> >>
> >> On how to correctly model the DT with common interrupts , PWM and one =
shot as a sort of MFD etc there's no consensus yet.
> >>
> >> Leaf it as it is till someone made a working driver demo, so that the =
coder is free to model a DT solution that fits to him/her.
> >=20
> > Having the warnings until this happens is bad though. If describing the
> > irqs in the schema is considered wrong, we should remove the interrupts
> > properties from the device tree sources.
>=20
> I think the previous thread mixes bindings with driver. Does the
> hardware have interrupt? Yes? Add it to the bindings. No? Don't add it.
>=20
> However Johan's reply is saying something about driver, so how is it
> related?

Following Krzysztof's argumentation I'm inclined to apply the patch
despite Johan's objection as the irqs are already described in the
device trees and not having them in the binding only adds warnings to
the dt checks.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--g63cxjnywwxblftj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWwybgACgkQj4D7WH0S
/k5/Jgf/b/nfgkm/z6r4IycnlkEkHBd6KuwpTZCG/WLoFRBzIv5EGibepKaqeBPj
Afvp9Kw4vGeNU1fGvGgDII7i8+V4KK4QpIIB7/8dCH6G+u+rDmm+dnPcB0wtWKX7
I2H+tO1SEiegnpvn17AiqC2datTVeKuOatRlUQeNpfsc3QtNk5MJ0Gc2y8u4CC7s
A1A7GF3GJko2JF/5+lV5tS/uQORgyL6GIe3z1bEd+Nuzu0G3rMOZNTSdqnRigZRz
3E9nAKTWY6RHje4OFBe/qqfaH5enxziFkLNcR29GF5AHaVKiU0uDHBLHiyYiEi6G
kCiQix9wyz3lQM+EuhN3PZnhSyQmHg==
=beb2
-----END PGP SIGNATURE-----

--g63cxjnywwxblftj--


--===============6604553074594027421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6604553074594027421==--

