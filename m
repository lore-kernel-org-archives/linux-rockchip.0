Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B169AC9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D3NTc5DsDh+gHbYPWIPLw4Nu74K+KTlpNCa/wkW3Qr0=; b=jkos73+LQ+JWcz0NfqTgbxlWQj
	xD70zaCA4v6lLKw93+QhY1lSrrUPvrva5Tq4t0k45fZ40Qk8QcjVSNfV1zZjNI2ByDjPMcwz75q6N
	fSzvjOGBHoKCC+PYwHYAy1Wg40dIv2JzWB1Kj/ylFh2rF5rr+uD8ObE/lfWm1es26Lnvbll/YtMdT
	0s3NbDdaBuetCSnnD+y2TdBvwDPnRJTETTha8KdeB6XJaXFG3nYLzQ1mA5Y1LxeBhD0E1cPNXxqY0
	0+dx1BQLyIVaQOn0IXflcRi/yNpywaN3BQYHDTis9VrUH2dgYLlRTCN9dgQptHNlBKSs+/8F1rleN
	YmvQdSaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fGk-0000000AWKJ-2bak;
	Thu, 24 Sep 2026 08:57:30 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fGj-0000000AWJI-06HJ;
	Thu, 24 Sep 2026 08:57:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 795ED43454;
	Thu, 24 Sep 2026 08:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AAFF1F00893;
	Thu, 24 Sep 2026 08:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790240248;
	bh=KsfA+7ZRfaMaOYHf9FLzqm+87QxZc0nf8pdVelteCEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Y66Nn1F70+EOrXieRS0criFH3uxMANVUI7oanFcCoy8GmyXIy+pJT4bYVlm/thmPG
	 N7qIdDiz1YmSsvWNdouFIMEZW4BAqVieOEmxdbjyjg8VeCwPdmNl98xvvOpohxm65Y
	 GyNzGB6Z7BI3y56gBKntItSCJRjU51zGLLQXLvZnr16k3FQ6buDS49+J1C+07Q9T63
	 n6nHxyci7fO61wmUlSLUGoMKJe5Tmzp5UMO6z0QysEePeglKrYmnlnSTGRtL4Xmc0R
	 znGcbePU3j8NmjIOaR7E0m14ncuBzwafBVjkGLhSAzXI59gpYQZewywAESCZXVQDnZ
	 5vqxv1raD/1Pw==
Date: Thu, 24 Sep 2026 10:57:24 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Paul Kocialkowski <paulk@sys-base.io>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sean Paul <sean@poorly.run>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Albert Esteve <aesteve@redhat.com>, Anusha Srivatsa <asrivats@redhat.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Hui Pu <Hui.Pu@gehealthcare.com>, 
	Ian Ray <ian.ray@gehealthcare.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
Message-ID: <arTlpd-KAsVpj3UH@houat>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
 <20260916-drm-bridge-every-panel-v3-12-83afb4f1a707@bootlin.com>
 <arInho2bsfJiCgjV@houat>
 <DLNCQEG62F5N.O98WAO4U2FJO@bootlin.com>
 <CAD++jLkk-a0MrQUiaDD8OoDDoYVwBwSjFTj5ZBy=Xo7MS4+01g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD++jLkk-a0MrQUiaDD8OoDDoYVwBwSjFTj5ZBy=Xo7MS4+01g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6362412986852052026=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6362412986852052026==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="fta6xv3zcvscpec2"
Content-Disposition: inline


--fta6xv3zcvscpec2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 12/19] drm/mcde: dsi: don't create a panel_bridge
MIME-Version: 1.0

On Thu, Sep 24, 2026 at 09:51:53AM +0200, Linus Walleij wrote:
> Hi Luca,
>=20
> sorry for my slowness!
>=20
> On Thu, Sep 24, 2026 at 9:01=E2=80=AFAM Luca Ceresoli <luca.ceresoli@boot=
lin.com> wrote:
> > On Tue Sep 22, 2026 at 9:09 AM CEST, Maxime Ripard wrote:
>=20
> > >> -    } else if (bridge) {
> > >> +    if (!bridge) {
> > >> +            dev_err(dev, "no bridge\n");
> > >> +            return -ENODEV;
> > >> +    } else if (!drm_bridge_is_panel(bridge)) {
> > >>              /* TODO: AV8100 HDMI encoder goes here for example */
> > >>              dev_info(dev, "connected to non-panel bridge (unsupport=
ed)\n");
> > >>              return -ENODEV;
> > >
> > > I wonder if we still need that branch. Every panel is a bridge now, a=
nd
> > > it looks like we don't have any specific panel handling in this drive=
r,
> > > so I guess it supports bridges already?
> > >
> > > Linus, do you know why this condition was here in the first place?
> >
> > I had the same thought while writing the patch, but I chose to be
> > conservative.
> >
> > Linus, unless you have more info I'm going to apply the patch as
> > is. Removing this special case would be welcome as a later patch.
>=20
> I'd say go ahead as-is.

I'm fine with that, but I really want this removed at some point.

> I do have the idea to code up and submit the AV8100 encoder
> and I have the hardware to test it, but every other user should
> be using panels directly, and I would be the only non-panel
> user so I can deal with it when it comes up.

It won't change a thing. All existing "panel" users will be bridge users
after this patch is merged. So whether you want to enable a bridge or
not shouldn't matter, the only thing that does is whether the existing
users would still work.

Maxime

--fta6xv3zcvscpec2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCarTl8wAKCRAnX84Zoj2+
dhwWAXwI9qMs84ZRfc2g48IeAyQiE/CtbfMWnKHKCoJcY62gOn2KtPtJlfAUSVSt
Fz2FzIoBf1P/bkrhzAS0uao6/CjJ0F2xh689BoYPK8a7rDMJeckpdh6Df4f795pW
2kQWWS2bNQ==
=k5VA
-----END PGP SIGNATURE-----

--fta6xv3zcvscpec2--


--===============6362412986852052026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6362412986852052026==--

