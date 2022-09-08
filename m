Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18B42C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jMWCpAbhaOsoCNal/+NQWodTSmzUPdXUohO9MYwoYsU=; b=bLTq3JEbvxwMS3BJiiBZN1+1Bq
	8df12QMwSGr/cmxjZZqZe+OzhUKKCZClr9hhAeZfV4lhYtktx/74COhf/W/4Dht+J2bnGTzGfLwHI
	4Z7K9ZzArWoUrUvAm0P9g0kEDRmokMftQ/ZtiYpPnRWaaIuu+6Jupxs47sXbjUhvp7efhv0WsHdNL
	/X/x/5ldCxZu02kfklv1jCLnI1dv2alAMUoY4Wsysv1S/z8Y66lz0T+BEL/R0d/foN5ZRiLr1EK51
	VBNh4PftUK47BX8cGNOCMxy8i4DlmbJc9GPRZwmyExhszDZIdAYnaDRTC9ByWDDRo5SYXU+UA/3KG
	IdHLTxSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWKWE-005rHj-Pr; Thu, 08 Sep 2022 16:36:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWKW4-005rCH-FZ; Thu, 08 Sep 2022 16:36:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DBCEB61D09;
	Thu,  8 Sep 2022 16:36:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D8FEC433C1;
	Thu,  8 Sep 2022 16:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662654994;
	bh=z+EAy5tr+0u3cXH5bl2QTwxzn2sBd84H77A80gvaElU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=alCtEdhdRgiGW9ouvPeAWzLHKBgiFcKflgrGN4umL8ZgvwlCt/vuOHyxMsZlaOknf
	 6r9awQI3KJ/7JMagoAP2TYbUZN+ihpRJrrqBzXa0775dC/zJbek88ugWWH8ijBKMDC
	 SUC1n4tLJ6YaGJCuyYtOMcnKMI3iUxNLqChE4V+nIxwxlaG4jwtRkgHCczbCOAEqhJ
	 JjMm9OSWn4KDv5OWHKig1nleHbxkCmn3AcoAW7Wg6MUXy6vvE+a8ecf7NZ12roYK26
	 S6toLc9x/ERxzgQLxng2NdgAf1E69bbExqT0yMCbsK+y0EZw6pF++kBtjsMRAhrnVB
	 MjlSz3kQONVtA==
Date: Thu, 8 Sep 2022 17:36:27 +0100
From: Mark Brown <broonie@kernel.org>
To: luca.ceresoli@bootlin.com
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/8] ASoC: rockchip: i2s-tdm: Fix clk_id usage in
 .set_sysclk()
Message-ID: <YxoaC5OAv/oES+jQ@sirena.org.uk>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
 <20220907142124.2532620-6-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20220907142124.2532620-6-luca.ceresoli@bootlin.com>
X-Cookie: Metermaids eat their young.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_093636_574957_B0AF639C 
X-CRM114-Status: GOOD (  16.58  )
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
Content-Type: multipart/mixed; boundary="===============5868703029760372777=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5868703029760372777==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n9PmSJv+Ru1ZxyoW"
Content-Disposition: inline


--n9PmSJv+Ru1ZxyoW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 07, 2022 at 04:21:21PM +0200, luca.ceresoli@bootlin.com wrote:

> -static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int stream,
> +static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int clk_id,
>  				       unsigned int freq, int dir)
>  {
>  	struct rk_i2s_tdm_dev *i2s_tdm = to_info(cpu_dai);
> @@ -978,15 +981,18 @@ static int rockchip_i2s_tdm_set_sysclk(struct snd_soc_dai *cpu_dai, int stream,
>  	if (i2s_tdm->clk_trcm) {
>  		i2s_tdm->mclk_tx_freq = freq;
>  		i2s_tdm->mclk_rx_freq = freq;
> +
> +		dev_dbg(i2s_tdm->dev, "mclk freq: %u", freq);
>  	} else {
> -		if (stream == SNDRV_PCM_STREAM_PLAYBACK)
> +		if (clk_id == CLK_IDX_MCLK_TX)
>  			i2s_tdm->mclk_tx_freq = freq;
> -		else
> +		else if (clk_id == CLK_IDX_MCLK_RX)
>  			i2s_tdm->mclk_rx_freq = freq;
> -	}
> +		else
> +			return -ENOTSUPP;

This should be a switch statement for clarity and exensibility.

--n9PmSJv+Ru1ZxyoW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMaGgoACgkQJNaLcl1U
h9AUXwf/Ybq47bEk4QDfoPEAToGlvieUKHsFJ8BDFyusjrLmwXm1GWgzWOuF7VuB
rAHrRYsRWOIXHMW6oVOf+Zlll9w1n292d2eyelotnTsvAAgBi/vG6g4OmOtTD3I9
W9rPB2x+xkR2rz/sQd/hbGxPxa6sU0ymEX5ScOuA9NejRSr3Y0t/GgY3LWOCKJsC
2U9Oj5P/qX4qPDo/6Qf7ybfVr7jXwWsatgIzX5DyRpbKbvk9JbDMv5dssp9VStUU
Q998qqb8+Reec2p62tuZd8JpotC3OVhkiSTcHeO0UCgcuLCz+QQ3PPxgESe9BQWG
wUSmVEs8J1Ushh+d+5shIT+ZQyBApA==
=MFhn
-----END PGP SIGNATURE-----

--n9PmSJv+Ru1ZxyoW--


--===============5868703029760372777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5868703029760372777==--

