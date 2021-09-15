Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D0A1C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:06:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6185611C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:06:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C6185611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ANmOYjq9tEobvqysw+ZkkyEWUmeV2pjg/ktbPJy6ijo=; b=pPkYI+JOxfKgwZ5S38nBklkPUq
	Gn9yw9kUlgOGALRlWKRysa9w51M4pPrQM/XcaJ3uwWPturxEqyu3Ud9srXPGrNxE2oGJClld3eZhJ
	VweQt00wJcXD2J9hwIXSxE99LhYNAUDU9dC7sloxxClOBHfUzXn5ugthfGp0uUGVzDuSD9wt+V2G/
	0tViN7nm+UO0nJBj/KIeN6RqBfaeceyl99pLPw4Sm7r8Y9K9vgBtTfXJPI8QSE/12sD0FkyNw7yBA
	MuSUGytEyDXmYjg+A1GXnLmin23eeL9rHqdK66GDUPgnDxW9yM+taeW1ZZNn1S5dW1nsqX8A+zRsR
	UIThYyow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQVYK-009GqS-Ju; Wed, 15 Sep 2021 14:06:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQVXk-009Gjh-CQ; Wed, 15 Sep 2021 14:05:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D18A9611C1;
 Wed, 15 Sep 2021 14:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631714743;
 bh=Ws9yGIaeY4LwjCKo4SCOy48ayUoiS/Ue1HGfmbl/G/s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AwCyOdY0bug+kZb37qkxGrSn09F80r7jrtyHZoOvfS8WY9+KV6ZJ3vn/N01LXXRyo
 AE0/8tZE+ULn8n9nWNAfU8qdHwlrBx/9ySa+Chh96mA3HpaF5WxzF9Yq4yLOzOul8n
 u0wPrzEFzeFAGuQenmebT0HFDH+Bjl1nQ43JrWELInXP5MfO3hphSWkeWJyJAIiBB9
 VbdYpIB/5atHU23obtf9gc5oYdLoi5EV3umla/+DkQgPEtTfp7YP2874RE3UH5fjad
 JwPsSZwtOvhBMSKf+WBcO4s3X1BWHOXbEUoN9whm8+0NDJrPmhHLgV6PnCGU3S6k4U
 C4zKFMMbJiKKg==
Date: Wed, 15 Sep 2021 15:05:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/4] ASoC: rockchip: add support for i2s-tdm controller
Message-ID: <20210915140502.GB12513@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210903231536.225540-2-frattaroli.nicolas@gmail.com>
X-Cookie: The more the merrier.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_070544_499368_35D153E7 
X-CRM114-Status: GOOD (  19.17  )
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
Content-Type: multipart/mixed; boundary="===============2598336795600454017=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2598336795600454017==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/WwmFnJnmDyWGHa4"
Content-Disposition: inline


--/WwmFnJnmDyWGHa4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 04, 2021 at 01:15:33AM +0200, Nicolas Frattaroli wrote:

A few fairly small issues here, nothing too major:

> @@ -0,0 +1,1832 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * ALSA SoC Audio Layer - Rockchip I2S/TDM Controller driver

Please write the entire comment as a C++ one so it looks more
itentional. =20

> +	xfer_mask =3D (tx ? I2S_XFER_TXS_START : 0) |
> +		    (rx ? I2S_XFER_RXS_START : 0);
> +	xfer_val =3D (tx ? I2S_XFER_TXS_STOP : 0) |
> +		   (rx ? I2S_XFER_RXS_STOP : 0);

Please write normal conditional statements to improve legibility.

> +	spin_lock_irqsave(&i2s_tdm->lock, flags);
> +	if (on) {
> +		if (substream->stream =3D=3D SNDRV_PCM_STREAM_PLAYBACK)
> +			rockchip_enable_tde(i2s_tdm->regmap);
> +		else
> +			rockchip_enable_rde(i2s_tdm->regmap);
> +
> +		if (atomic_inc_return(&i2s_tdm->refcount) =3D=3D 1) {

Why do we need to use atomics here given that we're inside a spinlock?
Surely the spinlock is already providing adequate concurrency
protection.  I can't see any other points where we don't have the
spinlock already, and I'd be worried if we did.  This looks like it
could just be regular variables.

> +	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> +	case SND_SOC_DAIFMT_CBS_CFS:

Please use the modern SOF_DAI_FMT_CBC_CFC defines.

> +	delta =3D (ppm < 0) ? -1 : 1;

Again, please write normal condiditional statements for legibility.

> +static int rockchip_i2s_tdm_clk_compensation_put(struct snd_kcontrol *kc=
ontrol,
> +						 struct snd_ctl_elem_value *ucontrol)
> +{

> +	return ret;
> +}

This should return 1 if the value changed.

> +static int __maybe_unused rockchip_i2s_tdm_resume(struct device *dev)
> +{
> +	struct rk_i2s_tdm_dev *i2s_tdm =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret =3D pm_runtime_get_sync(dev);
> +	if (ret < 0)
> +		return ret;
> +	ret =3D regcache_sync(i2s_tdm->regmap);
> +	pm_runtime_put(dev);

Runtime resume also does a regcache sync so why are we doing another one
here?

--/WwmFnJnmDyWGHa4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFB/Y0ACgkQJNaLcl1U
h9Ayxgf+JrmINVP/kRYs9tAdJd1AAk2R/J6FzgsqYkoGs1jumY4BJKwqI6hCOlZP
1fl05QVBxFQwiYMCZpt4Rk/rCY43ZjcgmN78GEniVphrvsTMxBuU35HdFsmEehSp
CxSXwX9Uvza+9IHrMV/G/HFFUpoCpGj8DSvOXsgcfiRI4fZ0es0j7MPxftXt5uvs
dRzCtJDj/nXm5lcadR2TMJQ5GBQ9x8UyaEzG2E4bEJeKyARlx0NQAf2am3nArjWn
l97mreV2jf+77Jy3IA9Y2eyaCQQHLIbL5F5JoxyZc4IX5fWxXdW/PWUzTw6sWAwo
p2PZXOYxFwZY/TkFeZ9UkKROFucb4w==
=kat+
-----END PGP SIGNATURE-----

--/WwmFnJnmDyWGHa4--


--===============2598336795600454017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2598336795600454017==--

