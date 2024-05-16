Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23743C25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 May 2024 09:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ycSPTAG3QdnS/7cCd52nJNBBwfAefDDJPZ0XrAW04yE=; b=z0u+I/dwU54OBtux1u8hmRmlmZ
	jsSUmsiirz6YWrvx4XQ/TAIB1/osbVa2lTOZOnlGN3d97xptCnMM1+OlLK2g9Wk57ePw4/gGN0kCJ
	uH7qTjgDKzlaQ+sZDY6f1zuUeXARghzZdpVwqtemq/0sGnj5JtVDZmHq93t26ZgTu0L/Xd1+/sN3q
	mPtPrG9F+6Te3kotgQnwso6Tdkg/k+xKHbDJ8XgQTTTnsB92Bephdt1jZunz6/MyWoGt7x3lgB3j9
	BWcRxnUKp9CD+WHOW3sd+KJZPOOGCkLEPiyKUhKeb7GbECndBzV3jmWTr31hHejVxZKEG1tzHTmfX
	RClTxkYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7XgJ-00000004MoD-1far;
	Thu, 16 May 2024 09:45:47 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7XgF-00000004Mlq-2CYg;
	Thu, 16 May 2024 09:45:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9514BCE188D;
	Thu, 16 May 2024 09:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58290C113CC;
	Thu, 16 May 2024 09:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715852736;
	bh=yXCqhL29SVvT8WjrDeHNlvHXxEyfDjFKwsltPgc1BOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ba5TCAMYUEVuM1HddFl0N3gS+f6oX3izyFyLul6eetaKJMafh+e+7Viqp5sb7HNqG
	 JTLMIiFC0eRSKkd+Y8l65cNK5FwB1B4WvIaoKTNusgD29wj/dSoQkb2CVPaobbkzV+
	 oT2CLHsEwaLSyJ4sT9NxQJod5gJXsXs7/LKWj6SYgaOnaNLoYwZ8ci9sMh4omr0l/O
	 sR3UslWLSnq1Bo8ZTc15qw1rNXRP2VriSlqYjdzr1JpYgm6wmWPo7nx1ScKhPWQcUt
	 Pdkbr/wPIX5cnWl48RtbVW9zjxhVqPHVZLEpvAo3u7Hs8wXe0+g3ewoztFpHXqP3Ru
	 MjyLNkPCTlpJQ==
Date: Thu, 16 May 2024 11:45:33 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v13 15/28] drm/connector: hdmi: Compute bpc and format
 automatically
Message-ID: <20240516-lean-smooth-bonobo-d7e198@penduick>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
 <20240507-kms-hdmi-connector-state-v13-15-8fafc5efe8be@kernel.org>
 <73944574.1631.18f6be1e78f.Coremail.andyshrk@163.com>
MIME-Version: 1.0
In-Reply-To: <73944574.1631.18f6be1e78f.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_024543_974665_2C114E60 
X-CRM114-Status: GOOD (  30.33  )
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
Content-Type: multipart/mixed; boundary="===============0167375417637598286=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0167375417637598286==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="zvciie23y5uhhbzh"
Content-Disposition: inline


--zvciie23y5uhhbzh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi again,

