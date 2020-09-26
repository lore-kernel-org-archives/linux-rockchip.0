Return-Path: <SRS0=FJi+=DD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EF7C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:56:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F254A21527
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:56:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IeKyP+u+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F254A21527
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yFHaikHevPfxXBoRN2D/a0cfb6kDeV7CFVt9rW2nyW8=; b=IeKyP+u+75/RNbdK1SXZP7Kw/
	aeLFcncedJ2Efyr0iOHe6rFrrf1eS8rmnNTV6yyu3rjCLyPVw9PR3qOJyZ/1/sQ090+MgiXoloDj1
	QbWsXvxJ9gxMEeEef5i2QqA7JTf9+RQyr/FX/5pZluYWcNrfcrZDFpRQxQJsWk+RcXcKCOMU39yiL
	TirEjqIQVI7jXLQh+Wtu9/jTtt1NtHWNqgCfOUpgM4IGCiOcZrav31nV90c13VBUoyUk9KOltjlBg
	VIRUP4ud8Ddb+QT+lZ2zmlrwWSLwLJ8E623ygjN0dl+FSZrejMzewKapEHv450TPAuxyq/BwpZiHC
	3kZsVnK/Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMAgd-0005vx-TH; Sat, 26 Sep 2020 13:56:27 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMAg7-0005iu-8K; Sat, 26 Sep 2020 13:55:58 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 9BFC7A39DCD; Sat, 26 Sep 2020 15:55:53 +0200 (CEST)
Date: Sat, 26 Sep 2020 15:55:53 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Aditya Prayoga <aditya@kobol.io>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for Kobol's
 Helios64
Message-ID: <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
References: <20200925214003.27186-1-uwe@kleine-koenig.org>
 <20200925214003.27186-2-uwe@kleine-koenig.org>
MIME-Version: 1.0
In-Reply-To: <20200925214003.27186-2-uwe@kleine-koenig.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200926_095555_455298_73A99D72 
X-CRM114-Status: GOOD (  13.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4291201721070095294=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4291201721070095294==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Sep 25, 2020 at 11:40:03PM +0200, Uwe Kleine-K=F6nig wrote:
> The hardware is described in detail on Kobol's wiki at
> https://wiki.kobol.io/helios64/intro/.
>=20
> Up to now the following peripherals are working:
>=20
>  - UART
>  - Micro-SD card
>  - eMMC
>  - ethernet port 1
>  - status LED
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

One important thing I forgot to mention here is: This devicetree is a
stripped down version of the helios64 support included in Armbian that
was written by Aditya Prayoga. The original has a line

	Copyright (c) 2020 Aditya Prayoga (aditya@kobol.io)

where I was unsure if I should drop it or not. @Aditya: Please advise if
you want this included, then I take care of that for v2.

Best regards
Uwe

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl9vSGYACgkQwfwUeK3K
7Akf5Af7BeH2edt/oxPA8XZZP1X3d1ZpsSexaIpsU8sz46JRE+LMcrhmeiKuIUMy
VZSCqsrA/FCF2js9ucHtTIUZCxcu1J2gFipBuEgYxqvvfCzWjOYz/YbgjI67iNGH
gBpeMg6juqEIX7U6UBAUiiyW53ARovcqqE6ofkoGZWVvbFib7nLcklsGeAavbrhZ
19hVEmYXN61xGs2IpZ1hQwFA8QCWvpAdNqySrIB2r1VMfob20vzKkpaDP3RJp9qQ
tEI77uduqRJXIGN6WOSG4eoOnlqdF/Vv38uQKFUpxbUaBZjQ6vMNoMmrvwxOG0lC
qFjQiZ4MvbKFJSCrBS8NiHgNhjLOLw==
=G0Tn
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============4291201721070095294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4291201721070095294==--

