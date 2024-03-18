Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483E5C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Mar 2024 13:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=trgBUarBotgJ3qIzVTz+9M9BJX4GWmngNFvj6UWqr64=; b=yRq+FyiETbYztP6yRxTt3oRnWu
	ZuQ5ej5e5H4serPowQx2l3lv1Mu82W2bHohYkqpA/RbSW2FKggBHgNkE3tr7VxynlilKpQtSDX7h7
	syHolnfircaukbvnzlopP+IKKJp6BMrKPtuLrabBOSAMFxA+pPzqor2Pd0qWDzBki7nRmHSnld1Z3
	TpOzeJvb3GS62OQwduJg+9K+58VAC4OguQXkQNXXa/a5sJ6tpeTZEiuqAFVdfFVpC1tRHtG/QNE9D
	kruG8hrahMptS6twF5TaGakKKPvy6Qba9O6qYQadexKlloJLqllTdO/6EQt11GU8Nr+guKDoxmPKN
	kA/fbfjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmDNC-00000008iQk-2wo4;
	Mon, 18 Mar 2024 13:49:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmDN8-00000008iPC-3RD9;
	Mon, 18 Mar 2024 13:49:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F3BAA60C44;
	Mon, 18 Mar 2024 13:49:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F7EEC433F1;
	Mon, 18 Mar 2024 13:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710769789;
	bh=YOEzrHatFx0jJiBRWLd82LEi0v2Xjx5N3Is/qlRet7I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=slqWXRSwUpMKJX228WDSzX4o7zRh8HSBkbb/2NM3B//SpqXngmTq/4wk3WM97JShS
	 nbn2LASnZStxFfxzfSrpJcqe3cevdN3VV9mtW/WTFBcx43KOb10DbUyrFLQE12r7s1
	 ud/b3imUL5kefI0gfv91z6We00gawo2BAyddGZ/g2RAf052B3uGABawH1Ih2G2RK6i
	 OK9pj6bDKv4tAAAfn2EOrjGa65ygcoDvQ1Xyih1Y8TO4xDmweK/gOUs4VBSTmlC1LC
	 PsU5X/flh6Zsgtoh4RGm1fWDggOFGtk3SIOF7iMxu/eMrmNp5NaDUTRV9DjZo2Hi1S
	 zkjFapGMK4pTA==
Date: Mon, 18 Mar 2024 14:49:47 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v9 20/27] drm/connector: hdmi: Add Infoframes generation
Message-ID: <20240318-abstract-myna-of-exercise-adfcde@houat>
References: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
 <20240311-kms-hdmi-connector-state-v9-20-d45890323344@kernel.org>
 <ZfQFLR2xO6vUpAJ9@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZfQFLR2xO6vUpAJ9@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_064950_995873_89D4D13E 
X-CRM114-Status: GOOD (  35.53  )
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
Content-Type: multipart/mixed; boundary="===============3711883711369005441=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3711883711369005441==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3fi5t7l5bdbcyjok"
Content-Disposition: inline


