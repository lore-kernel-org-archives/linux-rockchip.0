Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F8DC25B78
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 May 2024 11:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Osl29qCGx55MvT7x+01tH7m0H87ZZHUNhdzxSQ8XOw=; b=Bc0AR5xgO9qZoV
	poCNhPdFbtt0LxXgYR8XOeX4d5pWcfHsxf0yxY40/p5+cJHKImqiSErdwuhsWLkzkDNT1coGLY+Fy
	4qHC39GGizmckNgG3K9Gsgwqe2p9RvbDWRgMSsbuGb7vaZn1WXqbROSg/qk95BiWTcltjrhKvakBr
	lg/SFqhyczN8MTPJRZNWgGiEqnhLPYnqRNucgXuSAuX2HqhaqoKJq3TeDVv8jqbLxGtsajVgZ02zc
	XqU57XR99L4zyvUK6d7pvLl9sfAf5sxoK4bOuzQzQDb4xxV1/Agt/ueJUs2BkMxvjvAPI89VGG75K
	TEXAykXyxM2tC6zWhClA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90nA-0000000EEKe-3B5W;
	Mon, 20 May 2024 11:02:56 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90n5-0000000EEFa-2dUz
	for linux-rockchip@lists.infradead.org;
	Mon, 20 May 2024 11:02:54 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-51f0602bc58so2339500e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2024 04:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716202966; x=1716807766; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SIDOKwIcUp4lPPO/PDmHDa/A/zxT15SPb9EQ0kHZyQI=;
        b=hZzb5vYak1CsQ8+WUyq3VSW2fMaqMMvvCfWUbFe7CuxHsJjGsXUzvBzW0w27LzjUZy
         k3PbXEmq5GYvCA1jqM6cVXNtOzMeyZa1ybELBzCQaCeYaZXqvgo09Vmbu767MiaWZUKc
         MJpZpPypEM+SeKkxu9azq/fAVU9haCXjXXzGWth7BhzufEoIWE+1kGXp/1qWVqI1TCpR
         /eiyFbaYptc+3g8hdlUs9PIf1D7ID9hw7q4BM0PQ2M3uBce9H8mU80DNZWtmdnw8/jN6
         zBsq8JST/IOwvv5jg5NzcRWdIcHVyw3AuZ/fZOlJiXrHsIb7VYC3CBtACODfsz2Jdtey
         MEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716202966; x=1716807766;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIDOKwIcUp4lPPO/PDmHDa/A/zxT15SPb9EQ0kHZyQI=;
        b=uvdUWKc/s3Xjey2FYpn2+uBmBnT9eqIwfHqACLTj+Veu75ckME2rtMGrDoeLvt4e72
         a0NFjxxtUD2IJJALC2UN9Uk9+QsKNvKGRI3yCHVpfpnyuh0IH3IGitr837WV5P6/JRsx
         RHROHXzx9E44oFrqry55U4keDLSU1nQB9t9MV/1r7rrzPFq5VhPGUqbd3q4k8nqjUv5O
         +3pDGVqe8MzOLLEwF5Mmjw7rBHKa09arq3wjJF97M2HUVPnSbSqZ5R+34E/hrtyQ1i6L
         404Xk4SAn4cgfngiPt6Vqtgyh3ovVr7sM270RAafThbdAR6t9KdbbcVt03FHPcaqmW11
         SX9A==
X-Forwarded-Encrypted: i=1; AJvYcCXsBefUVeqEgTSfsfMtQwTbbSMCmI3Wl1Vj9HuIcBDf2B551b827chaMxPPKDVFRNupr2BxZj4jg17Z8JBZdL4vYMIypJilwsSI+/O7BA8HBBbb
X-Gm-Message-State: AOJu0YzigDeERTvf9M+6mNnVFjU5qq8LppNzdankLmNi0ns1+nhQtJsF
	s+vi7vrRqG8QPhSlhVAArfHk5Zf2QG3FG2tjxDASy+9ETiNCJHRbkYr+1tnxYIWbvUmx1fz5Pj/
	H
X-Google-Smtp-Source: AGHT+IHe2PgQwC1mRKPz+r1r564vDGsot6Gznz5gkwCdKTo8R1LGu6rQBjXQZQUxapTX0MQHaaP1KA==
X-Received: by 2002:ac2:44a8:0:b0:513:dbcd:7b8e with SMTP id 2adb3069b0e04-52407cdde08mr1551456e87.24.1716202966284;
        Mon, 20 May 2024 04:02:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5236e80e8c9sm2317384e87.238.2024.05.20.04.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 04:02:45 -0700 (PDT)
