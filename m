Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 539AAC28B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Mar 2025 10:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qNYfGO61Kbcn/PVPicVeYHef5kCniV0Xj+i7zLbJM8M=; b=LI46A6dGWagLaekf5hC1JXHUgF
	xrD/CiapCM0++vu1WESKTHF11ifdcjj/jQw9Vicf280s+EbmFmxNElX8EXuVGWLe2OojUObq1jpFT
	kP1Rkc6INBMyF90fwdBfezgZSu4HyY02ETxKkaO6aMK+m/KXtioGMddDN1gIsGPTHff7aEoPI5rOO
	nfsnr4WMZ2oVi8x4Fq4/PwMi+ua9dC7jGtSquqFcKper4sjORxmy+CUbqptB8xP+680K+tlP2xHwI
	GjNx014MyWcqRSKEtsATF6hwKaCA5WWV176t0Th4Qd2ODwqGbeMvEVVr9/QNZzYTm1MidMSQgoZEP
	sBDryGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvCrn-0000000Bmuq-1hMN;
	Thu, 20 Mar 2025 10:11:11 +0000
Received: from master.debian.org ([2001:41b8:202:deb:216:36ff:fe40:4001])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvCrh-0000000BmuO-1hUv
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Mar 2025 10:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description;
	bh=DqDIP5URxHBbU7xo7G+yo2Ah9fSiO+S3KlhCrFB+gWM=; b=kGM6LjAQHidYvv+RmkeYAMZQXA
	bWJ3stQJHTvQ+5FzkDeLLedfYg50wvVs7zJcDxUu3xnhQnXl7fLEy6sh4KSetsxlLK34dAQ5TGSbo
	p1uB6teVnGc082ro/KvQrJy10MvbkJphUfs8UFLb/7o91IAD0Za6GGlterEQ4lZWovjwTo44exwJq
	DkbTO9A18Z/Ykqg+v80KKGWtHH3JDsG7+E1Rh6RJxNC0gVJT+HpQNyz8pPpWGCJbYlaOjkPKyImbY
	egb/yNu8Y2PeW6Zp/g1VB/YF9Bl1YPgINQKSYuZfyXd8gzN9Y10bGH0T43yCLzMiUWKYLNZ0vnZbg
	ssj/7hTw==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1tvCrQ-00BNjk-NZ; Thu, 20 Mar 2025 10:10:48 +0000
Date: Thu, 20 Mar 2025 11:10:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Lee Jones <lee@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Mark Brown <broonie@kernel.org>, 
	Wolfram Sang <wsa@the-dreams.de>
Cc: Dmitrii Osipenko <dmitry.osipenko@collabora.com>, Urja <urja@urja.dev>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
Subject: SPI transfers in atomic context [Was: Re: [PATCH v1 1/1] mfd: rk8xx:
 Fix shutdown handler]
Message-ID: <sg5kgo5qjqyzfyk5nyjbkpgvbx6sfb7agc67ch6wsdq3etrsbf@h6xbtfs45k4w>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <20240801131823.GB1019230@google.com>
 <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
MIME-Version: 1.0
In-Reply-To: <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_031105_446947_CA65A090 
X-CRM114-Status: GOOD (  27.86  )
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
Content-Type: multipart/mixed; boundary="===============6642040626947664403=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6642040626947664403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="whhetjwkeqmqacim"
Content-Disposition: inline


--whhetjwkeqmqacim
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: SPI transfers in atomic context [Was: Re: [PATCH v1 1/1] mfd: rk8xx:
 Fix shutdown handler]
MIME-Version: 1.0

Hi,

On Thu, Aug 01, 2024 at 05:22:24PM +0200, Sebastian Reichel wrote:
> On Thu, Aug 01, 2024 at 02:18:23PM GMT, Lee Jones wrote:
> > > +	/*
> > > +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
> > > +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
> > > +	 * handler, so we are using the prepare handler as a workaround.
> > > +	 * This should be removed once the Rockchip SPI driver has been
> > > +	 * adapted.
> > > +	 */
> >=20
> > So why not just adapt the SPI driver now?
>=20
> This patch is simple and thus can easily be backported, so that the
> Acer Chromebook shutdown is fixed in the stable kernels. SPI based
> rkxx has been using SYS_OFF_MODE_POWER_OFF_PREPARE from the start,
> so it's not a regression.
>=20
> As far as I could see the SPI framework does not have something
> comparable to the I2C .xfer_atomic handler. So fixing up the
> Rockchip SPI driver probably involves creating some SPI core
> helpers. I'm not yet sure about the best way to deal with this.
> But I guess it will be better not having to backport all of the
> requires changes to stable.
>=20
> In any case I think the next step in this direction is discussing
> how to handle this in general for SPI.
>=20
> > What's the bet that if accepted, this hack is still here in 5 years tim=
e?
>=20
> Even if I don't work on this now, I would expect somebody to have
> issues with broken shutdown on RK3588 boards before 5 years are
> over :)

I'd like to have power-off working on Qnap TS-433 in the next Debian
stable. With my Debian Kernel hat on I'd say cherry-picking such a
commit (if it's in mainline) is acceptable. Backporting a major
extension to the spi framework isn't.

So: Expectation confirmed! And while I agree that hacks are not nice,
I prefer a hack now over a machine that doesn't shut down properly over
the next five years (if Lee's expectation is also correct).

Can we maybe go forward and do both? Accept this hack patch now and work
on spi to make atomic xfers possible?

Mark, are there concerns from your side?=20
Wolfram, are there things you would recommend to do differently in spi
than what you have in i2c?

Best regards
Uwe

--whhetjwkeqmqacim
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfb6aQACgkQj4D7WH0S
/k4lVAgApKR/SmJy+eGu8P1FQH4+6mX1fHsmZUxzeXY41MV39695K+4iGZFvDggc
knS/G5Vv8Q2nVucvZFCWY7HejNsG8Z7VdMijGpxl/cfVccwXHeJZy8Pwzo8+lmtn
TXNTVYAhO5tEP/90mkx4sZLWn2rtrkniRGQEEb1XGBfRZi1WFwY8zVrTSY7GPPST
QyC0tju6/9IC/vWvCMIirPXdj1dfPR9hBVdZc26roBQ/mrcUgqN7FhV8g9hbNuAB
U38RZbhrm6lqfCyzl6nwO0BUgigcEdVxNi3DAbNdIeXCEBL1MFb++bDrq3Ep6BDQ
kSSQoR/oxxHxoviZhQkceHHsh8SHdw==
=hNBd
-----END PGP SIGNATURE-----

--whhetjwkeqmqacim--


--===============6642040626947664403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6642040626947664403==--