--3fi5t7l5bdbcyjok
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Mar 15, 2024 at 10:22:05AM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Mar 11, 2024 at 03:49:48PM +0100, Maxime Ripard wrote:
> > Infoframes in KMS is usually handled by a bunch of low-level helpers
> > that require quite some boilerplate for drivers. This leads to
> > discrepancies with how drivers generate them, and which are actually
> > sent.
> >=20
> > Now that we have everything needed to generate them in the HDMI
> > connector state, we can generate them in our common logic so that
> > drivers can simply reuse what we precomputed.
> >=20
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >  drivers/gpu/drm/Kconfig                            |   1 +
> >  drivers/gpu/drm/drm_atomic_state_helper.c          | 323 +++++++++++++=
++++++++
> >  drivers/gpu/drm/drm_connector.c                    |  14 +
> >  .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
> >  drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
> >  include/drm/drm_atomic_state_helper.h              |   8 +
> >  include/drm/drm_connector.h                        | 133 +++++++++
> >  7 files changed, 492 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > index 872edb47bb53..ad9c467e20ce 100644
> > --- a/drivers/gpu/drm/Kconfig
> > +++ b/drivers/gpu/drm/Kconfig
> > @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
> >  	  If in doubt, say "N".
> > =20
> >  config DRM_KMS_HELPER
> >  	tristate
> >  	depends on DRM
> > +	select DRM_DISPLAY_HDMI_HELPER
> >  	help
> >  	  CRTC helpers for KMS drivers.
> > =20
> >  config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
> >          bool "Enable refcount backtrace history in the DP MST helpers"
> > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/dr=
m/drm_atomic_state_helper.c
> > index e66272c0d006..2bf53666fc9d 100644
> > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > @@ -36,10 +36,12 @@
> >  #include <drm/drm_plane.h>
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_vblank.h>
> >  #include <drm/drm_writeback.h>
> > =20
> > +#include <drm/display/drm_hdmi_helper.h>
> > +
> >  #include <linux/slab.h>
> >  #include <linux/dma-fence.h>
> > =20
> >  /**
> >   * DOC: atomic state reset and initialization
> > @@ -912,10 +914,143 @@ hdmi_compute_config(const struct drm_connector *=
connector,
> >  	}
> > =20
> >  	return -EINVAL;
> >  }
> > =20
> > +static int hdmi_generate_avi_infoframe(const struct drm_connector *con=
nector,
> > +				       struct drm_connector_state *state)
> > +{
> > +	const struct drm_display_mode *mode =3D
> > +		connector_state_get_mode(state);
> > +	struct drm_connector_hdmi_infoframe *infoframe =3D
> > +		&state->hdmi.infoframes.avi;
> > +	struct hdmi_avi_infoframe *frame =3D
> > +		&infoframe->data.avi;
> > +	bool is_full_range =3D state->hdmi.is_full_range;
> > +	enum hdmi_quantization_range rgb_quant_range =3D
> > +		is_full_range ? HDMI_QUANTIZATION_RANGE_FULL : HDMI_QUANTIZATION_RAN=
GE_LIMITED;
> > +	int ret;
> > +
> > +	ret =3D drm_hdmi_avi_infoframe_from_display_mode(frame, connector, mo=
de);
> > +	if (ret)
> > +		return ret;
> > +
> > +	frame->colorspace =3D state->hdmi.output_format;
> > +
> > +	drm_hdmi_avi_infoframe_quant_range(frame, connector, mode, rgb_quant_=
range);
>=20
> drm_hdmi_avi_infoframe_quant_range() doesn't handle YCbCr currently.

I guess it's not really a problem anymore if we drop YUV422 selection,
but I'll add a comment.

> > +	drm_hdmi_avi_infoframe_colorimetry(frame, state);
> > +	drm_hdmi_avi_infoframe_bars(frame, state);
> > +
> > +	infoframe->set =3D true;
> > +
> > +	return 0;
> > +}
> > +
> <snip>
> > +
> > +#define UPDATE_INFOFRAME(c, os, ns, i)				\
> > +	write_or_clear_infoframe(c,				\
> > +				 &(c)->hdmi.infoframes.i,	\
> > +				 &(os)->hdmi.infoframes.i,	\
> > +				 &(ns)->hdmi.infoframes.i)
>=20
> This macro feels like pointless obfuscation to me.

I'll remove it then.

> <snip>
> > @@ -1984,20 +2063,73 @@ struct drm_connector {
> > =20
> >  	/**
> >  	 * @hdmi: HDMI-related variable and properties.
> >  	 */
> >  	struct {
> > +#define DRM_CONNECTOR_HDMI_VENDOR_LEN	8
> > +		/**
> > +		 * @vendor: HDMI Controller Vendor Name
> > +		 */
> > +		unsigned char vendor[DRM_CONNECTOR_HDMI_VENDOR_LEN] __nonstring;
> > +
> > +#define DRM_CONNECTOR_HDMI_PRODUCT_LEN	16
> > +		/**
> > +		 * @product: HDMI Controller Product Name
> > +		 */
> > +		unsigned char product[DRM_CONNECTOR_HDMI_PRODUCT_LEN] __nonstring;
> > +
> >  		/**
> >  		 * @supported_formats: Bitmask of @hdmi_colorspace
> >  		 * supported by the controller.
> >  		 */
> >  		unsigned long supported_formats;
> > =20
> >  		/**
> >  		 * @funcs: HDMI connector Control Functions
> >  		 */
> >  		const struct drm_connector_hdmi_funcs *funcs;
> > +
> > +		/**
> > +		 * @infoframes: Current Infoframes output by the connector
> > +		 */
> > +		struct {
> > +			/**
> > +			 * @lock: Mutex protecting against concurrent access to
> > +			 * the infoframes, most notably between KMS and ALSA.
> > +			 */
> > +			struct mutex lock;
> > +
> > +			/**
> > +			 * @audio: Current Audio Infoframes structure. Protected
> > +			 * by @lock.
> > +			 */
> > +			struct drm_connector_hdmi_infoframe audio;
> > +
> > +			/**
> > +			 * @avi: Current AVI Infoframes structure. Protected by
> > +			 * @lock.
> > +			 */
> > +			struct drm_connector_hdmi_infoframe avi;
> > +
> > +			/**
> > +			 * @hdr_drm: Current DRM (Dynamic Range and Mastering)
> > +			 * Infoframes structure. Protected by @lock.
> > +			 */
> > +			struct drm_connector_hdmi_infoframe hdr_drm;
> > +
> > +			/**
> > +			 * @spd: Current SPD Infoframes structure. Protected by
> > +			 * @lock.
> > +			 */
> > +			struct drm_connector_hdmi_infoframe spd;
> > +
> > +			/**
> > +			 * @vendor: Current HDMI Vendor Infoframes structure.
> > +			 * Protected by @lock.
> > +			 */
> > +			struct drm_connector_hdmi_infoframe hdmi;
> > +		} infoframes;
> >  	} hdmi;
>=20
> What's the deal with this bloat? These are already tracked in the
> connector's state so this looks entirely redundant.

The next patch in this series is about adding debugfs entries to read
the infoframes, and thus we need to care about concurrency between
debugfs files accesses and commits. Copying the things we care about
=66rom the state to the entity is the typical solution for that, but I
guess we could also take the proper locks and access the current
connector state.

Maxime

--3fi5t7l5bdbcyjok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZfhGegAKCRDj7w1vZxhR
xdWSAP0cFkWN2I/JOojZFtaGuV+9tSlOV/CstHMih6nVLQ2EWgEA2ebJLFm5BKD3
79egYvDYViJCIyv4yrAkflJfyTWEeQs=
=h0zT
-----END PGP SIGNATURE-----

--3fi5t7l5bdbcyjok--


--===============3711883711369005441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3711883711369005441==--

