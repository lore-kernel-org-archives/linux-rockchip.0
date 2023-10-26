Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5EEC25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 21:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNX3GhcaIVVWOaPr8ydm58SuO8ZIixS9pqK7qBwJjvM=; b=hrRUOSz7tnDjg2RmBLdXH3mRrk
	JF4Btmox5H2u/BRVfJj31uSXdHPtiwd1lqSMkiml1txN+hpeSFwE+FCIvns8pUNFsiy5JwlqjjFsy
	kNbFhGPLjRYoohE5w7HIDd+S0lmsE8W7SbdA+2rSKYgMVO54+fxcrrNv7r6kXjjcMA8MCBocSObq3
	vxjybqoS+kKbniv5Phn2neFxOko64fV/kcwArfMapM1jj4f53pnmr4Vwjp7aqQY0DpYIq5nwbVdgm
	zQzS6sO7smGe9uDpUbMXqshwAYYCG7BAxBhv+LD5VyZ4+RVmwlZQ4R7Dy9pxy7artwK8SbPzBVXWf
	QW+EfNFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7hG-00FABD-2U;
	Thu, 26 Oct 2023 21:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7hC-00FA9J-1s
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Oct 2023 21:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qw7h1-0002cZ-UM; Thu, 26 Oct 2023 23:15:03 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qw7h1-004Um3-7O; Thu, 26 Oct 2023 23:15:03 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qw7h0-006qM6-UL; Thu, 26 Oct 2023 23:15:02 +0200
Date: Thu, 26 Oct 2023 23:15:02 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] pwm: Use device_get_match_data()
Message-ID: <20231026211502.vg43o3n4kk5niv2b@pengutronix.de>
References: <20231026195417.68090-2-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231026195417.68090-2-robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_141514_621477_0F703502 
X-CRM114-Status: GOOD (  12.34  )
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
Content-Type: multipart/mixed; boundary="===============0336729805583481758=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0336729805583481758==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sxyp6wtlbhi5qs3p"
Content-Disposition: inline


--sxyp6wtlbhi5qs3p
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Thu, Oct 26, 2023 at 02:54:17PM -0500, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
>=20
> As these drivers only do DT based matching, of_match_device() will never
> return NULL if we've gotten to probe(). Therefore, the NULL check and
> error returns can be dropped.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks!
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--sxyp6wtlbhi5qs3p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmU61tUACgkQj4D7WH0S
/k4ikwf+NPbrvyDAsDhLiVOMSQhEdou/BRS+IXhJ2nlRPwgD0fydclcttWkAq4mU
O5bTZuGkAoXTBUtqTgsHzhJWDffG0JFf+LEvjLTUAWXwh09Snzu3D4gOYUSgtuyQ
r6TbNyRn2w0uZZcV5+cBvMMONJWha5T68NS/vltGocQvz10rJ/vYsquHDy9TvFyl
qnjzNhy2I7pDiEJecUcJSnPR5Afp+Myfek4ridtSXErI75EtLkI9UsLX7cgxgkck
ZoCnlqrKPUQyh9/dK3aj19A9+MlLTXpIybY031vlTvqDymKaXvsA41cJN0gCM8H2
97lu4N3QVm9Wytk3/BdIXxmR4tWhgA==
=4Z6b
-----END PGP SIGNATURE-----

--sxyp6wtlbhi5qs3p--


--===============0336729805583481758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0336729805583481758==--

