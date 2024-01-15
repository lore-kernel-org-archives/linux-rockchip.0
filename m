Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C000C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 15:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E2WShcJS37Ro6+0PlOzM5QLTQUc7yFnX8gkgNYLQzT0=; b=XjvnOQsFNdume2pU/0ubHg8h37
	IqbMjYW9KyAuqNz/7cvpKXKr6EWF8u7+EviY4/+IDfK7grtPiO8aOyBY59ICu+zKFfo4izNWfctlg
	R03Qat9+86yEf5aGL8Mvjs32J7LYR8trWZ8CU4PWM8JtRo4S8GmTbUzVNx2tFPnovSQ6yNyfr+kS6
	0tzpU5Xt+dI81Dm0F/ji/jmAjLLqZE+OrEfIgN9O08F45AjUfi7yjA5NNz94KyDTDAodTQeppn4/B
	dFjnjvPpTn/0zZjGxdI+2RND4vsp4viu3g3SAI5U6IlYGQRr9ORCq0vHrXAARWGa3qLCviU4R48kT
	DS8UYoaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOud-009PFC-39;
	Mon, 15 Jan 2024 15:30:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPOua-009PE0-0d;
	Mon, 15 Jan 2024 15:30:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8265460C7A;
	Mon, 15 Jan 2024 15:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3DE1C433C7;
	Mon, 15 Jan 2024 15:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705332603;
	bh=i+sAHaV32j73dmSDaQjMq2fN84j/W7BDfu4abhHoLbk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sUtZFwP01BkBBU0Ca9vIuI9QMS/5i1oK1OOnh7h+jlN2UJ9Ela1VNwJUGvZRFar+0
	 QmjUGv+4rJ5Ky5xARxZU9KcKe7y4xwngcvnX15RhfCxtMd3glJjPEIJXQq2Q5bNcGF
	 TM3BFn4GdJ6OJJ48zZgplCln0DD/y8bRiTgVMP1uhBWcBbRrmSzQlG949j+DRRA1Ui
	 5c6xWkWGJ/fUuRPecxx47WKwqFMbAY/7Ceu60WLh1o+/iyNVj9Q2fOinnlR+o7hQjy
	 G3OJERz6abgtNEsGX/4JH/yQiV1mfpt/U4yZ63uiM8JY/OywW+jaMSE4K5/jIW51hA
	 GcH6qVdU7q0CA==
Date: Mon, 15 Jan 2024 16:30:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB
 property
Message-ID: <igshliibofml3bkkchamqo7xyrnzrf6efkfuok5lprcfg5h3ug@phfvvy6fra35>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <20240115143308.GA159345@toolbox>
 <20240115143720.GA160656@toolbox>
MIME-Version: 1.0
In-Reply-To: <20240115143720.GA160656@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_073004_329083_571271A8 
X-CRM114-Status: GOOD (  44.83  )
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
Content-Type: multipart/mixed; boundary="===============3860007737853725410=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3860007737853725410==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgtwqetat5bqpk6j"
Content-Disposition: inline


--lgtwqetat5bqpk6j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 15, 2024 at 03:37:20PM +0100, Sebastian Wick wrote:
> On Mon, Jan 15, 2024 at 03:33:08PM +0100, Sebastian Wick wrote:
> > On Thu, Dec 07, 2023 at 04:49:31PM +0100, Maxime Ripard wrote:
> > > The i915 driver has a property to force the RGB range of an HDMI outp=
ut.
> > > The vc4 driver then implemented the same property with the same
> > > semantics. KWin has support for it, and a PR for mutter is also there=
 to
> > > support it.
> > >=20
> > > Both drivers implementing the same property with the same semantics,
> > > plus the userspace having support for it, is proof enough that it's
> > > pretty much a de-facto standard now and we can provide helpers for it.
> > >=20
> > > Let's plumb it into the newly created HDMI connector.
> > >=20
> > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > ---
> > >  Documentation/gpu/kms-properties.csv               |   1 -
> > >  drivers/gpu/drm/drm_atomic.c                       |   5 +
> > >  drivers/gpu/drm/drm_atomic_state_helper.c          |  17 +
> > >  drivers/gpu/drm/drm_atomic_uapi.c                  |   4 +
> > >  drivers/gpu/drm/drm_connector.c                    |  76 +++++
> > >  drivers/gpu/drm/tests/Makefile                     |   1 +
> > >  .../gpu/drm/tests/drm_atomic_state_helper_test.c   | 376 +++++++++++=
++++++++++
> > >  drivers/gpu/drm/tests/drm_connector_test.c         | 117 ++++++-
> > >  drivers/gpu/drm/tests/drm_kunit_edid.h             | 106 ++++++
> > >  include/drm/drm_connector.h                        |  36 ++
> > >  10 files changed, 737 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/Documentation/gpu/kms-properties.csv b/Documentation/gpu=
/kms-properties.csv
> > > index 0f9590834829..caef14c532d4 100644
> > > --- a/Documentation/gpu/kms-properties.csv
> > > +++ b/Documentation/gpu/kms-properties.csv
> > > @@ -17,7 +17,6 @@ Owner Module/Drivers,Group,Property Name,Type,Prope=
rty Values,Object attached,De
> > >  ,Virtual GPU,=E2=80=9Csuggested X=E2=80=9D,RANGE,"Min=3D0, Max=3D0xf=
fffffff",Connector,property to suggest an X offset for a connector
> > >  ,,=E2=80=9Csuggested Y=E2=80=9D,RANGE,"Min=3D0, Max=3D0xffffffff",Co=
nnector,property to suggest an Y offset for a connector
> > >  ,Optional,"""aspect ratio""",ENUM,"{ ""None"", ""4:3"", ""16:9"" }",=
Connector,TDB
> > > -i915,Generic,"""Broadcast RGB""",ENUM,"{ ""Automatic"", ""Full"", ""=
Limited 16:235"" }",Connector,"When this property is set to Limited 16:235 =
and CTM is set, the hardware will be programmed with the result of the mult=
iplication of CTM by the limited range matrix to ensure the pixels normally=
 in the range 0..1.0 are remapped to the range 16/255..235/255."
