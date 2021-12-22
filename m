Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 361B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQNyVRUXReA2yRa05av4EuwORqzn+V4hMnwZ8VY9tjM=; b=YIhU2Sz+zGu7GdQ6ILftkYQfHG
	mzikCJt4J2qI1lEfbgPkOib6nOHMaeVOMgmHeJSN3C4rzFd2oIP/5KUs/sjyBLZ6lvgTgQ+7oBK6L
	bXM3G0SWcNAuO3O0E1vLyhQOBCH4tYsd/eA5abH9+nTSffTX0adbkqIBrr8s/0ckyElDD5sREB75J
	3EnBRHtGC0QZ5X5pQW1xW/6ULaTz2LcdLq879P34LE5NaY5C6jRpdATl2MF4uHeH+BNGiZy8CdpJ9
	rgAy0WU6ZZloWj99qiL64vzkql23JCLaU3w8L9YD7a7zk1+xO6hpUYho4Ax6Z22BoZvoBdRFlpNS/
	yPEbqtmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01rl-00Aa3o-2J; Wed, 22 Dec 2021 13:41:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01rW-00Aa1z-6m; Wed, 22 Dec 2021 13:41:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6053B619FF;
 Wed, 22 Dec 2021 13:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E8FCC36AE5;
 Wed, 22 Dec 2021 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640180456;
 bh=5u9FI2pDEST7oCkoePITei5egrb64wb+vz3eX4kszlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i4Iac/vO/JiMQR4h0u8NBMwkfJlhCNTJW3CfAzyjTkOVWToSgw5bVY9lHmddVZRoT
 JBnWR+3b7aGhsZH4oIlfOMV3Eum9AaIHGcaLzxYB9OngxHFB7QqrQJi5NxF7BYQKzI
 oWvkWT2QEi0bnK4NJcrkZLqQJXWfEeI+iZPMq0dKVDS9m+8feVNNUxA1c7rjq7gKno
 flgMGWLGoh6GoaYCgXVoV7sy7kLNyZ2RO2D0QpZKX9OeGHz705hMvMyiulxKattTpG
 /HJe/QIRD2dQMniQpFYpCiOEYlPOiTszekYNQDuDGcJTFaI4erzrPh9DSNlTHF3Kkh
 OJ+fvHtrl3E9A==
Date: Wed, 22 Dec 2021 13:40:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Robin Murphy <robin.murphy@arm.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <YcMq4vF7yKn7iu5U@sirena.org.uk>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
 <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
 <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
 <YcMnNXu9Iun71uCG@sirena.org.uk>
 <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
MIME-Version: 1.0
In-Reply-To: <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
X-Cookie: Weekend, where are you?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_054058_317405_83EF2D10 
X-CRM114-Status: GOOD (  17.19  )
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
Content-Type: multipart/mixed; boundary="===============4375013137180488122=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4375013137180488122==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MtF64BimZ7Abtb4I"
Content-Disposition: inline


--MtF64BimZ7Abtb4I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 22, 2021 at 02:29:23PM +0100, Michael Riesch wrote:
> On 12/22/21 2:25 PM, Mark Brown wrote:

> > In that case I would tend to assume that unless otherwise stated it's
> > safer to keep the supply enabled when everything else is enabled.  It's
> > the default thing and so is more likely to be what was designed for and
> > less likely to result in nasty surprises.

> Based on my experience with the RK3568 EVB1 the vdd_gpu supply turns
> after startup if it is unused and the SoC works fine. Let's take the
> energy efficient route here :-)

One of the issues is that it may not actually be energy efficient if it
ends up leaking current through the SoC from the other supplies (and
long term that leakage probably won't do any good for hardware).  A very
lightly loaded regulator can be the better option.

--MtF64BimZ7Abtb4I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHDKuIACgkQJNaLcl1U
h9CbhQf/be6ztHXWexD+LixUgx6h/AViYsq/Ej7taVE2X8rdCku+8UJZ119p0yhh
sWhBAlYSwoFYLQEnRMGrNZPSJ/1cBwkDGAoC7zPnrGUsz2hlKjGzWRI9jt2Qkydx
yKJhO+0/SrqfSe7iSsITYP0FleWdgMvKthmCXgenAFmXl23EOykP40EVieL0BYKF
vNGn8iyKr6AV07dBhb7Mj6E6KzuGt83qSbYOf0ekKlIWbc0+UT+B7Poz3gOO6YBQ
auJkqyUiOmYJiqH7/sKnh0q+EbqMV4stKF1Kj8sLCVLa2qpyDhvNoSQj8Kj8P2VP
8L3bi+wmRNTlbDl7y1Vw/Rt/gOydVg==
=rjkc
-----END PGP SIGNATURE-----

--MtF64BimZ7Abtb4I--


--===============4375013137180488122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4375013137180488122==--

