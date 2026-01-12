Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF801C9EC90
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w8BlTvkCfZ3sgM9qpKj9+lgs+AFY58dwMpsjf5oBq8c=; b=mfUWjoWvz2MjqvKXnfZvDnBypv
	YX+xFmBhLBkvlQsWdGkhLwO0Fsc5z5gR9LMaL4fZWu17p8WmsnmWFNJRxhU1idLuXFLW88EWpkaR5
	9SoZNj71fyo8SHwkjuhIKKlC74WLiCR782JrK+6a87vBb1lOTPhpZP5Etk9ttLbA7p3pI783ecn3s
	4IF1WDqMhBPvaACdVmTYjJsmpVmtptwSJv7u1qT1wKEQaOCYTrKCeVpgokfSUoySgHLmMdf32vkWj
	yZOy2Tbro171o6e08lTrhJ2dEl1nIbLRfPS/R9aSzEHadfbdnFoO254NZI7KDW8qz4EPmiM3zckz4
	lbOByQMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIYj-00000005UJj-0s6y;
	Mon, 12 Jan 2026 14:06:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIYg-00000005UJS-465b;
	Mon, 12 Jan 2026 14:06:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 12F346000A;
	Mon, 12 Jan 2026 14:06:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 880BAC16AAE;
	Mon, 12 Jan 2026 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768226773;
	bh=rsyIsgBkGIjphgcCMskKizrQMVbuRwnXGKfAose0lAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dO8zo0MfJUeu+esVfJmzLFj/hOY6pZHBE48DHbyIQRhJKLE+8Ft2+eOUUzftvviFc
	 p4TPTuzTAiu1iMtHsY1JREqWmGJ+uWPaMcOAm+fGz2RUhnQW78PJAkeGe7mPqiBXII
	 hzxIa+6nHGaKvXJdE+mI/b9izlqB5vV6GFclPn/Bkd+FviP3e+JiPbDH/W93s+ANgC
	 E3/3J49y0bvE+kyWcm6+hztARA6/IGn1lbfq0GJfmszouQpF2Zpo8mzkaUQfxeOGaz
	 hiTPoS9hhPJdxU68U2WRV9mtX26B55TrF1cpoScrju4ESMzdT71FkQ4gdAlLfcXPjO
	 wIMBOI2ToUNEg==
Date: Mon, 12 Jan 2026 14:06:08 +0000
From: Mark Brown <broonie@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] regulator: rk808: Add RK801 support
Message-ID: <affddac9-813f-4835-a8b9-e3bab520987c@sirena.org.uk>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <20260112124351.17707-4-chenjh@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260112124351.17707-4-chenjh@rock-chips.com>
X-Cookie: Surprise due today.  Also the rent.
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
Content-Type: multipart/mixed; boundary="===============7263354195857367771=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7263354195857367771==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8DIUkVIkcTq+IojV"
Content-Disposition: inline


--8DIUkVIkcTq+IojV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 12, 2026 at 08:43:51PM +0800, Joseph Chen wrote:

> Add support for rk801 to the existing rk808 regulator driver.
> It provides 4 BUCK, 2 LDO and 1 SWITCH.

Reviewed-by: Mark Brown <broonie@kernel.org>

--8DIUkVIkcTq+IojV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlk/9AACgkQJNaLcl1U
h9BQFwf/cqOmYM+t/IYJjfuTxz15Dllx6K8nDXEsGWUFL5K556/wH+M0jlnOClfk
vvCt3aP8xVJdVqHOBJf/u0VGwYBjzjM2s5Apbh4FeYQbwAmE+ywK6ms8IRhS1nwr
HIZRZLUgj7ONflXNSkPqQltqVdT37idPD26jz/bCAM5/1lxcW8er3kmySBKuXQgB
rFIBhDjDGsS0Is5pVtudcvOU8dLQ0XHKg7kXSGGYXmT0nTkrK1TuceAg426MIPkd
+pAEMr/iMWoSSdP8qlGYADJnt9Yd6C+Z9wrMhyn5FAttKd+Pt1Dggb9O6XNl+kR8
yU3q3xHbm4SPQ98BSNUrIeqS2lpvpg==
=G4Z3
-----END PGP SIGNATURE-----

--8DIUkVIkcTq+IojV--


--===============7263354195857367771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7263354195857367771==--

