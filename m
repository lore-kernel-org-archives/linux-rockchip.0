Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C9F8CAC592
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 08:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k/Rt3rLULRWIHoyuaBgCd1TU6kksztawv6P9PPCcNIY=; b=wQ34i7l9CFOSA4iWIkgz/zwSX/
	Kj5rTi+6WCbGpVyDhq79mDWbM2YWaiNN0CqwVbqR0cq8PNpS/uUju/OCjhdbRPWN7T8cr9X/D4b6A
	SUDj/k8/Ez0KaWjdJm28VTwhgFpvQ+B/oY0lPYcWKCgIRE6/MxqGhI1hrA9pTXmjX7vRcVCfvA//L
	DxqI5w/VD7946vuXEJiyuA+kCY59HS+wbMouWC0ijn4QVWy/1ID85FfjKLK7YeJMUm+i1muf+GazU
	C2wZv2qw5zjsdQalpCXwFY8aISJ1zfzJdXRz1s2DXMEu7YWtNAzY72gl5U420P5gmdRz25oDsGKT0
	6YR32hiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0cFk-00000009o1c-0TYd;
	Mon, 22 Sep 2025 08:50:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0cFh-00000009ny1-1cAq
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Sep 2025 08:50:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0cFd-0004Qf-Ka; Mon, 22 Sep 2025 10:50:25 +0200
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1v0cFc-002Yte-1E;
	Mon, 22 Sep 2025 10:50:24 +0200
Received: from pengutronix.de (p54b152ce.dip0.t-ipconnect.de [84.177.82.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 0A079476BEF;
	Mon, 22 Sep 2025 08:50:24 +0000 (UTC)
Date: Mon, 22 Sep 2025 10:50:23 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Andrea Daoud <andreadaoud6@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: Re: Possible race condition of the rockchip_canfd driver
Message-ID: <20250922-eccentric-rustling-gorilla-d2606f-mkl@pengutronix.de>
References: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
 <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
 <CAOprWott046xznChj7JBNmVw3Z65uOC1_bqTbVB=LA+YBw7TTQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOprWott046xznChj7JBNmVw3Z65uOC1_bqTbVB=LA+YBw7TTQ@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_015029_435502_9DD14178 
X-CRM114-Status: GOOD (  30.05  )
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
Content-Type: multipart/mixed; boundary="===============8816390817622230619=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8816390817622230619==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2ruxaxste5kyxrlz"
Content-Disposition: inline


--2ruxaxste5kyxrlz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Possible race condition of the rockchip_canfd driver
MIME-Version: 1.0

On 20.09.2025 18:08:03, Andrea Daoud wrote:
> > On 18.09.2025 20:58:33, Andrea Daoud wrote:
> > > I'm using the rockchip_canfd driver on an RK3568. When under high bus
> > > load, I get
> > > the following logs [1] in rkcanfd_tx_tail_is_eff, and the CAN bus is =
unable to
> > > communicate properly under this condition. The exact cause is current=
ly not
> > > entirely clear, and it's not reliably reproducible.
> >
> > Our customer is using a v3 silicon revision of the chip, which doesn't
> > this workaround.
>=20
> Could you please let me know how to check whether my RK3568 is v2 or v3?

Alexander Shiyan (Cc'ed) reads the information from an nvmem cell:

| https://github.com/MacroGroup/barebox/blob/macro/arch/arm/boards/diasom-r=
k3568/board.c#L239-L257

The idea is to fixup the device tree in the bootloader depending on the
SoC revision, so that the CAN driver uses only the needed workarounds.

> > > In the logs we can spot some strange points:
> > >
> > > 1. Line 24, tx_head =3D=3D tx_tail. This should have been rejected by=
 the if
> > > (!rkcanfd_get_tx_pending) clause.
> > >
> > > 2. Line 26, the last bit of priv->tx_tail (0x0185dbb3) is 1. This mea=
ns that the
> > > tx_tail should be 1, because rkcanfd_get_tx_tail is essentially mod t=
he
> > > priv->tx_tail by two. But the printed tx_tail is 0.
> > >
> > > I believe these problems could mean that the code is suffering from s=
ome race
> > > condition. It seems that, in the whole IRQ processing chain of the dr=
iver,
> > > there's no lock protection. Maybe some IRQ happens within the executi=
on of
> > > rkcanfd_tx_tail_is_eff, and touches the state of the tx_head and tx_t=
ail?
> > >
> > > Could you please have a look at the code, and check if some locking i=
s needed?
> >
> > My time for community support is currently a bit limited. I think this
> > has to wait a bit, apologies :/
>=20
> No worries, I will debug myself, and hopefully send a PR if I found
> something out.

Great, I have a both a v2 and a v3 SoC here to test.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--2ruxaxste5kyxrlz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmjRDcwACgkQDHRl3/mQ
kZwG6gf/b8xcXy5C2kLudCka3PJOOw8V+b51k7TIkzcjIxDUW0tY3KHlJLawnugC
V0DKwzPNG0v6bCHgfBA2IaH49W1MxVNvqsTDvQWf2udAUzGu5BYRN9bvs8qpFYpF
Pj6zlEUf0lO+Df68nqIEAekuwoXdout8CkTX6US6lgSZYe8uxPjWQ3T3fmFnzU44
iWTwK/nGOg7wUqZryuTsrmc1rkKmI2XjBek2PQSyTQxcgzMlESOuj11nhfXAVafa
BI32c6nsFwcLx8nH/KwjVGBQKkcrS3IUP//Dw0/R36nNlqiqG4lmgvsJ4y8PhCIF
ZNr9zrnmeflbjfKvZ9GdsswnKeNW5Q==
=hiC1
-----END PGP SIGNATURE-----

--2ruxaxste5kyxrlz--


--===============8816390817622230619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8816390817622230619==--

