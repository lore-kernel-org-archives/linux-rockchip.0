Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D71AACD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 09:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DVpCSM/wdvK2TI01UyET/65dtEfZZiMcqNi+A1/FJUM=; b=T0P1lhwZvqbqlyOuHPg2CMCjtz
	qrFLrYYV0y32MQ7mUQ5miHl/3sQL+CGfc29t4doDH6+xgkKwfR0Lw4hEnzJy1+EztbGQ90vDHy9EC
	K6klGHgMaF/xhNYQzvt4n5CgNG9SUqzfgNLuAKnYQ4+jIibrhPrYveyrX238ZqNiMmzShmtez4DDo
	YZKrVAgqyK+HP7Wq+8+RK1ZAszSrx0CAd5z9Gb3V+8JaWY/xiuaCCp8kh4jjWD/Odbs2Pjjz3NkX/
	Q2hj6TTH4CZ4Ijqc4KD9AGd7mbcRUr8+cG6rzsQO9Mjf5MdI+KLH17Bw6vITZKTlN+dlQxV5tXhI1
	+flmqY6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPjZ-0000000H7Em-4253;
	Tue, 03 Sep 2024 09:21:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slPg8-0000000H6XJ-3FFc
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 09:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPfn-00075B-Qy; Tue, 03 Sep 2024 11:18:03 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slPfk-0059Cr-LY; Tue, 03 Sep 2024 11:18:00 +0200
Received: from pengutronix.de (pd9e5994e.dip0.t-ipconnect.de [217.229.153.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 46253331004;
	Tue, 03 Sep 2024 09:18:00 +0000 (UTC)
Date: Tue, 3 Sep 2024 11:17:59 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, David Jander <david.jander@protonic.nl>, 
	Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v3 00/20] can: rockchip_canfd: add support for
 CAN-FD IP core found on Rockchip RK3568
Message-ID: <20240903-neat-vivacious-leopard-14cb09-mkl@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <ecj2sv7xhmu6plfnrq4ezejn3d43cl5mwutvkwh4u2bqcmna3k@2jykwgizuxmb>
MIME-Version: 1.0
In-Reply-To: <ecj2sv7xhmu6plfnrq4ezejn3d43cl5mwutvkwh4u2bqcmna3k@2jykwgizuxmb>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_021824_823058_2B36CA5E 
X-CRM114-Status: GOOD (  22.50  )
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
Content-Type: multipart/mixed; boundary="===============4757320300046295324=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4757320300046295324==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mb3fsyqhiocnajmm"
Content-Disposition: inline


--mb3fsyqhiocnajmm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 31.08.2024 08:02:00, Krzysztof Kozlowski wrote:
> On Fri, Aug 30, 2024 at 09:25:57PM +0200, Marc Kleine-Budde wrote:
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
> > ---
> > Changes in v3:
> > - dt-bindings: renamed file to rockchip,rk3568-canfd.yaml (thanks Rob)
> > - dt-bindings: reworked compatibles (thanks Rob)
>=20
> You never tested the patch before sending.

Well yes, I forgot one of the tests. It seems I need to set up more
dt-bindings to get used to it. I will send a new series.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mb3fsyqhiocnajmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmbW1EUACgkQKDiiPnot
vG9v3Af/SSPdXXJCW2ijU8NHVAAS03fECznVQ6XNHAyYOrbjgINxQ3DN+p7ez6+4
Y5qtbmg8zMV880CEhwj/1aFHpfxjSC0BrCNyqRhucX4KTkn9PmFW33w2gTVrmibY
+OAV7PmoYEXyYl3BOlnvfT09zPfvpvQy5eh7BXKJrDCtZB2V14ZjBwJGKZJU/vmR
8fEAueEDlRvJ2UY0YJOFjWqlddilH4CVULGaBibxgqVPwb97S5dkBHtE3GcKvvvc
3NgZbYSx86I2nUV5vtu0emjJq7pkyRxsl+7MclRykO4yCzgeHLPTdh1T+BRRfbuU
chZX7VYl4l73VrmXNF7/1wtBl+NKCw==
=cG0j
-----END PGP SIGNATURE-----

--mb3fsyqhiocnajmm--


--===============4757320300046295324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4757320300046295324==--

