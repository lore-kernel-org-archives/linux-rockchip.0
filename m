Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 136C0C54E5D
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 10:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZlZqfFezTSki+YGRkBGpispZVKNTmBpMa8TSOSkizU=; b=IqFmsX3vdPLKQcA2sjQuhx+ti8
	t6NdJCFopoQTexAm3Wj8QdHvuXJ9dzR4y+BZIfQQLHmrjstjW05STdj686FrqL1aN7njjPVSZL9lG
	tlzhJ9zMOA6wM0Syx4HWfAAy35Sy+yZdR7DPzo5moln+cDC0ifI4Yc9JP5tYs6362dOETmJDwMeBH
	rB6UJOgJx+tJm2F/Spx7nGUd5of8xwMsFybxPSvlG6BmmgdEtBtl3LdGflZJ8DlSPNFr3Ws980Chc
	bCsOuw4Jo51rEwPN+x0HQIRjgLbGox/6+psmdeV/hxlpwOh9xQburN2kDgS4K80X2FYkLpFJESqgE
	jUm9NiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWbU-0000000CHHK-0jVi;
	Tue, 19 Mar 2024 10:21:56 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWbQ-0000000CHG4-1tHE;
	Tue, 19 Mar 2024 10:21:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A5FC5CE0A36;
	Tue, 19 Mar 2024 10:21:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61254C433F1;
	Tue, 19 Mar 2024 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710843709;
	bh=LQRJqrShl8lL6hDmy7i+nFgigQ3aCd966E5AFrLN2Y8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X3dmr0PLHavDuoM68/QuGgElb/8kOvBtF0DTtpAK++OG8G164ABhe+f9jC45EszTB
	 Vs1lefCt9oyU5P53WzxO3QHshXXtv0DYzuxaTfuKUo+8yKJQ5s3WwTPP2WAD+HqjRv
	 B/z3pDeF6O8KyQVjgywEhI083KLegBTcQzcKkTVTAvnlIv7Lg9AiM/7A+vJfX9nRd6
	 iUt809Kkyh5bAq53RcaGdWdbDAKjlJPHJB9pH/uKrMQRSOBVTAxA49r3QyH2WRUhVW
	 vQP95iqFE5cfQF0mH+ztO7zlAIh22ObIDKMEDkw5G+UwINPxqHMp637HmBeEDvfqA9
	 NMCi2hrdoNsmQ==
Date: Tue, 19 Mar 2024 11:21:47 +0100
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
Message-ID: <20240319-gabby-marigold-poodle-c5a27f@houat>
References: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
 <20240311-kms-hdmi-connector-state-v9-20-d45890323344@kernel.org>
 <ZfQFLR2xO6vUpAJ9@intel.com>
 <20240318-abstract-myna-of-exercise-adfcde@houat>
 <ZfhnsgYfwe_3mpWx@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZfhnsgYfwe_3mpWx@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_032152_930180_0E0D8826 
X-CRM114-Status: GOOD (  47.25  )
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
Content-Type: multipart/mixed; boundary="===============6035048185815411807=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6035048185815411807==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6n43iydiwru5gl6x"
Content-Disposition: inline


