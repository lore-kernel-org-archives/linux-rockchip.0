Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 420B7C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 10:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smb32RF9yV1SfkMf30W8uu/RhmJbZl3vKQMmnfFpxoY=; b=YdzRSkIJSSg9b8
	8tV5W/JOjA9LxwDkJfpBcnay8Fc+kad0Ct9ON3EZBw0fHuZmIy17OKnCS883n/hxJtaqqakNQvdXZ
	4KEe+pHAx4mrny4kpVa7ubgq4DeEri4/meYnGWHc4XW2mSdrEt/C/JmNGWmP4rVWuFNqcX2gPldH6
	JZfb15tuaVRMT72QcyEcSPuFQuUVnOoGNRlvD+LVy2VosQuUE0M0n6oif3pO6RrpkjOilpU4Fv2bc
	YnzXGNP7RTdZwKxbKJS89eiM31X2y46o/TS8DgM5fnNMzMD6NiAfQGESiH26vjYjjTMxs0YDa2e/p
	tOXcedi19VJDGLCnVkQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kYZ-00000005yed-4411;
	Tue, 30 Apr 2024 10:17:51 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kYW-00000005yYV-3Sji
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 10:17:50 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2de2f5ca076so62144571fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2024 03:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714472239; x=1715077039; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vLkLH0SSmvOSmWzdY7vcX+RCH3AFTNGOUA3YHRv8hu4=;
        b=I17mWeWWV2Jp8pC3luUrowChXvL+AtlAkgFUvHHEhCUWqf+v+sI4gh1a5chVS21rqR
         boPKm+NDgumbJ67Or8teE8zSwps1BhloL4T7VarJiKkaKlLSQYOIFAqpcYnja8a7LVLw
         Q6OyHJklNcAlS/sUGjfWvWp6WcCjBeyKTVAIbu5HGzEIJht1+8I7NYuwmqWHQz6TR7uN
         effScvCs9GgfxAqbXtmqN3HoXEVKtSWVKgKBp+sAZVrpOANvNaYC+NRW9iBxPdC9kBgt
         OYaLoIfoCHclAborseF5aHzrK2a7EjnJP0/4nIuOQtM71v4t2PVss8RoYRV7RmgK2/hi
         oQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714472239; x=1715077039;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLkLH0SSmvOSmWzdY7vcX+RCH3AFTNGOUA3YHRv8hu4=;
        b=c2y7kIGflq3Ldt2kSqdncxGvi3wf+VHDKdclaU/GBOhp2KA0THsoOy6ZO2aX8SYJd8
         GxxShEE7GgYxeToOu2G6QoC9OS4MfmBTbyytuTa8CSfkXtt1yIEyWl0ztyemIr9XUoRk
         ZG+JJO6n5bSnPLxy5NRrAJG0cLNaI4GHJoSN5gQyLle37ldBgeU1NfkQn07bBJni/w4J
         EQJBdZMbrLHPwn8KxJEx8o03x6wZ6p9Jd7Ig7nRGb4VnK/j2BXiDJtt2CgFnvx6izioI
         LWUWqBLxdMzJm3s8AZHMlXCadiwk7Yv6DpTZ1IjgvUDdI6f1ljUoOzguYnLrdvS8CvSD
         +zbg==
X-Forwarded-Encrypted: i=1; AJvYcCWiFtyN1pZO+C/BWEH7AWP3y2IqVShItzEIoAPuXBL+zsNe/QzFsoPnQ8LBQ3FK4Mki38aaXk/koztXBq+cHADOdS4KfdsJX85wM86RFrANsVHM
X-Gm-Message-State: AOJu0YzBKng7Di31F0oCmPFGvqkmS3oGchzLS7+OrsO7k8F4YSG1ieRK
	wGJBWxSY9l6x+779ygdfzaqA5siuHaFXHhpDmAy79MhmWhcLJd4nCzzQKjxZbhY=
X-Google-Smtp-Source: AGHT+IHaFm4lzkxq9U1a8iPWUfix49p5Xd5gLpx7H0AEzCvQ84t8kRB/7beeUSB3FIO6fjrXa0k+4A==
X-Received: by 2002:a2e:8e23:0:b0:2e0:e129:7011 with SMTP id r3-20020a2e8e23000000b002e0e1297011mr1308756ljk.16.1714472238962;
        Tue, 30 Apr 2024 03:17:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id f28-20020a2eb5bc000000b002e0e78240a4sm205475ljn.77.2024.04.30.03.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 03:17:18 -0700 (PDT)
