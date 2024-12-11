Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA764E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 21:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAxDco3Iqz1OKkaPEjkOb4YXOcJ4atokg4/SIJBAWIw=; b=FvbqE6vADcQz0u
	w9Ft9ikXQDvMzIICxpV4qXt/rdpTAzg7eLRj6mEbkT362ZNurh3tqkwoWCXXkUw3KKtQxO99X6wA5
	7EQ4xFpi9qxcuOaoYWF2H0DHTRgpo/tl9rSFi6s8nPB7jxspaoq5NYQpM+VYz+zuC0QJhgijFUesC
	SPLiELPjKsdp4qubf+RzT/GknJJbA8bRVNhiC/zyhTl7J9mEapraZ1038N3iDAC3Z1whKjI29Qgo6
	FtYW3Ht6+nD3BPN+ZtjK/FfMQWxe2CKMh70kS/NJcaR5JKq0elmvVgYNfZhU+MaBbBFcEJcOzO1Ba
	drs/GD8wEc4EF6S+a1NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLUQa-0000000GCpV-1dTZ;
	Wed, 11 Dec 2024 21:39:28 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLUQW-0000000GCna-1Jje
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 21:39:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-30219437e63so11971361fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 13:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733953162; x=1734557962; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDpO8QRKSrhxInawg6iB7aAV8UI5ptwurUWyv3YKDbc=;
        b=BS7Fdg7QN5vNHn8lPOhcGRJMYKFc8ugvj9nTqEc06Lkt0/7+dh2n4wG/Bhe/qCRUOy
         jZD7Em6ky0cF0Vhw7w4vL1aws/eghGQa3WQUfUPKjchzff8YeIo6gv6HiOZbsNSqtfcN
         IuidP/9rfE95dpQr31QWVNw+oYmi/WftPECiYGy78p2gPpv+Nctiq6W584k4rHolrV8i
         X+rv81tbzNDUINHBqt6wm4gVvMCuujm89sXSN8C1Ph7re5xgCwxJVrpSn1LWmyIH6uqB
         Sa0toVnh3owKh3L4/w9h+gvzMBSMcMT0fjNboL7szUsngtxUhUeqtdeOTqh0YvHKLBeU
         AkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733953162; x=1734557962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZDpO8QRKSrhxInawg6iB7aAV8UI5ptwurUWyv3YKDbc=;
        b=LvPZ32RoQXK0AV++JdyOoMNv8+285IeFWEy67wNd9TMi4TL+JRQ/6uSA7xJjvLTgtY
         pUTvnJMxh7uRwefDtxCt4k3Bcl/UDyhZ/NfGWZ2Cscn7+3MX90gfBV8sWLHIeC9na8+Q
         X8YC00aGVGPS378Fuun89/FOGHdoCZP0KzLfJreWsSN0gupp8zoEW0mdu1cZ/7fHWGzt
         k1dBA94Q6fWp4Xdxgf01FjxrShGMCKuNdoU4rt+EugBmK9TAyEVBP+ElwzVosx9CiCg3
         YnrHUTIpi6BI/FB0P9ygZrPIxAGUYtDyukTfcHT9wbMPLtBoRQS7uBT6rPMWbgHfRsjO
         cbGg==
X-Forwarded-Encrypted: i=1; AJvYcCVHc6xvpIcXOIrVjqq0KJDPycj4KYkANhwCd4IF+BgZ58woxLxd2xUYldHH+HDkPA1Bh90nRzZXx5/eOrojqg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvofaaoPZFh5ZlC3lounn2GlDca4RGSgpdoVGIh9kfQuRgqn2A
	8MMOggyHxRGWJh8RVTlAxd1/zqzTli4uj0CxaAENTkziRhRrAcAgkHt04FxOiac=
X-Gm-Gg: ASbGncs1SrOK1m5VWMpvTU+6Vqa/xxngru2LpuFLzaUKhJ3l1bcHcoDa9YpGrNb7VAt
	Gl7SPj6QaXdzG4n4oaTyRbdu/5g/nP8EGN+xYjnJFucn2JyJKIwnG5U6piMkcL1NygcLJ6FDxP6
	LieQyEevD5mRcxZUel5FgT1TlNomZo4DUIkfPJxvjSBTxXW+h26xufwfoAtbNMeb6Om1WfAX/5L
	OMhyn06lLCIGMn6II3/Eu9iUeeKkikEWIgcKDqF1D+iQcVvqfhnQmqBGdv8sQ9/ZTCOp7wSWiSF
	kcg7adPSRuZZ4tivvmbuBKzlW9YaUoUtMw==
X-Google-Smtp-Source: AGHT+IEOt4HIvzifdLCP3vt6tvdn0+DmYG+k9uGFplaWP19t7GtD1er9r2IS8lIHB30alIfkyzyt9Q==
X-Received: by 2002:a05:651c:54b:b0:302:49f7:1d72 with SMTP id 38308e7fff4ca-3024a5fa7d4mr2138761fa.9.1733953162278;
        Wed, 11 Dec 2024 13:39:22 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-300419ae090sm14289721fa.8.2024.12.11.13.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 13:39:20 -0800 (PST)
Date: Wed, 11 Dec 2024 23:39:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] drm/ci: uprev IGT
Message-ID: <f2dac4eatkajw633ksnnb3nfq7zop2l4ux2euj6jqg4hg3soqt@sv7p2r6xk7fz>
References: <20241211142806.1824961-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241211142806.1824961-1-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_133924_418558_4321D727 
X-CRM114-Status: GOOD (  15.33  )
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