On Sun, May 12, 2024 at 04:18:38PM +0800, Andy Yan wrote:
> =E5=9C=A8 2024-05-07 21:17:33=EF=BC=8C"Maxime Ripard" <mripard@kernel.org=
> =E5=86=99=E9=81=93=EF=BC=9A
> >Now that we have all the infrastructure needed, we can add some code
> >that will, for a given connector state and mode, compute the best output
> >format and bpc.
> >
> >The algorithm is equivalent to the one already found in i915 and vc4.
> >
> >Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> >Signed-off-by: Maxime Ripard <mripard@kernel.org>
> >---
> > drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 199 ++++++++++++++=
++++++-
> > drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  25 ++-
> > 2 files changed, 212 insertions(+), 12 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/g=
pu/drm/display/drm_hdmi_state_helper.c
> >index 063421835dba..f20dcfecb6b8 100644
> >--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> >+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> >@@ -1,9 +1,11 @@
> > // SPDX-License-Identifier: MIT
> >=20
> > #include <drm/drm_atomic.h>
> > #include <drm/drm_connector.h>
> >+#include <drm/drm_edid.h>
> >+#include <drm/drm_print.h>
> >=20
> > #include <drm/display/drm_hdmi_helper.h>
> > #include <drm/display/drm_hdmi_state_helper.h>
> >=20
> > /**
> >@@ -46,10 +48,112 @@ connector_state_get_mode(const struct drm_connector=
_state *conn_state)
> > 		return NULL;
> >=20
> > 	return &crtc_state->mode;
> > }
> >=20
> >+static bool
> >+sink_supports_format_bpc(const struct drm_connector *connector,
> >+			 const struct drm_display_info *info,
> >+			 const struct drm_display_mode *mode,
> >+			 unsigned int format, unsigned int bpc)
> >+{
> >+	struct drm_device *dev =3D connector->dev;
> >+	u8 vic =3D drm_match_cea_mode(mode);
> >+
> >+	/*
> >+	 * CTA-861-F, section 5.4 - Color Coding & Quantization states
> >+	 * that the bpc must be 8, 10, 12 or 16 except for the default
> >+	 * 640x480 VIC1 where the value must be 8.
> >+	 *
> >+	 * The definition of default here is ambiguous but the spec
> >+	 * refers to VIC1 being the default timing in several occasions
> >+	 * so our understanding is that for the default timing (ie,
> >+	 * VIC1), the bpc must be 8.
> >+	 */
> >+	if (vic =3D=3D 1 && bpc !=3D 8) {
> >+		drm_dbg_kms(dev, "VIC1 requires a bpc of 8, got %u\n", bpc);
> >+		return false;
> >+	}
> >+
> >+	if (!info->is_hdmi &&
> >+	    (format !=3D HDMI_COLORSPACE_RGB || bpc !=3D 8)) {
> >+		drm_dbg_kms(dev, "DVI Monitors require an RGB output at 8 bpc\n");
> >+		return false;
> >+	}
> >+
> >+	if (!(connector->hdmi.supported_formats & BIT(format))) {
> >+		drm_dbg_kms(dev, "%s format unsupported by the connector.\n",
> >+			    drm_hdmi_connector_get_output_format_name(format));
> >+		return false;
> >+	}
> >+
> >+	switch (format) {
> >+	case HDMI_COLORSPACE_RGB:
> >+		drm_dbg_kms(dev, "RGB Format, checking the constraints.\n");
> >+
> >+		if (!(info->color_formats & DRM_COLOR_FORMAT_RGB444)) {
> >+			drm_dbg_kms(dev, "Sink doesn't support RGB.\n");
> >+			return false;
> >+		}
> >+
> As I reported in V12,  the HDMI output on my rk3036-kylin was lost after =
apply this series.
> This is because there is something wrong with the DDC on my board, the ed=
id read always failed
> on first bootup. That means inno_hdmi_connector_get_modes will return 0.
>=20
> and in function drm_helper_probe_single_connector_modes:
>=20
>          count =3D drm_helper_probe_get_modes(connector);
>=20
>          if (count =3D=3D 0 && (connector->status =3D=3D connector_status=
_connected ||
>                             connector->status =3D=3D connector_status_unk=
nown)) {
>                  count =3D drm_add_modes_noedid(connector, 1024, 768);
>=20
>                  /*
>                   * Section 4.2.2.6 (EDID Corruption Detection) of the DP=
 1.4a
>                   * Link CTS specifies that 640x480 (the official "failsa=
fe"
>                   * mode) needs to be the default if there's no EDID.
>                   */
>                  if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_=
DisplayPort)
>                          drm_set_preferred_mode(connector, 640, 480);
>          }
> drm_add_modes_noedid will not initialize display_info. So the check about=
 display info will always failed here:
>=20
> [    4.205368] rockchip-drm display-subsystem: [drm:drm_atomic_check_only=
] checking (ptrval)
> [    4.205410] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] [CRTC:35:crtc-0] mode changed
> [    4.205439] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] [CRTC:35:crtc-0] enable changed
> [    4.205464] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] [CRTC:35:crtc-0] active changed
> [    4.205490] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] Updating routing for [CONNECTOR:37:HDMI-A-1]
> [    4.205517] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] [CONNECTOR:37:HDMI-A-1] using [ENCODER:36:TMDS-36] on [CRTC:35:=
crtc-0]
> [    4.205545] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] Trying with a 8 bpc output
> [    4.205575] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] Trying RGB output format
> [    4.205670] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] RGB Format, checking the constraints.
> [    4.205696] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] Sink doesn't support RGB.
> [    4.205720] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] RGB output format not supported with 8 bpc
> [    4.205747] rockchip-drm display-subsystem: [drm:drm_atomic_helper_con=
nector_hdmi_check] Failed. No Format Supported for that bpc count.
> [    4.205772] rockchip-drm display-subsystem: [drm:drm_atomic_helper_che=
ck_modeset] [CONNECTOR:37:HDMI-A-1] driver check failed
> [    4.205796] rockchip-drm display-subsystem: [drm:drm_atomic_check_only=
] atomic driver check for (ptrval) failed: -22
>=20
> My reply for your email in V12[0] was bounced, so I think you didn't read=
 it.
>=20
> [0]https://patchwork.kernel.org/project/linux-rockchip/patch/20240423-kms=
-hdmi-connector-state-v12-27-3338e4c0b189@kernel.org/

Indeed, I never received it, sorry.

Thanks for looking into it, it's very valuable.

I can see several things that interact and could go wrong:

* The DDC readout should not fail like that. From a quick look at the
  driver, I'm wondering if it's not due to the fact that the DDC
  controller isn't powered until the first modeset happens. Since the
  first get_modes call is done with the controller disabled, it's
  probably not initialized enough yet. The first modeset then comes and
  will initialize the controller enough for the subsequent get_modes to
  work. Is it something you could look into?

* drm_display_info not being filled to some sane default when there's no
  EDID is indeed an issue. I can't be made generic, but the HDMI spec
  provides us with some minimum requirements we can probably set in this
  case (RGB supported, 8bpc supported, etc.) I'll work on that.

Thanks again,
Maxime

--zvciie23y5uhhbzh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZkXVvQAKCRAnX84Zoj2+
dhk4AYDogM4jEJWYBgXDz/9UjL6hM3e7hDiwpTPzxkObPEWZiK3oKr2a2v7jLuE5
xTCqq9MBegJT2DFubE/fsL0xtq9L6tXFall+M0VLBe504G/qtrbBpVtz4xc3xqIJ
KoTH3BOGyQ==
=996h
-----END PGP SIGNATURE-----

--zvciie23y5uhhbzh--


--===============0167375417637598286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0167375417637598286==--

