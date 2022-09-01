Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0D8ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 11:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n29sVaupNHZ4CO7Auyb/aJ7rTSX3/lYZsUtriHFg3Ns=; b=N/ZlVSboCoJQBBICwlV9gJ5S89
	EkUA2x4f1DloOHbWjmkcVP7vFLh93nC9l1sf7heZGDB/L5/N58MWJ1x6+LMLx0kXXwySH6lUM0OdJ
	UB8Qh6kAYoYBFREq3ikWuUscpEMomFHyKRMK70rT/E/8f48AF2ez7i2rZxSWFCwcpYJk6qZIqRCKF
	DTAwSbUS8as3GIE2RsdezFwGY5hLJ0wpH+3S3zkIGZI47afsqXkK5mTuL27xxlGJW4y7WjD4XujXz
	VFilCy3euY+EDJyOniuTqb9THdjubJBML2OaZ81v3BqmpCFhnjpVPjFp6sitKEkIxXynNr91uhi1V
	rFnMbd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTiQo-00BN1w-7S; Thu, 01 Sep 2022 11:32:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTiQj-00BMwY-Fj
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 11:32:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 48FA361DBC;
	Thu,  1 Sep 2022 11:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A10AC433D6;
	Thu,  1 Sep 2022 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662031931;
	bh=EsgujPsEDFpEWnoAnspdrmAPsj3OKMP5J2fqvUSUohE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AmZpZPOsQwuKrMloCYTe6CQsiMxwwzuyK72ZdAY/s9iy9Raq305Vd0DVcb28WjmsS
	 TcBQMP4dax4jYbYxCeu+zEtqLwp7peOK8FVRRgEyKhKQG6wHfprXkhpFZr7fXJsVsL
	 5ijOzinqIt0qfrYWZ3fvAON2wqI2C2dV98we5DG82iZteQ3ZGQRoG/XlmXe0RR/otp
	 5JXXVs2GpoU6mBHBMnyRqzsEhShj6qFdMpjJJzvN5ELmd5r3aHpO2SZnnOJ/3w3YMC
	 JuS3JQpBg20HfBi8p3vQa/ALhlZrr1xPSTHQBenofkHBo02g4vD+/G6tQlhNh/czGi
	 e3123FvxnbXKQ==
Date: Thu, 1 Sep 2022 12:32:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 04/13] regulator: rk808: reduce 'struct rk808' usage
Message-ID: <YxCYNbqdBB+YthaY@sirena.org.uk>
References: <20220831215437.117880-1-sebastian.reichel@collabora.com>
 <20220831215437.117880-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220831215437.117880-5-sebastian.reichel@collabora.com>
X-Cookie: This bag is recyclable.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_043217_603026_1949400F 
X-CRM114-Status: GOOD (  13.77  )
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
Content-Type: multipart/mixed; boundary="===============8703165147726503549=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8703165147726503549==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uSgKifA/gnLpK9Ba"
Content-Disposition: inline


--uSgKifA/gnLpK9Ba
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 31, 2022 at 11:54:28PM +0200, Sebastian Reichel wrote:
> Reduce usage of 'struct rk808' (driver data of the parent MFD), so
> that only the chip variant field is still being accessed directly.
> This allows restructuring the MFD driver to support SPI based
> PMICs.

Acked-by: Mark Brown <broonie@kernel.org>

--uSgKifA/gnLpK9Ba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMQmDQACgkQJNaLcl1U
h9AZjAf9FHKbnro30y43M5NJYAf+6hCpaAE9y0K8KkAaiH6CBT4dx10pIFWqXiKe
rvJmow9dQhZpwVjBt5A25ERvzgQvK7HVkhsy2+RugStEpdqAv+YnRzq+0zjVWDGO
2FPxdUZt30sQsgEZQGJeL/rFmGXylC8JkmfW8dnMmc75+OPabWESgucpaQvzxPW2
YGbuEWESARTKy6Hi1rK3+IZ03U42Ry6OypGTuTLaJ9vFkyGxR6voB4WBd0WJ5sMe
dUbRJQeBKOLP9gVSo/+XjfqGWYWVKjTUB08kJn6qfLy4oqKKCuGVd8JSQHW+qqfx
pthDv0By/uhm+YobdEUHrg3vH3RJ/w==
=eGS0
-----END PGP SIGNATURE-----

--uSgKifA/gnLpK9Ba--


--===============8703165147726503549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8703165147726503549==--

