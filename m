Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2628C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 12:08:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E7F8610A4
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 12:08:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6E7F8610A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VlX5vjhrrVTUTPYiuNXQNTXTpzirArHvWM4EL59y6ic=; b=Ix/WSnZxmRjwRJVS6TaoWIyVI
	03yhSGRDa49vZrXklqb38ex8TB0ogZHGgmTX2O0m0jPLLqn2SJMDy4CmVK3NvRlojEaFbio2qawwa
	4JidFf4p9SeiCXSfg6SVhJFwxSvrCKW1djZN1Qq97wrlex0NSNSBW/P13QS4wEJ0glbtq28jFhcjS
	M/nHA1fHm9cxzfZ70lsU2wpO/JQKaPqVGCpjTd7S6x79WPX8fUvsGZxMfrNIbU9xpWIUn1O0xMrpt
	7DeTDuFxDHEO0SB8sCBXlkGh1NBtr8sGez8uRTqA5vGuKZfipkh/uDrjeaSGgZM+0AE3H5pI76e2w
	/VNQHIqrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUpwP-000grq-Hm; Fri, 09 Apr 2021 12:08:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUpwM-000grQ-Un; Fri, 09 Apr 2021 12:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cEi4dBMf1BkmuY14gGbElJbBTh//wd4dN7gILare5wE=; b=z2Rr1uTJLKZX1iFY7w7OpVR0y4
 N66RMw9HcNRnwtsNWHbO6TBkXDuYgXv2gtUDXGpSHrS0bQtNjwJz4O2Er8jwnRKowyGWYlfjIxFAj
 FAb9FEeupULzj3zcJu2HYXhkCrFixKFBbh+z+gnVZr3S8+RwWfEQV/Q5uvPy/Ko1cUPw+OXdtkq7+
 4eKYEQlsAG4vejtLNehryfvNkod61wim2FBj1W7h/rCFWvQFO67N55maHD4Bxfj4zjfu0kxS7yAvm
 bOjE8tivZUttCNXgteK52tch5kqUVsOspeYdVLmzva9Zq4GIjWwOW4Y/vyANTDt1psyuZep3D8W19
 1yz9w2Qg==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUpwK-004UkP-64; Fri, 09 Apr 2021 12:08:45 +0000
Received: by mail-ej1-x62d.google.com with SMTP id r12so8294015ejr.5;
 Fri, 09 Apr 2021 05:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cEi4dBMf1BkmuY14gGbElJbBTh//wd4dN7gILare5wE=;
 b=pQ+ZrITvRJMq9gBKBD5zfu3ZTxMiQ0leTkBxsvGMVbkQw/+/nGowpbVKDkLnwkIvf1
 rr4UDyF83OUFNyun0b/I8NlZzgYFhUWaSZsBn00AYCh/72n3ePyYZVlPB/Ma40c6mdsk
 SOKXCjAuNMB5QXHfNXqBeE5RAcnyp3n0aG1Z/c5AVFW2SHNhN0P3e0RCLvosgCS85T1V
 shoITnsV/MmRNuMOih8rWULq78meoIiVsqp7Ll+G9nHexsotUoPN0MZsF7cNCgU10CpJ
 6URgdTD3ejvZc+FmgmuX49Rxa98bdXURDxEcTAzejG2L+vjnu0jzkWrXwhPBzD8cDx/t
 68GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cEi4dBMf1BkmuY14gGbElJbBTh//wd4dN7gILare5wE=;
 b=MgO4YGscF6rvwuRDZLm8kNsTD162ogy31RkISyRc87P68r3S+bFFI5xIOw310Pmm6Z
 WQyetz0mRmYyaZjEefRI++LJIaRNMRQGZ6RIw8dXVJHTeMVFa7HjLxP5cNsXP2nlZBU2
 w5TvBeanoeZI2Cdr9eCRVQ8XLaL39zvSJrChR7SDbWokzDiNj+xoMboY1WfEU4lNm9mG
 ccfxnlkiXAJNuAlrT3ix8o2Wg5NP4OG/SaSfW08kncFV/A21GF1H5oDObBX28bQPPxFJ
 oBcsH0/gc8iO03JcAe0YwMNiBKQIbuVHJbhxnzH4qrAOZwA0Q2N3K8uq3OMtro+wt8+0
 GUAg==
X-Gm-Message-State: AOAM532zgP9h+DJzxmMGcDNTF9CPWsjPwuZ1qLoytvFJWc94BJNJB9fp
 Ts9hLKEFrDypT2rhe9BZHVRfkR45MLw=
X-Google-Smtp-Source: ABdhPJx8h9Pc3BjF3vRa5o1sWGyI42O8E2SC22STz2KAQ0OfGsoMxl6LpxVlci6LyxYc8HpCRIYF8g==
X-Received: by 2002:a17:906:1115:: with SMTP id
 h21mr16575768eja.352.1617970121833; 
 Fri, 09 Apr 2021 05:08:41 -0700 (PDT)
Received: from localhost (pd9e51abe.dip0.t-ipconnect.de. [217.229.26.190])
 by smtp.gmail.com with ESMTPSA id h13sm1345521edz.71.2021.04.09.05.08.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 05:08:40 -0700 (PDT)
Date: Fri, 9 Apr 2021 14:09:16 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-doc@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-input@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-pwm@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 intel-gfx@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Support Opensource <support.opensource@diasemi.com>,
 Stephen Boyd <sboyd@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH] pwm: Rename pwm_get_state() to better reflect its semantic
