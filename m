Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA2AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 12:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jgSGT6vLuN7rPpuKGlRYs+7+URrxu11pDmiRZpYn5Dk=; b=U035pamK6LtVJxw2IWBoSd3X1b
	q78c8ZuYNJK4VL6V4mgO5mJeKCVgiToLU6g6V1F77NpOumekHSZJCAo29IvtvX7M3XGAq5rTQPgsW
	MEO1Ij/RmPR1RnFuWzyfdCaagsu5HewER1KW+SD6GiL1QH1xJXrYOEeC42pLMmqPiIXts+O5E8ub4
	cWuKTxfNag7NwH/d5tuy8exqNngx2O6wEya3YAsM11pUOSsuWR3H7QM4oHCNMP4cNk1aYfGIN4oPq
	a6SM9N2y0Cd0bUe+jjeXXAvJLvaK/FCWUSd2mudwJt2HpY4juXWeulWzs8pnNpSXBujkWtR3Z/a9b
	kNr/qH4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzIDv-002PfX-Ux; Mon, 20 Dec 2021 12:57:03 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzIDh-002PbT-AI; Mon, 20 Dec 2021 12:56:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id F074FCE1028;
 Mon, 20 Dec 2021 12:56:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C38CCC36AE8;
 Mon, 20 Dec 2021 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640005005;
 bh=rgSxNZuYNKnvaWu5+vHosf1ksgy7b5jx0xtGTo6DX1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GQSyC6/QJJbShGxsT9owPDFAtq/M2870IfjsZfuDI3mai3d9kdp3enTN5nNlGxz1r
 ORXwVKxJnS+VpyHY//fFn12p7BlGv8OVssbSpetlvS/AKlDbLGRRvB82tohal4JY2S
 aA8YmcRdp7wEieaoZwH1FPabBPXjRFpfksu2p/+NiJol4nQMHJYfgcNcuHoTrRGlk4
 0xuXFNEBdDo5jtTTPMruMvjNJmvUOexkg+WZ/7qKOr8YryP3YrgnODcjOaTuApcKvq
 L/2piLI5MCKtfcW7L3rZD11YEdJIhm8CYmB2MBP8maUVSxWdex91rGzmIWsbsju0N/
 wgUNO9xyiofXg==
Date: Mon, 20 Dec 2021 12:56:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <YcB9iLBtnMZIGzlP@sirena.org.uk>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
 <8386046a-f673-b134-89ad-0117c70aaa51@arm.com>
MIME-Version: 1.0
In-Reply-To: <8386046a-f673-b134-89ad-0117c70aaa51@arm.com>
X-Cookie: Christ was born in 4 B.C.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_045649_570087_30734193 
X-CRM114-Status: GOOD (  16.57  )
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
Content-Type: multipart/mixed; boundary="===============2164229074086699066=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2164229074086699066==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6VXxgfDCSlzD+vta"
Content-Disposition: inline


--6VXxgfDCSlzD+vta
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 20, 2021 at 10:46:34AM +0000, Robin Murphy wrote:

> to the regulator question either way in this context. FWIW I reckon it would
> make sense to model things properly and teach the driver about the voltage
> domains that actually own the input supplies (maybe with a binding more like
> I/O domains where we just have explicitly-named supply properties for each
> one on the power controller?) - it's a little more work up-front, but seems
> like it should be relatively straightforward to fit into the genpd
> hierarchy, and be more robust in the long term.

This is what I would expect too, I don't see how it is possible to
implement sensible and robust usage of the regulator API (or other
provider APIs like the clock API for that matter) if the consumer is
unaware of what resources it is supposed to be managing.

--6VXxgfDCSlzD+vta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHAfYcACgkQJNaLcl1U
h9Aaggf6AsFohfCsdUj6XWVefSMNs4AGSCOIyZZlzxHrDxIQpmO4JF5uzSC/zzsV
FN0MoySNDMuedwW+bJvtuiPBFqUwecmyX43BcwSfFYW4UTWZehf+kXtCxbsNZwZK
nNOuof+gLWn84w3IXCoS/LoH1VQUm2avLFhrTSrCQUSD7V4EMuo4M7A3SZ0GrxCZ
evQTX6G+D74Ty34eowN7pG764MspUPU3l5hasLPXqkmZenhlEwp/2lhzsch4mitE
so73h4y4gvoglpBe9A7oddeLyhqBlezAFGRqFhZ0OsYXbCpycmadlKRAGGgoIwOG
ILiswrwSDDIQhI3CAoMPAFDK0XGV+Q==
=XGPe
-----END PGP SIGNATURE-----

--6VXxgfDCSlzD+vta--


--===============2164229074086699066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2164229074086699066==--

