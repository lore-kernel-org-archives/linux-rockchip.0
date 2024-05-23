Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE948C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSZjVjs5bCb8+dVu2JMAZcFi3fvnM6AoQwrIbxtk+GE=; b=oaFdHeLedye3v5
	47vSdqFaEgGMUvoXk1xGvcUPPHz5dRKIMchHWowcxBiMtcCHbz45VhA4DYxVKM8Mn8+y3B5vB6YWE
	cYF71HnrkHQMte/XF0As3S6a/xleHalvTJc6jpjuGtozfHB+CQ3tY/VuhKsnDzBdY/T/Lhu3SHTLJ
	Ou4n0SKteEzHYAAVK1QwklRFWzosXB9lFzCGR/A+oRiSoomrEW5o7Ha3zayOA58c3+GiSmQtn1WLU
	YgBG7yFPqjZgOrm1s2v230mF4rGfRogfni2QN6EY3qwCDRKV1WZXIZ+XsI+CDZMjPx3nQJdUiz1Ld
	nopWSZyTdx7CAt4toi8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4vX-00000005j4u-0Zz6;
	Thu, 23 May 2024 09:39:59 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4vO-00000005j2D-2RqP
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:39:52 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2e73359b8fbso41455421fa.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716457188; x=1717061988; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nZr+4M+DoXpeV8oSkkFyzaRfzRj8DnnoccV995epHpo=;
        b=RHdZpL3As1EHSy5FUJ6Yn/efYZzotRQL9wGu0/gQY2wOTLuKE/G/wy9iQxV21kYGs7
         eEtLbU/lScYyeBN2MdSXY7LFyyG+mSdYv83ohwZnFEoev8gUuveRC/Mj8OpBPMkaVBNx
         9mjs5LACpDetsHae5jv2A33cHDFZKIN6kWhkHyRAabHTdFUCFpMslLKL3pm/7De3kcSh
         AaMDPyA3gRGuyXpyMSLvRsZy0viW0whXNYSLGXYvzFUVYIGHmaCfDsoEcK1rWkSpfoIh
         B7BOcSS9HwDQl2r/v/3Q4cLNc6L6mFmn1AaBkHb+YcIXwI9JHfEW6lxELvOm9W9kjTnH
         TBbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716457188; x=1717061988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nZr+4M+DoXpeV8oSkkFyzaRfzRj8DnnoccV995epHpo=;
        b=i0I2NtN9gw7lW7so6SmkgSS/LR22KOGay55C++FMDnmREOZTQG2mTWbGjsEIJ/UGP/
         aofeBp2Yg0gWXpK9SinmDJkwA0Uva6ChKZEb280WRYRDdiTMMxjENrppx2tvxhmuinEq
         pti3rq9sNBpQVhY+MJG69jFnjQGAjYb/aRI+W6w4oGrLe7e5f62YQxR1GMBLpu5XpqdW
         +4xnN6ILw8rajC53RGg9Vtd3iYi6E/7UfmMdOfyEveGkRqW/gqOVNID76ZPx/07owRnT
         e1hOW92FrCFwBakNHnUlI34+UCS6FvHYlPYsW66WdQDYnOwgKxdm/cjrf4haaUraazto
         pxIw==
X-Forwarded-Encrypted: i=1; AJvYcCVCBIjQRrTSxwbFTkla3+nyAEXgTb1irMsIw9is+8U0RcO72WI5dPibjsDlhYWjGs3tiA+VdHHuuS41DBjbXkveCzbYBeqga+YGp6/4IdspmwDa
X-Gm-Message-State: AOJu0YyhGH5z5TIOIGzKQ+l891AsA+fSd4k0R0DLnNmTog8i1gIqJxBx
	Z8nurR8CCa4dbv4AZf8oS6reVlz3evZukhEIn3tWpQD9d1yuRFnDEeVS1fFlois=
X-Google-Smtp-Source: AGHT+IHZxrSIuUr68retAsDGyT49V7Bjyk+0v3vLZlctFxxYj5K8ZOcu4gphFsf8YhaZBtcNl5CRiw==
X-Received: by 2002:a19:520a:0:b0:518:eef0:45c0 with SMTP id 2adb3069b0e04-526c0a68dcbmr3895711e87.48.1716457188090;
        Thu, 23 May 2024 02:39:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f39d2c63sm5212392e87.278.2024.05.23.02.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:39:47 -0700 (PDT)
Date: Thu, 23 May 2024 12:39:46 +0300
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
Subject: Re: [PATCH v14 11/28] drm/connector: hdmi: Calculate TMDS character
 rate
Message-ID: <2drjirwwj3cwm4saboa5qnhwi7wev5gnilg24u7svz2iw3gtef@jainjgtog3uf>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-11-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-11-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_023951_312441_598FB2D8 
X-CRM114-Status: GOOD (  13.27  )
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

On Tue, May 21, 2024 at 12:13:44PM +0200, Maxime Ripard wrote:
> Most HDMI drivers have some code to calculate the TMDS character rate,
> usually to adjust an internal clock to match what the mode requires.
> 
> Since the TMDS character rates mostly depends on the resolution, whether
> we need to repeat pixels or not, the bpc count and the format, we can
> now derive it from the HDMI connector state that stores all those infos
> and remove the duplication from drivers.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 67 ++++++++++++++++++++++
>  drivers/gpu/drm/drm_atomic.c                       |  1 +
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  3 +
>  include/drm/drm_connector.h                        |  5 ++
>  4 files changed, 76 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
