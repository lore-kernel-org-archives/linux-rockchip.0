Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86B34C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 14:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QzT3To6HjK5mXxhzs9UcDs2M68V1guqg60d5lBhmOTc=; b=ZtGyJXeCfBysOm
	0YbsFJcWnlvFq+IDRgPFppEhtuZ/ODE8nS+yby8mXEKC+GT6S4/FBKNezVYEzB6uU+rBU6qCwNWIQ
	W3xvGA479GiYibv9hD66D8GNvDOWm6/Gef8RZ9+DbUmqC/8PcNR+CJY1PwOYK248lidzU5dGocgH5
	jQ2paLg4E377YIB+1RZMLjvQJLdVB9JCDvV+t7I5XOecBfHMjOukEE1EoUW0rNfAXG3T8buZIxe+j
	PMqF/FQJXe5b6xk/NhX7I76peyFkQvGLvCBguARIDXRlccTbw5zwN9oni7qaekhBINNxnupzrNniJ
	unx4Dc8Czuv+jxwPpBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmtl-000Zh4-0B;
	Thu, 14 Dec 2023 14:41:13 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmti-000Zg8-14
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 14:41:11 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3b9f111c114so4428237b6e.1
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 06:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1702564868; x=1703169668; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JznIu9lNlIeiTo8wKTcxQuhhJ2zgIwL8Q7gBCogBxvY=;
        b=WU0ol4h+2WA1A8rtjvrqNloqDbVPXfQGHLlf8/DWMEBAjRO4NoS2UNkWlJP4tiMenG
         5iVUyAq7TFGIjnjQaXI3F5/ty6/8sfsB1c+CKgYIG/ctHCbr/e/SmuOjhlAasFKirNDt
         HYxlPqr2pC7nVVEtUr8WPnSuvvMG79o1p6VqSECmbyAUQrHjheB8Z8jiJN60HB0mrn/w
         jYgqFyh0BD60eEqC22wEysc65piSXgXDjue9/aNQk8Kdg+SLMs8BSoCy6pTmn0+YWHOb
         1gZ5O5ig5eC+jNuwga6n0gD2I35yVSGtpQ/Dq9ktLhaayUIpxnV5NRhbrFkekWm9BEgV
         2JSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702564868; x=1703169668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JznIu9lNlIeiTo8wKTcxQuhhJ2zgIwL8Q7gBCogBxvY=;
        b=V8bI+h6ffP5X91zNjU1GH7+gu6uR8Bdt8Lcyc5p+hORMw2U/okgsZ4DOKmhMHRnvQM
         NqJj0Se92SvuSSQ4SlHqUTCNIXI3zLXKxGnQJH8ESHESvQM8GXkx7u+XsXhZ1qyyUQwe
         JtyMsdWFi5CPHETw1CCD5AkrRcJ6MWlexdN1/uz1iHXr7RfEYKVvnS+mO8rpjjYm+dhk
         oKDZgLzdjSPhkbcbzOvV2HQjKor9s6oZO8S9LNCP9aABpESx+/I2ErWR+MvzPi2pd5mY
         QK390rfMw9EaFswVx3rBOjdwTDRmGwQ5KUHwXJ5NHkLr9U/e8/GDOXT/vTJicRobmN0I
         K2TA==
X-Gm-Message-State: AOJu0YzEc5bUGLVib35Pq0S/mKQbHKC6oisYbCDxIF3e11AZTc0EsM1N
	+qQV2j8UNyZgVswHMKhrhGKuSu9nG2vjR6LgtkeNEw==
X-Google-Smtp-Source: AGHT+IH6Z7ttlPWqmsWbeFA/szWdyE6FZ1U9zu49mWSIzwza1ccFf3m2KxsdaL0W2oe0vmgh5g75w+m4VqHHxQxLixU=
X-Received: by 2002:a05:6808:140c:b0:3b9:ff46:fa9b with SMTP id
 w12-20020a056808140c00b003b9ff46fa9bmr12542705oiv.43.1702564868089; Thu, 14
 Dec 2023 06:41:08 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org> <20231207-kms-hdmi-connector-state-v5-7-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-7-6538e19d634d@kernel.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 14 Dec 2023 14:40:52 +0000
