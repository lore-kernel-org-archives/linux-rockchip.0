Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47931EB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 16:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2e3dc/i1kI8Rp3V9tjnelbmJIXYNIVC5U+EPJ5Xmlfo=; b=1MjOy5gC6xuQkWJZLfwhVPLoYw
	S9xfrmqmT2IhOOa4FKzb+VuieLREB0jgvvSk8uII692mg91RypB66skIMCuGGYoXU9vTd3NRMBx98
	/AC1zCuDtPExniUWG2dC4sscLWr7dTFCalKtidFatPSrzp9fNuOCLtv1M5PX9KcqhnWG6lDQDhTDM
	dsA1odJ0FVzagHJu2+nxKDgPKYH0m8drykegPE9bi4n9YV1UmjOvvRm2fOMD3bdhsTybujS1YNsNR
	w9t7GenB1zDjBS8Lf5pwcaan+6toz/l+6UzvGw+pumqyr797vleWBD/0EEn75f5Px12ciCSznOxRL
	ki1b10rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMsty-00EZuV-2l;
	Fri, 21 Jul 2023 16:22:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMstw-00EZtk-26
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 16:22:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 29D9961D43;
	Fri, 21 Jul 2023 16:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C3C0C433C7;
	Fri, 21 Jul 2023 16:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689956563;
	bh=57/7gKphzxTLf7vAFlilksQSzLFJ170eDAIN3ZR4eVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qe1AP4YfjQrqFLh6Qjlov794qoKRJ7HFIntro44/zrpMk6HdakJqJUQrKlWPyWAvP
	 iPqBh1YrIjSBjRzDCPoLXJd6JuJpRK7Xa2Akv2nqT5V+IogtLd8180mPecbt2OWOYH
	 9Q68tFJqgpMIQV74YivD1IVSL+yCh0iHOjpAIFAREmehVKgySCHjLZTKqbQUc3GvQC
	 fTKG0Pbxtxpa0nlRU8ZAIF/DylUVGRY4osvmWYhkpZ/5+x2O1eZwFTrAcEqShR10em
	 qt3oYXTLoexMgh7rxZzDtRLNHwo3J2zxM3oposO4/LN+MpVs0s+l+3+ISmacPYMVH4
	 3FYU5hi/3QFxw==
Date: Fri, 21 Jul 2023 17:22:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Message-ID: <66c4e1ca-7b76-4611-8627-994a924f5e6f@sirena.org.uk>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
 <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
 <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
 <e61ebbfd-98d2-4dad-98e7-67d81c0cc04e@kadam.mountain>
MIME-Version: 1.0
In-Reply-To: <e61ebbfd-98d2-4dad-98e7-67d81c0cc04e@kadam.mountain>
X-Cookie: Do, or do not
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_092244_731848_E8464192 
X-CRM114-Status: GOOD (  14.34  )
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
Content-Type: multipart/mixed; boundary="===============0568526061625344844=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0568526061625344844==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="km90a0rdseyGaDyW"
Content-Disposition: inline


--km90a0rdseyGaDyW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 21, 2023 at 07:18:03PM +0300, Dan Carpenter wrote:
> On Fri, Jul 21, 2023 at 09:01:03AM -0700, Guenter Roeck wrote:

> > Dan, let me know if you don't have time to send a proper patch.
> > I have one based on your suggestion prepared that I could send out
> > if needed.

> I sent it but, aww crud, I forgot to CC you.  Really, get_maintainer.pl
> should add everyone from the tag section to the CC list...

b4 prep --auto-to-cc does that IIRC!

--km90a0rdseyGaDyW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmS6sM0ACgkQJNaLcl1U
h9DKrwf+KDdIBnn2bGLmUILiQnwPyx+HKGZb/6VY7kRDdeigO7PRNgdl0I1jWmwU
1apKIDqWPWZiA0GI5cP/Jd8rlmp1IYnHCg40XeMqOX2XZXjMIiHNLcpnbO+5lGOh
yTqWENvQqSuSLrmYhDgf6x03cA4d5Itm4ln3nKG0MeLot7GIYKrmLYMiFvZ7pNbV
/aEDai71tcB/iTkcQeN8HcYLH68q5y2KV4v+FLp3R3x5/ctIiHO/ekVYwj2mXPi7
6Cm++nXEMLknjKVurFJu9ijGNOZGUGMPBS/k3ixClQuGJNChwoP3QaApTUr/GFOT
4tTBF4ZSQ6GqFi6GTRAHNtcIYdixsQ==
=duhz
-----END PGP SIGNATURE-----

--km90a0rdseyGaDyW--


--===============0568526061625344844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0568526061625344844==--

