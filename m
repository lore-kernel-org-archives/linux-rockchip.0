Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D569C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 14:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdbEJSX1FW/Yr25WUq0E45AfX7SpfVh8+H8TH1CaemY=; b=wQKjRKJrPSnW+G
	TJRmvv9zQo2orqXJMnGRDJabGIxCPUCfCCRz55HNuRyUOOoMxZSNbxCzbaKweN0iAsq7JoHQ3hSZU
	kpPLLgg+sfibuGB9hiLRq8C9TrLGdj1Wj9kOd6gJ3omInmML4tdtmL5yIDDpitFpPohx7C6rnb5EJ
	ga1TREZ8HHbhvW4JBGHutNVTRtRz3n3JWGRdF2bmVHIYFix8gxleUaOCyn6VKQZoFU9XPvvnP+JN0
	RAl8ROdk0rPBc5xBEOFl3MRSha2rAH7hahTEuIlvVUhxtzP5CfYXaTNfAPdxMZCAaGv47f6I2P41s
	0sN+P66HYgZR4w1FstQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmso-000ZXS-1B;
	Thu, 14 Dec 2023 14:40:14 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmsl-000ZWQ-05
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 14:40:12 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-dbcd67d4c29so1535137276.3
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 06:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1702564808; x=1703169608; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CVbbR720mxFQWZWSF5/+frzTWN+zosuo0CwTK2ojkMc=;
        b=LXerd8v2moA3qo9JWQy2QKp3vMLMrajN2KGqQymY4h65zcKGd6UWdM3LIOizm7jrsj
         GHEYhVge1OuTT2xslpg8Rot/wQheKYG2MYLJfT0mwVxAhoKMBHl8dsCut15PEXRKafg2
         97L9DyQGk/GiHBH3+SDBkCs/Wo7to0kPYTA/aMixaUhe8HJmjvic1mgxHcfM1ZdEZBIO
         0PKu3H7vma06ZwqJ3gvg0eIZVoRyxvigioR44kO20odn98cBg9XRMJZg0N3fFL3neYHg
         ypYOhephHGBhH1tdX9Og7dAr7MfWarXhqNhdyUkf+K8yE66PAWtb+Xiaey9YL3ZgnDaB
         76uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702564808; x=1703169608;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CVbbR720mxFQWZWSF5/+frzTWN+zosuo0CwTK2ojkMc=;
        b=b6Bgzj4u7hczpfalNFo+LwX7Inyftl7jNT1/oK99YXjMMPbN8ziFN0S2mxn+M4B4D1
         chaeIRjl2WVqKtd5/h47jz6MnNNti+ILh72w4U4RvDDyNJCd6DFmxCc2MjSDTVHWyLko
         2hN7wvAdbDiP0d1wYSOmg26bPFT3UtOe2tFT1dXhfNCqSmB2OrVHXull06MLCFylB1pV
         VyeHsJA3bOyLjrAdrzOYd6XK1KG59PrI+gGdw4ZcryLCMNp1tbC3uLQjcgfEM7aJ7xsU
         M/wv0gr/QIwRhmg9f3DH6gTi7WeqPsXd2Hxm5dRT/DduwvNZcBj2dOUkEMWrgVdraemi
         rW1w==
X-Gm-Message-State: AOJu0Yxp7voVIS0IXZy7rY6q4pi7qR5p5VUS73TgmkBzRMs3wjL+Agqy
	VNj0n8Q9uirmWbmvZ68lioddsVQ3bCPGXMhHnnCeBA==
X-Google-Smtp-Source: AGHT+IE2fGQgctDfqw+SdyQcQrVtSDwfkDhdhufA57h07Dfv7cH935CDl5idwK5f/LKOwnfwTJf5aUvfXaezh/MpzdQ=
X-Received: by 2002:a05:6902:cc2:b0:da3:b466:1f73 with SMTP id
 cq2-20020a0569020cc200b00da3b4661f73mr7064045ybb.24.1702564807819; Thu, 14
 Dec 2023 06:40:07 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org> <20231207-kms-hdmi-connector-state-v5-6-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-6-6538e19d634d@kernel.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 14 Dec 2023 14:39:51 +0000
Message-ID: <CAPY8ntCzdxJ5zyk4eeWV8D+WBdfri61ttoNxVtJUZSAKHoMpGQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/44] drm/connector: Introduce an HDMI connector
 initialization function
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
X-CRM114-CacheID: sfid-20231214_064011_061699_B3500D34 
X-CRM114-Status: GOOD (  33.93  )
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

Hi Maxime

As requested, I'm just going through patches 6-16.
I will say that I've been less thorough in checking the kunit test
code in this series than the core code changes, and I'm trusting that
all the unit tests pass.

