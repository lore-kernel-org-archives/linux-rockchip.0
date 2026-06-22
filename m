Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC54ECD98F2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=izCi2LEU53gYZbT9D8B47HyMSWleVGV7v4UBeGB/C5A=; b=3KrwF2Jt9v+eGIcQGZXTkG7jXl
	X/+tGhP1+mlbXodhtZPex1SYpXztHmdT5r1Tp/7uSmc6OIzXjYoyEjTiCxK35jmct0IOPZUE1ErB2
	WTM7bG176R/N/42FnkcQAf2daF0Z1Ao3o/8ThEf0k7P5nZSHk8wGJ1rxcix1LbGWwXOoy+afQgcyx
	AxnZsdfCOtf6Rf0fX1ISivjSdwOrTVF6AGbyewkcR6c4X/VzZIbQq1J5d/d/9SlWsy7ET/rn2lieR
	V+yxDc3VmKvykx+zYnBSxzudc+JL78Tz705OGdwpMNZDDEw3+fIUraU99h6qCW184uqKPOgJcPRPL
	Y6HUV4qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbeJz-00000004zbz-309Y;
	Mon, 22 Jun 2026 13:04:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbeJy-00000004zbl-39HT;
	Mon, 22 Jun 2026 13:04:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D2C6C601F0;
	Mon, 22 Jun 2026 13:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59A521F000E9;
	Mon, 22 Jun 2026 13:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782133453;
	bh=9uJLyNreVTlbr1SNYZGicUMtN2H427gOySX/h3LnkcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jH7lhj1EqyIwd+vhCsjC43yNRV5CTq3QC5YsPrfJaOYXH/R7pF+l/oZOTKBCfbVpT
	 V7xNLLAgmtFd0+G4BfktMEAJ4iilOuSjdn9sNJ/y7wqXPHaPkQLZbynQj0H9dDteuN
	 62fpUdATTz1rBkqB10X/12gPWFcaJT1Yv4H6c2MPvCcSwJAVzw4l88f4AgB/M9ve4u
	 QKU605Qa+x+AVvNUKODHvj1DWMIgK0KSDOop5uxasdLeY5YT2679RapPTF6ZLdtnL7
	 gacSIBp20D3ZCBGK3Yi1UK6RmmgMG4UaWEob0j6qgGD30N2Sy65D+DUG1vw/Ahzjnl
	 X9uYwPpy/bEGA==
Date: Mon, 22 Jun 2026 14:04:08 +0100
From: Mark Brown <broonie@kernel.org>
To: phucduc.bui@gmail.com
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: rockchip: rockchip_sai: Hand over hclk control
 exclusively to Runtime PM
Message-ID: <229ba136-66eb-4a30-a316-58377836b4dc@sirena.org.uk>
References: <20260622005613.21870-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260622005613.21870-1-phucduc.bui@gmail.com>
X-Cookie: Now I am depressed ...
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
Content-Type: multipart/mixed; boundary="===============0923629005758045836=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0923629005758045836==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cKNKF0zS5mQrCs4i"
Content-Disposition: inline


--cKNKF0zS5mQrCs4i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 22, 2026 at 07:56:13AM +0700, phucduc.bui@gmail.com wrote:

> Although switching to devm_clk_get_enabled() in a previous patch was
> tested successfully, it introduces overlapping ownership of the clock
> lifecycle. Since the driver requires early register access to read the
> device version during probe(), enabling hclk at that point is mandatory.

> Clean up the design by:

>    1 Reverting back to devm_clk_get() to remove the implicit devres
>      enable/disable behavior.
>    2 Manually enabling and disabling hclk explicitly only around the
>      early register access before Runtime PM takes over.
>    3 Dropping the stray clk_disable_unprepare() at the end of probe()
>      so Runtime PM solely owns hclk afterward.

Note that runtime PM can be disabled at build time so we might not have
runtime PM at all...

> Links:=20
> 1 This change is based on the discussion around manual hclk handing durin=
g probe(),
>   as raised by Krysztof:
>   https://lore.kernel.org/all/20e4754b-ea9a-404d-b529-ec44a7263cbf@kernel=
=2Eorg/#t
> 2 Background for the earlier devm_clk_get_enbabled() conversion:
>   https://lore.kernel.org/all/2818018.CQOukoFCf9@workhorse/

> An alternative approach would be use devm_regmap_init_mmio_clk() and let =
regmap
> manage clock enablement around register accesses. If preferred, I can rew=
ork the=20
> driver accordingly.

> -	sai->hclk =3D devm_clk_get_enabled(&pdev->dev, "hclk");
> +	sai->hclk =3D devm_clk_get(&pdev->dev, "hclk");
>  	if (IS_ERR(sai->hclk))
>  		return dev_err_probe(&pdev->dev, PTR_ERR(sai->hclk),
>  				     "Failed to get hclk\n");
> =20
> +	ret =3D clk_prepare_enable(sai->hclk);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret, "Failed to enable hclk\n");
> +

> @@ -1482,8 +1492,6 @@ static int rockchip_sai_probe(struct platform_devic=
e *pdev)
>  	pm_runtime_use_autosuspend(&pdev->dev);
>  	pm_runtime_put(&pdev->dev);
> =20
> -	clk_disable_unprepare(sai->hclk);
> -
>  	return 0;

Are you sure that the runtime PM state there is such that it knows a
reference is held?  The driver used pm_runtime_get_noresume() so the
device didn't have RPM_ACTIVE set I think?

The runtime PM API really is a miserable collection of landmines :(

--cKNKF0zS5mQrCs4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmo5MscACgkQJNaLcl1U
h9CQYQf/adqv8RJKgMokC1NRZh4uUXUMaQXveY6Q+MCWIdNoRHiASHqgFrTG9Pxd
e7ai470vl9oHiWIgbD5/JmyvhvA/qRMeyl2rTW0dvGddQ2QIpcHGCXe5Q4+iZpnz
puv6Y3f5+oheBWibcvRji8Iujgv6Lau795A/Nru4W23LbqbUhmmKkHpIQTOeCqK/
5gW5gPobVrHrlI7GiZVNmtXgOAcbVN0SarwowDibZVU6/a/RFL4fYohXOarhx92z
PGH6Pu+Ga1e19CAXZD97Rl/tG4Yeye7uMm52FdKYOucHzzu8jNnriptlU4OVom3b
U+kSp5Fz3tWtqIKtTpspBv01TcoAAA==
=XgUn
-----END PGP SIGNATURE-----

--cKNKF0zS5mQrCs4i--


--===============0923629005758045836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0923629005758045836==--

