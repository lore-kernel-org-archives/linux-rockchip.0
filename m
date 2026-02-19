Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 447A3E9A03B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Feb 2026 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y00ZTA4MPyWZo/nF9Zrd2YRG1HCVJh1Ef6sBddZxmMo=; b=qfcsOtSACxqdhMJ+AGn0C5GmlA
	Fo+faVQ0RaVSN33C5OSd5y+eiYf7c9k7ILk2Wmm2Hb2Oxi4zAt3C8K1LcYZa5rYz7QsfACa9RD9+X
	p2iH7XIDSYmGrtoc+UPxkZMr2aOMiWor6tdWGzsK6KkrpDiHVf8EUtFVvjrIe6Po9pWj8IfNndrAd
	mNPtkBqRwO4Aus1b5PMRkVHnpbp3V9Xk4Cu6ogDj6GiITddh+6r+alxWYhnAdFqYfZY2o4/IRzVZa
	JfGbsupC1MYIR6N3A/welvOMgaEhJIY8x0y96BbAeUSslmkkP7dIxrhaXMSCIBSXDURG+4b3dAjvf
	/NiRyOyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt3F7-0000000BLBu-3BdN;
	Thu, 19 Feb 2026 12:34:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt3F5-0000000BLBE-3CGZ;
	Thu, 19 Feb 2026 12:34:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 296774182D;
	Thu, 19 Feb 2026 12:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 536FBC4CEF7;
	Thu, 19 Feb 2026 12:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771504490;
	bh=YAnTtW57ZsdLmBjDX/bZxNdgmLb1OfT40saBIA53b+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AFv89y4HUrTsz55/lVePGduxlo1QW2hsrJMrQYPcKfU7w79IurjiiFvXeJqJXfWO+
	 y2HHpNtgrWFDe+peo9jOgmUFwQ9Y8F/0zXj/DIec3H1jPvEWVxJ2SYGJY/Ox+u+KQp
	 V9POIMxoMXbQO8LxFQ3R+2aj47t6Q6ljv3U6o/1Eu8hccju8vy+xKCZ8WhTCldBQf/
	 r6wd/FImfaPo3x82tZ0KOdbA5s+cZlsaV4DvRVs/sBiQ6ZRD3Yy1nBYlaYeq1z40I3
	 X1EkGwClGvrrzDuppebolhSMbvX4hqxsQA8pFJKjYd9Ytxvebavm+XuKH6CZN08gPA
	 l+aWwuaqnr1RA==
Date: Thu, 19 Feb 2026 12:34:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s-tdm: Use param rate if not provided
 by set_sysclk
Message-ID: <00698644-63dd-45b0-b43b-a7bc0fa459b1@sirena.org.uk>
References: <20260218201834.924358-1-detlev.casanova@collabora.com>
 <20260219093718b7d29076@mail.local>
MIME-Version: 1.0
In-Reply-To: <20260219093718b7d29076@mail.local>
X-Cookie: glibido:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_043451_824092_B8FA82D4 
X-CRM114-Status: GOOD (  12.99  )
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
Content-Type: multipart/mixed; boundary="===============0607468114146845247=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0607468114146845247==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="55fmptbvw0r6A80C"
Content-Disposition: inline


--55fmptbvw0r6A80C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 19, 2026 at 10:37:18AM +0100, Alexandre Belloni wrote:
> On 18/02/2026 15:18:34-0500, Detlev Casanova wrote:

> > +		if (!mclk_rate)
> > +			mclk_rate = DEFAULT_MCLK_FS * params_rate(params);
> > +

> Maybe this could be set as the default value of i2s_tdm->mclk_rx_freq
> and i2s_tdm->mclk_tx_freq in rockchip_i2s_tdm_probe instead of relying
> on it being 0 and testing later on?

That makes sense but since this is fixing a regression and I'd like to
get the fix in I'll apply, we can improve things incrementally.

--55fmptbvw0r6A80C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmXA2MACgkQJNaLcl1U
h9Ctsgf8CssLHe47N22ZRkgHcLkjAj5HSKx85p5fThpOXttkqWXR39rMZqpMpus3
kemlx0F0ycZFJ0QfizRsfw9P4irvqgIL9YEGSztV7NONyp7O4rMhU0jUubpjIX+V
bIa7BC22qD1h/3vIgarZAwnfnAzgqVpEjoHECp7/6aHASRzGFiH6CR3i/gUo2MRU
nJMlmqyx0U9xeWeg4VJuUWd4T2W3TbjFdzo9aslqS7pKJvk9pytKVlJBLKIiSeN+
hQf3XJJhEYBzsclLTBbF84cVeiUtaPatdZMLuNYx6m861iI2Ut4bIY2ccfMfPUnH
628Y2IrK8Uy1KwpQfzpMaVOJsXS2Ng==
=IFYo
-----END PGP SIGNATURE-----

--55fmptbvw0r6A80C--


--===============0607468114146845247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0607468114146845247==--