Message-ID: <YHBD7AhOJGyELpVZ@orome.fritz.box>
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
 <YGxDD4jVZx/H/Zdr@orome.fritz.box>
 <20210406134356.dda74heeshkwdarw@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20210406134356.dda74heeshkwdarw@pengutronix.de>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_050844_252841_FDE21E90 
X-CRM114-Status: GOOD (  32.82  )
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
Content-Type: multipart/mixed; boundary="===============2242612519872510329=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2242612519872510329==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PvYVwmcUBFdXJjNu"
Content-Disposition: inline


--PvYVwmcUBFdXJjNu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 06, 2021 at 03:43:56PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Hello Thierry,
>=20
> On Tue, Apr 06, 2021 at 01:16:31PM +0200, Thierry Reding wrote:
> > On Tue, Apr 06, 2021 at 09:30:36AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > > Given that lowlevel drivers usually cannot implement exactly what a
> > > consumer requests with pwm_apply_state() there is some rounding invol=
ved.
> > >=20
> > > pwm_get_state() traditionally returned the setting that was requested=
 most
> > > recently by the consumer (opposed to what was actually implemented in
> > > hardware in reply to the last request). To make this semantic obvious
> > > rename the function.
> > >=20
> > > Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > ---
> > >  Documentation/driver-api/pwm.rst           |  6 +++-
> > >  drivers/clk/clk-pwm.c                      |  2 +-
> > >  drivers/gpu/drm/i915/display/intel_panel.c |  4 +--
> > >  drivers/input/misc/da7280.c                |  2 +-
> > >  drivers/input/misc/pwm-beeper.c            |  2 +-
> > >  drivers/input/misc/pwm-vibra.c             |  4 +--
> > >  drivers/pwm/core.c                         |  4 +--
> > >  drivers/pwm/pwm-atmel-hlcdc.c              |  2 +-
> > >  drivers/pwm/pwm-atmel.c                    |  2 +-
> > >  drivers/pwm/pwm-imx27.c                    |  2 +-
> > >  drivers/pwm/pwm-rockchip.c                 |  2 +-
> > >  drivers/pwm/pwm-stm32-lp.c                 |  4 +--
> > >  drivers/pwm/pwm-sun4i.c                    |  2 +-
> > >  drivers/pwm/sysfs.c                        | 18 ++++++------
> > >  drivers/regulator/pwm-regulator.c          |  4 +--
> > >  drivers/video/backlight/pwm_bl.c           | 10 +++----
> > >  include/linux/pwm.h                        | 34 ++++++++++++++------=
--
> > >  17 files changed, 59 insertions(+), 45 deletions(-)
> >=20
> > Honestly, I don't think this is worth the churn. If you think people
> > will easily get confused by this then a better solution might be to more
> > explicitly document the pwm_get_state() function to say exactly what it
> > returns.
>=20
> I'm not so optimistic that people become aware of the semantic just
> because there is documentation describing it and I strongly believe that
> a good name for functions is more important than accurate documentation.
>=20
> If you don't agree, what do you think about the updated wording in
> Documentation/driver-api/pwm.rst?

Yeah, that clarifies this a bit. I can apply that hunk of the patch
separately.

> > But there's no need to make life difficult for everyone by
> > renaming this to something as cumbersome as this.
>=20
> I don't expect any merge conflicts (and if still a problem occurs
> resolving should be trivial enough). So I obviously don't agree to your
> weighing.

I wasn't talking about merge conflicts but instead about the extra churn
of changing all consumers and having to type all these extra characters
for no benefit.

Thierry

--PvYVwmcUBFdXJjNu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmBwQ+wACgkQ3SOs138+
s6FoaQ/9EG+snyNuisvtyU5qYi/2TVmPDZz6j1D/s1DAK1Op6AtOQksGAH7dqHgw
bT+jTMJi5bTnc4RSeUNrVFcVtb5qVWZEvN3D4c1wcr3PLtM8O4XxRQaMULo2+3pN
CCrHZKWyvB50hVFEs9CUSozlWk3HO/MNjef2MmwxBHiro1JBdAJivwFZEX8xQo2h
/y0HVDlrH2A1soG/WaGEeR6s3TzquHZiOawgNu51xgxIaxrEBs/ca7gBCuEfvy7d
Mu2yR+6VpjNWA0m3e53Nc4QkbQUDG89Thdf2i2HjVYsHX8wpVKWiA3OogCpVbTlQ
BUqEvvRQ5krW5IcneASEEKMOJSkX6zf86kC3RoYSbKmydCc6BlYVePr25yoTMAPK
XaYqd7i5ocueQZF5RdxrIXIoRgjU3Wu8v34N2mgaCCrHIwTHFJHAdim4h18Mbj+3
hVgZ+cuQ8Kaz0YjF4nAGQTQLsAQb7u7CjH6BqRzKUveMfInqD5wij6bP+jN0IYZA
4eUL5tfEdajQBvosPm4aQm0xULcg5jxq7rG/hpTa9y+J7s31IzXQ73dx2gse4kOt
0QY36evBxZKnvM5LGwWOkHK3aB8T2RqQP4l0kA9fmiQYYBudAL3VSEyE4mWU2Iza
P1UoRFFrCJ9K6dYBRX19nE+N1kAi2axBa0+KTMxQAUo0KzYGB0w=
=aO1m
-----END PGP SIGNATURE-----

--PvYVwmcUBFdXJjNu--


--===============2242612519872510329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2242612519872510329==--