> > >  ,,=E2=80=9Caudio=E2=80=9D,ENUM,"{ ""force-dvi"", ""off"", ""auto"", =
""on"" }",Connector,TBD
> > >  ,SDVO-TV,=E2=80=9Cmode=E2=80=9D,ENUM,"{ ""NTSC_M"", ""NTSC_J"", ""NT=
SC_443"", ""PAL_B"" } etc.",Connector,TBD
> > >  ,,"""left_margin""",RANGE,"Min=3D0, Max=3D SDVO dependent",Connector=
,TBD
> > > diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomi=
c.c
> > > index c31fc0b48c31..1465a7f09a0b 100644
> > > --- a/drivers/gpu/drm/drm_atomic.c
> > > +++ b/drivers/gpu/drm/drm_atomic.c
> > > @@ -1142,6 +1142,11 @@ static void drm_atomic_connector_print_state(s=
truct drm_printer *p,
> > >  	drm_printf(p, "\tmax_requested_bpc=3D%d\n", state->max_requested_bp=
c);
> > >  	drm_printf(p, "\tcolorspace=3D%s\n", drm_get_colorspace_name(state-=
>colorspace));
> > > =20
> > > +	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIA ||
> > > +	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_HDMIB)
> > > +		drm_printf(p, "\tbroadcast_rgb=3D%s\n",
> > > +			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcas=
t_rgb));
> > > +
> > >  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_WRITEBACK)
> > >  		if (state->writeback_job && state->writeback_job->fb)
> > >  			drm_printf(p, "\tfb=3D%d\n", state->writeback_job->fb->base.id);
> > > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/=
drm/drm_atomic_state_helper.c
> > > index e69c0cc1c6da..10d98620a358 100644
> > > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > > @@ -583,6 +583,7 @@ EXPORT_SYMBOL(drm_atomic_helper_connector_tv_rese=
t);
> > >  void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *=
connector,
> > >  					      struct drm_connector_state *new_state)
> > >  {
> > > +	new_state->hdmi.broadcast_rgb =3D DRM_HDMI_BROADCAST_RGB_AUTO;
> > >  }
> > >  EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
> > > =20
> > > @@ -650,6 +651,22 @@ EXPORT_SYMBOL(drm_atomic_helper_connector_tv_che=
ck);
> > >  int drm_atomic_helper_connector_hdmi_check(struct drm_connector *con=
nector,
> > >  					   struct drm_atomic_state *state)
> > >  {
> > > +	struct drm_connector_state *old_state =3D
> > > +		drm_atomic_get_old_connector_state(state, connector);
> > > +	struct drm_connector_state *new_state =3D
> > > +		drm_atomic_get_new_connector_state(state, connector);
> > > +
> > > +	if (old_state->hdmi.broadcast_rgb !=3D new_state->hdmi.broadcast_rg=
b) {
> > > +		struct drm_crtc *crtc =3D new_state->crtc;
> > > +		struct drm_crtc_state *crtc_state;
> > > +
> > > +		crtc_state =3D drm_atomic_get_crtc_state(state, crtc);
> > > +		if (IS_ERR(crtc_state))
> > > +			return PTR_ERR(crtc_state);
> > > +
> > > +		crtc_state->mode_changed =3D true;
> > > +	}
> > > +
> > >  	return 0;
> > >  }
> > >  EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
> > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_=
atomic_uapi.c
> > > index aee4a65d4959..3eb4f4bc8b71 100644
> > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > @@ -818,6 +818,8 @@ static int drm_atomic_connector_set_property(stru=
ct drm_connector *connector,
> > >  		state->max_requested_bpc =3D val;
> > >  	} else if (property =3D=3D connector->privacy_screen_sw_state_prope=
rty) {
> > >  		state->privacy_screen_sw_state =3D val;
> > > +	} else if (property =3D=3D connector->broadcast_rgb_property) {
> > > +		state->hdmi.broadcast_rgb =3D val;
> > >  	} else if (connector->funcs->atomic_set_property) {
> > >  		return connector->funcs->atomic_set_property(connector,
> > >  				state, property, val);
> > > @@ -901,6 +903,8 @@ drm_atomic_connector_get_property(struct drm_conn=
ector *connector,
> > >  		*val =3D state->max_requested_bpc;
> > >  	} else if (property =3D=3D connector->privacy_screen_sw_state_prope=
rty) {
> > >  		*val =3D state->privacy_screen_sw_state;
> > > +	} else if (property =3D=3D connector->broadcast_rgb_property) {
> > > +		*val =3D state->hdmi.broadcast_rgb;
> > >  	} else if (connector->funcs->atomic_get_property) {
> > >  		return connector->funcs->atomic_get_property(connector,
> > >  				state, property, val);
> > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_co=
nnector.c
> > > index d9961cce8245..929b0a911f62 100644
> > > --- a/drivers/gpu/drm/drm_connector.c
> > > +++ b/drivers/gpu/drm/drm_connector.c
> > > @@ -1183,6 +1183,29 @@ static const u32 dp_colorspaces =3D
> > >  	BIT(DRM_MODE_COLORIMETRY_BT2020_CYCC) |
> > >  	BIT(DRM_MODE_COLORIMETRY_BT2020_YCC);
> > > =20
> > > +static const struct drm_prop_enum_list broadcast_rgb_names[] =3D {
> > > +	{ DRM_HDMI_BROADCAST_RGB_AUTO, "Automatic" },
> > > +	{ DRM_HDMI_BROADCAST_RGB_FULL, "Full" },
> > > +	{ DRM_HDMI_BROADCAST_RGB_LIMITED, "Limited 16:235" },
> > > +};
> > > +
> > > +/*
> > > + * drm_hdmi_connector_get_broadcast_rgb_name - Return a string for H=
DMI connector RGB broadcast selection
> > > + * @broadcast_rgb: Broadcast RGB selection to compute name of
> > > + *
> > > + * Returns: the name of the Broadcast RGB selection, or NULL if the =
type
> > > + * is not valid.
> > > + */
> > > +const char *
> > > +drm_hdmi_connector_get_broadcast_rgb_name(enum drm_hdmi_broadcast_rg=
b broadcast_rgb)
> > > +{
> > > +	if (broadcast_rgb > DRM_HDMI_BROADCAST_RGB_LIMITED)
> > > +		return NULL;
> > > +
> > > +	return broadcast_rgb_names[broadcast_rgb].name;
> > > +}
> > > +EXPORT_SYMBOL(drm_hdmi_connector_get_broadcast_rgb_name);
> > > +
> > >  /**
> > >   * DOC: standard connector properties
> > >   *
> > > @@ -1655,6 +1678,26 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconne=
ctor_property);
> > >  /**
> > >   * DOC: HDMI connector properties
> > >   *
> > > + * Broadcast RGB
> > > + *      Indicates the RGB Quantization Range (Full vs Limited) used.
> > > + *      Infoframes will be generated according to that value.
> > > + *
> > > + *      The value of this property can be one of the following:
> > > + *
> > > + *      Automatic:
> > > + *              RGB Range is selected automatically based on the mode
> > > + *              according to the HDMI specifications.
> > > + *
> > > + *      Full:
> > > + *              Full RGB Range is forced.
> > > + *
> > > + *      Limited 16:235:
> > > + *              Limited RGB Range is forced. Unlike the name suggest=
s,
> > > + *              this works for any number of bits-per-component.
> > > + *
> > > + *      Drivers can set up this property by calling
> > > + *      drm_connector_attach_broadcast_rgb_property().
> > > + *
> >=20
> > This is a good time to document this in more detail. There might be two
> > different things being affected:
> >=20
> > 1. The signalling (InfoFrame/SDP/...)
> > 2. The color pipeline processing
> >=20
> > All values of Broadcast RGB always affect the color pipeline processing
> > such that a full-range input to the CRTC is converted to either full- or
> > limited-range, depending on what the monitor is supposed to accept.
> >=20
> > When automatic is selected, does that mean that there is no signalling,
> > or that the signalling matches what the monitor is supposed to accept
> > according to the spec? Also, is this really HDMI specific?
> >=20
> > When full or limited is selected and the monitor doesn't support the
> > signalling, what happens?
>=20
> Forgot to mention: user-space still has no control over RGB vs YCbCr on
> the cable, so is this only affecting RGB? If not, how does it affect
> YCbCr?
i915 only supports it for RGB indeed:
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/i915/display=
/intel_hdmi.c#L2150

Maxime

--lgtwqetat5bqpk6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZaVPeAAKCRDj7w1vZxhR
xUqfAP42KmlQNAjS8Gd15wm3o/xPVLwxKq3Mj9o3uDndMr8fFQEAwaAUHG90t28G
n7PjI68jJ9C8mdG1vseKHs+IcWYeWwU=
=KfLJ
-----END PGP SIGNATURE-----

--lgtwqetat5bqpk6j--


--===============3860007737853725410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3860007737853725410==--

