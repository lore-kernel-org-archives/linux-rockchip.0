Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600B8CCF9EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 13:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEBGE0b1X5NseZRdIwxRaegaOucHE7A5elIcWjEPmSA=; b=wtq1a3g+7NRnUmuA0ZXKR+boa8
	mdHtNAkUp4vpebmNCaPbtlXUU9QlLUyhF3gYU/zgKmTEb8tP3Qc3k2AhUVMIopAPCozHgGWNrbxHX
	lsRh5ONMqlWMxCF2G7pRpCeeu0NDOCNldFQI3EH0rRU4H8fkXK+voN8UWpiInSj9dRgyORUIVHEcf
	vQfNz99tPfb7b8G1UH9todtsrHJ6VAM0jmJN99nZJLWiRnoSBACk26wVWqULIVjiM1yYfpvSaKHfn
	u0akuNtWNczynuZ/whDSljtziXjuMmfEdC2pz57vEJsUG7YjeuvwHts/dUlqaOtOuuDus05NOnEeV
	SMnb3EUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMzs-0000000DzAj-0god;
	Mon, 27 Oct 2025 13:10:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMzq-0000000DzA6-1Rrx;
	Mon, 27 Oct 2025 13:10:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9B72C60333;
	Mon, 27 Oct 2025 13:10:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C89C4CEF1;
	Mon, 27 Oct 2025 13:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761570649;
	bh=f9IEcVfP2kRCqxut50nXsL8UsN+mLFg9FFXWZh9r9Ac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f097X8kxQ29rBIOYCXwgi0kQSgxeowPnkNwptbuTFkWy5FIvO+TtOaiMB3B0MSjpY
	 sjORIp3f0qoAe+JsuojLKEnx6JO+n/Nr1ZOFOufKlh/hEzgFjapssLK65EGCDPx4vo
	 VHi4eN8IRC8f+9Sn6Ef3m7aKs3wtxMkE/CrrCu2+iLqmjZR3cmYOX0tb9SPDXQDgW7
	 NPItTTT8vcyYhsn4qqKB8sA+l2khRCMBP0SzIHokzipz6fN/09xyFJIPd9BbCh1+XV
	 DIP9JNlraKIPn3wI42gEnOq279jGDTGK7/etbVSzdmpjmiazpTWI+8y3Z8Yvm1N5/R
	 a+fsXXfRX6NdQ==
Date: Mon, 27 Oct 2025 13:10:40 +0000
From: Mark Brown <broonie@kernel.org>
To: "Yury Norov (NVIDIA)" <yury.norov@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, kernel@collabora.com,
	linux-mmc@vger.kernel.org, linux-sound@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 11/21] drivers: don't use GENMASK() in FIELD_PREP_WM16()
Message-ID: <432db4d2-1f36-4531-b0b3-2a06ae682fd1@sirena.org.uk>
References: <20251025164023.308884-1-yury.norov@gmail.com>
 <20251025164023.308884-12-yury.norov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251025164023.308884-12-yury.norov@gmail.com>
X-Cookie: How do I get HOME?
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
Content-Type: multipart/mixed; boundary="===============8900563139529270572=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8900563139529270572==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tcUV2s8VfPxXlH7h"
Content-Disposition: inline


--tcUV2s8VfPxXlH7h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 25, 2025 at 12:40:10PM -0400, Yury Norov (NVIDIA) wrote:

> Recently added FIELD_PREP_WM16() in a few places uses GENMASK. It's
> confusing and may mislead readers. Switch to BITS() or FIRST_BITS()
> as appropriate.

This doesn't seem to line up with the actual change, you're not altering
FIELD_PREP_WM16() at all but rather altering things that use it.

As mentioned in submitting-patches.rst when submitting a patch series
you should supply a cover letter for that patch series which describes
the overall content of the series.  This helps people understand what
they are looking at and how things fit together.

> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.h             | 2 +-
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c         | 4 ++--
>  drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h | 4 ++--
>  drivers/mmc/host/dw_mmc-rockchip.c                   | 4 ++--
>  drivers/soc/rockchip/grf.c                           | 4 ++--
>  sound/soc/rockchip/rockchip_i2s_tdm.h                | 2 +-
>  6 files changed, 10 insertions(+), 10 deletions(-)

It doesn't help to send changes to unrelated subsystems in one patch
either...

> --- a/sound/soc/rockchip/rockchip_i2s_tdm.h
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.h
> @@ -287,7 +287,7 @@ enum {
>  #define I2S_TDM_RXCR	(0x0034)
>  #define I2S_CLKDIV	(0x0038)
> =20
> -#define HIWORD_UPDATE(v, h, l)	(FIELD_PREP_WM16_CONST(GENMASK((h), (l)),=
 (v)))
> +#define HIWORD_UPDATE(v, h, l)	(FIELD_PREP_WM16_CONST(BITS((l), (h)), (v=
)))

This is adjusting the implementation of something that takes in h, l to
use l, h which if anything seems likely to introduce confusion, and
definitely feels well into bikeshed territory.  I don't *super* care but
I'm having a hard time seeing the benefit.

--tcUV2s8VfPxXlH7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmj/b08ACgkQJNaLcl1U
h9BrOgf/WZesOvGZkIjzC0cgXcITxYU+d0wJLcf0GA0ADyZjEl0v5GWiIXwSKFZ2
96/4KlYfP+QnWypd7OPgmCe0w8QeJJAea7lmFwnE8sqRkjyYikoRC318PN1ywNB1
Pyuh/mtAE5cQ+9UzI7j4nKoW3MTx2p2/bulGH1TQs5DyOO9iQK1jeaVwrD3k+ZdI
mEER+xUO2NH09agCTqrQQONeRG9S0Sfs/PstH4X744VpErUsWyuYu794BxrtC8Un
U18ljABlmQfvRVjCV9pDq73C4qwAqAlpsW/X+bTBa0JmLo/1n84hOjdI7Fobo6Kw
cyxDW3840JcPzrlIo2WKdbrXXVH/xw==
=OWcQ
-----END PGP SIGNATURE-----

--tcUV2s8VfPxXlH7h--


--===============8900563139529270572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8900563139529270572==--

