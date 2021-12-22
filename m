Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90FC9C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4SlNwgr7WktseNIZ0QV01D1mpRzJUneXNXFPvGKO0g=; b=OfjHyNWBadUwC5JjlJ5iJAn2VA
	tgIuIgfesgU/nob37tJpUHUoFoFZjjcN99OKAZ4RHvxv888da5S2MlALGKi+1iL8wLmYowWN5NxXv
	PkigOzcW8tRB+k+E/w/QP/078hlQuaM24hZGZZmGXhID/+TUwmZ1qbgcU9W5ywGZq3+/78EIdgQav
	L5tLxZu7Yf1u9CBRfywoDBNrMJkZqukFYnD/6tIGI4y6+0I0THSmPMMXCSsRWxyS5fB3+zJYUCXuT
	E/iRPOTEVzXyezE7TgGqhgHtnR940egyCo0pGcvNStmVPSNu1678W3Q4kg9/MnCKtXUexXS3RreIR
	zEgf/aLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01Ed-00ANH2-43; Wed, 22 Dec 2021 13:00:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01EQ-00ANE4-HA; Wed, 22 Dec 2021 13:00:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 47EAEB81C15;
 Wed, 22 Dec 2021 13:00:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 736CDC36AE8;
 Wed, 22 Dec 2021 13:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640178032;
 bh=kEOEigIq41/1QX4kSiudwGKYHYU6CkFSbG6FTLQpIQM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ne1CMMyAHxstvfr/V8j/AFNByX++LxVo0xkNPS8ODCs/h4HtwCa/4yOYR9+p/MWOz
 92reUdJcLs0QNPqSTIm9iRtCkE1wtmhLINw6lzdmDACwkL8dudc8uvZEgB6NzdilaQ
 JPnfdWE5FWm7Ume3XRvVp+Wm3G0fum+Mxk1uE22vcKrA+96muECeg7qHjrylGaIDi9
 XO9gdPo8yw7SMM5UxM0u98MQukxPai/zmkqtmVx2Sn412+ljZdNWbNrilSgSqO+cRv
 sDWtkCFwZxEPThXg3wehmag+ACzL5eLTN5HUDvvPsGcrN6FU3ld8brMZ1F15MP7BNW
 FFxpNXQ8BG1kQ==
Date: Wed, 22 Dec 2021 13:00:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <YcMhazsAfU26fCa3@sirena.org.uk>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
 <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
MIME-Version: 1.0
In-Reply-To: <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
X-Cookie: Weekend, where are you?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_050034_736955_57638D2A 
X-CRM114-Status: GOOD (  14.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============2660024616913448863=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2660024616913448863==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DGTpK7jlZKAG0XlA"
Content-Disposition: inline


--DGTpK7jlZKAG0XlA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 22, 2021 at 12:54:06PM +0000, Robin Murphy wrote:

> Certainly RK3399 (and I guess RK3288 too) suffers from the same
> priority-inversion issue of being unaware that VD_GPU needs power before
> PD_GPU can be successfully turned on to probe the GPU to claim and enable
> the regulator (via "mali-supply" for DVFS purposes) that needed to be on in
> the first place. Currently all the boards are bodging around this with
> "regulator-always-on" (e.g. commit 06b2818678d9).

Does the SoC actually support the supply being completely off in
operation?  A lot of devices want everything powered even if idle during
full operation since keeping voltage differentials smaller makes it a
lot easier to design to avoid leakage current type issues at the points
where the different power domains connect.

--DGTpK7jlZKAG0XlA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHDIWoACgkQJNaLcl1U
h9A/JQf/fcUe2QZ62Y4+EjMNfndER1TUPDdtE0POgYNbuZZlGy4GIDi2zW8A8mwk
Ng67EZKHZS4S2FlNbx8JY/jAlKmod0A1m7pm3RdifiI5pxtVhZJ/AfwMJqVbYwxM
Upds1v0mA5kqxbGSqTy1u/v1UgLNXQonXV9A4GPX6RnZTSFizAbsoob87FMEwczq
R6DkIXXbAcZa2eqEe5rebvM3hgloyZEMD3DLk5Bcvi89JIqEZXPlyOM0itZXv8cD
ZlbYQNHlz51ms+UG/GPRavymqa8sR2lfxFsKd82qyKHfYD1uvJHbaGoCyOp2habF
ucQwCWa+naTJUCXW1hxdg9G0bM0Lpg==
=SprL
-----END PGP SIGNATURE-----

--DGTpK7jlZKAG0XlA--


--===============2660024616913448863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2660024616913448863==--

