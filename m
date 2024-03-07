Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE572C54798
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Mar 2024 22:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naWthLGHslCumLpeiFnftpvbgwAoDXdVAjEoBKKjbpU=; b=kBbAqcUhhr+pp9
	4hOldkWq1uaQR4bdWLIU6lDg8z+WkuVgWPPv58Ts0zHJFvbfTsd6jxuG/7NDcwhX19F5eXA1yORC9
	mFtzRctNHK1GZRRy/BAlP1Cv23FeqKCsQkiHsIqAAba9QQWsQ9eYnNfmHz/hM12QR7PqMbi12gwAb
	VPhP6Lwc6kDeiOM1r1oyBV9SNQnpZm4WQ2wXa4G/tpYbOzLygTOsKLBlFWFvccZYm4t92YHqT4V8K
	knGwor8s/U9fsBoUGkc9MV499wC/zotXEspVvcQhmB6XXA5EAcl1FTh6VLSBCM2SuJcmHRxV9Gt5X
	L903Ieuw5uwiDpXSbD+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riLpe-00000006Z5E-2RN0;
	Thu, 07 Mar 2024 22:03:18 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riLpY-00000006Z2e-3mhV
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Mar 2024 22:03:15 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-609a773ec44so15432037b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Mar 2024 14:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709848991; x=1710453791; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AizkXlmtZUCSstQR6OGH3QyFzWNfyCrG/9xzkrzNWR4=;
        b=H1vD9wNHsAhUci1/mGWfIiPJ4n9KimSbM3zj638Snls2wCJZvPfWBv2d+otnq/Ic6/
         +JWRipIM2teeyc0gnHEY7g3/mjJv8jA2So4bofe1CH3h0VTEE0lBalXPtVAq12qBSccC
         LqHAcxiKeVozP7IjSJtwDIMsYnj4Pqn+fT2QAcGcuzxuItTR+qiKtdLfibrfNoQmV9Vj
         NRynjzWwLiYuuOqffzrHrXXVKWVfWkBFqEds1kLFrlFZd2cYizb/6uRVcGyqtqgUDWRP
         0DHU5T4EeR2GnjbLoQePb3RnqqXpCIqIdKlVn8apAh01nYaN/jo7NKoN7TpHxZY1VWZG
         NQJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709848991; x=1710453791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AizkXlmtZUCSstQR6OGH3QyFzWNfyCrG/9xzkrzNWR4=;
        b=CiJ35AnkvK3BQjmYykjtZIPAQAQWBnlgkrXQEBVJ4p1eFYtq+/rQsvOfG5UiPG+nKB
         jDL89U8UZpCXmX4rK5nGJ0mIs+KI9gVRPlYX5Z4kk21K2bxf6nPubB1FUyvzTLOMyz/6
         aZZt6XMqaBFn0UDqRe0cGvkjFE1FlMzfEA5i4vl+LrOQJwj30cYiw91Eziw9i/mreqbW
         2aIWshBds3HBraI3kBielaEE1RmcV7iD/c8j1LHCqVHIMgo4ZoNe1AKngc7UjMX2z5Qv
         0hLhfhqfOhCidKx8WOv0DraJyCpMrU8/pvxFlDJfKr3h5bkK38rgSsNEA+8w0RjngjzR
         GNpg==
X-Forwarded-Encrypted: i=1; AJvYcCVu3/cgCjR8CEv4nPElkfmph0Gxd68nxHXk3C6r68tE8Dktxn73eLxaayUstDdlBQGWhZkoNY22ykZnm1WvnYmGsQQcOyOj21PwIQqzHNpHI7CK
X-Gm-Message-State: AOJu0YyaMEe2volpvit1I5oNDmLy73A5vudTIvBWdpB/6jonLxEjpaw8
	WxSrzMUCXDOvVVH5z44in9ZBhfBG1jneJHijrF0wHs0KzZ7C0kL0FYdvcS/bOBUQBNkd87tCr3U
	gp8wauPxIA2ck7voi2kLvSS23UjaF6I/s1yxjiw==
X-Google-Smtp-Source: AGHT+IEVOEju1iQyD9s82MYfyjvamBck51RQLph8mWBkLs97AfZ0UzWzQRt+IXP0+o9OTK3t73dsfq/vR6P5lUKlaPs=
X-Received: by 2002:a81:5f0b:0:b0:608:dde5:ace6 with SMTP id
 t11-20020a815f0b000000b00608dde5ace6mr22161539ywb.28.1709848990592; Thu, 07
 Mar 2024 14:03:10 -0800 (PST)
