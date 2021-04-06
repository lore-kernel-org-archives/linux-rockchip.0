Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C7EC43460
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 13:44:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8EE96113E
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 13:44:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8EE96113E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxDNzoMJYeNRvUNyLu+hnr1pMThrZFgd7HDU6Jxd8n8=; b=DPJIjmqfa2+fklIw41Nj4dwQ5
	M1zxb9S2tD78cY2KGLbnMQPItdmn2mvMLqPFfh/hfNbEoQwb1YFo2kGnOxeKZhcW9aiyc5LPhOegq
	iW7IGrHdNO0/Yuh6lXLDdEX6+cLguMVTRg0zrsSnatXV2KU1tXs7b+YXabLULxW/LVHSkTMFBcvs0
	O0SEOIyJBobeZvEIYS3UwLxkBa1fPGmb1hvpf4Uz24xH0zjGLIpc4FWCimUF1USIdoouC/keaduxg
	Yu1L1uIUhrGnKcL93YVRDWIHjr1pDvc2ZdqiTeBQcWet6D1o0eh6i3uG9+Et6MwqLXqIiiiSYsTkD
	4ClPH6u6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTm0D-002lPy-8z; Tue, 06 Apr 2021 13:44:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTm07-002lO1-Up
 for linux-rockchip@lists.infradead.org; Tue, 06 Apr 2021 13:44:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lTlzt-0004HM-FT; Tue, 06 Apr 2021 15:44:01 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1lTlzo-00033c-7n; Tue, 06 Apr 2021 15:43:56 +0200
Date: Tue, 6 Apr 2021 15:43:56 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>, Lee Jones <lee.jones@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-input@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-pwm@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Mark Brown <broonie@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Support Opensource <support.opensource@diasemi.com>,
 Stephen Boyd <sboyd@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH] pwm: Rename pwm_get_state() to better reflect its semantic
Message-ID: <20210406134356.dda74heeshkwdarw@pengutronix.de>
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
 <YGxDD4jVZx/H/Zdr@orome.fritz.box>
MIME-Version: 1.0
In-Reply-To: <YGxDD4jVZx/H/Zdr@orome.fritz.box>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_144416_330608_7D791784 
X-CRM114-Status: GOOD (  28.93  )
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
Content-Type: multipart/mixed; boundary="===============4833388132391195946=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4833388132391195946==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t6hkzfhuwxujjtpy"
Content-Disposition: inline


--t6hkzfhuwxujjtpy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Thierry,

On Tue, Apr 06, 2021 at 01:16:31PM +0200, Thierry Reding wrote:
> On Tue, Apr 06, 2021 at 09:30:36AM +0200, Uwe Kleine-K=F6nig wrote:
> > Given that lowlevel drivers usually cannot implement exactly what a
> > consumer requests with pwm_apply_state() there is some rounding involve=
d.
> >=20
> > pwm_get_state() traditionally returned the setting that was requested m=
ost
> > recently by the consumer (opposed to what was actually implemented in
> > hardware in reply to the last request). To make this semantic obvious
> > rename the function.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  Documentation/driver-api/pwm.rst           |  6 +++-
> >  drivers/clk/clk-pwm.c                      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c |  4 +--
> >  drivers/input/misc/da7280.c                |  2 +-
> >  drivers/input/misc/pwm-beeper.c            |  2 +-
> >  drivers/input/misc/pwm-vibra.c             |  4 +--
> >  drivers/pwm/core.c                         |  4 +--
> >  drivers/pwm/pwm-atmel-hlcdc.c              |  2 +-
> >  drivers/pwm/pwm-atmel.c                    |  2 +-
> >  drivers/pwm/pwm-imx27.c                    |  2 +-
> >  drivers/pwm/pwm-rockchip.c                 |  2 +-
> >  drivers/pwm/pwm-stm32-lp.c                 |  4 +--
> >  drivers/pwm/pwm-sun4i.c                    |  2 +-
> >  drivers/pwm/sysfs.c                        | 18 ++++++------
> >  drivers/regulator/pwm-regulator.c          |  4 +--
> >  drivers/video/backlight/pwm_bl.c           | 10 +++----
> >  include/linux/pwm.h                        | 34 ++++++++++++++--------
> >  17 files changed, 59 insertions(+), 45 deletions(-)
>=20
> Honestly, I don't think this is worth the churn. If you think people
> will easily get confused by this then a better solution might be to more
> explicitly document the pwm_get_state() function to say exactly what it
> returns.

I'm not so optimistic that people become aware of the semantic just
because there is documentation describing it and I strongly believe that
a good name for functions is more important than accurate documentation.

If you don't agree, what do you think about the updated wording in
Documentation/driver-api/pwm.rst?

> But there's no need to make life difficult for everyone by
> renaming this to something as cumbersome as this.

I don't expect any merge conflicts (and if still a problem occurs
resolving should be trivial enough). So I obviously don't agree to your
weighing.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--t6hkzfhuwxujjtpy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmBsZZkACgkQwfwUeK3K
7AnKfQf8CsJvMKdyRy2ch/MNcEI+IBzOnV6nRAbwkLN/G3pbTRHLCtd8Zg/Iobf1
P7ADJlOPATvorbWWUoagJrzcsXswh3ctV5aSWs0Ax1GJQ+PxNtz20n+MtsiTq2gZ
flPfVN0AurTPqh+oGXK+f9C9N0ASjR7i2qjuUoub37yQ/abR5exNOpaM8FEnIbcF
OHcBHOokDL0GpBDir8M9UyfrsPt8TfVD5fk5hXr7hmBhY/iuGQynYDRMQ11/zkvM
lqdH7zPujy5oNqA/+6OSE8vbqoyTRoSqFHuyPRirxDrO14Yu2U570iUznQfg2O/t
3egDaTaqSuaJjxZHzKE4dbx3R/z8wQ==
=ePEJ
-----END PGP SIGNATURE-----

--t6hkzfhuwxujjtpy--


--===============4833388132391195946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4833388132391195946==--

