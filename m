Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17AF7C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWkG73KRgGNNNMsAAHbiL+zJrmNo+151SPWOZgSBikk=; b=YRTFwFMT+AjRh7
	Ilk0y6O2519TgCVXa1I5kuShitTgFCzrBy3+xQZ49/25o7JxgYaPrpUzwYyd3cuFlNMhf0zmpNspQ
	B9u/QQmpABFbB/phF3iT4hxzsTIaEw3o5VJVuyNXXriiY2xkmksXj+LnwThc9Jq3J5sEIUjEdOki2
	tt6ipsGffJCr4CFDFYxC6KXxff+X3OL/sGOKXcPoelaGp2y8OA/cHQxAzxc8iRd+Ymat4TOatn+CD
	J0iFlSnFL8NY4S7eWoXKg3nccPEr7eNnCSSHELUVvF2o2JZ49zabB5cL5eNUPUFuFn3gQrx1bKcIy
	fSMzymWr9JQebwn1CarQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5Is-00000005nWA-0QWv;
	Thu, 23 May 2024 10:04:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5Io-00000005nV9-39WY
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:04:04 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-523b20e2615so8724201e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716458641; x=1717063441; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TH/BUWVtxkmUJ13gtzS4sCxD7fWyObo8iOIYwJa0PIw=;
        b=M1j47aPYHmJz0CZB1rx5HCQr668G0ifAl326m/uzG1dc0R8PdrRI/j0LJZLbFBwNJ2
         ooLxGZmJqF4gseSf/BMCWR08ILPadIaSdN4J1gUroK8c5sqShPv7xI6Sk45gVt9Yrgas
         WkyiXQI7nKcRQfYpwPdIYKr3SF224MYoFM0FYQ3Hg9jlUXK9X6Uqg6DZfuSiDpzGJ46k
         UdmTRfNVYQRZMy42OztSfxu+gbYOBYXT1kV0TfUYNKLmxrpjrbsNh14ylqnrdWiARCPk
         g8nb84AdJvyR3NFcQKAj3LlgQNG0tO+8lYj4WyMFYM8hOuUO78srLw190dPftXiHufBh
         XXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716458641; x=1717063441;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TH/BUWVtxkmUJ13gtzS4sCxD7fWyObo8iOIYwJa0PIw=;
        b=uP6PSW8Q6OfYd8KppwUYbz0kEQE9Scei+THhNSP9sOziZ04BYiab5zv7va6E604ueT
         SMGNM93PKI2zaPZcg/KBuSnffdI08LYrsFGgLhnLXmqfBOmQBsXLpwodk/1Qv9mqaosw
         nZvMo1UOPjqDOR1W2LnLFJUl6CGpbZUguYsMEO6YpdL+Z6rcZnUqvC1nUi21hmQzmApV
         YTSqQ6Jn68ueUUbab6Kt6QiQ7ggCsX7B1mlMwRSacX4Nu32y7+ff7HnOSVEge6gZOkJT
         B8RmXK/kBSI89/ND8HEjeJ8rv0JY+kF/kL5OC1VJBXdaGynVIktapMRU9R5h4rfUibFc
         Askg==
X-Forwarded-Encrypted: i=1; AJvYcCXxaR5UW5qi/35/bEig5zxCFokaB3CW3DwNMFY7DyEY8NJzMDb4vNvR1HjmWvlaHQ9EMbPM2686C41hqywwMKzj4kqyU+D0AZFHuo/xPyfDqFDu
X-Gm-Message-State: AOJu0YzUp+ydnY7GGvepZul0Jso5trB7xzY6iSHaN/whxRneomfCMOqT
	V01Tq4vw117hMrkzPIItovd7SfP5Q8wKGM7etigE7qERKJSKKe3vTHhtEX8GWNU=
X-Google-Smtp-Source: AGHT+IGlpqecDFsJDGKpUD/L/07fSwQIVn93IEsQGl4tYZ0BdBGomkd7vGGiht1/7leKlSP/ZRYLZg==
X-Received: by 2002:ac2:5930:0:b0:523:89b0:9b64 with SMTP id 2adb3069b0e04-526bebb45afmr2452653e87.7.1716458640738;
        Thu, 23 May 2024 03:04:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d8ae2sm5423836e87.204.2024.05.23.03.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:04:00 -0700 (PDT)
Date: Thu, 23 May 2024 13:03:58 +0300
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
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v14 13/28] drm/connector: hdmi: Add custom hook to filter
 TMDS character rate
Message-ID: <hjz32n3wokppjxdpzu2lsoypno2dy6thi3tfrkhy76g7v2a5aq@5hjjd52fsqup>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-13-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-13-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_030402_827099_4A93E0EF 
X-CRM114-Status: GOOD (  14.15  )
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

On Tue, May 21, 2024 at 12:13:46PM +0200, Maxime Ripard wrote:
> Most of the HDMI controllers have an upper TMDS character rate limit
> they can't exceed. On "embedded"-grade display controllers, it will
> typically be lower than what high-grade monitors can provide these days,
> so drivers will filter the TMDS character rate based on the controller
> capabilities.
> 
> To make that easier to handle for drivers, let's provide an optional
> hook to be implemented by drivers so they can tell the HDMI controller
> helpers if a given TMDS character rate is reachable for them or not.
> 
> This will then be useful to figure out the best format and bpc count for
> a given mode.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  9 +++++++
>  drivers/gpu/drm/drm_connector.c                    |  4 +++
>  drivers/gpu/drm/tests/drm_connector_test.c         | 14 ++++++++++
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  4 +++
>  include/drm/drm_connector.h                        | 31 ++++++++++++++++++++++
>  5 files changed, 62 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