MIME-Version: 1.0
References: <20240307-kms-hdmi-connector-state-v8-0-ef6a6f31964b@kernel.org> <20240307-kms-hdmi-connector-state-v8-20-ef6a6f31964b@kernel.org>
In-Reply-To: <20240307-kms-hdmi-connector-state-v8-20-ef6a6f31964b@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Mar 2024 00:02:58 +0200
Message-ID: <CAA8EJppNWVGWYM0mGEJc_PaX=VqVv16=7RRB75EM_LzuK5BXtQ@mail.gmail.com>
Subject: Re: [PATCH v8 20/27] drm/connector: hdmi: Add Infoframes generation
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Sebastian Wick <sebastian.wick@redhat.com>, 
	=?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_140313_104897_409BEE06 
X-CRM114-Status: GOOD (  29.44  )
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

On Thu, 7 Mar 2024 at 15:39, Maxime Ripard <mripard@kernel.org> wrote:
>
> Infoframes in KMS is usually handled by a bunch of low-level helpers
> that require quite some boilerplate for drivers. This leads to
> discrepancies with how drivers generate them, and which are actually
> sent.
>
> Now that we have everything needed to generate them in the HDMI
> connector state, we can generate them in our common logic so that
> drivers can simply reuse what we precomputed.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/Kconfig                            |   1 +
>  drivers/gpu/drm/drm_atomic_state_helper.c          | 327 +++++++++++++++++++++
>  drivers/gpu/drm/drm_connector.c                    |  14 +
>  .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>  drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>  include/drm/drm_atomic_state_helper.h              |   8 +
>  include/drm/drm_connector.h                        | 133 +++++++++
>  7 files changed, 496 insertions(+)
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 872edb47bb53..ad9c467e20ce 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>           If in doubt, say "N".
>
>  config DRM_KMS_HELPER
>         tristate
>         depends on DRM
> +       select DRM_DISPLAY_HDMI_HELPER
>         help
>           CRTC helpers for KMS drivers.
>
>  config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
>          bool "Enable refcount backtrace history in the DP MST helpers"
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index e66272c0d006..46d9fd2ea8fa 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -36,10 +36,12 @@
>  #include <drm/drm_plane.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_writeback.h>
>
> +#include <drm/display/drm_hdmi_helper.h>
> +
>  #include <linux/slab.h>
>  #include <linux/dma-fence.h>
>
>  /**
>   * DOC: atomic state reset and initialization
> @@ -912,10 +914,146 @@ hdmi_compute_config(const struct drm_connector *connector,
>         }
>
>         return -EINVAL;
>  }
>
> +static int hdmi_generate_avi_infoframe(const struct drm_connector *connector,
> +                                      struct drm_connector_state *state)
> +{
> +       const struct drm_display_mode *mode =
> +               connector_state_get_mode(state);
> +       struct drm_connector_hdmi_infoframe *infoframe =
> +               &state->hdmi.infoframes.avi;
> +       struct hdmi_avi_infoframe *frame =
> +               &infoframe->data.avi;
> +       bool is_full_range = state->hdmi.is_full_range;
> +       enum hdmi_quantization_range rgb_quant_range =
> +               is_full_range ? HDMI_QUANTIZATION_RANGE_FULL : HDMI_QUANTIZATION_RANGE_LIMITED;
> +       int ret;
> +
> +       ret = drm_hdmi_avi_infoframe_from_display_mode(frame, connector, mode);
> +       if (ret)
> +               return ret;
> +
> +       frame->colorspace = state->hdmi.output_format;
> +
> +       drm_hdmi_avi_infoframe_quant_range(frame, connector, mode, rgb_quant_range);
> +       drm_hdmi_avi_infoframe_colorimetry(frame, state);
> +       drm_hdmi_avi_infoframe_bars(frame, state);
> +
> +       infoframe->set = true;
> +
> +       return 0;
> +}
> +
> +static int hdmi_generate_spd_infoframe(const struct drm_connector *connector,
> +                                      struct drm_connector_state *state)
> +{
> +       struct drm_connector_hdmi_infoframe *infoframe =
> +               &state->hdmi.infoframes.spd;
> +       struct hdmi_spd_infoframe *frame =
> +               &infoframe->data.spd;
> +       int ret;
> +
> +       ret = hdmi_spd_infoframe_init(frame,
> +                                     connector->hdmi.vendor,
> +                                     connector->hdmi.product);
> +       if (ret)
> +               return ret;
> +
> +       frame->sdi = HDMI_SPD_SDI_PC;
> +
> +       infoframe->set = true;
> +
> +       return 0;
> +}
> +
> +static int hdmi_generate_hdr_infoframe(const struct drm_connector *connector,
> +                                      struct drm_connector_state *state)
> +{
> +       struct drm_connector_hdmi_infoframe *infoframe =
> +               &state->hdmi.infoframes.hdr_drm;
> +       struct hdmi_drm_infoframe *frame =
> +               &infoframe->data.drm;
> +       int ret;
> +
> +       if (connector->max_bpc < 10)
> +               return 0;
> +
> +       if (!state->hdr_output_metadata)
> +               return 0;
> +
> +       ret = drm_hdmi_infoframe_set_hdr_metadata(frame, state);
> +       if (ret)
> +               return ret;
> +
> +       infoframe->set = true;
> +
> +       return 0;
> +}
> +
> +static int hdmi_generate_hdmi_vendor_infoframe(const struct drm_connector *connector,
> +                                              struct drm_connector_state *state)
> +{
> +       const struct drm_display_mode *mode =
> +               connector_state_get_mode(state);
> +       struct drm_connector_hdmi_infoframe *infoframe =
> +               &state->hdmi.infoframes.hdmi;
> +       struct hdmi_vendor_infoframe *frame =
> +               &infoframe->data.vendor.hdmi;
> +       int ret;
> +
> +       ret = drm_hdmi_vendor_infoframe_from_display_mode(frame, connector, mode);
> +       if (ret) {
> +               if (ret == -EINVAL)
> +                       return 0;
> +
> +               return ret;
> +       }
> +
> +       infoframe->set = true;
> +
> +       return 0;
> +}
> +
> +static int
> +hdmi_generate_infoframes(const struct drm_connector *connector,
> +                        struct drm_connector_state *state)
> +{
> +       const struct drm_display_info *info = &connector->display_info;
> +       int ret;
> +
> +       if (!info->is_hdmi)
> +               return 0;
> +
> +       if (!info->has_hdmi_infoframe)
> +               return 0;

I tried enabling the infoframes generation for MSM HDMI bridge and I
stumbled here.
I think this condition is not fully correct. It should only guard
generation of hdmi_vendor infoframe. AVI and SPD frame can be
generated even if has_hdmi_infoframe is not set. Not sure about the
HDR infoframe.

> +
> +       ret = hdmi_generate_avi_infoframe(connector, state);
> +       if (ret)
> +               return ret;
> +
> +       ret = hdmi_generate_spd_infoframe(connector, state);
> +       if (ret)
> +               return ret;
> +
> +       /*
> +        * Audio Infoframes will be generated by ALSA, and updated by
> +        * drm_atomic_helper_connector_hdmi_update_audio_infoframe().
> +        */
> +
> +       ret = hdmi_generate_hdr_infoframe(connector, state);
> +       if (ret)
> +               return ret;
> +
> +       ret = hdmi_generate_hdmi_vendor_infoframe(connector, state);
> +       if (ret)
> +               return ret;
> +
> +       return 0;
> +}
> +
>  /**
>   * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
>   * @connector: DRM Connector
>   * @state: the DRM State object
>   *
> @@ -941,10 +1079,14 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
>
>         ret = hdmi_compute_config(connector, new_state, mode);
>         if (ret)
>                 return ret;
>
> +       ret = hdmi_generate_infoframes(connector, new_state);
> +       if (ret)
> +               return ret;
> +
>         if (old_state->hdmi.broadcast_rgb != new_state->hdmi.broadcast_rgb ||
>             old_state->hdmi.output_bpc != new_state->hdmi.output_bpc ||
>             old_state->hdmi.output_format != new_state->hdmi.output_format) {
>                 struct drm_crtc *crtc = new_state->crtc;
>                 struct drm_crtc_state *crtc_state;
> @@ -958,10 +1100,195 @@ int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
>
>         return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
>
> +#define HDMI_MAX_INFOFRAME_SIZE                29
> +
> +static int clear_device_infoframe(struct drm_connector *connector,
> +                                 enum hdmi_infoframe_type type)
> +{
> +       const struct drm_connector_hdmi_funcs *funcs = connector->hdmi.funcs;
> +
> +       if (!funcs || !funcs->clear_infoframe)
> +               return 0;
> +
> +       return funcs->clear_infoframe(connector, type);
> +}
> +
> +static int clear_infoframe(struct drm_connector *connector,
> +                          struct drm_connector_hdmi_infoframe *conn_frame,
> +                          struct drm_connector_hdmi_infoframe *old_frame)
> +{
> +       int ret;
> +
> +       ret = clear_device_infoframe(connector, old_frame->data.any.type);
> +       if (ret)
> +               return ret;
> +
> +       memset(old_frame, 0, sizeof(*old_frame));
> +
> +       return 0;
> +}
> +
> +static int write_device_infoframe(struct drm_connector *connector,
> +                                 union hdmi_infoframe *frame)
> +{
> +       const struct drm_connector_hdmi_funcs *funcs = connector->hdmi.funcs;
> +       u8 buffer[HDMI_MAX_INFOFRAME_SIZE];
> +       int len;
> +
> +       if (!funcs || !funcs->write_infoframe)
> +               return -ENOSYS;
> +
> +       len = hdmi_infoframe_pack(frame, buffer, sizeof(buffer));
> +       if (len < 0)
> +               return len;
> +
> +       return funcs->write_infoframe(connector, frame->any.type, buffer, len);
> +}
> +
> +static int write_infoframe(struct drm_connector *connector,
> +                          struct drm_connector_hdmi_infoframe *conn_frame,
> +                          struct drm_connector_hdmi_infoframe *new_frame)
> +{
> +       int ret;
> +
> +       ret = write_device_infoframe(connector, &new_frame->data);
> +       if (ret)
> +               return ret;
> +
> +       if (conn_frame)
> +               memcpy(conn_frame, new_frame, sizeof(*conn_frame));
> +
> +       return 0;
> +}
> +
> +static int write_or_clear_infoframe(struct drm_connector *connector,
> +                                   struct drm_connector_hdmi_infoframe *conn_frame,
> +                                   struct drm_connector_hdmi_infoframe *old_frame,
> +                                   struct drm_connector_hdmi_infoframe *new_frame)
> +{
> +       if (new_frame->set)
> +               return write_infoframe(connector, conn_frame, new_frame);
> +
> +       if (old_frame->set && !new_frame->set)
> +               return clear_infoframe(connector, conn_frame, old_frame);
> +
> +       return 0;
> +}
> +
> +#define UPDATE_INFOFRAME(c, os, ns, i)                         \
> +       write_or_clear_infoframe(c,                             \
> +                                &(c)->hdmi.infoframes.i,       \
> +                                &(os)->hdmi.infoframes.i,      \
> +                                &(ns)->hdmi.infoframes.i)
> +
> +/**
> + * drm_atomic_helper_connector_hdmi_update_infoframes - Update the Infoframes
> + * @connector: A pointer to the HDMI connector
> + * @state: The HDMI connector state to generate the infoframe from
> + *
> + * This function is meant for HDMI connector drivers to write their
> + * infoframes. It will typically be used in a
> + * @drm_connector_helper_funcs.atomic_enable implementation.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *connector,
> +                                                      struct drm_atomic_state *state)
> +{
> +       struct drm_connector_state *old_state =
> +               drm_atomic_get_old_connector_state(state, connector);
> +       struct drm_connector_state *new_state =
> +               drm_atomic_get_new_connector_state(state, connector);
> +       struct drm_display_info *info = &connector->display_info;
> +       int ret;
> +
> +       if (!info->is_hdmi)
> +               return 0;
> +
> +       if (!info->has_hdmi_infoframe)
> +               return 0;
> +
> +       mutex_lock(&connector->hdmi.infoframes.lock);
> +
> +       ret = UPDATE_INFOFRAME(connector, old_state, new_state, avi);
> +       if (ret)
> +               goto out;
> +
> +       if (connector->hdmi.infoframes.audio.set) {
> +               ret = write_infoframe(connector,
> +                                     NULL,
> +                                     &connector->hdmi.infoframes.audio);
> +               if (ret)
> +                       goto out;
> +       }
> +
> +       ret = UPDATE_INFOFRAME(connector, old_state, new_state, hdr_drm);
> +       if (ret)
> +               goto out;
> +
> +       ret = UPDATE_INFOFRAME(connector, old_state, new_state, spd);
> +       if (ret)
> +               goto out;
> +
> +       ret = UPDATE_INFOFRAME(connector, old_state, new_state, hdmi);
> +       if (ret)
> +               goto out;
> +
> +out:
> +       mutex_unlock(&connector->hdmi.infoframes.lock);
> +       return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update_infoframes);
> +
> +#undef UPDATE_INFOFRAME
> +#undef UPDATE_INFOFRAME_TOGGLE
> +
> +/**
> + * drm_atomic_helper_connector_hdmi_update_audio_infoframe - Update the Audio Infoframe
> + * @connector: A pointer to the HDMI connector
> + * @frame: A pointer to the audio infoframe to write
> + *
> + * This function is meant for HDMI connector drivers to update their
> + * audio infoframe. It will typically be used in one of the ALSA hooks
> + * (most likely prepare).
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int
> +drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *connector,
> +                                                       struct hdmi_audio_infoframe *frame)
> +{
> +       struct drm_connector_hdmi_infoframe infoframe = {};
> +       struct drm_display_info *info = &connector->display_info;
> +       int ret;
> +
> +       if (!info->is_hdmi)
> +               return 0;
> +
> +       if (!info->has_hdmi_infoframe)
> +               return 0;
> +
> +       memcpy(&infoframe.data, frame, sizeof(infoframe.data));
> +       infoframe.set = true;
> +
> +       mutex_lock(&connector->hdmi.infoframes.lock);
> +
> +       ret = write_infoframe(connector,
> +                             &connector->hdmi.infoframes.audio,
> +                             &infoframe);
> +
> +       mutex_unlock(&connector->hdmi.infoframes.lock);
> +
> +       return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update_audio_infoframe);
> +
>  /**
>   * __drm_atomic_helper_connector_duplicate_state - copy atomic connector state
>   * @connector: connector object
>   * @state: atomic connector state
>   *
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 0272e1d05cc6..427816239038 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -276,10 +276,11 @@ static int __drm_connector_init(struct drm_device *dev,
>         INIT_LIST_HEAD(&connector->global_connector_list_entry);
>         INIT_LIST_HEAD(&connector->probed_modes);
>         INIT_LIST_HEAD(&connector->modes);
>         mutex_init(&connector->mutex);
>         mutex_init(&connector->edid_override_mutex);
> +       mutex_init(&connector->hdmi.infoframes.lock);
>         connector->edid_blob_ptr = NULL;
>         connector->epoch_counter = 0;
>         connector->tile_blob_ptr = NULL;
>         connector->status = connector_status_unknown;
>         connector->display_info.panel_orientation =
> @@ -454,10 +455,12 @@ EXPORT_SYMBOL(drmm_connector_init);
>
>  /**
>   * drmm_connector_hdmi_init - Init a preallocated HDMI connector
>   * @dev: DRM device
>   * @connector: A pointer to the HDMI connector to init
> + * @vendor: HDMI Controller Vendor name
> + * @product: HDMI Controller Product name
>   * @funcs: callbacks for this connector
>   * @hdmi_funcs: HDMI-related callbacks for this connector
>   * @connector_type: user visible type of the connector
>   * @ddc: optional pointer to the associated ddc adapter
>   * @supported_formats: Bitmask of @hdmi_colorspace listing supported output formats
> @@ -474,19 +477,27 @@ EXPORT_SYMBOL(drmm_connector_init);
>   * Returns:
>   * Zero on success, error code on failure.
>   */
>  int drmm_connector_hdmi_init(struct drm_device *dev,
>                              struct drm_connector *connector,
> +                            const char *vendor, const char *product,
>                              const struct drm_connector_funcs *funcs,
>                              const struct drm_connector_hdmi_funcs *hdmi_funcs,
>                              int connector_type,
>                              struct i2c_adapter *ddc,
>                              unsigned long supported_formats,
>                              unsigned int max_bpc)
>  {
>         int ret;
>
> +       if (!vendor || !product)
> +               return -EINVAL;
> +
> +       if ((strlen(vendor) > DRM_CONNECTOR_HDMI_VENDOR_LEN) ||
> +           (strlen(product) > DRM_CONNECTOR_HDMI_PRODUCT_LEN))
> +               return -EINVAL;
> +
>         if (!(connector_type == DRM_MODE_CONNECTOR_HDMIA ||
>               connector_type == DRM_MODE_CONNECTOR_HDMIB))
>                 return -EINVAL;
>
>         if (!supported_formats || !(supported_formats & BIT(HDMI_COLORSPACE_RGB)))
> @@ -498,10 +509,12 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
>         ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
>         if (ret)
>                 return ret;
>
>         connector->hdmi.supported_formats = supported_formats;
> +       strtomem_pad(connector->hdmi.vendor, vendor, 0);
> +       strtomem_pad(connector->hdmi.product, product, 0);
>
>         /*
>          * drm_connector_attach_max_bpc_property() requires the
>          * connector to have a state.
>          */
> @@ -650,10 +663,11 @@ void drm_connector_cleanup(struct drm_connector *connector)
>         WARN_ON(connector->state && !connector->funcs->atomic_destroy_state);
>         if (connector->state && connector->funcs->atomic_destroy_state)
>                 connector->funcs->atomic_destroy_state(connector,
>                                                        connector->state);
>
> +       mutex_destroy(&connector->hdmi.infoframes.lock);
>         mutex_destroy(&connector->mutex);
>
>         memset(connector, 0, sizeof(*connector));
>
>         if (dev->registered)
> diff --git a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> index dcc0f7486f49..b28409fe65dd 100644
> --- a/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_atomic_state_helper_test.c
> @@ -201,10 +201,11 @@ drm_atomic_helper_connector_hdmi_init(struct kunit *test,
>
>         enc->possible_crtcs = drm_crtc_mask(priv->crtc);
>
>         conn = &priv->connector;
>         ret = drmm_connector_hdmi_init(drm, conn,
> +                                      "Vendor", "Product",
>                                        &dummy_connector_funcs,
>                                        &dummy_connector_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        NULL,
>                                        formats,
> diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
> index d5320a089887..c3f7a3ba6808 100644
> --- a/drivers/gpu/drm/tests/drm_connector_test.c
> +++ b/drivers/gpu/drm/tests/drm_connector_test.c
> @@ -187,10 +187,11 @@ static void drm_test_connector_hdmi_init_valid(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -206,10 +207,11 @@ static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        NULL,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -225,10 +227,11 @@ static void drm_test_connector_hdmi_init_bpc_invalid(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -244,10 +247,11 @@ static void drm_test_connector_hdmi_init_bpc_null(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -267,10 +271,11 @@ static void drm_test_connector_hdmi_init_bpc_8(struct kunit *test)
>         struct drm_property *prop;
>         uint64_t val;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -302,10 +307,11 @@ static void drm_test_connector_hdmi_init_bpc_10(struct kunit *test)
>         struct drm_property *prop;
>         uint64_t val;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -337,10 +343,11 @@ static void drm_test_connector_hdmi_init_bpc_12(struct kunit *test)
>         struct drm_property *prop;
>         uint64_t val;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -368,10 +375,11 @@ static void drm_test_connector_hdmi_init_formats_empty(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        0,
> @@ -387,10 +395,11 @@ static void drm_test_connector_hdmi_init_formats_no_rgb(struct kunit *test)
>  {
>         struct drm_connector_init_priv *priv = test->priv;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_YUV422),
> @@ -407,10 +416,11 @@ static void drm_test_connector_hdmi_init_type_valid(struct kunit *test)
>         struct drm_connector_init_priv *priv = test->priv;
>         unsigned int connector_type = *(unsigned int *)test->param_value;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        connector_type,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -441,10 +451,11 @@ static void drm_test_connector_hdmi_init_type_invalid(struct kunit *test)
>         struct drm_connector_init_priv *priv = test->priv;
>         unsigned int connector_type = *(unsigned int *)test->param_value;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        connector_type,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> @@ -706,10 +717,11 @@ static void drm_test_drm_connector_attach_broadcast_rgb_property_hdmi_connector(
>         struct drm_connector *connector = &priv->connector;
>         struct drm_property *prop;
>         int ret;
>
>         ret = drmm_connector_hdmi_init(&priv->drm, connector,
> +                                      "Vendor", "Product",
>                                        &dummy_funcs,
>                                        &dummy_hdmi_funcs,
>                                        DRM_MODE_CONNECTOR_HDMIA,
>                                        &priv->ddc,
>                                        BIT(HDMI_COLORSPACE_RGB),
> diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
> index d59d2b3aef9a..22f083968aa8 100644
> --- a/include/drm/drm_atomic_state_helper.h
> +++ b/include/drm/drm_atomic_state_helper.h
> @@ -38,10 +38,12 @@ struct drm_connector_state;
>  struct drm_private_obj;
>  struct drm_private_state;
>  struct drm_modeset_acquire_ctx;
>  struct drm_device;
>
> +struct hdmi_audio_infoframe;
> +
>  void __drm_atomic_helper_crtc_state_reset(struct drm_crtc_state *state,
>                                           struct drm_crtc *crtc);
>  void __drm_atomic_helper_crtc_reset(struct drm_crtc *crtc,
>                                     struct drm_crtc_state *state);
>  void drm_atomic_helper_crtc_reset(struct drm_crtc *crtc);
> @@ -86,10 +88,16 @@ struct drm_connector_state *
>  drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector);
>  void
>  __drm_atomic_helper_connector_destroy_state(struct drm_connector_state *state);
>  void drm_atomic_helper_connector_destroy_state(struct drm_connector *connector,
>                                           struct drm_connector_state *state);
> +
> +int drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *connector,
> +                                                           struct hdmi_audio_infoframe *frame);
> +int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *connector,
> +                                                      struct drm_atomic_state *state);
> +
>  void __drm_atomic_helper_private_obj_duplicate_state(struct drm_private_obj *obj,
>                                                      struct drm_private_state *state);
>
>  void __drm_atomic_helper_bridge_duplicate_state(struct drm_bridge *bridge,
>                                                 struct drm_bridge_state *state);
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 3eaf4d54364d..5964ef283022 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -912,10 +912,25 @@ struct drm_tv_connector_state {
>         unsigned int overscan;
>         unsigned int saturation;
>         unsigned int hue;
>  };
>
> +/**
> + * struct drm_connector_hdmi_infoframe - HDMI Infoframe container
> + */
> +struct drm_connector_hdmi_infoframe {
> +       /**
> +        * @data: HDMI Infoframe structure
> +        */
> +       union hdmi_infoframe data;
> +
> +       /**
> +        * @set: Is the content of @data valid?
> +        */
> +       bool set;
> +};
> +
>  /**
>   * struct drm_connector_state - mutable connector state
>   */
>  struct drm_connector_state {
>         /** @connector: backpointer to the connector */
> @@ -1068,10 +1083,39 @@ struct drm_connector_state {
>                  * @broadcast_rgb: Connector property to pass the
>                  * Broadcast RGB selection value.
>                  */
>                 enum drm_hdmi_broadcast_rgb broadcast_rgb;
>
> +               /**
> +                * @infoframes: HDMI Infoframes matching that state
> +                */
> +               struct {
> +                       /**
> +                        * @avi: AVI Infoframes structure matching our
> +                        * state.
> +                        */
> +                       struct drm_connector_hdmi_infoframe avi;
> +
> +                       /**
> +                        * @hdr_drm: DRM (Dynamic Range and Mastering)
> +                        * Infoframes structure matching our state.
> +                        */
> +                       struct drm_connector_hdmi_infoframe hdr_drm;
> +
> +                       /**
> +                        * @spd: SPD Infoframes structure matching our
> +                        * state.
> +                        */
> +                       struct drm_connector_hdmi_infoframe spd;
> +
> +                       /**
> +                        * @vendor: HDMI Vendor Infoframes structure
> +                        * matching our state.
> +                        */
> +                       struct drm_connector_hdmi_infoframe hdmi;
> +               } infoframes;
> +
>                 /**
>                  * @is_full_range: Is the output supposed to use a full
>                  * RGB Quantization Range or not?
>                  */
>                 bool is_full_range;
> @@ -1113,10 +1157,45 @@ struct drm_connector_hdmi_funcs {
>          */
>         enum drm_mode_status
>         (*tmds_char_rate_valid)(const struct drm_connector *connector,
>                                 const struct drm_display_mode *mode,
>                                 unsigned long long tmds_rate);
> +
> +       /**
> +        * @clear_infoframe:
> +        *
> +        * This callback is invoked through
> +        * @drm_atomic_helper_hdmi_connector_update_infoframes during a
> +        * commit to clear the infoframes into the hardware. It will be
> +        * called multiple times, once for every disabled infoframe
> +        * type.
> +        *
> +        * The @clear_infoframe callback is optional.
> +        *
> +        * Returns:
> +        * 0 on success, a negative error code otherwise
> +        */
> +       int (*clear_infoframe)(struct drm_connector *connector,
> +                              enum hdmi_infoframe_type type);
> +
> +       /**
> +        * @write_infoframe:
> +        *
> +        * This callback is invoked through
> +        * @drm_atomic_helper_hdmi_connector_update_infoframes during a
> +        * commit to program the infoframes into the hardware. It will
> +        * be called multiple times, once for every updated infoframe
> +        * type.
> +        *
> +        * The @write_infoframe callback is mandatory.
> +        *
> +        * Returns:
> +        * 0 on success, a negative error code otherwise
> +        */
> +       int (*write_infoframe)(struct drm_connector *connector,
> +                              enum hdmi_infoframe_type type,
> +                              const u8 *buffer, size_t len);
>  };
>
>  /**
>   * struct drm_connector_funcs - control connectors on a given device
>   *
> @@ -1984,20 +2063,73 @@ struct drm_connector {
>
>         /**
>          * @hdmi: HDMI-related variable and properties.
>          */
>         struct {
> +#define DRM_CONNECTOR_HDMI_VENDOR_LEN  8
> +               /**
> +                * @vendor: HDMI Controller Vendor Name
> +                */
> +               unsigned char vendor[DRM_CONNECTOR_HDMI_VENDOR_LEN] __nonstring;
> +
> +#define DRM_CONNECTOR_HDMI_PRODUCT_LEN 16
> +               /**
> +                * @product: HDMI Controller Product Name
> +                */
> +               unsigned char product[DRM_CONNECTOR_HDMI_PRODUCT_LEN] __nonstring;
> +
>                 /**
>                  * @supported_formats: Bitmask of @hdmi_colorspace
>                  * supported by the controller.
>                  */
>                 unsigned long supported_formats;
>
>                 /**
>                  * @funcs: HDMI connector Control Functions
>                  */
>                 const struct drm_connector_hdmi_funcs *funcs;
> +
> +               /**
> +                * @infoframes: Current Infoframes output by the connector
> +                */
> +               struct {
> +                       /**
> +                        * @lock: Mutex protecting against concurrent access to
> +                        * the infoframes, most notably between KMS and ALSA.
> +                        */
> +                       struct mutex lock;
> +
> +                       /**
> +                        * @audio: Current Audio Infoframes structure. Protected
> +                        * by @lock.
> +                        */
> +                       struct drm_connector_hdmi_infoframe audio;
> +
> +                       /**
> +                        * @avi: Current AVI Infoframes structure. Protected by
> +                        * @lock.
> +                        */
> +                       struct drm_connector_hdmi_infoframe avi;
> +
> +                       /**
> +                        * @hdr_drm: Current DRM (Dynamic Range and Mastering)
> +                        * Infoframes structure. Protected by @lock.
> +                        */
> +                       struct drm_connector_hdmi_infoframe hdr_drm;
> +
> +                       /**
> +                        * @spd: Current SPD Infoframes structure. Protected by
> +                        * @lock.
> +                        */
> +                       struct drm_connector_hdmi_infoframe spd;
> +
> +                       /**
> +                        * @vendor: Current HDMI Vendor Infoframes structure.
> +                        * Protected by @lock.
> +                        */
> +                       struct drm_connector_hdmi_infoframe hdmi;
> +               } infoframes;
>         } hdmi;
>  };
>
>  #define obj_to_connector(x) container_of(x, struct drm_connector, base)
>
> @@ -2015,10 +2147,11 @@ int drmm_connector_init(struct drm_device *dev,
>                         const struct drm_connector_funcs *funcs,
>                         int connector_type,
>                         struct i2c_adapter *ddc);
>  int drmm_connector_hdmi_init(struct drm_device *dev,
>                              struct drm_connector *connector,
> +                            const char *vendor, const char *product,
>                              const struct drm_connector_funcs *funcs,
>                              const struct drm_connector_hdmi_funcs *hdmi_funcs,
>                              int connector_type,
>                              struct i2c_adapter *ddc,
>                              unsigned long supported_formats,
>
> --
> 2.43.2
>


--
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
