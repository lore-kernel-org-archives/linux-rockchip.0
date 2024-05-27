Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982DFC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 13:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rj4KAVWbS003bdRvNlEQlOMlVLppgMB9hSDskOBA64A=; b=qEXUuSqMkOOQGsKZHGZRoheaBB
	Rilf13J3D7FEzHuda3gsgUZalI+L40PRw7KZ9FUQI+0ifT3t4o9cr/JOf9e6nJsUpn8J1DmH1XQAO
	XRAOaV3qxr0Yk/eXSkWpEJ+slCEoVnDJGvV4i8Ow8n8xmPFDXzmAi3vdJZcOK3EgGbT+3z9XC3Sc1
	w8hS7kGwtjFZU6vxfHVbulrpcVRoXYt0hPY1YPjcAdiCGn6EbrJoPqDyO2pzCbOR9TZUV9BG2W5OJ
	Aph2funQCeueYgbUd8jRUMfNnfI2+nhQgS9lIDRzFzFCp2b+j9k9kgSdDDJDFCJp+6hT8pylpQbYM
	XXGrIfEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBaR3-0000000F6CD-0k1z;
	Mon, 27 May 2024 13:30:45 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBaQj-0000000F5uW-11Yz;
	Mon, 27 May 2024 13:30:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 07814CE0F25;
	Mon, 27 May 2024 13:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48CB1C4AF07;
	Mon, 27 May 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716816622;
	bh=TF/G2ffwfrBRISpD7K1d5EZ9ItCYMb2x92oWHu7T4AM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F2glDx+39JvZ8wnXQ32eLjUP4/ijfHmYOPAR3IWCS52WYonp3adypyoHL43pOKEIw
	 pua5H9IocB1EWiS+PP8277F61bmkw/7YM6Zq/yAJnDph5evoOKVrSMVPEEC8kfF0Lc
	 eCinKxXlFityRJ45ODnWMC4rgTnkq1De/XcY6nde07CDm+9iFxYSe1hibktpnIBBA8
	 u5g/nqZzec8VeOsqqIqlj+ggMKD4mFYlVtfUDdcqlReD4FRfkGlNeMTtcWH0MUdHrL
	 DzfbRjC7mgqW3t9+cKg/mO/eRsTT+seji5fjvNsd1TkEPIKzMzkKVXvTv2v83M68us
	 +LBBBDXRC+udA==
Date: Mon, 27 May 2024 15:30:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: Re: [PATCH v14 17/28] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <20240527-colorful-orange-bug-bbeefe@houat>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-17-51950db4fedb@kernel.org>
 <4n55dbl2h275z5ubebigri4xjtjsvt44w62n656srdgndcav2j@rrq5haucqx5u>
 <20240527-adamant-just-spaniel-ebed4e@houat>
 <a65wtf2hy7ufimkcgo5k2c34ygvtv7erwh567ngsnuaha7qiny@nl6lx67qsjuw>
MIME-Version: 1.0
In-Reply-To: <a65wtf2hy7ufimkcgo5k2c34ygvtv7erwh567ngsnuaha7qiny@nl6lx67qsjuw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_063026_622213_C43CD539 
X-CRM114-Status: GOOD (  35.31  )
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
Content-Type: multipart/mixed; boundary="===============4279475060883824096=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4279475060883824096==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="rh4txa2gphc5y7co"
Content-Disposition: inline


