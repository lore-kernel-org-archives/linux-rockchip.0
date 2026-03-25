Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3F1C106B53D
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 13:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Wt5IyHVMV3+OktYsiaFfvGyI1KsflUcEiNk3IEiybE=; b=ktOTHeqJ35y43J
	+jx3bBae1phBg7ne2UbZrqu/huae9tL0gN2qbQMH16T5Zuqil5UCefE0ZDhUQq6DoQUhA18OYbjso
	NF0U8fbk64PjJx9dPy7pRkaPeTruCS08rOHdlcfBsbz9i9C6/I/rrkfg83jGhLcXpdWyjuoaa9l9a
	I1nUq/5ybEkHqhfBgF8DODoZqjpVHdk9jlMirv3urpe7g3mGkWJvO899L5+zzhdLF0cSg0Krk/8+T
	Y/DSq2cQxuHTSEWZr3UteKB2fWgSLGykpVjkUNU3rwTQzPok8ELL5H5DwS8VjsMLMBeZ8CTGm8Z4J
	/u7mIhGdORaXH0IVDA9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OWC-00000003UPz-2ULy;
	Wed, 25 Mar 2026 13:43:32 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OW7-00000003UO8-2rSH;
	Wed, 25 Mar 2026 13:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774446208; x=1805982208;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=USnSAocz041NVQ9slqBw6wO1PA7R8fY1BY5fwAmUMi8=;
  b=SrzsoMT3HBLPhj/q0QTsl7HSu7QrxHF0T1BDxtyE+16NeHF6SNBwJ+SH
   62sMSjx1oTBYEOGOMfDjWd/d58aDlzR9Y/M3uh1XTDvkYpzX9RPi5oK4X
   26Si3ZzE8eEddPgtj7xvi9D0fCnQqtNPdt3jrVbLzlUG0e3tOyBx2gaOM
   Cbf4riVsSguHOWUN0HJobF2YUlifrwWTejZgfuTzVQVjO8d/8V5RGPZJK
   Nxa+H8w4tOgf3P4fBSFXQHOBt9juZYL12URJI/V0Pw4csOPaoGUC6l8B+
   YWp7T4zom+cse//RRmiNcZM1fpZfwhfLOlr4KGoWZB+xOSukEyB8x5pWt
   A==;
X-CSE-ConnectionGUID: BVjaeiaCQsitJAcya6EIBw==
X-CSE-MsgGUID: YnDit2qmR/CNem6gONl3qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79339433"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; 
   d="scan'208";a="79339433"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2026 06:43:25 -0700
X-CSE-ConnectionGUID: Dp2wbwftTGKT1qTzAue8Eg==
X-CSE-MsgGUID: UnI+HlpAQJSi5OjsBx6Y1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; 
   d="scan'208";a="229624274"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.117])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2026 06:43:15 -0700
Date: Wed, 25 Mar 2026 15:43:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
	Werner Sembach <wse@tuxedocomputers.com>,
	Andri Yngvason <andri@yngvason.is>,
	Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