Date: Tue, 30 Apr 2024 13:17:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/5] drm/ci: generate testlist from build
Message-ID: <k7sepoksttro3dgxxtwxfmlxwv5w5zn3aeso7p24mm3n74bo45@kx2dpe2qkqgo>
References: <20240430091121.508099-1-vignesh.raman@collabora.com>
 <20240430091121.508099-3-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430091121.508099-3-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_031748_877550_5C999127 
X-CRM114-Status: GOOD (  21.89  )
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

On Tue, Apr 30, 2024 at 02:41:18PM +0530, Vignesh Raman wrote:
> Stop vendoring the testlist into the kernel. Instead, use the
> testlist from the IGT build to ensure we do not miss renamed
> or newly added tests.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  drivers/gpu/drm/ci/build-igt.sh  |   23 +
>  drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>  drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>  3 files changed, 28 insertions(+), 2765 deletions(-)
>  delete mode 100644 drivers/gpu/drm/ci/testlist.txt
> 
> diff --git a/drivers/gpu/drm/ci/build-igt.sh b/drivers/gpu/drm/ci/build-igt.sh
> index 500fa4f5c30a..cedc62baba1e 100644
> --- a/drivers/gpu/drm/ci/build-igt.sh
> +++ b/drivers/gpu/drm/ci/build-igt.sh
> @@ -26,6 +26,29 @@ meson build $MESON_OPTIONS $EXTRA_MESON_ARGS
>  ninja -C build -j${FDO_CI_CONCURRENT:-4} || ninja -C build -j 1
>  ninja -C build install
>  
> +set +ex
> +export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib64
> +while read -r line; do
> +    if [ "$line" = "TESTLIST" ] || [ "$line" = "END TESTLIST" ]; then
> +        continue
> +    fi
> +
> +    tests=$(echo "$line" | tr ' ' '\n')
> +
> +    for test in $tests; do
> +        output=$(/igt/libexec/igt-gpu-tools/"$test" --list-subtests)
> +
> +        if [ -z "$output" ]; then
> +            echo "$test"
> +        else
> +            echo "$output" | while read -r subtest; do
> +                echo "$test@$subtest"
> +            done
> +        fi
> +    done
> +done < /igt/libexec/igt-gpu-tools/test-list.txt > /igt/libexec/igt-gpu-tools/testlist.txt
> +set -ex

Is the list in sync between x86 and arm/arm64 IGT builds? Is there a
chance of having a safety net here?

> +
>  mkdir -p artifacts/
>  tar -cf artifacts/igt.tar /igt
>  
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
> index f1a08b9b146f..20026612a9bd 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -59,25 +59,26 @@ fi
>  
>  curl -L --retry 4 -f --retry-all-errors --retry-delay 60 -s ${FDO_HTTP_CACHE_URI:-}$PIPELINE_ARTIFACTS_BASE/$ARCH/igt.tar.gz | tar --zstd -v -x -C /
>  
> +TESTLIST="/igt/libexec/igt-gpu-tools/testlist.txt"
>  
>  # If the job is parallel at the gitab job level, take the corresponding fraction
>  # of the caselist.
>  if [ -n "$CI_NODE_INDEX" ]; then
> -    sed -ni $CI_NODE_INDEX~$CI_NODE_TOTAL"p" /install/testlist.txt
> +    sed -ni $CI_NODE_INDEX~$CI_NODE_TOTAL"p" $TESTLIST
>  fi
>  
>  # core_getversion checks if the driver is loaded and probed correctly
>  # so run it in all shards
> -if ! grep -q "core_getversion" /install/testlist.txt; then
> +if ! grep -q "core_getversion" $TESTLIST; then
>      # Add the line to the file
> -    echo "core_getversion" >> /install/testlist.txt
> +    echo "core_getversion" >> $TESTLIST
>  fi
>  
>  set +e
>  igt-runner \
>      run \
>      --igt-folder /igt/libexec/igt-gpu-tools \
> -    --caselist /install/testlist.txt \
> +    --caselist $TESTLIST \
>      --output /results \
>      $IGT_SKIPS \
>      $IGT_FLAKES \

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
