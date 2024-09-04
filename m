Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA720CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ExIY2IKDdmPQOE8oOAbgAGIgB3+c8+auylAw+ltnMDw=; b=kuV3u3GEmZfYZlHManvNlW1jSc
	brv5PrjLL4fIL1icOqXj21inCGPlgKl+6E9QH1mYyvhiZQJcs579WB3W1hB43zSPslG8/IcIygcXd
	hzxLDjqsbFwun6hhnYkGIy4ZAx08lRLBsQ1oFIk27oJn+5p3wyc/goKBkku8I4INof3pSxobFNjs9
	eQfbNivtiEUAevgTu/lyciQpaZEiVHJNfQmGPoQTQybcWxvkb8G5eK5Zzi7cEfsPni1rzv6U4Ut3g
	FAP8PE405koHpqIU/TZhhONmZ4eBONQZA6EdOKYuwpQkRzP3uQlHUDzN9nJMGuLiJ8kvMeOX9Eu3P
	1uLdvcmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmjE-00000003mpE-38Va;
	Wed, 04 Sep 2024 09:55:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmBE-00000003drS-3yZA
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 09:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slmAz-0002tc-Pd; Wed, 04 Sep 2024 11:19:45 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slmAx-005PrZ-1z; Wed, 04 Sep 2024 11:19:43 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A4329332301;
	Wed, 04 Sep 2024 09:19:42 +0000 (UTC)
Date: Wed, 4 Sep 2024 11:19:42 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	David Jander <david.jander@protonic.nl>, Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240904-meticulous-original-sturgeon-ad2db3-mkl@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <86274585.BzKH3j3Lxt@diego>
MIME-Version: 1.0
In-Reply-To: <86274585.BzKH3j3Lxt@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_022000_993845_9A3237D6 
X-CRM114-Status: GOOD (  24.90  )
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
Content-Type: multipart/mixed; boundary="===============8118345275748443455=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8118345275748443455==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ss46ydut665ggdf"
Content-Disposition: inline


--2ss46ydut665ggdf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04.09.2024 10:55:21, Heiko St=C3=BCbner wrote:
> Hi Marc,
>=20
> Am Mittwoch, 4. September 2024, 10:12:44 CEST schrieb Marc Kleine-Budde:
> > This series adds support for the CAN-FD IP core found on the Rockchip
> > RK3568.
> >=20
> > The IP core is a bit complicated and has several documented errata.
> > The driver is added in several stages, first the base driver including
> > the RX-path. Then several workarounds for errata and the TX-path, and
> > finally features like hardware time stamping, loop-back mode and
> > bus error reporting.
> >=20
> > regards,
> > Marc
> >=20
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> I have neither CAN knowledge, nor hardware to test, but the integration
> itself looks pretty easy and straight-forward.
>=20
> Not sure how much it helps, but at this moment I assume you know what
> you're doing with respect to the CAN controller ;-)

I hope so :) The controller has some flaws :/

> Rest of the series (that hasn't got a Rb):
>=20
> Acked-by: Heiko Stuebner <heiko@sntech.de>

Thanks.

> How/when are you planning on applying stuff?
>=20
> I.e. if you're going to apply things still for 6.12, you could simply take
> the whole series if the dts patches still apply to your tree ;-)

Actually I've already started my PR workflow, but I'll address your
review feedback, add your tags and send a new PR today. This will go via
net-next into v6.12.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--2ss46ydut665ggdf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbYJioACgkQKDiiPnot
vG8qKwf/e6qNy9jnMMR4a2ZA/TwN7Gvr9EtSz4YN78xGfPErfDaPjMMw11WRNBA0
foCcQRuNrOh/JoM+LcOO+bFM35p+M5GoPnXZreAuHolU7OZzSrCC6CVIFwuQKVDm
qVnmgnt5AU3YjFvU79RyPUHCtxsFQQPqDUKusLRgevAkXDtc2GwNDNumKrOaQGe2
8A+NSKRHYzpd1NYm2K/RV6VmbxrjWe8Zd3TlaFAQTjIaDadCmjbo2qA+3HjIwenm
CKYMxixTvEjEffTEBRy0AX2Cnp6j5xX7VmYdCDYrPzfvhWZx1vm2KFQ+pDWk+mNa
18dciG/5BLFa6hiFAx+agcVetZGWiA==
=Wdm5
-----END PGP SIGNATURE-----

--2ss46ydut665ggdf--


--===============8118345275748443455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8118345275748443455==--