Message-ID: <acPmcMbUvzWMzC-Q@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_064327_795855_9F714AC4 
X-CRM114-Status: GOOD (  39.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> <nicolas.frattaroli@collabora.com> wrote:
> >
> > Add a new general DRM property named "color format" which can be used by
> > userspace to request the display driver to output a particular color
> > format.
> >
> > Possible options are:
> >     - auto (setup by default, driver internally picks the color format)
> >     - rgb
> >     - ycbcr444
> >     - ycbcr422
> >     - ycbcr420
> >
> > Drivers should advertise from this list which formats they support.
> > Together with this list and EDID data from the sink we should be able
> > to relay a list of usable color formats to users to pick from.
> >
> > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > ---
> >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++++++=
++++++++
> >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++++++=
++++++
> >  4 files changed, 228 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_=
atomic_helper.c
> > index 26953ed6b53e..b7753454b777 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_device =
*dev,
> >                         if (old_connector_state->max_requested_bpc !=3D
> >                             new_connector_state->max_requested_bpc)
> >                                 new_crtc_state->connectors_changed =3D =
true;
> > +
> > +                       if (old_connector_state->color_format !=3D
> > +                           new_connector_state->color_format)
> > +                               new_crtc_state->connectors_changed =3D =
true;
> > +
> >                 }
> >
> >                 if (funcs->atomic_check)
> > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_at=
omic_uapi.c
> > index 5bd5bf6661df..dee510c85e59 100644
> > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(struc=
t drm_connector *connector,
> >                 state->privacy_screen_sw_state =3D val;
> >         } else if (property =3D=3D connector->broadcast_rgb_property) {
> >                 state->hdmi.broadcast_rgb =3D val;
> > +       } else if (property =3D=3D connector->color_format_property) {
> > +               if (val > INT_MAX || !drm_connector_color_format_valid(=
val)) {
> > +                       drm_dbg_atomic(connector->dev,
> > +                                      "[CONNECTOR:%d:%s] unknown color=
 format %llu\n",
> > +                                      connector->base.id, connector->n=
ame, val);
> > +                       return -EINVAL;
> > +               }
> > +
> > +               state->color_format =3D val;
> >         } else if (connector->funcs->atomic_set_property) {
> >                 return connector->funcs->atomic_set_property(connector,
> >                                 state, property, val);
> > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_conn=
ector *connector,
> >                 *val =3D state->privacy_screen_sw_state;
> >         } else if (property =3D=3D connector->broadcast_rgb_property) {
> >                 *val =3D state->hdmi.broadcast_rgb;
> > +       } else if (property =3D=3D connector->color_format_property) {
> > +               *val =3D state->color_format;
> >         } else if (connector->funcs->atomic_get_property) {
> >                 return connector->funcs->atomic_get_property(connector,
> >                                 state, property, val);
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_conn=
ector.c
> > index 47dc53c4a738..e848374dee0b 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =3D
> >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> >
> > +static const u32 hdmi_colorformats =3D
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > +
> > +static const u32 dp_colorformats =3D
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > +
> >  /*
> >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding/C=
olorimetry
> >   * Format Table 2-120
> > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_property(st=
ruct drm_connector *connector)
> >  }
> >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> >
> > +/**
> > + * drm_connector_attach_color_format_property - create and attach colo=
r format property
> > + * @connector: connector to create the color format property on
> > + * @supported_color_formats: bitmask of bit-shifted &enum drm_output_c=
olor_format
> > + *                           values the connector supports
> > + *
> > + * Called by a driver to create a color format property. The property =
is
> > + * attached to the connector automatically on success.
> > + *
> > + * @supported_color_formats should only include color formats the conn=
ector
> > + * type can actually support.
> > + *
> > + * Returns:
> > + * 0 on success, negative errno on error
> > + */
> > +int drm_connector_attach_color_format_property(struct drm_connector *c=
onnector,
> > +                                              unsigned long supported_=
color_formats)
> > +{
> > +       struct drm_device *dev =3D connector->dev;
> > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMAT_=
COUNT];
> > +       unsigned int i =3D 0;
> > +       unsigned long fmt;
> > +
> > +       if (connector->color_format_property)
> > +               return 0;
> > +
> > +       if (!supported_color_formats) {
> > +               drm_err(dev, "No supported color formats provided on [C=
ONNECTOR:%d:%s]\n",
> > +                       connector->base.id, connector->name);
> > +               return -EINVAL;
> > +       }
> > +
> > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMAT_=
COUNT - 1, 0)) {
> > +               drm_err(dev, "Unknown color formats provided on [CONNEC=
TOR:%d:%s]\n",
> > +                       connector->base.id, connector->name);
> > +               return -EINVAL;
> > +       }
> > +
> > +       switch (connector->connector_type) {
> > +       case DRM_MODE_CONNECTOR_HDMIA:
> > +       case DRM_MODE_CONNECTOR_HDMIB:
> > +               if (supported_color_formats & ~hdmi_colorformats) {
> > +                       drm_err(dev, "Color formats not allowed for HDM=
I on [CONNECTOR:%d:%s]\n",
> > +                               connector->base.id, connector->name);
> > +                       return -EINVAL;
> > +               }
> > +               break;
> > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > +       case DRM_MODE_CONNECTOR_eDP:
> > +               if (supported_color_formats & ~dp_colorformats) {
> > +                       drm_err(dev, "Color formats not allowed for DP =
on [CONNECTOR:%d:%s]\n",
> > +                               connector->base.id, connector->name);
> > +                       return -EINVAL;
> > +               }
> > +               break;
> > +       }
> > +
> > +       enum_list[0].name =3D "AUTO";
> > +       enum_list[0].type =3D DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > +
> > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_COLO=
R_FORMAT_COUNT) {
> > +               switch (fmt) {
> > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_FOR=
MAT_RGB444;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_FOR=
MAT_YCBCR444;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_FOR=
MAT_YCBCR422;
> > +                       break;
> > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR_FOR=
MAT_YCBCR420;
> > +                       break;
> > +               default:
> > +                       drm_warn(dev, "Unknown supported format %ld on =
[CONNECTOR:%d:%s]\n",
> > +                                fmt, connector->base.id, connector->na=
me);
> > +                       continue;
> > +               }
> > +               enum_list[i].name =3D drm_hdmi_connector_get_output_for=
mat_name(fmt);
> > +       }
> > +
> > +       connector->color_format_property =3D
> > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "colo=
r format",
> > +                                        enum_list, i + 1);
> > +
> > +       if (!connector->color_format_property)
> > +               return -ENOMEM;
> > +
> > +       drm_object_attach_property(&connector->base, connector->color_f=
ormat_property,
> > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> > +
> > +       return 0;
> > +}
> > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > +
> >  /**
> >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metadat=
a changed
> >   * @old_state: old connector state to compare
> > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > index af8b92d2d5b7..bd549f912b76 100644
> > --- a/include/drm/drm_connector.h
> > +++ b/include/drm/drm_connector.h
> > @@ -571,14 +571,102 @@ enum drm_colorspace {
> >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsa=
mpling)
> > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > + *   Number of valid output color format values in this enum
> >   */
> >  enum drm_output_color_format {
> >         DRM_OUTPUT_COLOR_FORMAT_RGB444 =3D 0,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> >  };
> >
> > +/**
> > + * enum drm_connector_color_format - Connector Color Format Request
> > + *
> > + * This enum, unlike &enum drm_output_color_format, is used to specify=
 requests
> > + * for a specific color format on a connector through the DRM "color f=
ormat"
> > + * property. The difference is that it has an "AUTO" value to specify =
that
> > + * no specific choice has been made.
> > + */
> > +enum drm_connector_color_format {
> > +       /**
> > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display prot=
ocol
> > +        * helpers should pick a suitable color format. All implementat=
ions of a
> > +        * specific display protocol must behave the same way with "AUT=
O", but
> > +        * different display protocols do not necessarily have the same=
 "AUTO"
> > +        * semantics.
> > +        *
> > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if=
 the
> > +        * bandwidth required for full-scale RGB is not available, or t=
he mode
> > +        * is YCbCr 4:2:0-only, as long as the mode and output both sup=
port
> > +        * YCbCr 4:2:0.
> =

> Is there a reason you propose dropping back to YCbCr 4:2:0 without
> trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.

On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
compared to 8bpc 4:4:4.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
