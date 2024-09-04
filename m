Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F0CCA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 07:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b7+KVPGVcETvlX9qgZOoAAv8Rx5/3p4V3mMu7B4Wgyc=; b=ucpSIAkA3HyhfN17YSQ+mlo/8W
	YWXNYRgToJvUyqbbK7mr+qm5DeKhg6w2jiCF96tto3Mdk2xlfOa8n72CsQiXPhBrSLWokOBfN1mH3
	LR89sReI5iOtTCd0mZfdJVFfR5TomfgFDrrBHCWuprezEJAR2VBqVB0uo5gFrqJmYfi9qDPv0+wjD
	lcP5NHJ3+GRGRAMz/xl23tbz2NcgDTPn5fUXgn9SaRAUojb1PUVHUU4O1QGjtBIR1dvPVq8S7Vhq+
	MNGpD3IC9Nmp4Rn8i3V8RqL3UnCTzHbkcnTHszuZeDOj8SXObW8nJGIULV+oYv/o/OWClUN/krRsS
	OYgTy4HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slkF1-000000039DA-2jwk;
	Wed, 04 Sep 2024 07:15:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sljFI-00000002zgy-3Q70
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 06:12:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sljEw-0000oC-JK; Wed, 04 Sep 2024 08:11:38 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sljEt-005NS9-6K; Wed, 04 Sep 2024 08:11:35 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id BA7E7331CC9;
	Wed, 04 Sep 2024 06:11:34 +0000 (UTC)
Date: Wed, 4 Sep 2024 08:11:33 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org, Simon Horman <horms@kernel.org>, 
	linux-can@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next v4 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
Message-ID: <20240904-impressive-centipede-of-science-ae5cbd-mkl@pengutronix.de>
References: <20240903-rockchip-canfd-v4-1-1dc3f3f32856@pengutronix.de>
 <202409040039.TNDhtsSe-lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202409040039.TNDhtsSe-lkp@intel.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_231200_867819_341AE049 
X-CRM114-Status: GOOD (  17.14  )
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
Content-Type: multipart/mixed; boundary="===============6513403554424504773=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6513403554424504773==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lg5lfpbtzitx4wuf"
Content-Disposition: inline


--lg5lfpbtzitx4wuf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04.09.2024 01:09:26, kernel test robot wrote:
> kernel test robot noticed the following build warnings:
>=20
> [auto build test WARNING on da4f3b72c8831975a06eca7e1c27392726f54d20]
>=20
> url:    https://github.com/intel-lab-lkp/linux/commits/Marc-Kleine-Budde/=
dt-bindings-can-rockchip_canfd-add-rockchip-CAN-FD-controller/20240903-1732=
43
> base:   da4f3b72c8831975a06eca7e1c27392726f54d20
> patch link:    https://lore.kernel.org/r/20240903-rockchip-canfd-v4-1-1dc=
3f3f32856%40pengutronix.de
> patch subject: [PATCH can-next v4 01/20] dt-bindings: can: rockchip_canfd=
: add rockchip CAN-FD controller
> reproduce: (https://download.01.org/0day-ci/archive/20240904/202409040039=
=2ETNDhtsSe-lkp@intel.com/reproduce)
>=20
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202409040039.TNDhtsSe-lkp=
@intel.com/
>=20
> All warnings (new ones prefixed by >>):

Good bot!

I had already found the issue myself and fixed it in my tree. Will send
a new series today.

>=20
>    Warning: Documentation/devicetree/bindings/regulator/siliconmitus,sm57=
03-regulator.yaml references a file that doesn't exist: Documentation/devic=
etree/bindings/mfd/siliconmitus,sm5703.yaml
>    Warning: Documentation/hwmon/g762.rst references a file that doesn't e=
xist: Documentation/devicetree/bindings/hwmon/g762.txt
>    Warning: MAINTAINERS references a file that doesn't exist: Documentati=
on/devicetree/bindings/reserved-memory/qcom
>    Warning: MAINTAINERS references a file that doesn't exist: Documentati=
on/devicetree/bindings/display/exynos/
>    Warning: MAINTAINERS references a file that doesn't exist: Documentati=
on/devicetree/bindings/misc/fsl,qoriq-mc.txt
> >> Warning: MAINTAINERS references a file that doesn't exist: Documentati=
on/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml
>    Using alabaster theme

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--lg5lfpbtzitx4wuf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbX+hEACgkQKDiiPnot
vG/ddAf6AqyRDaYjUbvLjXaEMxYi3esfREOpspdABp9dMmJ/OImBDH2FzAgBhH42
YIBrbQ2XL2zOIqiZrM9+jyAAbUbSrEjUnyN/S4ZNK69ige8y6arn1hgXSO1NkuQy
fyw/3NvCn2/5zKrsMjDrb3xFrD/12qI95HFA9UV7bTNDMBEECkmNHb8U39kJI7YJ
RZKh16KH2FDDFoMt9tkrArYFIR2YGmRaNtI3kJX8w8Ea2p3Do6boM9C56arzazNm
K1Zzo4xQM7Cf6hvdJ3E+hu5xmVLcAWvf6mfchWU/k3N4uOr3HoXexMSKq5TLC66I
gQVIbs0EF04Byp3Q+W0smKV2CLeJug==
=M+8x
-----END PGP SIGNATURE-----

--lg5lfpbtzitx4wuf--


--===============6513403554424504773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6513403554424504773==--