On Wed, Dec 11, 2024 at 07:58:05PM +0530, Vignesh Raman wrote:
> Uprev IGT to the latest version and update expectation files.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v1:
>   - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1327810
>     Will update the flake bug report link after v1 is reviewed.
> 
> ---
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> index 066d24ee3e08..7752adff05c1 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> @@ -1,4 +1,7 @@
>  kms_3d,Fail
> +kms_cursor_legacy@forked-bo,Fail
> +kms_cursor_legacy@forked-move,Fail
> +kms_cursor_legacy@single-bo,Fail
>  kms_cursor_legacy@torture-bo,Fail

Interesting, DRM_MODE_CURSOR_BO tests fail

>  kms_force_connector_basic@force-edid,Fail
>  kms_hdmi_inject@inject-4k,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> index 6dbc2080347d..581d0aa33b4f 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> @@ -8,6 +8,8 @@ kms_color@ctm-red-to-blue,Fail
>  kms_color@ctm-signed,Fail
>  kms_cursor_legacy@cursor-vs-flip-toggle,Fail
>  kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
> +kms_display_modes@extended-mode-basic,Fail
> +kms_display_modes@mst-extended-mode-negative,Fail

This is a bug in 5f7cde6a9878 ("tests/kms_display_modes: Skip test if
joiner display is connected"), the driver unconditionally calls
is_joiner_mode(), or in 88abc2d2c646 ("lib/igt_kms: Add is_joiner_mode
function"), the is_joiner_mode() should return false for non-Intel
hardware. Please fix it in the IGT instead.

>  kms_flip@flip-vs-modeset-vs-hang,Fail
>  kms_flip@flip-vs-panning-vs-hang,Fail
>  kms_lease@lease-uevent,Fail
> @@ -15,4 +17,3 @@ kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
>  kms_plane_alpha_blend@alpha-7efc,Fail
>  kms_plane_alpha_blend@coverage-7efc,Fail
>  kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> -kms_rmfb@close-fd,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> index d74e04405e65..5122233b9941 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> @@ -18,3 +18,10 @@ msm/msm_shrink@copy-gpu-oom-32
>  # IGT Version: 1.28-g0df7b9b97
>  # Linux Version: 6.9.0-rc7
>  msm/msm_shrink@copy-gpu-oom-8
> +
> +# Board Name: sc7180-trogdor-kingoftown
> +# Bug Report:
> +# Failure Rate: 50
> +# IGT Version: 1.29-g33adea9eb
> +# Linux Version: 6.13.0-rc2
> +kms_lease@page-flip-implicit-plane

Do you have a failure log?

> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> index 6dbc2080347d..581d0aa33b4f 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> @@ -8,6 +8,8 @@ kms_color@ctm-red-to-blue,Fail
>  kms_color@ctm-signed,Fail
>  kms_cursor_legacy@cursor-vs-flip-toggle,Fail
>  kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
> +kms_display_modes@extended-mode-basic,Fail
> +kms_display_modes@mst-extended-mode-negative,Fail

Again, the same IGT issue.

>  kms_flip@flip-vs-modeset-vs-hang,Fail
>  kms_flip@flip-vs-panning-vs-hang,Fail
>  kms_lease@lease-uevent,Fail
> @@ -15,4 +17,3 @@ kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
>  kms_plane_alpha_blend@alpha-7efc,Fail
>  kms_plane_alpha_blend@coverage-7efc,Fail
>  kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> -kms_rmfb@close-fd,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> index fa8c7e663858..69076751af24 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sdm845-fails.txt
> @@ -1,4 +1,3 @@
> -drm_read@invalid-buffer,Fail
>  kms_color@ctm-0-25,Fail
>  kms_color@ctm-0-50,Fail
>  kms_color@ctm-0-75,Fail
> @@ -19,6 +18,8 @@ kms_cursor_legacy@flip-vs-cursor-atomic,Fail
>  kms_cursor_legacy@flip-vs-cursor-crc-atomic,Fail
>  kms_cursor_legacy@flip-vs-cursor-crc-legacy,Fail
>  kms_cursor_legacy@flip-vs-cursor-legacy,Fail
> +kms_display_modes@extended-mode-basic,Fail
> +kms_display_modes@mst-extended-mode-negative,Fail

The same IGT error

>  kms_flip@flip-vs-modeset-vs-hang,Fail
>  kms_flip@flip-vs-panning-vs-hang,Fail
>  kms_lease@lease-uevent,Fail
> @@ -28,4 +29,3 @@ kms_plane_alpha_blend@coverage-7efc,Fail
>  kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
>  kms_plane_cursor@overlay,Fail
>  kms_plane_cursor@viewport,Fail
> -kms_rmfb@close-fd,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> index 4892c0c70a6d..8d26b23133aa 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-fails.txt
> @@ -7,9 +7,4 @@ kms_cursor_legacy@torture-bo,Fail
>  kms_cursor_legacy@torture-move,Fail
>  kms_hdmi_inject@inject-4k,Fail
>  kms_lease@lease-uevent,Fail
> -kms_plane_alpha_blend@alpha-7efc,Fail
> -kms_plane_alpha_blend@alpha-basic,Fail
> -kms_plane_alpha_blend@alpha-opaque-fb,Fail
> -kms_plane_alpha_blend@alpha-transparent-fb,Fail
> -kms_plane_alpha_blend@constant-alpha-max,Fail
>  msm/msm_recovery@gpu-fault-parallel,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt
> deleted file mode 100644
> index c1859d9b165f..000000000000
> --- a/drivers/gpu/drm/ci/xfails/msm-sm8350-hdk-flakes.txt
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -# Board Name: sm8350-hdk
> -# Bug Report: https://gitlab.freedesktop.org/drm/msm/-/issues/65
> -# Failure Rate: 100
> -# IGT Version: 1.28-ga73311079
> -# Linux Version: 6.12.0-rc1
> -msm/msm_recovery@gpu-fault

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