Message-ID: <CAPY8ntDT1X-2y7P-FAdw1CsT3SQuxCbfuhG6kPGR=v2KCnoQ8g@mail.gmail.com>
Subject: Re: [PATCH v5 07/44] drm/connector: hdmi: Create an HDMI sub-state
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
X-CRM114-CacheID: sfid-20231214_064110_366999_E52BE226 
X-CRM114-Status: GOOD (  23.33  )
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
> The next features we will need to share across drivers will need to
> store some parameters for drivers to use, such as the selected output
> format.
>
> Let's create a new connector sub-state dedicated to HDMI controllers,
> that will eventually store everything we need.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c | 35 +++++++++++++++++++++++++++++++
>  include/drm/drm_atomic_state_helper.h     |  4 ++++
>  include/drm/drm_connector.h               |  7 +++++++
>  3 files changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 54975de44a0e..e69c0cc1c6da 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -570,6 +570,22 @@ void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector)
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_connector_tv_reset);
>
> +/**
> + * __drm_atomic_helper_connector_hdmi_reset() - Initializes all HDMI @drm_connector_state resources
> + * @connector: DRM connector
> + * @new_state: connector state to reset
> + *
> + * Initializes all HDMI resources from a @drm_connector_state without
> + * actually allocating it. This is useful for HDMI drivers, in
> + * combination with __drm_atomic_helper_connector_reset() or
> + * drm_atomic_helper_connector_reset().
> + */
> +void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> +                                             struct drm_connector_state *new_state)
> +{
> +}
> +EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_reset);
> +
>  /**
>   * drm_atomic_helper_connector_tv_check - Validate an analog TV connector state
>   * @connector: DRM Connector
> @@ -619,6 +635,25 @@ int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_connector_tv_check);
>
> +/**
> + * drm_atomic_helper_connector_hdmi_check() - Helper to check HDMI connector atomic state
> + * @connector: DRM Connector
> + * @state: the DRM State object
> + *
> + * Provides a default connector state check handler for HDMI connectors.
> + * Checks that a desired connector update is valid, and updates various
> + * fields of derived state.
> + *
> + * RETURNS:
> + * Zero on success, or an errno code otherwise.
> + */
> +int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
> +                                          struct drm_atomic_state *state)
> +{
> +       return 0;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
> +
>  /**
>   * __drm_atomic_helper_connector_duplicate_state - copy atomic connector state
>   * @connector: connector object
> diff --git a/include/drm/drm_atomic_state_helper.h b/include/drm/drm_atomic_state_helper.h
> index b9740edb2658..d59d2b3aef9a 100644
> --- a/include/drm/drm_atomic_state_helper.h
> +++ b/include/drm/drm_atomic_state_helper.h
> @@ -71,7 +71,11 @@ void __drm_atomic_helper_connector_state_reset(struct drm_connector_state *conn_
>  void __drm_atomic_helper_connector_reset(struct drm_connector *connector,
>                                          struct drm_connector_state *conn_state);
>  void drm_atomic_helper_connector_reset(struct drm_connector *connector);
> +void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
> +                                             struct drm_connector_state *new_state);
>  void drm_atomic_helper_connector_tv_reset(struct drm_connector *connector);
> +int drm_atomic_helper_connector_hdmi_check(struct drm_connector *connector,
> +                                          struct drm_atomic_state *state);
>  int drm_atomic_helper_connector_tv_check(struct drm_connector *connector,
>                                          struct drm_atomic_state *state);
>  void drm_atomic_helper_connector_tv_margins_reset(struct drm_connector *connector);
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 4491c4c2fb6e..000a2a156619 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1031,6 +1031,13 @@ struct drm_connector_state {
>          * DRM blob property for HDR output metadata
>          */
>         struct drm_property_blob *hdr_output_metadata;
> +
> +       /**
> +        * @hdmi: HDMI-related variable and properties. Filled by
> +        * @drm_atomic_helper_connector_hdmi_check().
> +        */
> +       struct {
> +       } hdmi;
>  };
>
>  /**
>
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