--rh4txa2gphc5y7co
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 27, 2024 at 12:43:18PM GMT, Dmitry Baryshkov wrote:
> On Mon, May 27, 2024 at 11:02:13AM +0200, Maxime Ripard wrote:
> > Hi,
> >=20
> > Thanks again for that thorough review :)
> >=20
> > On Thu, May 23, 2024 at 01:22:56PM GMT, Dmitry Baryshkov wrote:
> > > On Tue, May 21, 2024 at 12:13:50PM +0200, Maxime Ripard wrote:
> > > > The i915 driver has a property to force the RGB range of an HDMI ou=
tput.
> > > > The vc4 driver then implemented the same property with the same
> > > > semantics. KWin has support for it, and a PR for mutter is also the=
re to
> > > > support it.
> > > >=20
> > > > Both drivers implementing the same property with the same semantics,
> > > > plus the userspace having support for it, is proof enough that it's
> > > > pretty much a de-facto standard now and we can provide helpers for =
it.
> > > >=20
> > > > Let's plumb it into the newly created HDMI connector.
> > > >=20
> > > > Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > > > Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> > > > Reviewed-by: Sebastian Wick <sebastian.wick@redhat.com>
> > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > ---
> > > >  Documentation/gpu/kms-properties.csv            |  1 -
> > > >  drivers/gpu/drm/display/drm_hdmi_state_helper.c |  4 +-
> > > >  drivers/gpu/drm/drm_atomic.c                    |  2 +
> > > >  drivers/gpu/drm/drm_atomic_uapi.c               |  4 ++
> > > >  drivers/gpu/drm/drm_connector.c                 | 88 +++++++++++++=
++++++++++++
> > > >  include/drm/drm_connector.h                     | 36 ++++++++++
> > > >  6 files changed, 133 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/Documentation/gpu/kms-properties.csv b/Documentation/g=
pu/kms-properties.csv
> > > > index 0f9590834829..caef14c532d4 100644
> > > > --- a/Documentation/gpu/kms-properties.csv
> > > > +++ b/Documentation/gpu/kms-properties.csv
> > > > @@ -15,11 +15,10 @@ Owner Module/Drivers,Group,Property Name,Type,P=
roperty Values,Object attached,De
> > > >  ,,=E2=80=9Csaturation=E2=80=9D,RANGE,"Min=3D0, Max=3D100",Connecto=
r,TBD
> > > >  ,,=E2=80=9Chue=E2=80=9D,RANGE,"Min=3D0, Max=3D100",Connector,TBD
> > > >  ,Virtual GPU,=E2=80=9Csuggested X=E2=80=9D,RANGE,"Min=3D0, Max=3D0=
xffffffff",Connector,property to suggest an X offset for a connector
> > > >  ,,=E2=80=9Csuggested Y=E2=80=9D,RANGE,"Min=3D0, Max=3D0xffffffff",=
Connector,property to suggest an Y offset for a connector
> > > >  ,Optional,"""aspect ratio""",ENUM,"{ ""None"", ""4:3"", ""16:9"" }=
",Connector,TDB
> > > > -i915,Generic,"""Broadcast RGB""",ENUM,"{ ""Automatic"", ""Full"", =
""Limited 16:235"" }",Connector,"When this property is set to Limited 16:23=
5 and CTM is set, the hardware will be programmed with the result of the mu=
ltiplication of CTM by the limited range matrix to ensure the pixels normal=
ly in the range 0..1.0 are remapped to the range 16/255..235/255."
> > >=20
> > > Should it still be defined as a generic property?
> >=20
> > I'm not sure what you mean here, sorry. It's being documented as a
> > connector property now, so it's very much still listed as a generic
> > property?
>=20
> I didn't perform my duty well enough and I didn't check the file for
> other instances of the property. Now I indeed see a generic "Broadcast
> RGB" property, but to me it looks like having a different set of values:
>=20
> ,,"""Broadcast RGB""",ENUM,"{ =E2=80=9Coff=E2=80=9D, =E2=80=9Cauto=E2=80=
=9D, =E2=80=9Con=E2=80=9D }",Connector,TBD

That's not really what I meant: that file is deprecated now and it's not
where we document the properties anymore. This patch has improved that
documentation and moved it to the new place, and removed the deprecated
part.

However, this line shouldn't be there at all. I'll add a patch to remove
it.

Thanks!
Maxime

--rh4txa2gphc5y7co
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZlSK6wAKCRAnX84Zoj2+
duG9AYDdUpGu5aVO7zw3zFdz1kudBfe8bhW4zbk7Rqh2F38nbF9k6OHwGoXKxcQe
BoqzGpYBf2GmKLiAj1MKfeIjRVsuVzqIgaw1sWlPvBOTPP+4TYXBl/H+8CBtp9KB
EgfYt9ctqg==
=NOy6
-----END PGP SIGNATURE-----

--rh4txa2gphc5y7co--


--===============4279475060883824096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4279475060883824096==--

