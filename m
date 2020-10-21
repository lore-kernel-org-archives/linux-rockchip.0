Return-Path: <SRS0=RUTs=D4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB90C561F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 12:39:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 318132224E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2020 12:39:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HT2S33YB";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkxgulnN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 318132224E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOxXL/wy8methECYSSNwduDrN7Yl+KdvBECZxWnHipw=; b=HT2S33YBVLD3RxQzfBaICzeqT
	HH/tD7wLzpxqxWVUwC3ZgwdTUFOGcTobZJoZ37f5RpgaSzok5x/SIKUegENBGWvitHbs27gVjMMtz
	efufOXbAWclGTjblDSBFfUtsu4PkVJQHO4wOu257RmzOV2PzZvvFiVFGIAyDf1bGK0wgbwL0uAiFd
	veM/ExI0RXmn96K0zujByN5z0OmaQOSju5EGXodNVdptlAb+uEk+s3auO3dgpXrynNL8N7VVdSfQg
	cKRKjtjWU1ohR42MO0rLPrMos131Xix3dgheCoTHDTK3I2T7+oZsDh8SbyXGT5VHNyGrgJK68h/hD
	Um3PTl80g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVDP7-00061J-90; Wed, 21 Oct 2020 12:39:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVDOo-0005uo-SN; Wed, 21 Oct 2020 12:39:28 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EE1422249;
 Wed, 21 Oct 2020 12:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603283964;
 bh=mWU0XX6TP23oXRtNhUtKZR9PQ/87umOD4p89GJOQWxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZkxgulnNF2NFH9jo07oDU4EUHcw6hfl48FCyYKMbN/fSIbwuhDeBZjNQiRP4WeJVn
 B8QXAA2jbjmKiJc96KJ/3h4MnZ5r7rEFwrOTx6tdj9oAJl7UOSCPeJ3t17BykafjTz
 Zzm1hizSASBgt/k0uj2D29o+8bUuTp2GI6pY/12Q=
Date: Wed, 21 Oct 2020 13:39:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v11 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine
 bindings
Message-ID: <20201021123913.GD4497@sirena.org.uk>
References: <20200914080619.4178587-1-cychiang@chromium.org>
 <20200914080619.4178587-3-cychiang@chromium.org>
 <7bdc0d63-27b1-f99e-c5f8-65f880733d16@linaro.org>
 <CAFv8NwLkvxX2avoLY+4NY5gBv0dQ863hFFiqy7iQOJxH4WenmQ@mail.gmail.com>
 <20201015161251.GF4390@sirena.org.uk>
 <CAFv8NwL1xX=yPGFqQL_mOzAnPTfH0Z0J6ibG1+D32W46Nx0KYQ@mail.gmail.com>
 <20201020143711.GC9448@sirena.org.uk>
 <63f1a29c-0758-97b8-ce80-fe43d91630fa@linaro.org>
 <CAFv8NwJ-+f146Ss9Mk=nEXjm1B--ZwhAgnfx-cTi7DGEKqC1-Q@mail.gmail.com>
 <e876421c-dfeb-e853-1b65-53a786e9bcf9@linaro.org>
MIME-Version: 1.0
In-Reply-To: <e876421c-dfeb-e853-1b65-53a786e9bcf9@linaro.org>
X-Cookie: That does not compute.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201021_083927_105396_9302AE20 
X-CRM114-Status: GOOD (  13.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Taniya Das <tdas@codeaurora.org>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Takashi Iwai <tiwai@suse.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
 Cheng-yi Chiang <cychiang@chromium.org>, Patrick Lai <plai@codeaurora.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Dylan Reid <dgreid@chromium.org>,
 Jaroslav Kysela <perex@perex.cz>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6383899849125143192=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6383899849125143192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/3yNEOqWowh/8j+e"
Content-Disposition: inline


--/3yNEOqWowh/8j+e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 21, 2020 at 01:00:54PM +0100, Srinivas Kandagatla wrote:

> This is totally not very useful w.r.t UCM2 and makes it very difficult to
> common up parts of the configs.

> My suggestions are.
> 1. set card->driver_name to something more sensible in your sound card
> driver.

> 2. set long name in model DT property and set it as card long name

It's also worth taking a look at what Intel are doing here with their
cards.

--/3yNEOqWowh/8j+e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+QK/AACgkQJNaLcl1U
h9BbUwf/eOnrTlDEbw+QGCrFiYUmnzBGx64NN4D6F6QHebJyBsYrT6PB95nEpzei
/il7qT8KENMbMgMUSN4N3vMUVWAkrFYjtI5TXCjDvYy1h790B9UIPXyrq+1+hr3U
+KuyJJ4+adkM1dYEH904ynqdFapjo8DfVcD0YNZ2DstV8UdOnegpQP06Fygn7Vm8
7diV0uAnJrtMX74ezClTiKcTB6/Nl0B/ve5m9o8usTa9H1LL9v6HgGrqjrFhMS/p
6h8MzEw2zJS6+kAU//U8MNVBYAmhR7Urw93XHEx7gisLq3STJgnW0580I4lLHd0i
9/H/UCdqrnIcE7b8lByvQDy/V2Ydhw==
=jQZx
-----END PGP SIGNATURE-----

--/3yNEOqWowh/8j+e--


--===============6383899849125143192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6383899849125143192==--

