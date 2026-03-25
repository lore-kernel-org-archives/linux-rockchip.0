Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D6D4106B526
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 12:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSFz9fSRAiQfAEqY0CwDLfivZO9vste1Z5ZWhozt1p4=; b=3r9UYA0uLsmpA5
	rkekQ8LXUHA41DE9M2lrIygagEi3uzlMLnDxzr3+ddAjs7YK1fCqm3qRq6MoO3CAJ4EtvmU27lEgB
	rYDGb2WBdqC0S4PV3IG+uLlG0abg2xV3aCDKM+FXPGhvQCvslOFXVNSDE8RS9wkZ+5P40awOPwJ5d
	8jB6NE00vSzd9ZbIsXAWb7kO4i1JrPSk0e3m1xU5mfdXljT/Vle8uIB7gT2QWecrzLguIUFBs1NxQ
	cPK91b2C31vyox5fHuzLroOm38CoThpLkgMr16d9xs50s2nfs2dIDr3Er/dmNKXD7fdinunTl+JG1
	6wu8ZogecS5STuyHQHrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Ng4-00000003PGD-2HeL;
	Wed, 25 Mar 2026 12:49:40 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Ng2-00000003PFV-0jHU
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 12:49:39 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-79495b1aaa7so57736267b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 05:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774442976; cv=none;
        d=google.com; s=arc-20240605;
        b=MzX6gX1tVUg3C08iwIKXMHFCY3oEu4UFb4ysqr9s3+ri3MjeN8VN92KtfjhT3tHzu7
         SUGRQuaR+pIPM+8OWNVNJdiWb34ocDf9YhZVz407hFlLFncsFYW1miMCVFOQYHasC24p
         NbX3yi3OXeqwtXDNtuI6KlvS+BfPvhEm4xEXqiM8GGMGSbqRXYz4Vv6R4ewYO7MosvYN
         xhkZRK3S7zgPZIY8Xrg68Ot+7LprjfZl6oG2ikzYZfHsL82IgNE7DBc3TSVFnZTZNF8m
         r1wcHdy2214QsfN9VRGSgCmtCWgCFkApruGL84HX040dm14sZu/sEyUQqj98IKPcCS04
         ZlUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
        fh=7J059OIY/ZTv9WitVZQLNotTetcrGsNcGas2b84ITJE=;
        b=eIHLvYwCuqs2NNTYuKvPXqMigRYl7aJU2A0dBs7djOgk3HKOaHNt68LFHfgyO+azBN
         R6X8iBo/JOwf2D1z1pt13s3HROvpFlEHbPnJZqr0j1K4SYxFVPe1wvND6tvwkv49Ja8t
         kd7fwGVmfXUGm9XeT/bMPI+RR4TuViaar+bosFikd5A7JE5rU5i15iI9HsELz8GghvbN
         koV0PrqTV3ZDqKcqVBGnu9zcaCsuYz7U/oxX2pMINmbq9fpu99opY0rSJg5X8TfWg0AF
         xtBQ4OKWXSQv86BwsFwATccaZAdB7s8NBaAomK0nxsTmT/Gji/PwtTtdbdssHq3mNLdb
         3XHw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1774442976; x=1775047776; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
        b=NKQQRUJNUBRhhWHn71cOzICalWi/ObdO6gqiNOMWrd91BlMhvZal9hSoobPOlzNIxQ
         p2rVH5+mwxOiDDSrM7QfAg3Ao5pkIXrB+Hk82SJoY/7z1O7xWnUalsZcyu0Mfiv0G2Pk
         OCNhA8pGhMEf6pRilSC5UoeLSghQA0yz1FXWpowEOksLbgqfcp1CYJ42DTFotWw8jN5e
         iZYWuDg8kyYc3nxAMccXfJAhn0+EjrwycwPOMqtZuDZQcXmdhZh1heXZT4TJUSiVgkRn
         zeRGgP4211OE801FRl4YlANzzF79AoJeSmr6eNsWsddRY9dx48sFvGREBdO4PShRUp6S
         0S2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774442976; x=1775047776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWVGdaROJEe59syGTJd027THFEoFG9QuDQ9XIoXDqcI=;
        b=oBpIE7Ow3mgoFyzSvxStVskDFTI5WDy8rBwemTAuaSzGoVKhT1Iy0PatdRf8buuRs+
         EHnaUT1n9XBZm1ujJvNSILC9R9MJRfEGeQV8uwd0txEXCb8VS3I3PasrQh71OfeiOdOY
         U1M0Etl1Zi05+L/tU2fDaU3gQkpmD+4zaGxtNkeAP6X7Rz3d0ytsD3HRFNLmcbY/bVCD
         GO3nihTDNi5qSfsZC8GODwl/lYIVRR7DMsw8/70yqtjrBOOKzRP99RYcr6JCe8Ru3KjB
         ZLzgnrG/qdhA4hcduyDdshB5KmGuLEG33a8NHv0sM2SMypSVkB14yn7HvCR7XUWO3RMY
         ANZw==
