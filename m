Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 742A5C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 23:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZgRqKgaYqtSdltdRjwN7Pp6ocW5Eth6tk4GymLrGeGU=; b=pvmwfesgMYJJq/8zKM878aX9K/
	N4X9C7fkCf71q4WHLGyJx+r66W+vViacXxESESKQU2ymozPluqSp4XPMfW00jYmZvZIDgxvsfBas/
	yGv8PnI9lnYILq4V012Q/jqCf9jSTdRUOj/93Ut8dcjR4EFqedFaIyXUZ6EQeds1SZYliohFZQCiO
	JcO4iAWK6dAVOqQexle9JmX7fd0satZWKoe2nS9V4CKtrbxe1kg96g5DQJC9qLA6mjpnFHd3RgGLx
	0rjVqmzM2TPcIE60Tz85VI7KJ0K9KLQdTZAnb7mr1QFxCGHWufBQmYGsTHuEfyh8w2dJiYePKfOer
	7ySo3PTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMG3N-0021zV-39;
	Sat, 06 Jan 2024 23:26:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMG3K-0021xk-02
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jan 2024 23:26:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rMG32-0005S0-BJ; Sun, 07 Jan 2024 00:25:48 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rMG31-000uBk-3e; Sun, 07 Jan 2024 00:25:47 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rMG31-0045QT-05;
	Sun, 07 Jan 2024 00:25:47 +0100
Date: Sun, 7 Jan 2024 00:25:41 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Johan Jonker <jbx6244@yandex.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
Message-ID: <cvvifoctmgdsgqfadqbhgywfw2ff57fz33w26hghf5kyo5j5sw@mj75xtvczr2h>
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
 <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
MIME-Version: 1.0
In-Reply-To: <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_152606_045566_CB97AAFD 
X-CRM114-Status: GOOD (  18.44  )
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
Content-Type: multipart/mixed; boundary="===============8346320638869021216=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8346320638869021216==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k6n65kljntfxlgu3"
Content-Disposition: inline


--k6n65kljntfxlgu3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sat, Jan 06, 2024 at 10:25:10PM +0100, Johan Jonker wrote:
> On 1/6/24 18:10, Krzysztof Kozlowski wrote:
> > On 06/01/2024 15:26, Uwe Kleine-K=F6nig wrote:
> >> This fixes the dtbs_check error
> >>
> >> 	arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb: pwm@10280030: 'interr=
upts' does not match any of the regexes: 'pinctrl-[0-9]+'
> >> 	from schema $id: http://devicetree.org/schemas/pwm/pwm-rockchip.yaml#
> >>
> >> in several device trees.
> >>
> >> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
>=20
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>=20
> NAK
>=20
> There's a reason why this isn't implemented before:
>=20
> [RFC PATCH v1 1/2] dt-bindings: pwm: rockchip: add interrupts property <h=
ttps://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a2721972852@=
gmail.com/#r>
>=20
> https://lore.kernel.org/linux-rockchip/ed3df2c8-ffb5-1723-0ed7-3a27219728=
52@gmail.com/
>=20
> [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588 <https=
://lore.kernel.org/linux-rockchip/20220901135523.52151-1-sebastian.reichel@=
collabora.com/#r>
>=20
> https://lore.kernel.org/linux-rockchip/66b5b616-ae9f-a1aa-e2b5-450f570cfc=
dd@gmail.com/
>=20
> [PATCH v1 03/11] dt-bindings: pwm: rockchip: add rockchip,rk3128-pwm <htt=
ps://lore.kernel.org/linux-rockchip/f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gm=
ail.com/>
>=20
> https://lore.kernel.org/linux-rockchip/946d8ac2-6ff2-093a-ad3c-aa755e00d1=
dd@arm.com/
>=20
>=20
> On how to correctly model the DT with common interrupts , PWM and one sho=
t as a sort of MFD etc there's no consensus yet.
>=20
> Leaf it as it is till someone made a working driver demo, so that the cod=
er is free to model a DT solution that fits to him/her.

Having the warnings until this happens is bad though. If describing the
irqs in the schema is considered wrong, we should remove the interrupts
properties from the device tree sources.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--k6n65kljntfxlgu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWZ4W0ACgkQj4D7WH0S
/k7tKAgAtAf2QMmreY13aVdggwzkDRejn5LlPtH9i75yOhD82+fHrQlGV1FAH6/j
MGO96OT4P/wZfxxjQjWT4bQsp657BXs8decOHx099HpWSwF9n5ZDiHSHd7ExmbyL
pg73mDSpDtcemlmI75H2VPF1OvTk/rPl6F2b3FlDgewcTqir5ojqk6ov3yCoOasl
WIJ2vwkwkvGqqQc6npmqZIYanWBJlMvK3Mbmeg/RkWQgo2XHowhSNnfx82I80Dky
VWYme/woR3T0MDbOBG6eCs2wxILhaePXRVokg/qiSDuLSC7W4Bn1O6sfe9zYxGnz
/Pwr+6Hl/fYCYPGM8Iq7UlFNRf/HYw==
=pwCa
-----END PGP SIGNATURE-----

--k6n65kljntfxlgu3--


--===============8346320638869021216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8346320638869021216==--

