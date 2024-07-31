Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33A2C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=brq7OvthOWKajK2Mm/CwF70e5nl6ar+v+bfVwVo2VA4=; b=BWBUYo6rKkptHv9LQO03PTTe6b
	kW06L9rgOv9ue9yna5LwcV3fVnrcnL3YwYQCeQlsdLbUcOnkb7JyxgIye+D7TFcBZHcRSh03Ay6+h
	dK/syEjuqLMyluGgK7S+VK5KMhggwp8gHdEAZIMBtxP3eHHhzMQJYbCjlC8kdn/12bfGTl8OaS5nl
	8UFyoSZNJL4BpM52KhUSEaFs9gde+Vc62iBT22OOS7MrYsM5c/UKWR0+G0CvRdMGbMEdX3pUPhXuh
	pnda72Hl2SI785kMgWPX3AZ+XlEDW9NzsYN8VMWMb1dkgITKAt/fsYLi+n1GI+zUNBEE3uaQdrJTI
	ZZTLVUHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4xC-00000000MSF-1KVy;
	Wed, 31 Jul 2024 08:45:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4wk-00000000MOX-2rCr
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 08:44:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4wY-0000Cy-9Q; Wed, 31 Jul 2024 10:44:22 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sZ4wW-003U0I-6M; Wed, 31 Jul 2024 10:44:20 +0200
Received: from pengutronix.de (unknown [IPv6:2a01:4f8:1c1c:29e9:22:41ff:fe00:1400])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 205C031271C;
	Wed, 31 Jul 2024 08:44:18 +0000 (UTC)
Date: Wed, 31 Jul 2024 10:44:15 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 01/21] dt-bindings: can: rockchip_canfd: add
 binding for rockchip CAN-FD controller
Message-ID: <20240731-enthusiastic-quiet-elk-18194b-mkl@pengutronix.de>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-1-fa1250fd6be3@pengutronix.de>
 <20240730192158.GA2001115-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240730192158.GA2001115-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_014434_728100_3E66DCC0 
X-CRM114-Status: GOOD (  23.27  )
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
Content-Type: multipart/mixed; boundary="===============3212045227006372912=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3212045227006372912==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uoxl2fbtiq2wmpls"
Content-Disposition: inline


--uoxl2fbtiq2wmpls
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 30.07.2024 13:21:58, Rob Herring wrote:
> On Mon, Jul 29, 2024 at 03:05:32PM +0200, Marc Kleine-Budde wrote:
> > Add the binding of the rockchip rk3568 CAN-FD controller to the device
> > tree bindings documentation.
>=20
> Subject line space is valuable. Don't say 'binding' twice. Or anything=20
> else for that matter.=20
>=20
> > Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> > ---
> >  .../bindings/net/can/rockchip,canfd.yaml           | 76 ++++++++++++++=
++++++++
> >  MAINTAINERS                                        |  7 ++
> >  2 files changed, 83 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/net/can/rockchip,canfd.y=
aml b/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> > new file mode 100644
> > index 000000000000..85f7ea68d8b9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/can/rockchip,canfd.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/can/rockchip,canfd.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title:
> > +  Rockchip CAN-FD controller
> > +
> > +maintainers:
> > +  - Marc Kleine-Budde <mkl@pengutronix.de>
> > +
> > +allOf:
> > +  - $ref: can-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: rockchip,rk3568-canfd
> > +      - items:
> > +          - enum:
> > +              - rockchip,rk3568v2-canfd
> > +              - rockchip,rk3568v3-canfd
> > +          - const: rockchip,rk3568-canfd
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      - const: baudclk
>=20
> Just 'baud'

ok

>=20
> > +      - const: apb_pclk
>=20
> apb or pclk.

pclk seems to be more common.

>=20
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: can
> > +      - const: can-apb
>=20
> They are always for 'can' so that's redundant. I guess it is fine on=20
> the first entry, but definitely drop on the 2nd. Or do 'core' and 'apb'.

I've picked core and apb.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--uoxl2fbtiq2wmpls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmap+VsACgkQKDiiPnot
vG8xRAf/V3oltDCzkRNsA3hUaZKwlWUi4NXICpbMlvwlVV0AuaFXrtKgziSCFkvD
DmI7ndfoLddvmlqZZdGvowWcRRyXOq7CFIj79GAimQuqr2Muj86MGa92SVKFKYjS
LSQowAyUusircIBwUObRs/tTKCDwdFnd/kQ8WTHZsor+n0dLnOlziURX+n5iN1Gl
PEWElBCcdYeOs0PFKi+zXbXXwzM0B0fBbsrH8yikXev7tVlLHbFxbmEL5EYjVa3m
SWRWAKLOafWxYPs6cjAh+2Ydvz9M8BtiHTBuV6mA27KBxy2RqaGWKe0akKG3UNgY
YJNBUGi9nhWvH5zKjsw3T5+hExKfLg==
=sm8+
-----END PGP SIGNATURE-----

--uoxl2fbtiq2wmpls--


--===============3212045227006372912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3212045227006372912==--

