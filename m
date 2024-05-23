Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9968EC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 11:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/M31USbLSp3YsU11ZUkXxIwpPznkp0JGu0DkBsTXs8=; b=Q1R9xgzLF1rP9x
	VpC3caw/FVHAq/451gB/hoMr01/X1Cek5WgEJYdmPceIYl76YLYh1QPGjTi/fOmfax8YshLe8wV63
	VfkpU/6t6f0etNBRcYurBQf9DsfiOipOswKsKbnw1RNwM/esq7bt4m0R0VGrDql2/bDInpS6ZEUOr
	mljyu9mycOEwn9YbaH2fVvZFBlN3aJGXJmKGwhUvjfxWYif0jSNMGKRPXPwF/FXST001r24xAC4xx
	LUVzl2HokfYCtb1mPLptLimD0OlcdnmAIEzkyYU/z5Kn9JWo2TotLK56KhfVNXLktI2exEW/GJo+j
	J3+iyp6lVElPEaqAUljw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6ux-000000065DY-3ifp;
	Thu, 23 May 2024 11:47:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA6ut-000000065Ak-38L1
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 11:47:30 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5231efd80f2so8368323e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 04:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716464843; x=1717069643; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5JoDrVHVM7LfBzm/j8yQ//z7NC7zUr0L//iZ9DPpuos=;
        b=QppnfrbNJF/m2Ci95oGwei6cMY8//HQfc9LmYyAiJ+Jg9764lE4c+Iq9Jz74ZZyTrF
         kt4TLUiKAxdciyCg2+uP1D8he0vXeGiuJmZ6Krs+TETA3oRGpCATF6GA07GVVxzueYT1
         uOxWc8MaX5eXlz0k7Mdlve+aO5vHy5i1j6Y/EXXUd07364fxJVZujjwMaYjXNyxbRu1Z
         d99xV5FeiXbTjfrDopV3k1A3so244XVRnfDE+FRChl+1TghhYQZ8NnE11XTseHmwDx0l
         TIqO8YwH3D3EQYpagQ6bFOEWOOUSxDj7yxJcQDbI3tpA5jI7t0QeftxjIdFjHLPrBROT
         gi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716464843; x=1717069643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5JoDrVHVM7LfBzm/j8yQ//z7NC7zUr0L//iZ9DPpuos=;
        b=P+I9rZ7o7n3gd2WrOhS8UdMKgwIBhXpv+Jgx98VxYcniqTZcH9g9gO+CpsNlKF/dCi
         HxYMFFf4xol5ZhCz0GO3OnkqT/PegzSKCEZ7RQGMtRfYU8IhszBrrLt6sFnoqrcKhz9e
         iqFcZ6wJ4MtCfEPR8qmBc1C/uuYh0O/o9dkz4coU47ImuJ2EC49dciCkgps479KhaWGQ
         2IVU9bgw2HmwzfEuICjxQK8GULJe3ah4OJ4quTNqh0kaTalZtqRIMiZh/0Si8qytHgoK
         DVI/GGBLU4Aa/3rPL1+msznD/YclSC9jzfDDVM+QrKP7l9vh7akztmN7bRkd4cpxoNB4
         Wa/A==
X-Forwarded-Encrypted: i=1; AJvYcCVW9NTxfyIyfavqMc0nQfRYgW7O/Dk9ria3mCSQCmzTsLSKIJJQRTjNOj0gxI3+AD1KYO3ac7517bWcxhFFRiBbxHHjc4z2UJloqJB2mR8AgTWu
X-Gm-Message-State: AOJu0Yw3UtbgO6+M6oQBft32YBgh0u/035rQU2MAJ1LgLvNdHFokWn2e
	U72q/a1EvvLAZb1y/4C5lLPzc28EuEm6D/9hgbBTaz7iLfE/xrA99J7t1SQpuL0=
X-Google-Smtp-Source: AGHT+IEN/K1SwxIaCA4NY4v+I8nntKcBr37nrUarJyi3sJM40IZJFMrjSZD7I/KQY++RSCd91be4qw==
X-Received: by 2002:a05:6512:4807:b0:522:32c0:bb6e with SMTP id 2adb3069b0e04-526bf35cc19mr3052433e87.23.1716464843059;
        Thu, 23 May 2024 04:47:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f318a326sm5291741e87.0.2024.05.23.04.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 04:47:22 -0700 (PDT)
Date: Thu, 23 May 2024 14:47:21 +0300
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
Subject: Re: [PATCH v14 22/28] drm/tests: Add infoframes test
Message-ID: <blzznexaou6bbiaonw3zeii43rcj5izgqt5zomv5wx5gxbeu2o@3j4o3hs3lfx3>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-22-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-22-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_044727_810388_6741C9C6 
X-CRM114-Status: GOOD (  12.07  )
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

On Tue, May 21, 2024 at 12:13:55PM +0200, Maxime Ripard wrote:
> The previous patch added the generation of the infoframes matching an
> HDMI connector state. Let's add a few tests to make sure it works as
> expected.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_connector_test.c | 219 +++++++++++++++++++++++++++++
>  1 file changed, 219 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