X-Forwarded-Encrypted: i=1; AJvYcCX3Up9JVKop58p6IaxkwR8YUViWMNyqSZjki0pVIj7llfxyZLNGcaFSGsOlXL6UjycfhuJ3q8K5X/6oTEnfKg==@lists.infradead.org
X-Gm-Message-State: AOJu0YywS4RzKqsxDsbwuXwOzLvZ/ucgH+7nshrJjjckbicM//LEsR00
	7+AASq3ns7ReduBEVIgnngVsAhm0my0FIAZTDFry6u9yXpYMiQ7+alEhf4zLTfU8D0ogUjsT0xo
	CBxGKkxWp2onRLoQZFWJ7C6kTN0uDkXX1YGvQpq+Psw==
X-Gm-Gg: ATEYQzxBMieNbMPcy9dzR1QBOi0QukWzXm3i2LB4VEVzuKOk+xuomyHIzf3UTyL3IAo
	Xe63iZg296ni7I0Je/0yhGU/rBQ9unA+lmeNhQaziOhVmvOjsdHCkxHFYBpcJ7eXMW6L9aRsdQ1
	5iQFjS8M4maiZ1n69rLsQCZTPbWbII80ARFJSd1NTtByvJOsQtwuZ+wwR/7TmXEgZxiRvmMqFQE
	STuya/OM0WzUDfYA7ceDFlPIjj0xQCq9Ka6zk3Po/66050uqYfyJhdxo2Kw4YEZKlusaa9lBy2u
	t2NTIGAqw5Klm50zfqNDuImLndYwrA2OlSOSMQ==
X-Received: by 2002:a05:690c:e3cf:b0:79a:b71c:9c18 with SMTP id
 00721157ae682-79acf6d3fafmr34648757b3.54.1774442975702; Wed, 25 Mar 2026
 05:49:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com> <20260324-color-format-v11-3-605559af4fb4@collabora.com>
In-Reply-To: <20260324-color-format-v11-3-605559af4fb4@collabora.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 25 Mar 2026 12:49:19 +0000
X-Gm-Features: AaiRm50VNDDjWfwK37zgUxzAmL4en6__7Zy6-AnLTnIOsCvoTh1nsZLCZm3Xzfc
Message-ID: <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com, 
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>, 
	Marius Vlad <marius.vlad@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_054938_360405_3E6D0A2A 
