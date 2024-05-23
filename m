Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1AE1C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 11:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clK5P2/cPCHanXh4E/p43oqKud/0MUkNshcVpenDWPI=; b=iP3VQvNEZUUK/W
	ojbtwGBA4AtTsUhTxegO7gnG5NOUti8y6oN0rHyNnll03Alx7S0J0C0tVycfuFs6ONdaP/oDgRpfK
	KgWqBlX/cAJJEjc1DEp19GqQmpMbtvghXjEfzYb93VA3HMsdv9qSHiuJBCiadznGzzYvYLfDjzs7y
	H5L4i1KU9ZrVIW/bHsLEazBIu1y5+sXvZr5Q75WtNSjnxvwhb3n2uR7siazyH4AGE75oDJ+L2viin
	pRRMETX1f55QViRVeXlEH+cHCr0z+i7dScC+7thbIS0xfhYYUO6y2aJGXi34y+iFe5FO8nVVyw/u1
	5HXSkVDDVnJGh4KXIVAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6u9-0000000650c-0e0L;
	Thu, 23 May 2024 11:46:41 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6u6-000000064zI-0I8Z
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 11:46:39 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52449b7aa2bso5040416e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 04:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716464794; x=1717069594; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uprefhCgqHmgRCR+cfAZCBDosMSOOYvyqNmZZJrA1vg=;
        b=CVeHYcJaEOaMz8R5DGn4EzOSjxi6P+GBriP8QASnnD2BvnuV0dL/zurm0VPxl7Cyrk
         de0QkMv46AX7GKLqaRCDNBxMAzj/FWEyf2Vd8jFGqFRVmhXNxpTQhbrhfa3ql/hsDaU0
         l6Wu3uU/HAGNy4T0zDdEjVW2wgYBZtEWl1UJy7RVl0uKfzi3qGvVDcEgv4CbUCd72rt9
         OkApQaFmK9nxZd6xdO2R4W0FlZLLS/QXDOEmh/GP5iZLAWYDonrk2aHm2j65vPtdwQbG
         Tv+k1Iu0B8kKfehftLjQW+/1fCzutwtQfGcABFg8hixCGId+LJWdJ5ljx4o/VoSp6rAa
         wLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464794; x=1717069594;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uprefhCgqHmgRCR+cfAZCBDosMSOOYvyqNmZZJrA1vg=;
        b=LbrUWpExGWN6qRSqiLaXmZEiM/JYJwWA3giN43L26uw3iLDyrEY5o6s4ZsraTJzcaq
         yxDTEKSt6BZcKhY+FEQmmr6pmO4pwky6YW2vwYkb48lGH0Tsq8NArYm4bjz6c9qw1+nj
         L3tRKEBscydlHfx0jP8+jZGQewYFnUQU+sZXs2ckFkL50S4iF6zw2dPFXnsOq/XPzVLe
         SE6jmKsIqMHTWgcjaFfgbSAo267Oz3M90pLig9LxsXeupjDtDwbX/KGUYFYHG+BYnuLS
         KlKIfIftpUoe9lLWZ0KrLxV+ogwtJizZ1x2gBXc6ElEjxwZSvpI1rW9R96Gc6nice81L
         Ob1g==
X-Forwarded-Encrypted: i=1; AJvYcCUExqwUV5n0LvHp6RiJimIe7fGxBXLknoarVn2MRPEPxXZUU847R60aCFW3DdOFClFa+g732GwknYdw2Yu5I7q94NlBKFg6kBPnT4iYkeB6NVcV
X-Gm-Message-State: AOJu0YxM64qY6rDHV1ibRKFVRYeAy4r9ve3Qp5LHS23PGKDtL/FxCqcR
	EE7aj4aupg2vpS7BViKtnIbAysdYgKHPvuDHkm1z4VxSiB3ClOAV4eLR+ciid0c=
X-Google-Smtp-Source: AGHT+IGBiL7Oiztj/+dmQv4BL665Zqfu967E/8LJRhUrFe0HkWUk7uqDb6+uR4EPIq2SDZKgH59zZA==
X-Received: by 2002:ac2:4d1c:0:b0:51b:248b:e768 with SMTP id 2adb3069b0e04-526bef87adcmr3053749e87.25.1716464793664;
        Thu, 23 May 2024 04:46:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f39d2c84sm5319149e87.282.2024.05.23.04.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:46:33 -0700 (PDT)
Date: Thu, 23 May 2024 14:46:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v14 21/28] drm/connector: hdmi: Add Infoframes generation
Message-ID: <e47uh7w6fxqdtio5qwgv7yro5mmywhbjj7v332ts4thzzg3uk5@ilke33oaczgj>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-21-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-21-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_044638_132519_060429D8 
X-CRM114-Status: GOOD (  14.29  )
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

On Tue, May 21, 2024 at 12:13:54PM +0200, Maxime Ripard wrote:
> Infoframes in KMS is usually handled by a bunch of low-level helpers
> that require quite some boilerplate for drivers. This leads to
> discrepancies with how drivers generate them, and which are actually
> sent.
> =

> Now that we have everything needed to generate them in the HDMI
> connector state, we can generate them in our common logic so that
> drivers can simply reuse what we precomputed.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 336 +++++++++++++++=
++++++
>  drivers/gpu/drm/drm_connector.c                    |  14 +
>  drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |   1 +
>  include/drm/display/drm_hdmi_state_helper.h        |   7 +
>  include/drm/drm_connector.h                        | 111 ++++++-
>  6 files changed, 480 insertions(+), 1 deletion(-)
> =



Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