I get a build failure on the complete series for arm64 with the
standard defconfig
depmod: ERROR: Cycle detected: drm_display_helper -> drm_kms_helper ->
drm_display_helper
depmod: ERROR: Cycle detected: drm
depmod: ERROR: Found 2 modules in dependency cycles!

I haven't followed it through as to the reason, but obviously that
will need to be addressed.

  Dave

On Thu, 7 Dec 2023 at 15:49, Maxime Ripard <mripard@kernel.org> wrote:
>
> A lot of the various HDMI drivers duplicate some logic that depends on
> the HDMI spec itself and not really a particular hardware
> implementation.
>
> Output BPC or format selection, infoframe generation are good examples
> of such areas.
>
> This creates a lot of boilerplate, with a lot of variations, which makes
> it hard for userspace to rely on, and makes it difficult to get it right
> for drivers.
>
> In the next patches, we'll add a lot of infrastructure around the
> drm_connector and drm_connector_state structures, which will allow to
> abstract away the duplicated logic. This infrastructure comes with a few
> requirements though, and thus we need a new initialization function.
>
> Hopefully, this will make drivers simpler to handle, and their behaviour
> more consistent.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---
>  drivers/gpu/drm/drm_connector.c            |  39 +++++++++
>  drivers/gpu/drm/tests/drm_connector_test.c | 123 +++++++++++++++++++++++++++++
>  include/drm/drm_connector.h                |   5 ++
>  3 files changed, 167 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index b0516505f7ae..d9961cce8245 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -452,6 +452,45 @@ int drmm_connector_init(struct drm_device *dev,
>  }
>  EXPORT_SYMBOL(drmm_connector_init);
>
> +/**
> + * drmm_connector_hdmi_init - Init a preallocated HDMI connector
> + * @dev: DRM device
> + * @connector: A pointer to the HDMI connector to init
> + * @funcs: callbacks for this connector
> + * @connector_type: user visible type of the connector
> + * @ddc: optional pointer to the associated ddc adapter
> + *
> + * Initialises a preallocated HDMI connector. Connectors can be
> + * subclassed as part of driver connector objects.
> + *
> + * Cleanup is automatically handled with a call to
> + * drm_connector_cleanup() in a DRM-managed action.
> + *
> + * The connector structure should be allocated with drmm_kzalloc().
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drmm_connector_hdmi_init(struct drm_device *dev,
> +                            struct drm_connector *connector,
> +                            const struct drm_connector_funcs *funcs,
> +                            int connector_type,
> +                            struct i2c_adapter *ddc)
> +{
> +       int ret;
> +
> +       if (!(connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +             connector_type == DRM_MODE_CONNECTOR_HDMIB))
> +               return -EINVAL;
> +
> +       ret = drmm_connector_init(dev, connector, funcs, connector_type, ddc);
> +       if (ret)
> +               return ret;
> +
> +       return 0;
> +}
> +EXPORT_SYMBOL(drmm_connector_hdmi_init);
> +
>  /**
>   * drm_connector_attach_edid_property - attach edid property.
>   * @connector: the connector
> diff --git a/drivers/gpu/drm/tests/drm_connector_test.c b/drivers/gpu/drm/tests/drm_connector_test.c
> index a268847be8d1..8f070cacab3b 100644
> --- a/drivers/gpu/drm/tests/drm_connector_test.c
> +++ b/drivers/gpu/drm/tests/drm_connector_test.c
> @@ -172,6 +172,128 @@ static struct kunit_suite drmm_connector_init_test_suite = {
>         .test_cases = drmm_connector_init_tests,
>  };
>
> +/*
> + * Test that the registration of a bog standard connector works as
> + * expected and doesn't report any error.
> + */
> +static void drm_test_connector_hdmi_init_valid(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       int ret;
> +
> +       ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      &dummy_funcs,
> +                                      DRM_MODE_CONNECTOR_HDMIA,
> +                                      &priv->ddc);
> +       KUNIT_EXPECT_EQ(test, ret, 0);
> +}
> +
> +/*
> + * Test that the registration of a connector without a DDC adapter
> + * doesn't report any error.
> + */
> +static void drm_test_connector_hdmi_init_null_ddc(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       int ret;
> +
> +       ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      &dummy_funcs,
> +                                      DRM_MODE_CONNECTOR_HDMIA,
> +                                      NULL);
> +       KUNIT_EXPECT_EQ(test, ret, 0);
> +}
> +
> +/*
> + * Test that the registration of an HDMI connector with an HDMI
> + * connector type succeeds.
> + */
> +static void drm_test_connector_hdmi_init_type_valid(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       unsigned int connector_type = *(unsigned int *)test->param_value;
> +       int ret;
> +
> +       ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      &dummy_funcs,
> +                                      connector_type,
> +                                      &priv->ddc);
> +       KUNIT_EXPECT_EQ(test, ret, 0);
> +}
> +
> +static const unsigned int drm_connector_hdmi_init_type_valid_tests[] = {
> +       DRM_MODE_CONNECTOR_HDMIA,
> +       DRM_MODE_CONNECTOR_HDMIB,
> +};
> +
> +static void drm_connector_hdmi_init_type_desc(const unsigned int *type, char *desc)
> +{
> +       sprintf(desc, "%s", drm_get_connector_type_name(*type));
> +}
> +
> +KUNIT_ARRAY_PARAM(drm_connector_hdmi_init_type_valid,
> +                 drm_connector_hdmi_init_type_valid_tests,
> +                 drm_connector_hdmi_init_type_desc);
> +
> +/*
> + * Test that the registration of an HDMI connector with an !HDMI
> + * connector type fails.
> + */
> +static void drm_test_connector_hdmi_init_type_invalid(struct kunit *test)
> +{
> +       struct drm_connector_init_priv *priv = test->priv;
> +       unsigned int connector_type = *(unsigned int *)test->param_value;
> +       int ret;
> +
> +       ret = drmm_connector_hdmi_init(&priv->drm, &priv->connector,
> +                                      &dummy_funcs,
> +                                      connector_type,
> +                                      &priv->ddc);
> +       KUNIT_EXPECT_LT(test, ret, 0);
> +}
> +
> +static const unsigned int drm_connector_hdmi_init_type_invalid_tests[] = {
> +       DRM_MODE_CONNECTOR_Unknown,
> +       DRM_MODE_CONNECTOR_VGA,
> +       DRM_MODE_CONNECTOR_DVII,
> +       DRM_MODE_CONNECTOR_DVID,
> +       DRM_MODE_CONNECTOR_DVIA,
> +       DRM_MODE_CONNECTOR_Composite,
> +       DRM_MODE_CONNECTOR_SVIDEO,
> +       DRM_MODE_CONNECTOR_LVDS,
> +       DRM_MODE_CONNECTOR_Component,
> +       DRM_MODE_CONNECTOR_9PinDIN,
> +       DRM_MODE_CONNECTOR_DisplayPort,
> +       DRM_MODE_CONNECTOR_TV,
> +       DRM_MODE_CONNECTOR_eDP,
> +       DRM_MODE_CONNECTOR_VIRTUAL,
> +       DRM_MODE_CONNECTOR_DSI,
> +       DRM_MODE_CONNECTOR_DPI,
> +       DRM_MODE_CONNECTOR_WRITEBACK,
> +       DRM_MODE_CONNECTOR_SPI,
> +       DRM_MODE_CONNECTOR_USB,
> +};
> +
> +KUNIT_ARRAY_PARAM(drm_connector_hdmi_init_type_invalid,
> +                 drm_connector_hdmi_init_type_invalid_tests,
> +                 drm_connector_hdmi_init_type_desc);
> +
> +static struct kunit_case drmm_connector_hdmi_init_tests[] = {
> +       KUNIT_CASE(drm_test_connector_hdmi_init_valid),
> +       KUNIT_CASE(drm_test_connector_hdmi_init_null_ddc),
> +       KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_valid,
> +                        drm_connector_hdmi_init_type_valid_gen_params),
> +       KUNIT_CASE_PARAM(drm_test_connector_hdmi_init_type_invalid,
> +                        drm_connector_hdmi_init_type_invalid_gen_params),
> +       { }
> +};
> +
> +static struct kunit_suite drmm_connector_hdmi_init_test_suite = {
> +       .name = "drmm_connector_hdmi_init",
> +       .init = drm_test_connector_init,
> +       .test_cases = drmm_connector_hdmi_init_tests,
> +};
> +
>  struct drm_get_tv_mode_from_name_test {
>         const char *name;
>         enum drm_connector_tv_mode expected_mode;
> @@ -236,6 +358,7 @@ static struct kunit_suite drm_get_tv_mode_from_name_test_suite = {
>  };
>
>  kunit_test_suites(
> +       &drmm_connector_hdmi_init_test_suite,
>         &drmm_connector_init_test_suite,
>         &drm_get_tv_mode_from_name_test_suite
>  );
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index fe88d7fc6b8f..4491c4c2fb6e 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1904,6 +1904,11 @@ int drmm_connector_init(struct drm_device *dev,
>                         const struct drm_connector_funcs *funcs,
>                         int connector_type,
>                         struct i2c_adapter *ddc);
> +int drmm_connector_hdmi_init(struct drm_device *dev,
> +                            struct drm_connector *connector,
> +                            const struct drm_connector_funcs *funcs,
> +                            int connector_type,
> +                            struct i2c_adapter *ddc);
>  void drm_connector_attach_edid_property(struct drm_connector *connector);
>  int drm_connector_register(struct drm_connector *connector);
>  void drm_connector_unregister(struct drm_connector *connector);
>
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
