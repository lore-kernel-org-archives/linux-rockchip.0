Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F763C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 15:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oR75I7+ElgwKUC1a224691QzxItNI9drzjl8EsrP/l8=; b=bgkJyBLV5Wuov/
	S36eUPw36+EfzBTepWV1iotIzrTjlDBRWh8m6LvBOKwYS+HWvXKmpSSKewO+cnrUvn0s1SCji18kr
	krDxQURANNi2ipg8lzQi0h7YFxreEk/pwBjwUUv2OIzQqa3JxihLg43ALeDfmxmLNA0T7B1uvmPbd
	b8S1Khrww9Z08Wj/V0SsOLUUOX6Zez2wsjtj8hg06VK7i8xoFZXkH0D5DkYFp/7Hd9yzASXW605Vp
	WH5sUf83kQz/wY66VBBiNPiFIQeuZPixA9rIwzpTY8U5/AfGRoCDPiYE9s33k9BoZLDoQuB/TAHTV
	g2N+58kp9bWfzTLKlRUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnF7-000cFk-0i;
	Thu, 14 Dec 2023 15:03:17 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnF3-000cD2-1f
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 15:03:16 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5d2d0661a8dso83011917b3.2
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 07:03:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1702566191; x=1703170991; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7GPW7ASfN74rjpX0yjIvwEOj4Z6A4Vz+3oxubPbP0Jc=;
        b=kw1Gs6/ipqblqAM0ID9fX6AeJWjdTMesuaQKLc9EB5VZRnbaR517Znc7260Z+rzGue
         nAlxHX4LmQqzYiuH8fq+4o4MbQtGO9nsu1vu2AQ5WJrnP+OYhpdD2hdBqMQPxydQXesd
         aU7ovGdyGvFl1zcN+MCCKYIiTWE2M7tHfToUDUCc4oRqz0yKI6kBMimoRjsRH+LS+gty
         gm+tqyqc4f3eW/VovfyMSJGdceWWZlLTECcaYXIqXO+yg7zNLq4Xmtoh+KVd4AouqmUz
         KBj+EurauV0YdO7ZUdSPWi7VtQZsU7HC1mGEY19QLZVY+NhL9gTMk6EUHjJipL2b/ABY
         Peng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702566191; x=1703170991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GPW7ASfN74rjpX0yjIvwEOj4Z6A4Vz+3oxubPbP0Jc=;
        b=KArMXHXNacbfu+8o0hcs8Vb9YC/olfTl6L1LAhld4rDcEjg+Vyk+LChZ/m3saoOumQ
         igSvLoVF9Z1Fmh1NpL9CjEwO0oxMtWFnr0QLrnTtY+0qa/KEulga7e5UaPit2AmfArd/
         F25b5ihfiLyt2pIwBRI4A0BNuZO2pWkIJiUFyl3k4XZ2qDLbPapJWFwTX202dZGDGB94
         3wLspc6wn3vgDz1dwq63KeoVx3AbcCNt1xRCwfzRQOZU517EKhVQ198qtwIBXyfLnk8u
         lYlKmUfFQzKujBlBDqOFqc9Whk3TJjOizdhLVw1+CgCVwzFLSGH6blxgZHzBKs00YzbG
         ir1A==
X-Gm-Message-State: AOJu0YyUJjMD/dKpZwRL9Z19U1guH7gqW4x+baTODEFiIee8fabPoqfs
	aC2nwBN7BoglVDQIMCHsXUH24j8e0wYbwrkoF/ZUbw==
X-Google-Smtp-Source: AGHT+IFSvx75tZRghKUoo6Uahu1XWx14a1yLiOPfadIawFqDns+Co6ySb3wgwgdAqgJjKa5z8vYD8VvGs3+4fNnBPdY=
X-Received: by 2002:a81:df06:0:b0:5d4:b7a:ebfc with SMTP id
 c6-20020a81df06000000b005d40b7aebfcmr8726362ywn.22.1702566191165; Thu, 14 Dec
 2023 07:03:11 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org> <20231207-kms-hdmi-connector-state-v5-12-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-12-6538e19d634d@kernel.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 14 Dec 2023 15:02:54 +0000
