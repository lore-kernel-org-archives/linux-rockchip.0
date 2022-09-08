Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65D6DC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 11:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FgJzrIQ7xvw4fvMlRzVScLMy6x4J+3c6cE52EKNHnEs=; b=rm3KvuLlsgvqtKT15t0uo+joZ/
	jRoa/v6B5O0JtZ0SSBU8DzhdmmKVfjqj9qX7Dt3Io5KMKv3s7rvfVtBkclZwl2l6bocpAPEsHTvs+
	mVqMW3ksWPqdRxMzNyLgOv0btglzWSv4/xM7NziSPSIFBZOxIye0RgGPLu1aDvgRoUgkJQfESUE/T
	mXPrD3s8d++SeHsHwWBGTdeEt+SkCewbtBzwHrgP3MUP6TYG0pnlcz07T4HTKV+5dK8sT8QaJotVz
	A5kjQVEjSQyNkeocVLOMNvPkIgYT1DnFxCGP6qzHMnUIx6e8S3WYTrOOYlzxmgHYRF6EEcDYn3v3r
	hoPUbT7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFlI-002kwD-1T; Thu, 08 Sep 2022 11:32:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWFlE-002kr9-Ae
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 11:31:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 897A261CB5;
	Thu,  8 Sep 2022 11:31:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76E61C433D6;
	Thu,  8 Sep 2022 11:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662636715;
	bh=Gx9EBlgO2Bqzbdb7MMDBfkrSeePtZm8kTIdRWWYF0Ls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W8V8oNrHvYalaCxsTonTabUx6HyWkAXsziB1v3VBixK/RiGk5yfy/HBmECl0rbB00
	 ix80mv3ds2Mfe6j8bQsBEsLGTn9vPj2xrNdXxeA1/H2yVbS53eGTvqIYtTtffvtYbq
	 UjCCiWWwxPRKQYMcWH4MI5fDBgsFQln+URVYAuKE7qo4eqcdVUKLq09tddZtuZmA3E
	 JmX9jZG5joav1RQeiBFN4jWVSuieIMdK2dyZQR1p7cHEfauEQxhmVZqgopAjNHlB6W
	 HgZHrLDKK8hG5IfDP62b2+0Uy7ZgCH0lzoF23aJEwZpv5QIi2WpB9+TkyeJFhZdZsT
	 UvObv2OAfNs7w==
Date: Thu, 8 Sep 2022 12:31:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCHv2 12/13] regulator: rk808: add rk806 support
Message-ID: <YxnSpE7/oNti9KKK@sirena.org.uk>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
 <20220908003107.220143-13-sebastian.reichel@collabora.com>
 <88f6110b-94b7-484d-cc37-d7f72c88090a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <88f6110b-94b7-484d-cc37-d7f72c88090a@gmail.com>
X-Cookie: Metermaids eat their young.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_043156_450421_6EB81E4B 
X-CRM114-Status: GOOD (  14.57  )
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
Content-Type: multipart/mixed; boundary="===============8655655810773554137=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8655655810773554137==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zfjnbY86D6IxZX3o"
Content-Disposition: inline


--zfjnbY86D6IxZX3o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 08, 2022 at 10:45:40AM +0300, Matti Vaittinen wrote:
> On 9/8/22 03:31, Sebastian Reichel wrote:

> > +static int rk806_set_voltage(struct regulator_dev *rdev,
> > +			     int req_min_uV, int req_max_uV,
> > +			     unsigned int *selector)

> Hmm. Maybe this is not necessary? I wonder if we could get away just with
> the .map and .set_voltage_sel (regulator_get_voltage_sel_regmap() and
> regulator_map_voltage_linear_range()).

Not just can, should.  Drivers should not mix and match voltage based
and selector based operations, and they should always try to implement
selector based operations unless there's a specific reason to do
otherwise.

--zfjnbY86D6IxZX3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMZ0qMACgkQJNaLcl1U
h9A3iAf/RV6xulcLF3Uiq6Nup7Itd0N4Nsi3t+C2+D49b18Gq28gAKZucesUpjfz
gVO5YeJnNX6gJnia1jDhxTAVa8r+Xy1K+6WmQGpYbfCECmTmS1v9GB3uIfOPyp5m
iWrne12WJjo1b0a52D6/EyFT2okKjmR6qNYf37LVcomneLWl/KnXnPQmcK6vhbkY
gwBklAF5YL822NCgx65aO4cgqkfIm/w7KK+y6h5DTzmXw5h+Ldi11+tMS65g5Oax
77RzRDaU91PhGv9DSN94iBnvEmXGigofOJQ9vz/HRYOTmBUNPsu5dVxXdgeVhWqY
4b6pMpBw61OJXeC3ETKEaS/j2jQfeA==
=GRVt
-----END PGP SIGNATURE-----

--zfjnbY86D6IxZX3o--


--===============8655655810773554137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8655655810773554137==--

