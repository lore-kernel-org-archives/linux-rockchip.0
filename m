Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F2F310A3D85
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 12:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LMY7uvdlLWy95/Ecij8WnuSA3cRwtYv7XGuoSQF45Q=; b=WJ+yNlzjecuwpy
	l7Ng2dQ5238LenHPrpQFZ1JpvhVhD4hqsuHykTB9hsoi4yjGEJI2OgEvxWLqnFHkmpwVO1oIWxb8s
	pVR8IurhF7uFTU8XBI0g6J+RUMxwoI2F0d9a2yBwC+9V+AxdgSR7netMmDTYbgnXULbsMhZuTF7BE
	zOAEHvbQGIgwm71W+hz3tmp14sYq7XjuhGwBnZ5NdcPiCM3QroJEUfVy8pmOBsqPNizM+ZoOQKUSw
	Yq2wXclEMQLREFf9fguKUm5WGEoo/tWgcLAL/e0lWi1k4DK6MpMKaEFrlgxWiKoS35jWbmh3KzA0u
	WTynVgEqlUqL5Ov/rc/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5jar-00000005Pwv-1bNE;
	Thu, 26 Mar 2026 12:13:45 +0000
Received: from mgamail.intel.com ([192.198.163.19])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5jao-00000005PwT-2WbJ;
	Thu, 26 Mar 2026 12:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774527223; x=1806063223;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=DOxbit9k2z+1S297/kwOZK+l+ArgG+Y76fDDdAmeX94=;
  b=W+OO2DiloOHaHvxk7EX3ciX4nIDwrzs8nCZHIGhAD51rhkng71ZbtGzd
   ycTY9QMzZSRBjbjVMGJNLtOu/8uCXUYbDSTIekdkrpYt1OzQqRFZXH7L5
   hm80gHkI1TZNpqUXazt8BRSG9LlBtuBijUlZ5E1wpGG3tovg/bflVbuCQ
   JMzyumTaunZCwYwWQhYa3+3MlMGkrmEg6XwEO5jUMwQGPxGR4OjrJamPy
   Z+KUSySWVYMLQRN67/KY9+gDVEqk6eUtrpGIBR6IzAOJM4xu8A4AkyjC0
   q+6L2mQ/HZCrjKnxDosfuHFRsWPKgQHA5iTQEumEY+i+8RFUf/eAOKg/1
   Q==;
X-CSE-ConnectionGUID: XBnGQCaHQjOC/soD4p99WQ==
X-CSE-MsgGUID: KNlrUoX8Qg2Nez/vMtIZrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="74609595"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; 
   d="scan'208";a="74609595"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 05:13:41 -0700
X-CSE-ConnectionGUID: Hy7QV1bWQjSMDuQal12t3g==
X-CSE-MsgGUID: cmBX5ss4QoGdYutSUOzaDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; 
   d="scan'208";a="225000372"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.14])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2026 05:13:31 -0700
Date: Thu, 26 Mar 2026 14:13:28 +0200
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
Message-ID: <acUi6NEPJ0p48a3U@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260324-color-format-v11-3-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <acPmcMbUvzWMzC-Q@intel.com>
 <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_051342_665437_492906EB 
X-CRM114-Status: GOOD (  34.76  )
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

