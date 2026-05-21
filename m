Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592C5CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 14:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+7ogQ0JZvzJQ1qLVC+WnBvh56dzkyhSkYSkJPgEUdE=; b=vQJRYGOybmXDp9
	xk1H9L5MMcTueSu0X7w0bl5+Tpu+i3uj7rZsRNSwD3z9ZI0Jgs/TGx4R2EWIRN1CC59HX4TGXimBM
	hKHLPtqBGeB+f4SppEyUgj3Byrf9UBMy+C5jr43lZ6olNW7PKjfZzgSPK+SC51uUzNH7DgUJ5irlG
	gER6npUz9b8k3SlzjnXeoXsxOwS0LOQbrvfgvJ8x/e49VFPTtLE6lV2fXV7FHkqiVJgtUUmH6sijv
	sfOV1FgFRNeA7sNXv4gYotYhXcIk1noQ76u2hzmLIKSAq4yKNAs4Exwzd9IJihNXaKQM5HhPjc8yJ
	m3ZBa1Bo1S6+8r0nOlFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ49D-000000080p7-2QGJ;
	Thu, 21 May 2026 14:13:17 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ49A-000000080nk-0QfW
	for linux-rockchip@lists.infradead.org;
	Thu, 21 May 2026 14:13:13 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-83659d38e38so2460114b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 May 2026 07:13:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779372791; cv=none;
        d=google.com; s=arc-20240605;
        b=Oi1f7mu9+Wp6I96JCLYt6VeSfxCaSl8Evl1ZtgrYqYZ3gAVN3yfd5xuPjUAVVB64sf
         TFxnZkEQkfqUJu7eGR3bOJ1ItfBeurNaPPCNdjOjwupwwPMYr49VKtyr0yLOKXPl9fLa
         eBj1SikmDFQFS99UtrgldabR10YENxKNB2JFls9jNFsj6VHbozL4/ToLMrBZsZEVjzpl
         95RkUzBrkaFCVwm3WdTJxFezf0Kp1zCPhcQAI4WBDj6U/VyPQ/Bva5fGFnS80g29660c
         e296wtX/HnzUwoYfX7nqRv55zkpZle4yBY1XM/qjRjHIydjcFR/VJcNoH6wTvOkRfrDF
         EqzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
        fh=7jy+NHfRTZS7tE8pHAnl+YhyTxf8eYBs0+A9fg9yKqU=;
        b=imzbLpJ26OR8VVQxVfQf7zQeleGYGMcAk3Ovf9QFTqQzYDJ//noRDTn8cT+GUKt5+C
         r5FUTgsxThu83KCITOvjBCifC8jXuIP23BhZ7dlUpr0dXdwOISfW9RlLbWEGjhl4eCiS
         KaK11HgFw85eh1WPLfJb7TFvlBtfXdbrxsDgT7mbuOTC6eZ2eYA7tlp/vAjSFAA0MNsQ
         z5lz0m5uLrB3rxkEpFLtRIJ2CQHAuAcPk59aMhpCMjeA+D9s8fsUz1KNsfxRaafsQT9B
         UDZUItnKcpo/y0qmikp4Fpemf/vzX8jl0FBqCGO+sy6mJfvxMKFgOeRh2/xoM0zJ+Fn5
         ilwA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1779372791; x=1779977591; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
        b=GUutfOcRES/snWK/YVyKOW+mztLP7OrYvWicOOTeOdznQNrLmm1y3WpUZQxC3fDGaw
         9WDsDTfsTp/DrMgJxTjbOFrcM/fHxn0fTPAK6ItIeqD9qT8B2UJiHGcXIT/UIeYzn2vZ
         SX1Fkn8GMZ+BduUTbJZFYv/cZUf4GCoagBcllphyrQRS6l1Kw2BV12ZgjEnMmeyqVdYY
         eP3Uv2Ue4mLXUfxaA4RfwroJS3c/g70OJs5Zk5YE9Lu45fVOgBoYLmnl4luokH/zHoxO
         Y/GbB8AGaAyvuRbgy8eC0Cc+KU2jm8YCD+P30D5jI7xHTyxVHnab5tQULKABb60W2flr
         phuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372791; x=1779977591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REP4STaURwNBwYLUxnT2eThrBHI2vGspRNmg6btJygo=;
        b=HIoshKpsvGB0uNs1pSQtFU3E10RkG/xeNyQOdSFnf4WLU2VVtzgJwp6g8EXTbXOO4z
         RI5tW2ZUBp06bxXCEaQcxN8yB0lyDtlqEzHbvujtXn4oLQBtV3IUWcP1lxBayucxxBK9
         tsLWCZTQXwfbM2ZfRZ2KLAasDVfRVQ+wqzdX8Vhhh7E7RFIo1nTwcVZU1sXB0qQA7p5E
         DN/nIb1akjyqFpdAgFj/itnKX8KHDwfgyn1vDVTCoa7PRleRtzcSWO8D985t5j2M/Dfn
         6Jbeh8zAVfY9ntHan4izsvsnsDtGNYa7FjCjk063nFtmOyDNGXYpsNgvmlZssUi5cJbL
         OS1A==