--6n43iydiwru5gl6x
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 18, 2024 at 06:11:30PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Mar 18, 2024 at 02:49:47PM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Fri, Mar 15, 2024 at 10:22:05AM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Mon, Mar 11, 2024 at 03:49:48PM +0100, Maxime Ripard wrote:
> > > > Infoframes in KMS is usually handled by a bunch of low-level helpers
> > > > that require quite some boilerplate for drivers. This leads to
> > > > discrepancies with how drivers generate them, and which are actually
> > > > sent.
> > > >=20
> > > > Now that we have everything needed to generate them in the HDMI
> > > > connector state, we can generate them in our common logic so that
> > > > drivers can simply reuse what we precomputed.
> > > >=20
> > > > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > > > ---
> > > >  drivers/gpu/drm/Kconfig                            |   1 +
> > > >  drivers/gpu/drm/drm_atomic_state_helper.c          | 323 +++++++++=
++++++++++++
> > > >  drivers/gpu/drm/drm_connector.c                    |  14 +
> > > >  .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
> > > >  drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
> > > >  include/drm/drm_atomic_state_helper.h              |   8 +
> > > >  include/drm/drm_connector.h                        | 133 +++++++++
> > > >  7 files changed, 492 insertions(+)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > > > index 872edb47bb53..ad9c467e20ce 100644
> > > > --- a/drivers/gpu/drm/Kconfig
> > > > +++ b/drivers/gpu/drm/Kconfig
> > > > @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
> > > >  	  If in doubt, say "N".
> > > > =20
> > > >  config DRM_KMS_HELPER
> > > >  	tristate
> > > >  	depends on DRM
> > > > +	select DRM_DISPLAY_HDMI_HELPER
> > > >  	help
> > > >  	  CRTC helpers for KMS drivers.
> > > > =20
> > > >  config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
> > > >          bool "Enable refcount backtrace history in the DP MST help=
ers"
> > > > diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gp=
u/drm/drm_atomic_state_helper.c
> > > > index e66272c0d006..2bf53666fc9d 100644
> > > > --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> > > > +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> > > > @@ -36,10 +36,12 @@
> > > >  #include <drm/drm_plane.h>
> > > >  #include <drm/drm_print.h>
> > > >  #include <drm/drm_vblank.h>
> > > >  #include <drm/drm_writeback.h>
> > > > =20
> > > > +#include <drm/display/drm_hdmi_helper.h>
> > > > +
> > > >  #include <linux/slab.h>
> > > >  #include <linux/dma-fence.h>
> > > > =20
> > > >  /**
> > > >   * DOC: atomic state reset and initialization
> > > > @@ -912,10 +914,143 @@ hdmi_compute_config(const struct drm_connect=
or *connector,
> > > >  	}
> > > > =20
> > > >  	return -EINVAL;
> > > >  }
> > > > =20
> > > > +static int hdmi_generate_avi_infoframe(const struct drm_connector =
*connector,
> > > > +				       struct drm_connector_state *state)
> > > > +{
> > > > +	const struct drm_display_mode *mode =3D
> > > > +		connector_state_get_mode(state);
> > > > +	struct drm_connector_hdmi_infoframe *infoframe =3D
> > > > +		&state->hdmi.infoframes.avi;
> > > > +	struct hdmi_avi_infoframe *frame =3D
> > > > +		&infoframe->data.avi;
> > > > +	bool is_full_range =3D state->hdmi.is_full_range;
> > > > +	enum hdmi_quantization_range rgb_quant_range =3D
> > > > +		is_full_range ? HDMI_QUANTIZATION_RANGE_FULL : HDMI_QUANTIZATION=
_RANGE_LIMITED;
> > > > +	int ret;
> > > > +
> > > > +	ret =3D drm_hdmi_avi_infoframe_from_display_mode(frame, connector=
, mode);
> > > > +	if (ret)
> > > > +		return ret;
> > > > +
> > > > +	frame->colorspace =3D state->hdmi.output_format;
> > > > +
> > > > +	drm_hdmi_avi_infoframe_quant_range(frame, connector, mode, rgb_qu=
ant_range);
> > >=20
> > > drm_hdmi_avi_infoframe_quant_range() doesn't handle YCbCr currently.
> >=20
> > I guess it's not really a problem anymore if we drop YUV422 selection,
> > but I'll add a comment.
> >=20
> > > > +	drm_hdmi_avi_infoframe_colorimetry(frame, state);
> > > > +	drm_hdmi_avi_infoframe_bars(frame, state);
> > > > +
> > > > +	infoframe->set =3D true;
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > <snip>
> > > > +
> > > > +#define UPDATE_INFOFRAME(c, os, ns, i)				\
> > > > +	write_or_clear_infoframe(c,				\
> > > > +				 &(c)->hdmi.infoframes.i,	\
> > > > +				 &(os)->hdmi.infoframes.i,	\
> > > > +				 &(ns)->hdmi.infoframes.i)
> > >=20
> > > This macro feels like pointless obfuscation to me.
> >=20
> > I'll remove it then.
> >=20
> > > <snip>
> > > > @@ -1984,20 +2063,73 @@ struct drm_connector {
> > > > =20
> > > >  	/**
> > > >  	 * @hdmi: HDMI-related variable and properties.
> > > >  	 */
> > > >  	struct {
> > > > +#define DRM_CONNECTOR_HDMI_VENDOR_LEN	8
> > > > +		/**
> > > > +		 * @vendor: HDMI Controller Vendor Name
> > > > +		 */
> > > > +		unsigned char vendor[DRM_CONNECTOR_HDMI_VENDOR_LEN] __nonstring;
> > > > +
> > > > +#define DRM_CONNECTOR_HDMI_PRODUCT_LEN	16
> > > > +		/**
> > > > +		 * @product: HDMI Controller Product Name
> > > > +		 */
> > > > +		unsigned char product[DRM_CONNECTOR_HDMI_PRODUCT_LEN] __nonstrin=
g;
> > > > +
> > > >  		/**
> > > >  		 * @supported_formats: Bitmask of @hdmi_colorspace
> > > >  		 * supported by the controller.
> > > >  		 */
> > > >  		unsigned long supported_formats;
> > > > =20
> > > >  		/**
> > > >  		 * @funcs: HDMI connector Control Functions
> > > >  		 */
> > > >  		const struct drm_connector_hdmi_funcs *funcs;
> > > > +
> > > > +		/**
> > > > +		 * @infoframes: Current Infoframes output by the connector
> > > > +		 */
> > > > +		struct {
> > > > +			/**
> > > > +			 * @lock: Mutex protecting against concurrent access to
> > > > +			 * the infoframes, most notably between KMS and ALSA.
> > > > +			 */
> > > > +			struct mutex lock;
> > > > +
> > > > +			/**
> > > > +			 * @audio: Current Audio Infoframes structure. Protected
> > > > +			 * by @lock.
> > > > +			 */
> > > > +			struct drm_connector_hdmi_infoframe audio;
> > > > +
> > > > +			/**
> > > > +			 * @avi: Current AVI Infoframes structure. Protected by
> > > > +			 * @lock.
> > > > +			 */
> > > > +			struct drm_connector_hdmi_infoframe avi;
> > > > +
> > > > +			/**
> > > > +			 * @hdr_drm: Current DRM (Dynamic Range and Mastering)
> > > > +			 * Infoframes structure. Protected by @lock.
> > > > +			 */
> > > > +			struct drm_connector_hdmi_infoframe hdr_drm;
> > > > +
> > > > +			/**
> > > > +			 * @spd: Current SPD Infoframes structure. Protected by
> > > > +			 * @lock.
> > > > +			 */
> > > > +			struct drm_connector_hdmi_infoframe spd;
> > > > +
> > > > +			/**
> > > > +			 * @vendor: Current HDMI Vendor Infoframes structure.
> > > > +			 * Protected by @lock.
> > > > +			 */
> > > > +			struct drm_connector_hdmi_infoframe hdmi;
> > > > +		} infoframes;
> > > >  	} hdmi;
> > >=20
> > > What's the deal with this bloat? These are already tracked in the
> > > connector's state so this looks entirely redundant.
> >=20
> > The next patch in this series is about adding debugfs entries to read
> > the infoframes, and thus we need to care about concurrency between
> > debugfs files accesses and commits. Copying the things we care about
> > from the state to the entity is the typical solution for that, but I
> > guess we could also take the proper locks and access the current
> > connector state.
>=20
> Yeah, just lock and dump the latest state. That is the only thing
> that should of interest to anyone in userspace.
>=20
> Also are you actually adding some kind of ad-hoc state dump things
> just for these? Why not do whatever is needed to include them in
> the normal .atomic_state_print() stuff?

Yeah, part of the reason for the whole thing is so we can make
edid-decode check the sanity of generated infoframes, for both v4l2 and
DRM. Hans has been working on it and has a prototype based on this work.

But you're right, we should probably add them to atomic_state_print too

Maxime

--6n43iydiwru5gl6x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZflnOgAKCRDj7w1vZxhR
xUAqAP9osiLRyY8KJXAT50DTQ35ZRT/BcFN/QtqCr8oS2BcaLgD6Ah6rT5bLm/2W
gzaTbZzUgiazFZ2uVZtKSGrqf8eYswM=
=afLz
-----END PGP SIGNATURE-----

--6n43iydiwru5gl6x--


--===============6035048185815411807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6035048185815411807==--

