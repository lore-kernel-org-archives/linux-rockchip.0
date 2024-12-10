Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D9BE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 23:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6V7/1HaC6Bbr5E85XQOipoH930i11z7sl4WhrsKz8ys=; b=3NBVgHmQ0LP0Cs
	1Zhm7LnGUbsZH5L2fOkbI7dVLS9RdGMbDU2b76q2hRPBWuzYU77E8bs61Vg65Z407MWp0d05UNyNs
	fiq+tI+ARkZqCcl/CPmJgowaZPrDfPNMmmeJ1xWoD6MBuOEj+yn5vE7VY54bjIyzoHiUreouYbK6J
	aij1zdjw0FCB2bYzkfrM3pQ43ZPJQbej3MC4k7c3ssTj/0+7CZ+4pXuT+sWv0rU/b+YPE/557FNOv
	WSsvgMDIQYiyVJn7HCsHZY2awbuj6ZMm6USdGCVskWmlTR2NOhNNSRA/0Kx/XJ6+9zTEF646CerkV
	V/Ai7oBZAwxJ8VHdNllw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLA4t-0000000DCzw-3r3G;
	Tue, 10 Dec 2024 23:55:43 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLA4r-0000000DCyu-1uNq
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 23:55:42 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-540218726d5so2262614e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Dec 2024 15:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733874939; x=1734479739; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QaZTccrFdwBnijOAV+VQJ0MabSTqdmlDkCUExpbfNic=;
        b=ZAbVpsauENlwEkh8LBeQJmZfY18P2B3+IwdVjObSKuc/kTtrSRQKL+ww+/KfHg+lJM
         WSg5tPlsRfqI8pJPVRO1hSdSik9zOT9hepak8Mukrq4kjolSS40OvzLhmB5mbjj/RF7l
         rz4hOmvQyF0zxDmRWgMxVyyCouQnjtEDgCxs0n4in24vbK4kWddYSA2f1oEBvlBL+f3N
         PKQ6lyHcC4LSKHJhNbDQmMzfrCSUdEWCtPEyJDsPUrs8I4EPkInBTieyAsvqCCcbAAMT
         6//inq5qUGGLAEJsoHaXGEsXAU7WenglbI9tAKOvg5Lm9AyNsXVJ1L8XDWoikkvwydKo
         U7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874939; x=1734479739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QaZTccrFdwBnijOAV+VQJ0MabSTqdmlDkCUExpbfNic=;
        b=LUWl7+nyYOoxLLm7uOfI9o29RBc1gkAg8egHFR6JTvzle3SShv/c/uGqzKfGwliK8U
         tGEVisb10wK8ybj/2KxbPJXYT6XbIxgeqUvS/8xY8YWrdm8b0/eEIRpXxFxhJCNNThcH
         ORjWav0jHFM/FGdHd3YEcpnWhJXbrCczVuQk3rJBptUrr9x0QiFCeOsOtobpOQq3a5Ov
         b0LRZnCvSUen2LdtAPVPiMEUYcvm8qlwZ39e5BaeMV1kqs4GXLbNphGAlSg8i1X1Agsm
         U6m/g7k3s2V+en0xItcukpnt+bhDlb9o0Ve8rJj1UqIBQqNIBV/lOJ0f8vdjHWrH2/H2
         zsCA==
X-Forwarded-Encrypted: i=1; AJvYcCWVXAtLt/IJvqFYFkZZzm/uv35nzKaPLBxbV9j6TMiyYbBBt8nDrT3io0t59JD6uIzgFbM/7CFLbmnfB5DPLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUhN83uN8Ef2+0WH632yq50UAqli0DdNQxSqz+7+RL1L3QaXi6
	j37IpOML5OriBO/WrRNijC6nfFZTGL3R7ZowNbtxr1K5FBzc1d+xuW6ARCLN3N0=
X-Gm-Gg: ASbGncvP6IUr1zHtxkqgKCFF+QhAW1fUdJHrg/CgLMKWODHLls/2m4/q+m3vSvadyXW
	NdQy6FKkcUXq/badeR02hGsuFmrf1oGttKeQ8g7MHAzsYod/XkiaIs/wyormWtVK3w+QfO0vjpg
	ak/rhfqNTtxdSmF76ngb9IvZLUrWrpUku07vhCkLlc+3fs3ECT9oArSrbbzBWQnn54I3JSPq7oh
	dVu1jc50WNYHua0TkJ2TYl9PXwR+eSm/3lw3QZcCQyn3ExfLTSeZCd2h6+o3utNrxP88lyncsrV
	hhLxP37piSbTaF2FGNopYfnQCatDEUmC/Q==
X-Google-Smtp-Source: AGHT+IEqR0S7rTS9VZY7JOisSWbtpL7N6GcbvhCke9+P/tEVld1+jhG0IU1pO+4oYFJYfFY5K9gtWw==
X-Received: by 2002:a05:6512:ac8:b0:540:1dac:c042 with SMTP id 2adb3069b0e04-5402a5d6c4bmr171539e87.8.1733874939550;
        Tue, 10 Dec 2024 15:55:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401a5360bcsm1065405e87.174.2024.12.10.15.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 15:55:38 -0800 (PST)
Date: Wed, 11 Dec 2024 01:55:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] drm/rockchip: dw_hdmi_qp: Add support for RK3588
 HDMI1 output
Message-ID: <vpy4foezirdhci4nvl5j4e7gf5dey3swj7xxzuzazzj6uhqnls@iyyhkpukb7yo>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
 <20241211-rk3588-hdmi1-v2-1-02cdca22ff68@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241211-rk3588-hdmi1-v2-1-02cdca22ff68@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_155541_505118_D323D35C 
X-CRM114-Status: GOOD (  10.41  )
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

On Wed, Dec 11, 2024 at 01:06:14AM +0200, Cristian Ciocaltea wrote:
> Provide the basic support required to enable the second HDMI TX port
> found on RK3588 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 119 ++++++++++++++++++++-----
>  1 file changed, 96 insertions(+), 23 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
