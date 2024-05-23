Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 932C1C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 09:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o717JS1JLnkO5dVvBzMdwuSk5N6aEDh3YgWCq2XXBwE=; b=FMv/z+xhjBukKi
	OdoU+eVk6Jo66BB+lIzisEBDd2Ji4VWoR4g8g0euogFKyJAJQPxEB0JBASWLUmnoR69g8jtsteUvF
	ttj9yAtH8dE1jQ+Gh56xQfUVtm/ZO6EGRE2CDD3OiOULQDowDWXp8tyhXK6xaKz+uAfjl6FzZHbap
	gKpsrZQ+xqEvrehmHhRjG1zDWeheAXAdQmY6y9XJURBCnGR4Zldq5Ogf7T1dStxm+HE2wUzBhfiQa
	rtEuycYShUQpBPt1xbqpxsWrG1lsfaab7yejjcmEmXJvTbdAcCAlXA7bwb3xUt4vuevAMsZ2UcshW
	TnLeor/z5VinRmCQWswg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4wp-00000005jYN-3HYj;
	Thu, 23 May 2024 09:41:19 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4wj-00000005jW9-0InW
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 09:41:17 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52192578b95so8679499e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716457270; x=1717062070; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ymOIxLRXX6/t992boJGrCdN0THAC8qBuamXJNsylAfs=;
        b=T1qki1J4cEnk/9NUted2Hr2PnKvW4UOy0ftcSzfzxhfqSQ9zbsnuOJx5Xk7gB37W+e
         6l12IYKlU+BhacEp+9YwHw1E8jf5mTdzukkgbnK/0P80Ay/4eclrUowUj85SsTaXoCKY
         I4AIJaAat5SNOmHrlK8En3iD3+n+P/5H3QsV1tMllmrAMHSe8iyc+38E3pZzli/7mwSd
         bkBIZ1+WajQ2pMYs+5srgDsYwRTj4xTNqNZ3X1H66i+2befSlCxeUi5Wtl63YH8JEWU5
         p/FstgbVx/m0W+ubsvkTZh+FwgEQYNukFCi7yGlclfbOXbvfG8izsyFxMHGbUo67XcKL
         j7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716457270; x=1717062070;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ymOIxLRXX6/t992boJGrCdN0THAC8qBuamXJNsylAfs=;
        b=OSQkOWHvA8V5mgldQnmdmaPPCHxqw5iRVkSGY6tVNGRe6BTKTg6stcS1BY3kA6u+tf
         Ekq8gpA+0uz2FZhTwncgC/5nefcbO8lJlrMvwDg+kRiohNGlnot9IumqXNCPANvqrbLt
         zlwvhJg+LSmih8H2Y7HJbBPrn07X+YunVD8dIdy0t+Fs2Bn6OVATzr6Ye2JktYedqlay
         HbltIBavvhehYDIffGCr6dMFWVk0DFxKN1KI4muGo1kIFC37Ckr0aozodMJJHAp4evLy
         epmShJ1vWZa/9dcRu2fj0BrXjC4/EWVktVGnkSIwZr41fqWtLBOSh5BmvnMcEKNg2rdc
         6udg==
X-Forwarded-Encrypted: i=1; AJvYcCXIVMpBLUjHFJqr3FUfcDwo6cUt/fpQRvYhzcNuCRteuVm2Fmvj38K+IYscr2hTU2g/5J4KrFue/vkEQJ4N4MOzlMdHODwDk2lak7UgbPk/uf7j
X-Gm-Message-State: AOJu0YwtnaN3poRuLyiOzqJyY4BnYxoeDpbAkX6tudZFkI+4mpm7x4Zz
	kfR7nryPwBGKOvyqpRFVjGMSs6brcRO5QbQC83e+QBq2nFWx9Zml9bSIHyIIBTw=
X-Google-Smtp-Source: AGHT+IGDBnS6Yxc91Ez/LJRvHEhoF+0Je5SmLoZcaOOlSUX1bIaRGc7t5bjpMnVmIRgP+hN+dWcqmQ==
X-Received: by 2002:a05:6512:611:b0:51e:f1a6:ac39 with SMTP id 2adb3069b0e04-526be6ea79amr2624505e87.12.1716457269807;
        Thu, 23 May 2024 02:41:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52394a319f1sm2983965e87.64.2024.05.23.02.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 02:41:09 -0700 (PDT)
Date: Thu, 23 May 2024 12:41:07 +0300
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
Subject: Re: [PATCH v14 12/28] drm/tests: Add TDMS character rate connector
 state tests
Message-ID: <ghotwzdstmtpnovbmt2fgvxxkcno67hfwydzjzbyfn6dkt247c@52ycrfinmimo>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-12-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-12-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_024113_139091_A23D40B3 
X-CRM114-Status: GOOD (  11.81  )
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

On Tue, May 21, 2024 at 12:13:45PM +0200, Maxime Ripard wrote:
> The previous patch stores in the connector state the expected TMDS
> character rate matching the configuration of the HDMI connector. Let's
> add a few tests to make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 166 ++++++++++++++++
>  drivers/gpu/drm/tests/drm_kunit_edid.h             | 216 +++++++++++++++++++++
>  2 files changed, 382 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
