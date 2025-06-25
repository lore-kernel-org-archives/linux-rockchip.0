Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4153C83000
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 17:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PwXMbqO0fvCLYqzHfaERVIyquijYLmCmnJxKJO4U69I=; b=In5hrmoMZdxS2/qtlBYdXMyLGu
	L3oQky2AqLQsKqwNAOFqrL7VzYW7EKomkQMt9X12SHer5gZ2XFqcsfiBJVEoSmLYhIX4+DZkwjMwR
	eiVBrYXgVMvonC2RfTKrlFGL0frtZ/ECoJns6NMd1sh6nfbtNECmgVj9wsgPHZGA3lpmhNZc1LsuN
	eQcYYlcstLg4AkxMsmkAQLIy9PXY1CDoe9vLNGQVi5V5c58PmKljzMMlpCz8m0gr1B+UoWN8nRugy
	UA1DMfXGqUYNhEL1dDCqHe8DM4x/NtclgcUlULlFrw1Zj+fZLUf0vameEmh24xLc+mM2vzWd5q7Mt
	ya1KQKvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUU35-00000009T4t-0HMm;
	Wed, 25 Jun 2025 17:36:39 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPVn-00000008fT5-1VJO
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Jun 2025 12:46:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9CE13A50E0C;
	Wed, 25 Jun 2025 12:45:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAC7DC4CEEA;
	Wed, 25 Jun 2025 12:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750855558;
	bh=MxSwS/c3MkpoOIQEtE7TxBLZiOkUfz/dz5gbPMFBRss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ci3Vkzq0CO/B5RaEvCVERNHN2k8J15szNfNrx/Jz2ujCSJhooPBnw1WOOukIYPY9g
	 3XBwQaAUNNYHZEgXEMOwedAmTYNoPNdgzY/VyQJ0lcNWI/+CRGL2/w4tL30wW9b3Bz
	 bemwwwf4UZaXZd0YXQ+0bL3NAhBWQJkbgcH8qhZzxyaduRF0dFriBmoMuGIAwObRvE
	 nk0fq+h9jErAMT6szw37AYFWO7Sn+C6zz+fwfG5yZqMag39CMA7b37LlrG00RD3fO+
	 LL6N+r9o3sta8a7X24ORYMCVHPvk0jn9221AJkctZFW/a/gGAZHgCFH+CHsAgGIzun
	 ANOlVo8fLCt5A==
Date: Wed, 25 Jun 2025 13:45:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, lgirdwood@gmail.com, sre@kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 4/5] regulator: bq257xx: Add bq257xx boost regulator
 driver
Message-ID: <92fc643b-3ef4-40f5-93e4-cc7c16e461fb@sirena.org.uk>
References: <20250623162223.184304-1-macroalpha82@gmail.com>
 <20250623162223.184304-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250623162223.184304-5-macroalpha82@gmail.com>
X-Cookie: He who hates vices hates mankind.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_054559_466686_A6DBA886 
X-CRM114-Status: GOOD (  10.22  )
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
Content-Type: multipart/mixed; boundary="===============6899608640483280747=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6899608640483280747==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XfbLf5ezv7/iStxc"
Content-Disposition: inline


--XfbLf5ezv7/iStxc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 23, 2025 at 11:22:22AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the boost regulator found in the Texas Instruments
> BQ25703. The boost regulator is capable of outputting between 4.48
> and 20.8 volts and between 0 and 6.35 amps.

Reviewed-by: Mark Brown <broonie@kernel.org>

--XfbLf5ezv7/iStxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmhb74AACgkQJNaLcl1U
h9C9yQf/UDpz47ltA1sKs2voaIQHw0rC3X6BnaMmd4FZypOTbU0om42KvCrdnXDJ
GHVARVAWEMDJ3Nd6AyGE3z3mqkg3ojjiVFYOVCR3OpvaFIU27Qr/lPN0+JrChNgD
DSsib9j7vIv3s00zqtsafqdxDZqZ491/i4KhGKWg9Ss6KxBBGrMnMV/MpSgq2u+c
BmNRa9nbYOONjWV3SfytuLGVZ3DkbPlfrNHZwyx1+ZjFZrie78ZwvaXfmy8j9kMV
9mHs7/LUBj4UlnWNal28u19IlI8eJX3Pzae+TYdKkIi0ahBms8CBgEzN7lF8rG7p
xB850eF10a7ySgMa0L2apcoNkzryDQ==
=M2Wi
-----END PGP SIGNATURE-----

--XfbLf5ezv7/iStxc--


--===============6899608640483280747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6899608640483280747==--