On Thu, Mar 26, 2026 at 11:16:12AM +0000, Dave Stevenson wrote:
> On Wed, 25 Mar 2026 at 13:43, Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
> > > <nicolas.frattaroli@collabora.com> wrote:
> > > >
> > > > Add a new general DRM property named "color format" which can be us=
ed by
> > > > userspace to request the display driver to output a particular color
> > > > format.
> > > >
> > > > Possible options are:
> > > >     - auto (setup by default, driver internally picks the color for=
mat)
> > > >     - rgb
> > > >     - ycbcr444
> > > >     - ycbcr422
> > > >     - ycbcr420
> > > >
> > > > Drivers should advertise from this list which formats they support.
> > > > Together with this list and EDID data from the sink we should be ab=
le
> > > > to relay a list of usable color formats to users to pick from.
> > > >
> > > > Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > > > Co-developed-by: Andri Yngvason <andri@yngvason.is>
> > > > Signed-off-by: Andri Yngvason <andri@yngvason.is>
> > > > Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> > > > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > > > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
> > > >  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
> > > >  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++=
++++++++++++
> > > >  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++=
++++++++++
> > > >  4 files changed, 228 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/=
drm_atomic_helper.c
> > > > index 26953ed6b53e..b7753454b777 100644
> > > > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > > > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > > > @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_dev=
ice *dev,
> > > >                         if (old_connector_state->max_requested_bpc =
!=3D
> > > >                             new_connector_state->max_requested_bpc)
> > > >                                 new_crtc_state->connectors_changed =
=3D true;
> > > > +
> > > > +                       if (old_connector_state->color_format !=3D
> > > > +                           new_connector_state->color_format)
> > > > +                               new_crtc_state->connectors_changed =
=3D true;
> > > > +
> > > >                 }
> > > >
> > > >                 if (funcs->atomic_check)
> > > > diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/dr=
m_atomic_uapi.c
> > > > index 5bd5bf6661df..dee510c85e59 100644
> > > > --- a/drivers/gpu/drm/drm_atomic_uapi.c
> > > > +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> > > > @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(s=
truct drm_connector *connector,
> > > >                 state->privacy_screen_sw_state =3D val;
> > > >         } else if (property =3D=3D connector->broadcast_rgb_propert=
y) {
> > > >                 state->hdmi.broadcast_rgb =3D val;
> > > > +       } else if (property =3D=3D connector->color_format_property=
) {
> > > > +               if (val > INT_MAX || !drm_connector_color_format_va=
lid(val)) {
> > > > +                       drm_dbg_atomic(connector->dev,
> > > > +                                      "[CONNECTOR:%d:%s] unknown c=
olor format %llu\n",
> > > > +                                      connector->base.id, connecto=
r->name, val);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +
> > > > +               state->color_format =3D val;
> > > >         } else if (connector->funcs->atomic_set_property) {
> > > >                 return connector->funcs->atomic_set_property(connec=
tor,
> > > >                                 state, property, val);
> > > > @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_=
connector *connector,
> > > >                 *val =3D state->privacy_screen_sw_state;
> > > >         } else if (property =3D=3D connector->broadcast_rgb_propert=
y) {
> > > >                 *val =3D state->hdmi.broadcast_rgb;
> > > > +       } else if (property =3D=3D connector->color_format_property=
) {
> > > > +               *val =3D state->color_format;
> > > >         } else if (connector->funcs->atomic_get_property) {
> > > >                 return connector->funcs->atomic_get_property(connec=
tor,
> > > >                                 state, property, val);
> > > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_=
connector.c
> > > > index 47dc53c4a738..e848374dee0b 100644
> > > > --- a/drivers/gpu/drm/drm_connector.c
> > > > +++ b/drivers/gpu/drm/drm_connector.c
> > > > @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =3D
> > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
> > > >         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
> > > >
> > > > +static const u32 hdmi_colorformats =3D
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > +
> > > > +static const u32 dp_colorformats =3D
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> > > > +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> > > > +
> > > >  /*
> > > >   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encodi=
ng/Colorimetry
> > > >   * Format Table 2-120
> > > > @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_propert=
y(struct drm_connector *connector)
> > > >  }
> > > >  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
> > > >
> > > > +/**
> > > > + * drm_connector_attach_color_format_property - create and attach =
color format property
> > > > + * @connector: connector to create the color format property on
> > > > + * @supported_color_formats: bitmask of bit-shifted &enum drm_outp=
ut_color_format
> > > > + *                           values the connector supports
> > > > + *
> > > > + * Called by a driver to create a color format property. The prope=
rty is
> > > > + * attached to the connector automatically on success.
> > > > + *
> > > > + * @supported_color_formats should only include color formats the =
connector
> > > > + * type can actually support.
> > > > + *
> > > > + * Returns:
> > > > + * 0 on success, negative errno on error
> > > > + */
> > > > +int drm_connector_attach_color_format_property(struct drm_connecto=
r *connector,
> > > > +                                              unsigned long suppor=
ted_color_formats)
> > > > +{
> > > > +       struct drm_device *dev =3D connector->dev;
> > > > +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FOR=
MAT_COUNT];
> > > > +       unsigned int i =3D 0;
> > > > +       unsigned long fmt;
> > > > +
> > > > +       if (connector->color_format_property)
> > > > +               return 0;
> > > > +
> > > > +       if (!supported_color_formats) {
> > > > +               drm_err(dev, "No supported color formats provided o=
n [CONNECTOR:%d:%s]\n",
> > > > +                       connector->base.id, connector->name);
> > > > +               return -EINVAL;
> > > > +       }
> > > > +
> > > > +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FOR=
MAT_COUNT - 1, 0)) {
> > > > +               drm_err(dev, "Unknown color formats provided on [CO=
NNECTOR:%d:%s]\n",
> > > > +                       connector->base.id, connector->name);
> > > > +               return -EINVAL;
> > > > +       }
> > > > +
> > > > +       switch (connector->connector_type) {
> > > > +       case DRM_MODE_CONNECTOR_HDMIA:
> > > > +       case DRM_MODE_CONNECTOR_HDMIB:
> > > > +               if (supported_color_formats & ~hdmi_colorformats) {
> > > > +                       drm_err(dev, "Color formats not allowed for=
 HDMI on [CONNECTOR:%d:%s]\n",
> > > > +                               connector->base.id, connector->name=
);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +               break;
> > > > +       case DRM_MODE_CONNECTOR_DisplayPort:
> > > > +       case DRM_MODE_CONNECTOR_eDP:
> > > > +               if (supported_color_formats & ~dp_colorformats) {
> > > > +                       drm_err(dev, "Color formats not allowed for=
 DP on [CONNECTOR:%d:%s]\n",
> > > > +                               connector->base.id, connector->name=
);
> > > > +                       return -EINVAL;
> > > > +               }
> > > > +               break;
> > > > +       }
> > > > +
> > > > +       enum_list[0].name =3D "AUTO";
> > > > +       enum_list[0].type =3D DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> > > > +
> > > > +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_=
COLOR_FORMAT_COUNT) {
> > > > +               switch (fmt) {
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_RGB444;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR444;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR422;
> > > > +                       break;
> > > > +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > > +                       enum_list[++i].type =3D DRM_CONNECTOR_COLOR=
_FORMAT_YCBCR420;
> > > > +                       break;
> > > > +               default:
> > > > +                       drm_warn(dev, "Unknown supported format %ld=
 on [CONNECTOR:%d:%s]\n",
> > > > +                                fmt, connector->base.id, connector=
->name);
> > > > +                       continue;
> > > > +               }
> > > > +               enum_list[i].name =3D drm_hdmi_connector_get_output=
_format_name(fmt);
> > > > +       }
> > > > +
> > > > +       connector->color_format_property =3D
> > > > +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "=
color format",
> > > > +                                        enum_list, i + 1);
> > > > +
> > > > +       if (!connector->color_format_property)
> > > > +               return -ENOMEM;
> > > > +
> > > > +       drm_object_attach_property(&connector->base, connector->col=
or_format_property,
> > > > +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> > > > +
> > > >  /**
> > > >   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr met=
adata changed
> > > >   * @old_state: old connector state to compare
> > > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connecto=
r.h
> > > > index af8b92d2d5b7..bd549f912b76 100644
> > > > --- a/include/drm/drm_connector.h
> > > > +++ b/include/drm/drm_connector.h
> > > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical s=
ubsampling)
> > > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > > + *   Number of valid output color format values in this enum
> > > >   */
> > > >  enum drm_output_color_format {
> > > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 =3D 0,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > > >  };
> > > >
> > > > +/**
> > > > + * enum drm_connector_color_format - Connector Color Format Request
> > > > + *
> > > > + * This enum, unlike &enum drm_output_color_format, is used to spe=
cify requests
> > > > + * for a specific color format on a connector through the DRM "col=
or format"
> > > > + * property. The difference is that it has an "AUTO" value to spec=
ify that
> > > > + * no specific choice has been made.
> > > > + */
> > > > +enum drm_connector_color_format {
> > > > +       /**
> > > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display =
protocol
> > > > +        * helpers should pick a suitable color format. All impleme=
ntations of a
> > > > +        * specific display protocol must behave the same way with =
"AUTO", but
> > > > +        * different display protocols do not necessarily have the =
same "AUTO"
> > > > +        * semantics.
> > > > +        *
> > > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:=
0 if the
> > > > +        * bandwidth required for full-scale RGB is not available, =
or the mode
> > > > +        * is YCbCr 4:2:0-only, as long as the mode and output both=
 support
> > > > +        * YCbCr 4:2:0.
> > >
> > > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> >
> > On HDMI 4:2:2 is always 12bpc, so it doesn't save any bandwidth
> > compared to 8bpc 4:4:4.
> =

> It does save bandwidth against 10 or 12bpc RGB 4:4:4.
> =

> Or is the implication that max_bpc =3D 12 and
> DRM_CONNECTOR_COLOR_FORMAT_AUTO should drop bpc down to 8 and select
> RGB in preference to selecting 4:2:2?

Yeah, YCbCr has all kinds of extra complications compared to RGB, so
the policy is to use RGB if possible, and only fall back to YCbCr as a
last resort. And in that case 4:2:0 is the only thing that can help.

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