X-CRM114-Status: GOOD (  30.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 24 Mar 2026 at 16:02, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> Add a new general DRM property named "color format" which can be used by
> userspace to request the display driver to output a particular color
> format.
>
> Possible options are:
>     - auto (setup by default, driver internally picks the color format)
>     - rgb
>     - ycbcr444
>     - ycbcr422
>     - ycbcr420
>
> Drivers should advertise from this list which formats they support.
> Together with this list and EDID data from the sink we should be able
> to relay a list of usable color formats to users to pick from.
>
> Co-developed-by: Werner Sembach <wse@tuxedocomputers.com>
> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> Co-developed-by: Andri Yngvason <andri@yngvason.is>
> Signed-off-by: Andri Yngvason <andri@yngvason.is>
> Signed-off-by: Marius Vlad <marius.vlad@collabora.com>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c |   5 ++
>  drivers/gpu/drm/drm_atomic_uapi.c   |  11 ++++
>  drivers/gpu/drm/drm_connector.c     | 108 ++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h         | 104 ++++++++++++++++++++++++++++++++++
>  4 files changed, 228 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index 26953ed6b53e..b7753454b777 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -737,6 +737,11 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
>                         if (old_connector_state->max_requested_bpc !=
>                             new_connector_state->max_requested_bpc)
>                                 new_crtc_state->connectors_changed = true;
> +
> +                       if (old_connector_state->color_format !=
> +                           new_connector_state->color_format)
> +                               new_crtc_state->connectors_changed = true;
> +
>                 }
>
>                 if (funcs->atomic_check)
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 5bd5bf6661df..dee510c85e59 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -935,6 +935,15 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
>                 state->privacy_screen_sw_state = val;
>         } else if (property == connector->broadcast_rgb_property) {
>                 state->hdmi.broadcast_rgb = val;
> +       } else if (property == connector->color_format_property) {
> +               if (val > INT_MAX || !drm_connector_color_format_valid(val)) {
> +                       drm_dbg_atomic(connector->dev,
> +                                      "[CONNECTOR:%d:%s] unknown color format %llu\n",
> +                                      connector->base.id, connector->name, val);
> +                       return -EINVAL;
> +               }
> +
> +               state->color_format = val;
>         } else if (connector->funcs->atomic_set_property) {
>                 return connector->funcs->atomic_set_property(connector,
>                                 state, property, val);
> @@ -1020,6 +1029,8 @@ drm_atomic_connector_get_property(struct drm_connector *connector,
>                 *val = state->privacy_screen_sw_state;
>         } else if (property == connector->broadcast_rgb_property) {
>                 *val = state->hdmi.broadcast_rgb;
> +       } else if (property == connector->color_format_property) {
> +               *val = state->color_format;
>         } else if (connector->funcs->atomic_get_property) {
>                 return connector->funcs->atomic_get_property(connector,
>                                 state, property, val);
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 47dc53c4a738..e848374dee0b 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -1388,6 +1388,18 @@ static const u32 hdmi_colorspaces =
>         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65) |
>         BIT(DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER);
>
> +static const u32 hdmi_colorformats =
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> +
> +static const u32 dp_colorformats =
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422) |
> +       BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420);
> +
>  /*
>   * As per DP 1.4a spec, 2.2.5.7.5 VSC SDP Payload for Pixel Encoding/Colorimetry
>   * Format Table 2-120
> @@ -2940,6 +2952,102 @@ int drm_connector_attach_colorspace_property(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL(drm_connector_attach_colorspace_property);
>
> +/**
> + * drm_connector_attach_color_format_property - create and attach color format property
> + * @connector: connector to create the color format property on
> + * @supported_color_formats: bitmask of bit-shifted &enum drm_output_color_format
> + *                           values the connector supports
> + *
> + * Called by a driver to create a color format property. The property is
> + * attached to the connector automatically on success.
> + *
> + * @supported_color_formats should only include color formats the connector
> + * type can actually support.
> + *
> + * Returns:
> + * 0 on success, negative errno on error
> + */
> +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> +                                              unsigned long supported_color_formats)
> +{
> +       struct drm_device *dev = connector->dev;
> +       struct drm_prop_enum_list enum_list[DRM_CONNECTOR_COLOR_FORMAT_COUNT];
> +       unsigned int i = 0;
> +       unsigned long fmt;
> +
> +       if (connector->color_format_property)
> +               return 0;
> +
> +       if (!supported_color_formats) {
> +               drm_err(dev, "No supported color formats provided on [CONNECTOR:%d:%s]\n",
> +                       connector->base.id, connector->name);
> +               return -EINVAL;
> +       }
> +
> +       if (supported_color_formats & ~GENMASK(DRM_OUTPUT_COLOR_FORMAT_COUNT - 1, 0)) {
> +               drm_err(dev, "Unknown color formats provided on [CONNECTOR:%d:%s]\n",
> +                       connector->base.id, connector->name);
> +               return -EINVAL;
> +       }
> +
> +       switch (connector->connector_type) {
> +       case DRM_MODE_CONNECTOR_HDMIA:
> +       case DRM_MODE_CONNECTOR_HDMIB:
> +               if (supported_color_formats & ~hdmi_colorformats) {
> +                       drm_err(dev, "Color formats not allowed for HDMI on [CONNECTOR:%d:%s]\n",
> +                               connector->base.id, connector->name);
> +                       return -EINVAL;
> +               }
> +               break;
> +       case DRM_MODE_CONNECTOR_DisplayPort:
> +       case DRM_MODE_CONNECTOR_eDP:
> +               if (supported_color_formats & ~dp_colorformats) {
> +                       drm_err(dev, "Color formats not allowed for DP on [CONNECTOR:%d:%s]\n",
> +                               connector->base.id, connector->name);
> +                       return -EINVAL;
> +               }
> +               break;
> +       }
> +
> +       enum_list[0].name = "AUTO";
> +       enum_list[0].type = DRM_CONNECTOR_COLOR_FORMAT_AUTO;
> +
> +       for_each_set_bit(fmt, &supported_color_formats, DRM_OUTPUT_COLOR_FORMAT_COUNT) {
> +               switch (fmt) {
> +               case DRM_OUTPUT_COLOR_FORMAT_RGB444:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_RGB444;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR444:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR444;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR422:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR422;
> +                       break;
> +               case DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> +                       enum_list[++i].type = DRM_CONNECTOR_COLOR_FORMAT_YCBCR420;
> +                       break;
> +               default:
> +                       drm_warn(dev, "Unknown supported format %ld on [CONNECTOR:%d:%s]\n",
> +                                fmt, connector->base.id, connector->name);
> +                       continue;
> +               }
> +               enum_list[i].name = drm_hdmi_connector_get_output_format_name(fmt);
> +       }
> +
> +       connector->color_format_property =
> +               drm_property_create_enum(dev, DRM_MODE_PROP_ENUM, "color format",
> +                                        enum_list, i + 1);
> +
> +       if (!connector->color_format_property)
> +               return -ENOMEM;
> +
> +       drm_object_attach_property(&connector->base, connector->color_format_property,
> +                                  DRM_CONNECTOR_COLOR_FORMAT_AUTO);
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(drm_connector_attach_color_format_property);
> +
>  /**
>   * drm_connector_atomic_hdr_metadata_equal - checks if the hdr metadata changed
>   * @old_state: old connector state to compare
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index af8b92d2d5b7..bd549f912b76 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -571,14 +571,102 @@ enum drm_colorspace {
>   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
>   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
>   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
> + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> + *   Number of valid output color format values in this enum
>   */
>  enum drm_output_color_format {
>         DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
>         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
>  };
>
> +/**
> + * enum drm_connector_color_format - Connector Color Format Request
> + *
> + * This enum, unlike &enum drm_output_color_format, is used to specify requests
> + * for a specific color format on a connector through the DRM "color format"
> + * property. The difference is that it has an "AUTO" value to specify that
> + * no specific choice has been made.
> + */
> +enum drm_connector_color_format {
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> +        * helpers should pick a suitable color format. All implementations of a
> +        * specific display protocol must behave the same way with "AUTO", but
> +        * different display protocols do not necessarily have the same "AUTO"
> +        * semantics.
> +        *
> +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> +        * bandwidth required for full-scale RGB is not available, or the mode
> +        * is YCbCr 4:2:0-only, as long as the mode and output both support
> +        * YCbCr 4:2:0.

Is there a reason you propose dropping back to YCbCr 4:2:0 without
trying YCbCr 4:2:2 first? Minimising the subsampling is surely
beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.

  Dave

> +        *
> +        * For display protocols other than HDMI, the recursive bridge chain
> +        * format selection picks the first chain of bridge formats that works,
> +        * as has already been the case before the introduction of the "color
> +        * format" property. Non-HDMI bridges should therefore either sort their
> +        * bus output formats by preference, or agree on a unified auto format
> +        * selection logic that's implemented in a common state helper (like
> +        * how HDMI does it).
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_AUTO = 0,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_RGB444: RGB output format
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_RGB444,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR444: YCbCr 4:4:4 output format (ie.
> +        * not subsampled)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR444,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR422: YCbCr 4:2:2 output format (ie.
> +        * with horizontal subsampling)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR422,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_YCBCR420: YCbCr 4:2:0 output format (ie.
> +        * with horizontal and vertical subsampling)
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_YCBCR420,
> +
> +       /**
> +        * @DRM_CONNECTOR_COLOR_FORMAT_COUNT: Number of valid connector color
> +        * format values in this enum
> +        */
> +       DRM_CONNECTOR_COLOR_FORMAT_COUNT,
> +};
> +
> +/**
> + * drm_connector_color_format_valid - Validate drm_connector_color_format value
> + * @fmt: value to check against all values of &enum drm_connector_color_format
> + *
> + * Checks whether the passed in value of @fmt is one of the allowable values in
> + * &enum drm_connector_color_format.
> + *
> + * Returns: %true if it's a valid value for the enum, %false otherwise.
> + */
> +static inline bool __pure
> +drm_connector_color_format_valid(enum drm_connector_color_format fmt)
> +{
> +       switch (fmt) {
> +       case DRM_CONNECTOR_COLOR_FORMAT_AUTO:
> +       case DRM_CONNECTOR_COLOR_FORMAT_RGB444:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR444:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR422:
> +       case DRM_CONNECTOR_COLOR_FORMAT_YCBCR420:
> +               return true;
> +       default:
> +               return false;
> +       }
> +}
> +
>  const char *
>  drm_hdmi_connector_get_output_format_name(enum drm_output_color_format fmt);
>
> @@ -1129,6 +1217,13 @@ struct drm_connector_state {
>          */
>         enum drm_colorspace colorspace;
>
> +       /**
> +        * @color_format: State variable for Connector property to request
> +        * color format change on Sink. This is most commonly used to switch
> +        * between RGB to YUV and vice-versa.
> +        */
> +       enum drm_connector_color_format color_format;
> +
>         /**
>          * @writeback_job: Writeback job for writeback connectors
>          *
> @@ -2127,6 +2222,12 @@ struct drm_connector {
>          */
>         struct drm_property *colorspace_property;
>
> +       /**
> +        * @color_format_property: Connector property to set the suitable
> +        * color format supported by the sink.
> +        */
> +       struct drm_property *color_format_property;
> +
>         /**
>          * @path_blob_ptr:
>          *
> @@ -2610,6 +2711,9 @@ bool drm_connector_has_possible_encoder(struct drm_connector *connector,
>                                         struct drm_encoder *encoder);
>  const char *drm_get_colorspace_name(enum drm_colorspace colorspace);
>
> +int drm_connector_attach_color_format_property(struct drm_connector *connector,
> +                                              unsigned long supported_color_formats);
> +
>  /**
>   * drm_for_each_connector_iter - connector_list iterator macro
>   * @connector: &struct drm_connector pointer used as cursor
>
> --
> 2.53.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
