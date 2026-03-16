Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4C7F53D7E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 17:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EEsUOQ5ktWOVgN/sgEJUxt8Ro3GMAR3PksDiWlFI8Uk=; b=T5/mI7Q6hmkyiE/dH3M0p98xLK
	dsonVbmHUl8MflcbMsb1zu2JhFAmOeBMDNWrfbNJWMd0/zaiqPrNcPp8qxWh6Sq5D0Wi8M6kERxQj
	j4df49XZsw8SuxT6MmEh5/H0v//rlftAh9tNlCjos/eeoU1DjMab0LmHUsUYesNAVvmDrzyTq1E9b
	08VrokCbhP3lT2gwwBeKu6TMepLU5dv6zzx7LsJJxuTc8JT9aT2T+9dbbfQ8oInw+wNFtanroNSko
	Y1zFQ47QdI6Zb+1wd3tEh+omy4VwxJ9LPaxlerseGnje+hvaKasnkf3OnG+9LgasSrSdTano5Fomr
	8Ex6iUnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2C2B-00000004bnl-32pP;
	Mon, 16 Mar 2026 17:47:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2C29-00000004bnE-2mFt;
	Mon, 16 Mar 2026 17:47:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E6CD96012B;
	Mon, 16 Mar 2026 17:47:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69BFCC19421;
	Mon, 16 Mar 2026 17:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773683236;
	bh=dnDuwXGZ1btx0I9ScP/HNHG9vbVZo5zMOWlpux0W4WY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sRBXa2ovvjPnWmoWwcUZlUb/RfNIKCBxJYUgGqWYE+olH5e/05xmKOMn3PMn3Bxq8
	 Sm0RPOKtJgrFA4Nkna/SfM63GmGOjUcqhNOYPE5XT8hDbTrlYcVkWZ5EzY+jprOrRV
	 l4Viqa7XAxFuU+rATnPUZYB48xFh6rMSI83W27iHNJjWLHREjypaENdzy/QzPBAdK3
	 qOABTEsGsrgj3ajoNm0Gg6WLlNHu9IvYa+UNT73TeY7utnqPEN+vZG0sDR9BaOi8QA
	 0XJU1kq/TxMTtEfK9n13gvkI74v1W4TiIWlCMY0nyY+YEx6zNL3h/lJ3umTM3hkX5Y
	 cEen2C1izEUvA==
Date: Mon, 16 Mar 2026 17:47:06 +0000
From: Mark Brown <broonie@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>, Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Shree Ramamoorthy <s-ramamoorthy@ti.com>,
	Jerome Neanne <jerome.neanne@baylibre.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Joseph Chen <chenjh@rock-chips.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
	Lubomir Rintel <lkundrak@v3.sk>, Julien Panis <jpanis@baylibre.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Alexander Kurz <akurz@blala.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 04/15] dt-bindings: regulator: act8x: Use generic
 power-controller schema
Message-ID: <fd6b7103-2a72-4cae-8e92-44ee9586a953@sirena.org.uk>
References: <20260316-power-controller-v1-0-92c80e5e1744@nxp.com>
 <20260316-power-controller-v1-4-92c80e5e1744@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20260316-power-controller-v1-4-92c80e5e1744@nxp.com>
X-Cookie: Excellent day to have a rotten day.
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
Content-Type: multipart/mixed; boundary="===============4278898580746846370=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4278898580746846370==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xItI8zXtmIATo4FR"
Content-Disposition: inline


--xItI8zXtmIATo4FR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2026 at 10:47:39PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>=20
> Convert the binding to use the generic power-controller schema instead by
> referencing power-controller.yaml and removing the local
> `system-power-controller` property definition.

Acked-by: Mark Brown <broonie@kernel.org>

--xItI8zXtmIATo4FR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm4QhoACgkQJNaLcl1U
h9ACOQf+JqpHS2vvWDBGmTprNgfkrZ9Q44lgSNbWZMnktfJE13q21QKHK5kSnDrO
X40ZRgtewonmiGVIcifBtNjgoqkmY98pJvPnhgJjgP3fmBlFL/WCxYwUjF/JQCkg
LrlVyB6IdKDWWAmUUVULvowVdo1TyiYZ2dlrvVwjGuMZJDgRFAz85fobiqkW9hIb
5Z6Wdof4lcERkIE0dsbXctCTU4GJTupsC6duor8XTKC+wIL9sx02un+kINcyGwnP
FwEkgvpfw9H/r9/jBuxTEQh7QcJPvlx36Ub2mFuBlF3OCJApRlm+j+vz9btoTkX4
XZN3mowbqzv9xO9cSelYbJCV/FMs2Q==
=SWwQ
-----END PGP SIGNATURE-----

--xItI8zXtmIATo4FR--


--===============4278898580746846370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4278898580746846370==--