Message-ID: <CAPY8ntDdmgc+k17T=kRXBWDAcN_Kww4L=0JRmiuupkKcy6tgzg@mail.gmail.com>
Subject: Re: [PATCH v5 12/44] drm/connector: hdmi: Add HDMI compute clock helper
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_070313_739327_20042495 
X-CRM114-Status: GOOD (  30.62  )
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

On Thu, 7 Dec 2023 at 15:50, Maxime Ripard <mripard@kernel.org> wrote:
>
> A lot of HDMI drivers have some variation of the formula to calculate
> the TMDS character rate from a mode, but few of them actually take all
> parameters into account.
>
> Let's create a helper to provide that rate taking all parameters into
> account.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_connector.c            |  59 ++++++
>  drivers/gpu/drm/tests/drm_connector_test.c | 323 +++++++++++++++++++++++++++++
>  include/drm/drm_connector.h                |   5 +
>  3 files changed, 387 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index a72f38b6dbc8..667326b09acc 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -2973,6 +2973,65 @@ void drm_connector_update_privacy_screen(const struct drm_connector_state *conne
>  }
>  EXPORT_SYMBOL(drm_connector_update_privacy_screen);
>
> +/**
> + * drm_connector_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
> + * @mode: Display mode to compute the clock for
> + * @bpc: Bits per character
> + * @fmt: Output Pixel Format used
> + *
> + * Returns the TMDS Character Rate for a given mode, bpc count and output format.
> + *
> + * RETURNS:
> + * The TMDS Character Rate, in Hertz, or 0 on error.
> + */
> +unsigned long long
> +drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +                                     unsigned int bpc,
> +                                     enum hdmi_colorspace fmt)
> +{
> +       unsigned long long clock = mode->clock * 1000ULL;
> +       unsigned int vic = drm_match_cea_mode(mode);
> +
> +       /*
> +        * CTA-861-G Spec, section 5.4 - Color Coding and Quantization
> +        * mandates that VIC 1 always uses 8 bpc.
> +        */
> +       if (vic == 1 && bpc != 8)
> +               return 0;
> +
> +       /*
> +        * HDMI 2.0 Spec, section 7.1 - YCbCr 4:2:0 Pixel Encoding
> +        * specifies that YUV420 encoding is only available for those
> +        * VICs.
> +        */
> +       if (fmt == HDMI_COLORSPACE_YUV420 &&
> +           !(vic == 96 || vic == 97 || vic == 101 ||
> +             vic == 102 || vic == 106 || vic == 107))
> +               return 0;
> +
> +       /*
> +        * HDMI 1.4b Spec, section 6.2.3 - Pixel Encoding Requirements
> +        * specifies that YUV422 is 36-bit only.
> +        */
> +       if (fmt == HDMI_COLORSPACE_YUV422 && bpc != 12)
> +               return 0;
> +
> +       if (fmt == HDMI_COLORSPACE_YUV420)
> +               clock = clock / 2;
> +
> +       if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> +               clock = clock * 2;
> +
> +       if (fmt == HDMI_COLORSPACE_YUV422)
> +               bpc = 8;

Possibly a comment on why we have these munges for 420 and 422 as they
aren't immediately obvious.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> +
> +       clock = clock * bpc;
> +       do_div(clock, 8);
> +
> +       return clock;
> +}
> +EXPORT_SYMBOL(drm_connector_hdmi_compute_mode_clock);
> +
>  int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>                                     struct drm_property *property,
>                                     uint64_t value)
> diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
> index fa6fe8084107..0a838924a546 100644
> --- a/drivers/gpu/drm/tests/drm_connector_test.c
> +++ b/drivers/gpu/drm/tests/drm_connector_test.c
> @@ -8,7 +8,9 @@
>  #include <drm/drm_atomic_state_helper.h>
>  #include <drm/drm_connector.h>
>  #include <drm/drm_drv.h>
> +#include <drm/drm_edid.h>
>  #include <drm/drm_kunit_helpers.h>
> +#include <drm/drm_modes.h>
>
>  #include <kunit/test.h>
>
> @@ -719,10 +721,331 @@ static struct kunit_suite drm_connector_attach_broadcast_rgb_property_test_suite
>         .test_cases = drm_connector_attach_broadcast_rgb_property_tests,
>  };
>
> +/*
> + * Test that for a given mode, with 8bpc and an RGB output the TMDS
> + * character rate is equal to the mode pixel clock.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, mode->clock * 1000ULL, rate);
> +}
> +
> +/*
> + * Test that for a given mode, with 10bpc and an RGB output the TMDS
> + * character rate is equal to 1.25 times the mode pixel clock.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, mode->clock * 1250, rate);
> +}
> +
> +/*
> + * Test that for the VIC-1 mode, with 10bpc and an RGB output the TMDS
> + * character rate computation fails.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc_vic_1(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 1);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_RGB);
> +       KUNIT_EXPECT_EQ(test, rate, 0);
> +}
> +
> +/*
> + * Test that for a given mode, with 12bpc and an RGB output the TMDS
> + * character rate is equal to 1.5 times the mode pixel clock.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, mode->clock * 1500, rate);
> +}
> +
> +/*
> + * Test that for the VIC-1 mode, with 12bpc and an RGB output the TMDS
> + * character rate computation fails.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc_vic_1(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 1);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_RGB);
> +       KUNIT_EXPECT_EQ(test, rate, 0);
> +}
> +
> +/*
> + * Test that for a mode with the pixel repetition flag, the TMDS
> + * character rate is indeed double the mode pixel clock.
> + */
> +static void drm_test_drm_connector_hdmi_compute_mode_clock_rgb_double(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       unsigned long long rate;
> +       struct drm_device *drm = &priv->drm;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 6);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_TRUE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_RGB);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, (mode->clock * 1000ULL) * 2, rate);
> +}
> +
> +/*
> + * Test that the TMDS character rate computation for the VIC modes
> + * explicitly listed in the spec as supporting YUV420 succeed and return
> + * half the mode pixel clock.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv420_valid(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned long long rate;
> +       unsigned int vic = *(unsigned int *)test->param_value;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, vic);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV420);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, (mode->clock * 1000ULL) / 2, rate);
> +}
> +
> +static const unsigned int drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[] = {
> +       96, 97, 101, 102, 106, 107,
> +};
> +
> +static void drm_connector_hdmi_compute_mode_clock_yuv420_vic_desc(const unsigned int *vic, char *desc)
> +{
> +       sprintf(desc, "VIC %u", *vic);
> +}
> +
> +KUNIT_ARRAY_PARAM(drm_connector_hdmi_compute_mode_clock_yuv420_valid,
> +                 drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests,
> +                 drm_connector_hdmi_compute_mode_clock_yuv420_vic_desc);
> +
> +/*
> + * Test that trying to compute the TMDS char rate with the YUV420 format
> + * for a mode that doesn't support the YUV420 encoding returns an error.
> + *
> + * TODO: We should probably test this with all the VIC but the
> + * explicitly supported ones. Since the list of VIC is quite long and
> + * not linear, the best way to support it at the moment would be to
> + * create a custom gen_params function that would only return valid
> + * VICs. At the moment, that function expects to get a pointer back
> + * however, and compilers don't really like casting between integer and
> + * pointers.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv420_invalid(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 42);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV420);
> +       KUNIT_EXPECT_EQ(test, rate, 0);
> +}
> +
> +/*
> + * Test that for a given mode listed supporting it and an YUV420 output
> + * with 10bpc, the TMDS character rate is equal to 0.625 times the mode
> + * pixel clock.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv420_10_bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned int vic =
> +               drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, vic);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV420);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +
> +       KUNIT_EXPECT_EQ(test, mode->clock * 625, rate);
> +}
> +
> +/*
> + * Test that for a given mode listed supporting it and an YUV420 output
> + * with 12bpc, the TMDS character rate is equal to 0.75 times the mode
> + * pixel clock.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv420_12_bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned int vic =
> +               drm_connector_hdmi_compute_mode_clock_yuv420_vic_valid_tests[0];
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, vic);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV420);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +
> +       KUNIT_EXPECT_EQ(test, mode->clock * 750, rate);
> +}
> +
> +/*
> + * Test that for a given mode, the computation of the TMDS character
> + * rate with 8bpc and a YUV422 output fails.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv422_8_bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 8, HDMI_COLORSPACE_YUV422);
> +       KUNIT_EXPECT_EQ(test, rate, 0);
> +}
> +
> +/*
> + * Test that for a given mode, the computation of the TMDS character
> + * rate with 10bpc and a YUV422 output fails.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv422_10_bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 10, HDMI_COLORSPACE_YUV422);
> +       KUNIT_EXPECT_EQ(test, rate, 0);
> +}
> +
> +/*
> + * Test that for a given mode, the computation of the TMDS character
> + * rate with 12bpc and a YUV422 output succeeds and returns a rate equal
> + * to the mode pixel clock.
> + */
> +static void drm_test_connector_hdmi_compute_mode_clock_yuv422_12_bpc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       const struct drm_display_mode *mode;
> +       struct drm_device *drm = &priv->drm;
> +       unsigned long long rate;
> +
> +       mode = drm_display_mode_from_cea_vic(drm, 16);
> +       KUNIT_ASSERT_NOT_NULL(test, mode);
> +
> +       KUNIT_ASSERT_FALSE(test, mode->flags & DRM_MODE_FLAG_DBLCLK);
> +
> +       rate = drm_connector_hdmi_compute_mode_clock(mode, 12, HDMI_COLORSPACE_YUV422);
> +       KUNIT_ASSERT_GT(test, rate, 0);
> +       KUNIT_EXPECT_EQ(test, mode->clock * 1000, rate);
> +}
> +
> +static struct kunit_case drm_connector_hdmi_compute_mode_clock_tests[] = {
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb),
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc),
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_10bpc_vic_1),
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc),
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_12bpc_vic_1),
> +       KUNIT_CASE(drm_test_drm_connector_hdmi_compute_mode_clock_rgb_double),
> +       KUNIT_CASE_PARAM(drm_test_connector_hdmi_compute_mode_clock_yuv420_valid,
> +                        drm_connector_hdmi_compute_mode_clock_yuv420_valid_gen_params),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_invalid),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_10_bpc),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv420_12_bpc),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_8_bpc),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_10_bpc),
> +       KUNIT_CASE(drm_test_connector_hdmi_compute_mode_clock_yuv422_12_bpc),
> +       { }
> +};
> +
> +static struct kunit_suite drm_connector_hdmi_compute_mode_clock_test_suite = {
> +       .name = "drm_test_connector_hdmi_compute_mode_clock",
> +       .init = drm_test_connector_init,
> +       .test_cases = drm_connector_hdmi_compute_mode_clock_tests,
> +};
> +
>  kunit_test_suites(
>         &drmm_connector_hdmi_init_test_suite,
>         &drmm_connector_init_test_suite,
>         &drm_connector_attach_broadcast_rgb_property_test_suite,
> +       &drm_connector_hdmi_compute_mode_clock_test_suite,
>         &drm_get_tv_mode_from_name_test_suite,
>         &drm_hdmi_connector_get_broadcast_rgb_name_test_suite,
>         &drm_hdmi_connector_get_output_format_name_test_suite
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 74db5ce47e01..0cc5a8732664 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -38,6 +38,7 @@ struct drm_connector_helper_funcs;
>  struct drm_modeset_acquire_ctx;
>  struct drm_device;
>  struct drm_crtc;
> +struct drm_display_mode;
>  struct drm_encoder;
>  struct drm_panel;
>  struct drm_property;
> @@ -2136,6 +2137,10 @@ void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
>  void drm_connector_attach_privacy_screen_provider(
>         struct drm_connector *connector, struct drm_privacy_screen *priv);
>  void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
> +unsigned long long
> +drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
> +                                     unsigned int bpc,
> +                                     enum hdmi_colorspace fmt);
>
>  /**
>   * struct drm_tile_group - Tile group metadata
>
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
