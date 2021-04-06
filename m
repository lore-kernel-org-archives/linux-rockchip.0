Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC96C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 11:16:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01802613C6
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 11:16:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 01802613C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qw7nOZGaqhPNgL42Yogx0YHWDc4Bkiy+19jGXdMUyQI=; b=A3fTfEq+nq4NKuSXZlfyS0r+o
	ORK9gstEULuxoBY4Ke/aI9sm3R57FcUleRoJnT42jMHD3LO8DshbEUh5IKLC9dPRKKg3/566irORz
	AMuQNXrdiLpPPjDGq1sEa0QZUWb95eOfxAUZfmwE5z6PwWZgZWYG7IZPvp0oDDLHvBuLhB5oyqmIX
	e4scwKVoJh23uCaFyoqO9ocdDyEIg+6FiuOnGUr7c9KEP/OSVDVITNhPkg9hHKdZ04+6CoURa8fBp
	ghDffcfKPP09SZ4U4gdHLBO6ajN5/Dbte9/hoSltcOrPQJSKV7WCm3kFQB7NcTt3WVbH3L/3+G3qn
	5Ea9Mk/wA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTjgq-002IUO-Ci; Tue, 06 Apr 2021 11:16:12 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTjgf-002ISl-HV; Tue, 06 Apr 2021 11:16:03 +0000
Received: by mail-ej1-x631.google.com with SMTP id ap14so21338821ejc.0;
 Tue, 06 Apr 2021 04:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yVEDKiVUDMBOpgUCPiSByRWJFXrj0auSVMAOE9mqU+U=;
 b=eF4JkJr9jyFg9X/TymlZbfz77nC1P0sRTQUA4jzF2Pz25yTkHXNWicf0Y3N/KFEMBg
 KtSkAXw6WXUHAv+8G32fsEH635mZevPOihNO49sWpIUwQ8I+CT7CtQPtkW/QGFq++k4G
 DugHhWhubTu0yLiWjuT4VrSF+WfFquNFrxVCrC1TNcnPl0rMnOGvaV9aGYrbZAzbZNpu
 9yQpA9rBcDGa9ucFhda2RoVxLSvBByHuklnjvrjh/XFUcSAl0FBhHnUi5liXQC7P2Y7F
 amxG+oFeNkRZcvjRNXSyUoD3p7KU9lroDVDd7/X+I9p9hMyzHQ1rVvwPMlTMRP6CZn4f
 MRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yVEDKiVUDMBOpgUCPiSByRWJFXrj0auSVMAOE9mqU+U=;
 b=BUR0d2sIvbdkxpmCIcYfWH+/OGwQL3Oz8+/XGLP90IzkI+kn1NJiEMgRSbnzA0NikF
 PNo5AG9LSlKiLEo77v71vafyTnh7ousVtMJOwi8T/eJf7m5TcKdZ+u56w3rsLDUu9Xrm
 fxpEpTWkePdca9Ltet0xWZ/fyuCxyvAI0YjoyZcXKMI/9F4NnlTy2Er7w8NZCny9c/M6
 +2TzEuX/SUZoZ4qb1h/8EAHP+ysR/aUIzFqpCkav6c7sNi7UsPjsY2LLliQCSARaq3++
 05D54oQMJvmOVvC7Jp+BYy6uwMPKOnLoezD689tJU2g8D3F1O6du6sOLP+qymmh7iN7O
 7emQ==
X-Gm-Message-State: AOAM532pFY5KiQO3JOGKY+nFEeyYHED/F0v6AsZkAPcMnL3ss8uTTxFu
 NsGf2V+9DIh0fUd83ab1Y+U=
X-Google-Smtp-Source: ABdhPJySr3mBbF07VyzFBl9k8WSX0iBzHT1u+7rCFpmxkrk+5FOaupGQM5xmxtmv1+7X7Xid4NTPbA==
X-Received: by 2002:a17:907:2da7:: with SMTP id
 gt39mr1456317ejc.193.1617707760199; 
 Tue, 06 Apr 2021 04:16:00 -0700 (PDT)
Received: from localhost (p2e5be490.dip0.t-ipconnect.de. [46.91.228.144])
 by smtp.gmail.com with ESMTPSA id y24sm13894442eds.23.2021.04.06.04.15.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 04:15:58 -0700 (PDT)
