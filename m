Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE27AC77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 11:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EqjtEu2w8zmWSe8v4DdF2BD0BBHTm/FoY5qm+OrtVe8=; b=V6rsb81w+Iv24Xna1o35CikFIM
	y4wc2klHV2rXE7UqTYZGxOy5stN+fkGZzllHPTUnTC3zFqYIOjFWXlT8xqFUzLuWNa4LbhflE+hcR
	Z2DP1yb70CO93iohYf95+LUH00tEs14RwbLWKznLCskyv3jNJjgqNwP7+/9JN6+yuUjvmmpM67AU4
	sPk7+FhbtUFeRS5EQsffALMnZxaVFtr+Hmm7oY4w8+23n0zIuIV6VcSNbKOdES64kuhLbFFdjUe9v
	I8CPuamSpBla1qzD8StIAtimUQ6Hz6oW7pYCpDXi5bNDt+utUlYy9oNb4EQAMDuPPP2f8VhzoC+Q3
	KSXQ0OJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1n7C-00DMzK-2d;
	Wed, 24 May 2023 11:57:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1n79-00DMyi-22
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 11:57:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D705A6173B;
	Wed, 24 May 2023 11:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E39D7C433D2;
	Wed, 24 May 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684929430;
	bh=iIH0qE/QN5EsuIOiBySRP5iUYWEHMgTqsDrIgV1fXKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ehkuyuj0kVP8pTXI+LO8ZSMqaq8CBRlenOEKbSFp0P6QFaWLZ0z3kMpjkoOxrQu9w
	 5fqn2e9BZI1GDQTVSJinI/A4aRJZTqIU3Fr/7T/D6rHzakhbBWUcSyc4UZcCXFVrZ9
	 Av6x8fFlY34TQ+WCt1BI6uXPPuMIErnKXhQdv6YHWVO8jqicA7XjK3+1Uqt2VIumSB
	 b3RYpz3YrEynTF8Kg2wGKir0/f4b8FkFLaQEDF8XB//EfQTLUIG/tDnVacENi3nMT2
	 rOTMwEPvIt9l/p+ecjhSl+LWR+JkuJqMdhIYcJsW/G7hYJdoDOZIgZKUaQJQH8qp64
	 xSLmcT1kHZp6Q==
Date: Wed, 24 May 2023 12:57:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
	lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Message-ID: <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_045711_715342_EA34623E 
X-CRM114-Status: GOOD (  12.41  )
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
Content-Type: multipart/mixed; boundary="===============3576099249602884394=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3576099249602884394==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+rKVKEWVYZn7J9Tb"
Content-Disposition: inline


--+rKVKEWVYZn7J9Tb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:

> +static unsigned int ratios_12000[] = {
> +	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
> +	48000, 88235, 96000,
> +};
> +
> +static struct snd_pcm_hw_constraint_list constraints_12000 = {
> +	.count = ARRAY_SIZE(ratios_12000),
> +	.list = ratios_12000,
> +};

...

> +	case 12000000:
> +		es8328->sysclk_constraints = &constraints_12000;
> +		es8328->mclk_ratios = ratios_12000;

The other constraints have separate rates and ratios, with wildly
different values between the two - the ratio (I'm guessing a clock
divider) being written to a 5 bit field which obviously can't contain
the actual sample rate.

--+rKVKEWVYZn7J9Tb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRt+40ACgkQJNaLcl1U
h9Aw1wf7BFOU6DO0NZWHZ9jydC567ScFkTrSAt6wSkPFgkeD7w4S0T2Z3oq/wTue
a8ekwXfod9RDFZQx9jlJTNU4rpEhoY52WPbrSLnXUacpDtVMbmG4KlsVyjMBDXJf
DKgHb2tx6d7ysETphH0A7nqjc2Vn7Av+Gih4f8aVTXVopI5KFe/jqqPZP0u5hcNP
bW2oLU1i/eFxKiAtq+f4Nt3x4IOF/TEP2YhTSYuvfc1X/S0v65Jza5ZjjYG1DQnA
wgZNjZqNC6OoFXvUGgnh8EogEKdhRkbxXmVaYAa3los6gQy2MOCCwYE0SpDMvx43
CNoKmDoevLKi0tK+KksbKcGEzoW/mQ==
=sTV7
-----END PGP SIGNATURE-----

--+rKVKEWVYZn7J9Tb--


--===============3576099249602884394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3576099249602884394==--

