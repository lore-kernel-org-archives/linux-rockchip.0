Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA2C2C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 01:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BhfzSbbVt590R5jTiG6GQr4poA9Lmrc0v+1xGcmEVsc=; b=AVnRXn19oNUGOyM/XGJVGNGe4M
	ibyi4URErK6OlWkeO9N+kMEGgTklJGtTKwQSc811wB4ABnk9L0/YISbLPQHuEp+az6fMk3oq2Xt/S
	YDY/bOA9R5ScwIuw3S1kbtcSc4k7L2furbc8+p5F/KBqNH0DVUGNbjhYVVacCgbq41idNTUhxa3gy
	xMLA4Ut3zZ7w4bIW8ihhB81v4dICaEY5q/RUd8DuCzR/lxJoKTPuE+dGW2kGcdd7PaG4DUzl4RF77
	pMlJ7NvRvYSEteJoPhxTHK3iBnOS1GSdsJmEDYLg/g1OfHp37LIeMZ3cVu0v5mROd9PjK55cmNrA/
	26cviwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOTUR-005np3-7Q; Sun, 05 Feb 2023 01:06:43 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOTUN-005noS-Sb
	for linux-rockchip@lists.infradead.org; Sun, 05 Feb 2023 01:06:41 +0000
Received: from mercury (93.85-246-81.adsl-static.isp.belgacom.be [81.246.85.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9362A6601E92;
	Sun,  5 Feb 2023 01:06:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675559195;
	bh=0/+HCuANW0/ZP4TBdMMnN50TbFZPDp2Asr7+laT78yY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MSe3V+tR42TT+00/V1Xo1KvyrrX0F3dC3OJmGTJru38u1aE3dHin4/aV9FezgC6lB
	 59cS0rC+cJwmogj23t+RFr69o0d9IVziz1mBh0S4VthRTcFmYrX6uVfJmflLbvxyha
	 Cuu64LyJzgylRJPUaKc1ZZPZ4ykDCWlMkBvG7oEPFvE6idR5f21zx6TiXQhlU9AW/R
	 +3UWzR5mxiBdahGCGQdQDcwIyImJHFEh9MV3guxY/ckA3DvxlbFcMGW8mTTTQ9OWV7
	 AjjwciOVO1gGTjJrHseV8WjSVOT6BuJhvOKw/L1XwsfbfJRtJ8xhzmR+UmStKH7vcU
	 8gDmQ1frPt+uQ==
Received: by mercury (Postfix, from userid 1000)
	id 87EB710609C9; Sun,  5 Feb 2023 02:06:32 +0100 (CET)
Date: Sun, 5 Feb 2023 02:06:32 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lee Jones <lee@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv6 05/11] mfd: rk808: split into core and i2c
Message-ID: <20230205010632.wt5m3a7w7k62w6se@mercury.elektranox.org>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-6-sebastian.reichel@collabora.com>
 <Y95jJYlqDayiaMP1@google.com>
 <Y95lSpUaOnbSAOIC@google.com>
MIME-Version: 1.0
In-Reply-To: <Y95lSpUaOnbSAOIC@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_170640_094699_36A09B68 
X-CRM114-Status: GOOD (  19.20  )
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
Content-Type: multipart/mixed; boundary="===============1958852176955666798=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1958852176955666798==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwl6y6rrtwcef27f"
Content-Disposition: inline


--qwl6y6rrtwcef27f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lee,

On Sat, Feb 04, 2023 at 02:01:46PM +0000, Lee Jones wrote:
> On Sat, 04 Feb 2023, Lee Jones wrote:
> > On Fri, 27 Jan 2023, Sebastian Reichel wrote:
> > > Split rk808 into a core and an i2c part in preperation for
> > > SPI support.
> > >=20
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  drivers/clk/Kconfig                   |   2 +-
> > >  drivers/input/misc/Kconfig            |   2 +-
> > >  drivers/mfd/Kconfig                   |   7 +-
> > >  drivers/mfd/Makefile                  |   3 +-
> > >  drivers/mfd/{rk808.c =3D> rk8xx-core.c} | 209 +++++-----------------=
----
> > >  drivers/mfd/rk8xx-i2c.c               | 200 ++++++++++++++++++++++++
> > >  drivers/pinctrl/Kconfig               |   2 +-
> > >  drivers/power/supply/Kconfig          |   2 +-
> > >  drivers/regulator/Kconfig             |   2 +-
> > >  drivers/rtc/Kconfig                   |   2 +-
> > >  include/linux/mfd/rk808.h             |   6 +
> > >  sound/soc/codecs/Kconfig              |   2 +-
> > >  12 files changed, 256 insertions(+), 183 deletions(-)
> > >  rename drivers/mfd/{rk808.c =3D> rk8xx-core.c} (76%)
> > >  create mode 100644 drivers/mfd/rk8xx-i2c.c
> >=20
> > Looks like you completely ignored (no response / no action) my review of
> > v4.  This submission is therefore not getting one!  All comments can be
> > superimposed from v4.
>=20
> s/v4/v5/

not sure what you are talking about. I dropped the PM wrappers and
added a new patch moving the driver to use OF match. There were no
other comments as far as I can tell. Did I miss a second mail with
more comments?

-- Sebastian

--qwl6y6rrtwcef27f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmPfAQsACgkQ2O7X88g7
+prcPQ//eszrU24MFC5Y+5iGOaGdQNIx5ftzeIJNJBwYVllRJ12qns5IJavJb3bO
j2KePqz80vwBzjQjtaFrid3dDUp+5Kip6spWCbu1mD0zPCj9xNUmWdFn78oZJRvN
U9VYMRqeGBEmh4F/2dXaDd1KpZ+Yv042fCi0er5X2LMi0OE2RtlaE62l4XTKTCB7
Kzzj/5Hv0DicX/Ecoq2ys7OcCWy7wG9hilyGYABZCWtAICoGCVMtLA8DwO+YNcDL
wg0RRRJGkUrIZ91MIFDSxsYiElqil5tNaEhqBg+XfEzjEZeZEJR/Bw59rTNvBvIn
DqkpT0C6e1kxn5aoaExjwMPmxRx9spq71V8EAQ71ZL9HIQNmQPXiyhmXMJUVuW1p
gHctZpXTwQpvqoy18NtoQ/6ZWTuNwUHqhn3z16SND0x5Uekp95zuN3YJvBrn4YIf
niEwpVUWnCUmrMAxxp9Cue5TaRpLPHk9WzWxaX5cIykOKrS0eN2NBINipTTEItZs
/2mntr82tvbsBQwQCYSWsmf0X7/4oA4IfF06M/xXKwsbQNlA6vBgKpffA1kxgKPR
8jHLlDUKVFB+RNvCiHRMkE4WBUlpliZqyRq1te8TS9Knhbz0Jj0fnbpn+G8Hu+wg
TswdQcjKJjAOHrJ3n7w+yHMUH9T3rooo+cTbf3HxO4Qn7Wrqp2o=
=x1Im
-----END PGP SIGNATURE-----

--qwl6y6rrtwcef27f--


--===============1958852176955666798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1958852176955666798==--