Date: Mon, 20 May 2024 14:02:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/6] drm/ci: build virtual GPU driver as module
Message-ID: <elftuzsd7lhz6y5ow6rb5uu5fb5b5jcprxtvxtxtojo774rnyr@swpeg4vkgtnc>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-4-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_040251_735380_5D72A303 
X-CRM114-Status: GOOD (  20.53  )
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

On Fri, May 17, 2024 at 02:54:59PM +0530, Vignesh Raman wrote:
> With latest IGT, the tests tries to load the module and it
> fails. So build the virtual GPU driver for virtio as module.

Why? If the test fails on module loading (if the driver is built-in)
then it's the test that needs to be fixed, not the kerenel config.

It's fine as a temporal workaround, but please include a link to the
patch posted to fix the issue.

> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - No changes.
> 
> ---
>  drivers/gpu/drm/ci/build.sh       | 1 -
>  drivers/gpu/drm/ci/igt_runner.sh  | 6 +++---
>  drivers/gpu/drm/ci/image-tags.yml | 4 ++--
>  drivers/gpu/drm/ci/test.yml       | 1 +
>  drivers/gpu/drm/ci/x86_64.config  | 2 +-
>  5 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ci/build.sh b/drivers/gpu/drm/ci/build.sh
> index a67871fdcd3f..e938074ac8e7 100644
> --- a/drivers/gpu/drm/ci/build.sh
> +++ b/drivers/gpu/drm/ci/build.sh
> @@ -157,7 +157,6 @@ fi
>  
>  mkdir -p artifacts/install/lib
>  mv install/* artifacts/install/.
> -rm -rf artifacts/install/modules
>  ln -s common artifacts/install/ci-common
>  cp .config artifacts/${CI_JOB_NAME}_config
>  
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
> index 20026612a9bd..55532f79fbdc 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -30,10 +30,10 @@ case "$DRIVER_NAME" in
>              export IGT_FORCE_DRIVER="panfrost"
>          fi
>          ;;
> -    amdgpu)
> +    amdgpu|virtio_gpu)
>          # Cannot use HWCI_KERNEL_MODULES as at that point we don't have the module in /lib
> -        mv /install/modules/lib/modules/* /lib/modules/.
> -        modprobe amdgpu
> +        mv /install/modules/lib/modules/* /lib/modules/. || true
> +        modprobe --first-time $DRIVER_NAME
>          ;;
>  esac
>  
> diff --git a/drivers/gpu/drm/ci/image-tags.yml b/drivers/gpu/drm/ci/image-tags.yml
> index 60323ebc7304..328f5c560742 100644
> --- a/drivers/gpu/drm/ci/image-tags.yml
> +++ b/drivers/gpu/drm/ci/image-tags.yml
> @@ -4,9 +4,9 @@ variables:
>     DEBIAN_BASE_TAG: "${CONTAINER_TAG}"
>  
>     DEBIAN_X86_64_BUILD_IMAGE_PATH: "debian/x86_64_build"
> -   DEBIAN_BUILD_TAG: "2023-10-08-config"
> +   DEBIAN_BUILD_TAG: "2024-05-09-virtio"
>  
> -   KERNEL_ROOTFS_TAG: "2023-10-06-amd"
> +   KERNEL_ROOTFS_TAG: "2024-05-09-virtio"
>  
>     DEBIAN_X86_64_TEST_BASE_IMAGE: "debian/x86_64_test-base"
>     DEBIAN_X86_64_TEST_IMAGE_GL_PATH: "debian/x86_64_test-gl"
> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> index 612c9ede3507..864ac3809d84 100644
> --- a/drivers/gpu/drm/ci/test.yml
> +++ b/drivers/gpu/drm/ci/test.yml
> @@ -350,6 +350,7 @@ virtio_gpu:none:
>    script:
>      - ln -sf $CI_PROJECT_DIR/install /install
>      - mv install/bzImage /lava-files/bzImage
> +    - mkdir -p /lib/modules

Is it necessary to create it manually here?

>      - mkdir -p $CI_PROJECT_DIR/results
>      - ln -sf $CI_PROJECT_DIR/results /results
>      - install/crosvm-runner.sh install/igt_runner.sh
> diff --git a/drivers/gpu/drm/ci/x86_64.config b/drivers/gpu/drm/ci/x86_64.config
> index 1cbd49a5b23a..78479f063e8e 100644
> --- a/drivers/gpu/drm/ci/x86_64.config
> +++ b/drivers/gpu/drm/ci/x86_64.config
> @@ -91,7 +91,7 @@ CONFIG_KVM=y
>  CONFIG_KVM_GUEST=y
>  CONFIG_VIRT_DRIVERS=y
>  CONFIG_VIRTIO_FS=y
> -CONFIG_DRM_VIRTIO_GPU=y
> +CONFIG_DRM_VIRTIO_GPU=m
>  CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_VIRTIO_NET=y
>  CONFIG_VIRTIO_CONSOLE=y
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
