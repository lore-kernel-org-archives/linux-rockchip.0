Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F279C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 11:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsYw1PPcPnLpY+p0RIv5qE5uUkglSZk1muDj8lCpHcM=; b=fn76mfQDDz9mu7
	fbNewcxWCc/tnY2VWcKaZC78ka9oeUGl/uL3JyWv2mW+zb9d+YnEMT6p+SBISgp2arKQAuTQ4orie
	XX3qvdj64aQ0zrpDTbWToUPP4UdBKv1LvuJh5SxOqGawHIp3t4KfXCUMr+DkBVIFCf/LBKXIGYAvm
	5RpsrK3EK0U0NusaNdVQBs0CLJy2LNyL15WwYc3EfGZ9NdVn3+N2kDMEA9qwbvn57k4lgtajEX93l
	L4RJh3ZumsE1rQzXwNQsdKkMuXSsEWmg7BXXPYeH7N523jAaBqZI70M8OaegOVlBaOAtg56Okl9+1
	8FKk0rDBrnCu3L4nqTyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD184-00BYnE-0q;
	Tue, 12 Dec 2023 11:40:48 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD181-00BYmJ-0N
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Dec 2023 11:40:47 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-5d8d2b5d1b5so39728387b3.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Dec 2023 03:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1702381242; x=1702986042; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0iUPBvo8eOmT//4vl8DQjGC5UmJmCx85Al5r4t/jUw0=;
        b=a8B1/mhz6XE3bHOh+oHlpS2fi38sid6BvXxRYrNIxf+jXTCj55MIZkdADDcZ/eiENx
         pVROUGyjBRrRoyz1CTBjLyZMLa968Y8rslvJ7rDYJ6IgreF+iI1bz+KCqrB3pYSbT3kc
         tCUN58R4I0Eo7iHHuNU9gfC2bfa0zlIfdPJhWGIvwpUSAtRA8jWJoUCb4Az9NSv6R959
         t+wS2fF6Ro45gvBgigcT1MBeW3GdhS50hsld2UxFvq80lb0gF+8a9Ca4G/TwfUFi4vZO
         hAiY/YLYXJtJ6KvaWBa7WV3Qvf95TGyjA9zQmZXYnlXdYPpjz9WywKn0g9poFDZLsTBZ
         daRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702381242; x=1702986042;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0iUPBvo8eOmT//4vl8DQjGC5UmJmCx85Al5r4t/jUw0=;
        b=OO9WoEOSDovhig7pWoZUNqyq5HZYM7A6FCHIYI27pvrvH4iZvubjyGiUWSSgBQ9Q1x
         vwklPql68/hUwGag8+bWC9YSLcDFY15WQk9PjjgPo0r8PR2OMiuEbaC51zoFUKGHzdzw
         ETg/cdrhL6VoQZ5ravWPenveDHzK3VHRTrBxGuePF3rPv6IgQeawIjllh5/LXk1llDkO
         ZLgnRO/JEsPLIn3I4geswK/yte9jKhWYgSKlyknl37MXDq9fnBaTSKhob4NsgdSMYbWK
         YCbfdFbswAisP2imT5NcIQfloTq8R94UWhEi85t3G5ubRAcwr879L5h0qrLGvKBcH+Nc
         z3Ug==
X-Gm-Message-State: AOJu0Yw5Oqo4TuFIh26bIFXEhpaWWAp/kXUWH02vJ89zerB/Hycc6lny
	rs/fUSVNksAHoUBbVhb138jocm9qzyuKhUab++jnOA==
X-Google-Smtp-Source: AGHT+IGkFxJXB+75F7npYS3Sl7fcGotb27eRrk6u5Q+tryG0nLGLjgw4n/C3z2I9FmEbcpAIdKRvpPS2VqJqFmY8cyo=
X-Received: by 2002:a25:ce8a:0:b0:db5:47ee:47c4 with SMTP id
 x132-20020a25ce8a000000b00db547ee47c4mr2442389ybe.53.1702381242014; Tue, 12
 Dec 2023 03:40:42 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org> <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 12 Dec 2023 11:40:26 +0000
Message-ID: <CAPY8ntBe9RfSjdnd5Smx23La5gQaR9WqY8ehXQyp=4D_11N55Q@mail.gmail.com>
Subject: Re: [PATCH v5 18/44] drm/vc4: hdmi: Create destroy state implementation
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
X-CRM114-CacheID: sfid-20231212_034045_154877_DE42D213 
X-CRM114-Status: GOOD (  18.90  )
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
> Even though we were rolling our own custom state for the vc4 HDMI
> controller driver, we were still using the generic helper to destroy
> that state.
>
> It was mostly working since the underlying state is the first member of
> our state so the pointers are probably equal in all relevant cases, but
> it's still fragile so let's fix this properly.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index 25c9c71256d3..f05e2c95a60d 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -672,11 +672,21 @@ vc4_hdmi_connector_duplicate_state(struct drm_connector *connector)
>         return &new_state->base;
>  }
>
> +static void vc4_hdmi_connector_destroy_state(struct drm_connector *connector,
> +                                            struct drm_connector_state *state)
> +{
> +       struct vc4_hdmi_connector_state *vc4_state =
> +               conn_state_to_vc4_hdmi_conn_state(state);
> +
> +       __drm_atomic_helper_connector_destroy_state(state);
> +       kfree(vc4_state);
> +}
> +
>  static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
>         .fill_modes = drm_helper_probe_single_connector_modes,
>         .reset = vc4_hdmi_connector_reset,
>         .atomic_duplicate_state = vc4_hdmi_connector_duplicate_state,
> -       .atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> +       .atomic_destroy_state = vc4_hdmi_connector_destroy_state,
>         .atomic_get_property = vc4_hdmi_connector_get_property,
>         .atomic_set_property = vc4_hdmi_connector_set_property,
>  };
>
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
