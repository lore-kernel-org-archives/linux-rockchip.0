Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D071C28B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Mar 2025 11:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ERVeNDDVDPBRXc7qnfIyyJi++Mkg6h5+XnSKVpzTMuk=; b=q18Jy9zwGANcQTAta6D1JOsIi8
	ZjwKyVJRbaRbrcPoV2/iULF3UExY69RU4qFYpCqfPvgF1H9oO88lc8JJSnVY+S/IJYZE6FYYbYvMh
	R5JI3voTJCmtNC1yZVhvEw3UlsVIgX84wMVquf3BbFffMl9blo+7IA665Gzglrs6rvBktt2vykPPD
	xa0LLTqvkHgTi78vGbHCs2xRw8T9awpjqhvfhL2dohnS5M2GwCnpTSCjEBfQOexAwxtQea5xQhipL
	jL1Ydu4yKVHQ/4em5tj9RNJU1ynK757VJH0lt/fpqWLHoiIA4X5vRmSZnSs4+T6qOBdr/bHm2frrg
	1Ymjp86w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvE02-0000000BwjC-3nOj;
	Thu, 20 Mar 2025 11:23:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvE01-0000000Bwj6-3c83
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Mar 2025 11:23:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AC6661144;
	Thu, 20 Mar 2025 11:23:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70AA7C4CEDD;
	Thu, 20 Mar 2025 11:23:42 +0000 (UTC)
Date: Thu, 20 Mar 2025 11:23:39 +0000
From: Mark Brown <broonie@debian.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
Cc: Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Wolfram Sang <wsa@the-dreams.de>,
	Dmitrii Osipenko <dmitry.osipenko@collabora.com>,
	Urja <urja@urja.dev>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	stable@vger.kernel.org
Subject: Re: SPI transfers in atomic context [Was: Re: [PATCH v1 1/1] mfd:
 rk8xx: Fix shutdown handler]
Message-ID: <b635f31c-3987-4201-b271-53ca00dbfc60@sirena.org.uk>
Mail-Followup-To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Wolfram Sang <wsa@the-dreams.de>,
	Dmitrii Osipenko <dmitry.osipenko@collabora.com>,
	Urja <urja@urja.dev>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	stable@vger.kernel.org
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <20240801131823.GB1019230@google.com>
 <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
 <sg5kgo5qjqyzfyk5nyjbkpgvbx6sfb7agc67ch6wsdq3etrsbf@h6xbtfs45k4w>
MIME-Version: 1.0
In-Reply-To: <sg5kgo5qjqyzfyk5nyjbkpgvbx6sfb7agc67ch6wsdq3etrsbf@h6xbtfs45k4w>
X-Cookie: Do not fold, spindle or mutilate.
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
Content-Type: multipart/mixed; boundary="===============7633090629888153578=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7633090629888153578==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3mHT6aMzMB1WBIG"
Content-Disposition: inline


--x3mHT6aMzMB1WBIG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 20, 2025 at 11:10:47AM +0100, Uwe Kleine-K=F6nig wrote:

> Mark, are there concerns from your side?=20

I didn't spot anything but I only have partial context here.

--x3mHT6aMzMB1WBIG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmfb+roACgkQJNaLcl1U
h9BoXwf8CyNc+fhTrUdMmQykgnzhZDsDmXQugwuEIIwmJ/cavHj0kAuqp/8NKNRZ
wuL2wMR9ZnvdJT1ShMAbOKbFlMeaJuWiSHbmb8cQTATnXb4ly4yosc96ZhhoVwja
BqdFOksWlP7kISS73aoneIbEpR1ino2conTZCsVZBZ45Xomss6sUIkkfl/Y4tv8Q
oJKn/L/Nk0u2l/wO7C9OiMUnR0jtsr3O1IwPabp7Asit0Y+Ip0q/x1knSZnrGxak
QR/P0Jg6ODM6XVn+KVvA+9gbDOHAiiGPYkWVvdGtQ5LRMKOXWGfiA7mOvoy4Jkba
WpW3WPcspteFZW8ZTkjaQaBARI7/cg==
=HqGW
-----END PGP SIGNATURE-----

--x3mHT6aMzMB1WBIG--


--===============7633090629888153578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7633090629888153578==--

