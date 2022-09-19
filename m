Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3935FC54EE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 14:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QUdrWsFTRd6RTxeihqNoDLn4FAP5X+QG80k4vJi7bZw=; b=NmrM8/xxpw6hfTkFIB64+97+jQ
	LHd3TpHqmu4e+QZqd6d+Z6lIcJYWwckFqbBKoU7gsCagVOKwgIhlejf3WU0hYFn5qJ7rpxjRMJ1Nb
	x3KZTY5u4JCA3h1829lYlWw7VzfKohcin/zTedKjMsHZVhvoR3CH4YGXwYSDmeUClxaZBkBt2Nlyq
	OkRxnHqTx0ZI6hN/U+QwyTYNELMy15AZAWA8uMCoRtlaJ6c48FdSUo0THCwh3lEiDMhcE7dygG+IZ
	SagbgLTTjLRVb5IqR0XtSaO02LqJieFfseYy3Ft1Te+2zHhgabiMHvddOu77ELX9/GN0vPt7Z7cD/
	oRppQBSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHYJ-00C2rt-RB; Mon, 19 Sep 2022 14:15:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaHYG-00C2ox-Ha
	for linux-rockchip@lists.infradead.org; Mon, 19 Sep 2022 14:15:14 +0000
Received: from mercury (dyndsl-091-096-063-043.ewe-ip-backbone.de [91.96.63.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 583CD66019EE;
	Mon, 19 Sep 2022 15:15:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663596908;
	bh=DJNFm5ow1ScUS1x0+XRJo/WRHt4yrriLZCg7LYoI/Wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m77qtZSbn46FLo0nsEmpUwkmjkgWDqjmfTmzlAAn7vuX7QCzR3hs67wIn1O7nCpiF
	 DiwFgcl13ZZzN19cA8bNbxxZrlHbwqRmKKQ1JOMyNP86X0FnPrXR0WIQkRfVgBOp4N
	 IYFUSxgr7TS2fOPrBVhoN1vhwUK92rNNesyTP9hY9UWkWvsQvuepZdl23lSvRLirf3
	 eSuG6b6o46iBHSFe5YMpod9N5mWXn0M/geC30xGLO/scEZKQ3JFq5ixW4YDtww2dmj
	 gIrGhsaV/H2KWFKOkFvgjEIwrLKxRIR1QTlmqaWKCA6U335azkuulzHpeCHn7QnzKZ
	 eXj5AawZX8QBw==
Received: by mercury (Postfix, from userid 1000)
	id 1D3E910607CF; Mon, 19 Sep 2022 16:15:06 +0200 (CEST)
Date: Mon, 19 Sep 2022 16:15:06 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv3 12/14] regulator: expose regmap_find_closest_bigger
Message-ID: <20220919141506.mgq42y6k2a7ie5vo@mercury.elektranox.org>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-13-sebastian.reichel@collabora.com>
 <CANhJrGMd_4pK0Avbngggs3BJme7WgrkhzvJ+VbL7-JYri37Dow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANhJrGMd_4pK0Avbngggs3BJme7WgrkhzvJ+VbL7-JYri37Dow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_071512_753465_80748207 
X-CRM114-Status: GOOD (  21.70  )
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
Content-Type: multipart/mixed; boundary="===============7566019753727011334=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7566019753727011334==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jsfypupy7a7paias"
Content-Disposition: inline


--jsfypupy7a7paias
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Sep 10, 2022 at 08:17:09PM +0300, Matti Vaittinen wrote:
> pe 9. syysk. 2022 klo 21.21 Sebastian Reichel
> (sebastian.reichel@collabora.com) kirjoitti:
> >
> > Expose and document the table lookup logic used by
> > regulator_set_ramp_delay_regmap, so that it can be
> > reused for devices that cannot be configured via
> > regulator_set_ramp_delay_regmap.
> >
>=20
> I am always in favor of adding helpers to be used for common tasks. I
> am not demanding this (so please ignore my comment if you feel so) but
> I guess finding the "closest bigger" from a table is not ramp-delay or
> even regulator specific. I believe something like this might live
> under lib - if exported.

I'm bad with naming :) If you or Mark have a specific suggestion I
can change it accordingly.

> Anyways, and whatever it is worth:
> Acked-by: Matti Vaittinen <matti.vaittinen@mazziesaccount@gmail.com>
> for exporting such a helper. (Or please disregard the ack if acks are
> reserved only for maintainers - It's just a sign that I think this is
> a good idea [even if it could live in lib])

I usually use 'Reviewed-by: <...>' in that case. But your Acked
line is broken. Looks like you have split personality problem
between work and private mail account :)

-- Sebastian

--jsfypupy7a7paias
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmMoeVwACgkQ2O7X88g7
+pr48Q//RAc8SdILtafslFNCUGJjg3RZ52DL7/45jBvpLSGdgkNlLsBxCZUutN20
Nu740kUnW/gDILLLX3J+KkTgO3Wp7Q+d0ZTy5ZWf1rnPGovd6tL+ivHihYN+s/Ya
jVgVAncV0EGMXD03HPQofyaoS4pVKXpYvDvM4Mdad9th7vYZhij7a6nn3eMBNic/
7xvFOP0hgbbw7AGEB9PdllE7BSeBxnODGJ6mwGicysDkckaPwcDUj6wkehur42uz
ZZnoG4C+hoA/d4bCDe/yYT0okaq/ZtHZT4ykQHtFXUJTymyNnfnVcpE5B6Rurxc2
1TamX/wZjaH8T+wSYMTiQ5ZFoSfSjWJ2W4teYCQO8M7s67JL8etbdNOeq/R3+bee
qB45IoXLuu4vxDEp7DQgQvtxhD5fqT5V063V3E6d8OdsAhKt+AVpgo3JWKvzMnCp
joNiHMgAhYAsnfBKJriV37jnHP5JWWNZ3CRd9zvWIwi0bMPiN3ewuRb5MnUgN0C7
kI+iGpOevRnbgqd+egWbnxf9eMOttE9dHGpvXoEhKnb6uVWk1R4CGRzWgHby3BJU
GJzN14J+5DT9d7VsQoaMsse47pBfMVdiArj7UFj93ID1/YIxg3tyyDKO3osCf+M9
bK+i5UhwwWuMAZJ+UBhRU16GpaGHPbthw7zhsCQ4H9AfJBvQ398=
=1HVD
-----END PGP SIGNATURE-----

--jsfypupy7a7paias--


--===============7566019753727011334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7566019753727011334==--

