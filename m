Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98146C52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 19:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxjLCtwghcGmMpUIdnTAKZwV3rYxjPlekGxoAB52zNo=; b=Kzm3NwZHsBYKfxL3DytqVbCAYQ
	3f+HT1ktf+17K+6glNk3i/zqVERIeG5G/mQL9d96aAbO9o/SCY2AvB4vjorZ/4UjRizJkYZ7+3gZq
	8Qg26vmZJ2VavEhpLeUlrLSX9k3Ia6ShweFrfjMtP6J8rnCdvs3fbs8a71Tglse2/FTNjwuZFB9cX
	SS1nhI4H9tipMeFNuVYxU3jlMInBItN7OeEf/aW2Fu+3nGZZ1taZThegXgMCqTJgK0QXcF0Kg9udJ
	DgTvg2kMGASs+z3wW5nFDliXmx16/VxedAIgxcBq2tLIfExlPjxOqGt+lpGcaN/FKtjy8S6J+ecmK
	rUvS6HJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seJcR-000000082oX-3KHu;
	Wed, 14 Aug 2024 19:25:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seJcO-000000082ny-1RKY
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 19:25:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C1AC61B0A;
	Wed, 14 Aug 2024 19:25:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8908EC116B1;
	Wed, 14 Aug 2024 19:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723663511;
	bh=dfJ1fBH05zx/2OShlNq0Iby0NYbj5piGEzz4tv4Qh6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TPT86kebiOzXPqcQLfKGeLhlp7SZhZIfv881BlIxgYEl7xqS14k7oNUcyzI3Znow+
	 PWGpq6j04zvVTQhk9IlZdg1iMktHrrCJGORX74FCSufXe6DmTIhYj+Zq6uw7nGFnJb
	 kBAFrnkAZZRoXW7bjuuiWdhg4ni5I5yW1b6ZQr0O758UL4tmbakFTLilaGi+4aHo3M
	 mpgeEzOKfq6M+NPPtexN0Qoa4032xjVl7nmF83zat7nNcukGmdJ0fCuLI/Roy0gcLq
	 56fh0DbLe3WzWTjNoXjyNleRtNS7hRZIi1L8vRW1faUHjTY7sWC9Ff8HbrLo4dZ7Pl
	 lkbTiX7Yf2JTA==
Date: Wed, 14 Aug 2024 20:25:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC] regmap: maple: Switch to use irq-safe locking
Message-ID: <408477bf-2f00-46cd-b962-cb2d17bde8ae@sirena.org.uk>
References: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
 <4a8c9f85-3785-4cbd-be9b-dc6da9bd7324@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <4a8c9f85-3785-4cbd-be9b-dc6da9bd7324@sirena.org.uk>
X-Cookie: The second best policy is dishonesty.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_122512_477357_A6182AA6 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Type: multipart/mixed; boundary="===============5775445110238163646=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5775445110238163646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OMyhguhabT8MHZgD"
Content-Disposition: inline


--OMyhguhabT8MHZgD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2024 at 08:04:07PM +0100, Mark Brown wrote:

> My first thought here is that if we've got a regmap using spinlocks for
> the regmap lock and a maple tree cache we should arrange things so that
> the maple tree lock is used for the regmap's lock.  That would however
> involve some unpleasant abstraction violation, and possibly some macro
> fun since we'd need to elide the locking from the cache itself when
> using the same lock at the regmap level.  I think that's going to be a
> case of choosing the least unpleasant option.

Actually I think that modulo issues with devices that disable regmap
level locking entirely or use hwspinlocks we can persuade the cache to
always use the regmap level lock, even for mutexes, which might clean up
the code a bit and would avoid the double locking for the common case.

--OMyhguhabT8MHZgD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAma9BJEACgkQJNaLcl1U
h9BU5Af/eE0XqC6itGw/R4iiMHSEuo/xP3knXl3KQwYKBBCNiCimZVVvNEPt5nnm
S6CHcBolLl3+YcSFhrEyUnUTxyEZ0Njbt0TA9sgNGQVYEWimrDz1t74Sl2H7337r
Wtyc0BAG/PBP8kN4BE1x8Xv1w/Y28cl02K7UnvdXhsHSpgBvL9RG+TDxzc38Ntyo
17Zg5OKO5baolxvsFiuvQALbnYXXDMhjFpbQJEFwD52IEodjiyEobRUjjDwvfCmh
N/KJXDQTs6kjcvtu6da3FAJcnOCO7x/PgSnMXzoQpJ8z/fOE7t5E3dKvbkmzh97C
9K70v242RurHrI0yDb2zHxJv7b/KqQ==
=b5eI
-----END PGP SIGNATURE-----

--OMyhguhabT8MHZgD--


--===============5775445110238163646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5775445110238163646==--