Date: Tue, 6 Apr 2021 13:16:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Lee Jones <lee.jones@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Support Opensource <support.opensource@diasemi.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-pwm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH] pwm: Rename pwm_get_state() to better reflect its semantic
Message-ID: <YGxDD4jVZx/H/Zdr@orome.fritz.box>
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_121601_665969_7C03497C 
X-CRM114-Status: GOOD (  20.51  )
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
Content-Type: multipart/mixed; boundary="===============3402934041251998116=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3402934041251998116==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kAjYvSBiDvNQ2JMa"
Content-Disposition: inline


--kAjYvSBiDvNQ2JMa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 06, 2021 at 09:30:36AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Given that lowlevel drivers usually cannot implement exactly what a
> consumer requests with pwm_apply_state() there is some rounding involved.
>=20
> pwm_get_state() traditionally returned the setting that was requested most
> recently by the consumer (opposed to what was actually implemented in
> hardware in reply to the last request). To make this semantic obvious
> rename the function.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/driver-api/pwm.rst           |  6 +++-
>  drivers/clk/clk-pwm.c                      |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c |  4 +--
>  drivers/input/misc/da7280.c                |  2 +-
>  drivers/input/misc/pwm-beeper.c            |  2 +-
>  drivers/input/misc/pwm-vibra.c             |  4 +--
>  drivers/pwm/core.c                         |  4 +--
>  drivers/pwm/pwm-atmel-hlcdc.c              |  2 +-
>  drivers/pwm/pwm-atmel.c                    |  2 +-
>  drivers/pwm/pwm-imx27.c                    |  2 +-
>  drivers/pwm/pwm-rockchip.c                 |  2 +-
>  drivers/pwm/pwm-stm32-lp.c                 |  4 +--
>  drivers/pwm/pwm-sun4i.c                    |  2 +-
>  drivers/pwm/sysfs.c                        | 18 ++++++------
>  drivers/regulator/pwm-regulator.c          |  4 +--
>  drivers/video/backlight/pwm_bl.c           | 10 +++----
>  include/linux/pwm.h                        | 34 ++++++++++++++--------
>  17 files changed, 59 insertions(+), 45 deletions(-)

Honestly, I don't think this is worth the churn. If you think people
will easily get confused by this then a better solution might be to more
explicitly document the pwm_get_state() function to say exactly what it
returns. But there's no need to make life difficult for everyone by
renaming this to something as cumbersome as this.

Thierry

--kAjYvSBiDvNQ2JMa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBsQwwACgkQ3SOs138+
s6ECqA//Zd57LkVbLnSm51dMJdU3OzbgvA2eSnrblJcbIJaVQX93rfojOCA72Loe
UqwrOYm9kh6H6Drl9Z2koBzoW1IW0UteSwPwn/KhORLXqdbDPnLWhQgEiMpykEIy
avZbWjX1fgz6pX0CGwmbns0dJs7knTCFroGMjOnZamRoU9fe5fj6MzhlPtIVluBz
LDUa5s1k74PnNc5REcD53DNOtFBWYUQa/2mv1MGIOKNdFmJBfb+gVJrayUN9iAmn
jVUy50BHt0Hrp6GunWAAEsjogOTtXbV+X2opyG3aXM/EMfCli06XHEsI+rTcHl07
F4cU9K4gQOprj2pQ+5CX3QZ1VPi17rk1/Ny5EoFMRIfPuFWQtiJIoWCG11eEv7Xv
D0at6sonV6l9zuH60/udcqMoq+ktq9v5bgCZJkY2lswkR1u4droUBsEaak7fm3/E
DfRVgSBTCVnPhEBtL06UXQURErSP6GFShSeOflPXKudYj2OPRb/xYSw5iLbJDL2U
L9o7KxbaYeSdNcT0q+ubQuegWdUfc289Om3VbTBPz8H61FpSsgt5YEpYGgpUx84G
ZQkIs5iv3dgUm0ip3GbUtT5FxHXUoqCRhFJBZfaCJMTEaBFlmT413aZthMWmdYJY
RJeTHFTLUaptPV26ZSqYpNRLr070C4wJMNCnleCoYFAJY/gdZ8w=
=zxs0
-----END PGP SIGNATURE-----

--kAjYvSBiDvNQ2JMa--


--===============3402934041251998116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3402934041251998116==--