X-Forwarded-Encrypted: i=1; AFNElJ9zofMl7/a3SCz+76IrefuWsiDXpNod/8k8GTivzxV1LmB3UP3z/SdHdAI0ll8oYmRrNLjlrRW6O68Kffn4tw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwnfBTZ/NLso7svdjE4G0m7DHfaQFby7AZNsnX1MGi6Bql138w3
	qX91kQcUYp8BRGqu/0TYTWRo48SdlXa6lfN3ZvMGI9ijErSfKQr6ceMVOaYbOb1lwpwHCL98aAm
	ew4BOVr5jqsDOAxL/BTEQDOYnFwHmMwlrTz+x63A46w==
X-Gm-Gg: Acq92OGObGyH3pokGIKvc3GntWh3CAs+P+CqV9MQTWMcgIP3S0Ez58azJziOkb0Lnlr
	c7Yc1HEIo1I1kpM4jfvYdiL4Rqh0qdhxlWIRHQdf1OcMthaz5Z7cpsSbX+LS5owHeNtKHm19Tz9
	Tp389PyksthQucYW5c32VKmqVApR5TjBQQNgR8tfOmDlE3svf1fOOqXhF0OvsZrhPaOZbxEOL6I
	SI2dCTuhO8l4n5bbDhLHCP+Mk/OiTppahAZVmU/rPfKCGDUK4a6OsXhmic6U4Q7qIdupjsLkRE/
	wdaRSKCKuhQoNYUkVZz1PBAqaf2TXh6hMtOO3GQ=
X-Received: by 2002:a05:6a00:170c:b0:83f:2568:d45f with SMTP id
 d2e1a72fcca58-8414ae0067emr3410992b3a.23.1779372790773; Thu, 21 May 2026
 07:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com> <20260423-color-format-v14-3-449a419ccbd4@collabora.com>
In-Reply-To: <20260423-color-format-v14-3-449a419ccbd4@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 21 May 2026 15:12:59 +0100
X-Gm-Features: AVHnY4IhuE52xfR4O7ZsBvGU9UxEW_nGPaKeUuOJKbLW6yd-ftNZQIcte9EpFTU
Message-ID: <CAPj87rOgkSAhVzzHyuKEGPxVYeDhJKLGVNrBA2BkG00gvMJjYQ@mail.gmail.com>
Subject: Re: [PATCH v14 03/28] drm: Add new general DRM property "color format"
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
	wayland-devel@lists.freedesktop.org, Werner Sembach <wse@tuxedocomputers.com>, 
	Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_071312_281871_DCDDB41E 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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

Hi,

On Thu, 23 Apr 2026 at 20:04, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> +       } else if (property == connector->color_format_property) {
> +               if (val > INT_MAX || !drm_connector_color_format_valid(val)) {
> +                       drm_dbg_atomic(connector->dev,
> +                                      "[CONNECTOR:%d:%s] unknown color format %llu\n",
> +                                      connector->base.id, connector->name, val);
> +                       return -EINVAL;
> +               }

Shouldn't this already be ensured by drm_property_change_valid_get()?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
