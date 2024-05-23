Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3235BC25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlCMLp/g/TqoWvjaPdSRRjeJd+j6K8f96P6Tu1Jr4UU=; b=JMlvf5otKeRSxO
	ncV4o9AnccTMi0TZRGJAtafzU3dyMgn++LZeL9ruFvSanmgu6aF+pdRV/3Z/LaZnH11l/Zw9pJ1Rr
	o/tdlHTvD95uXhRP68Y0nUl01E5iO4HX6sKLe5uEAcKrcILzABbWCvtXRmF97ZdX/lLx/0Hw35Dzy
	Js1iPZnBj41CTKSsPZO5+X8vTCQ/qRvo5FRqXAkB98c3xlgyJ0cUuTkPrgGuJ4T1RUivYBC20ojZV
	pIfvrz9A6NhkVgA5xJkevyU6UpircBNJSvfO0UsSjJoo4alGn0aN6bWGCVjEKrPRvFnRU7avANcfS
	pMr3acjh7aY/wvqOMzKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5F5-00000005mm2-2t8h;
	Thu, 23 May 2024 10:00:11 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5F0-00000005mf7-2TV4
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:00:09 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-de462979e00so2141341276.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 02:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716458387; x=1717063187; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4eLg5W63v6nyWYGdaPlQGL+64DpELLePyMxWT5qrNUU=;
        b=LHlbMoN2BMkR1zqM2oMj9WF2LORnlpSE6g9qflAr3L27IKc8eKpfyOAN5KdOvlrIY/
         7oTScg6zIU/QH8E/MJCH/vEGq9S8UUTPMSpcJV9qfy8tsLUczohxNsYGYqgwOVtzVy01
         Xfbumzsj57L26tMP8LVodh172Rosv5FoihT79+n9s77EAUKyJ237v+2bF11eXYQdA8kW
         08TmR+voAYDHl4KGtSyAAcVhaZmTxNEkTlma97wAjCAfw5xcwDXtdlQcnyT5b4h/oLp4
         hm+cyg4pvPXj1YK6ZHaLKt/3cf3Jv0xr6J+35EYpyASVBVbZuKJuReaw5nO18Xc7+gyx
         IOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716458387; x=1717063187;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4eLg5W63v6nyWYGdaPlQGL+64DpELLePyMxWT5qrNUU=;
        b=F9YQsYapFS/xOVhZYnXU/NvZt9pX7c7O7xtvIyAhwyPT/N1e3gBjzIs9ff/P9cPQPk
         pwsJhwG0oWZft+ogrGTAkN5wN8ewm4iMe6vWXohK7kt+zecGY5ZLFmsbcGajnQs9ePlQ
         CEKakz06xOHXBl6LKtieJpuvVMf+Kz1IQ94jOmdiVxDbrkTZphSJuSt6Ec9phFjbFfNd
         m/urSoozpcF8aavP4CoHVQfSpKcddejBIhnvHtm7RkBoUxrIzxmNnHL4HiOrjuBX+AtT
         cCQHeoEsz0TrfpbAnhU1qyT4J+0O8NIPd0tkOaLqE/YNMZrxqyi3DRO6GrK6FdkMugPz
         a6rw==
X-Forwarded-Encrypted: i=1; AJvYcCULK2tfuv/NJrPGGG3S54c+iR0vHN+ka/9HsN8AD26mIhWyp0z3MsC8PJ5kegdF5JnmQTeqOjeq4PUBNgCBvsoqmoDW6z1thXnRaCnh2+Sq7XAz
X-Gm-Message-State: AOJu0Yw22NV/BLDb3VTiIwCLMjpoqkYS2luQtwJJKZNavAM8+7rClOgJ
	LVy8xueBrFsdT46t35TiLi7CPi9IGUbzrv/BAU/pgEleyLjYHOtWL6JquXu0m/WLORw0id0ZwJt
	yRfpyj1gS4rcbLqH5ur/SHI8WxSQFtJUf8T8/wg==
X-Google-Smtp-Source: AGHT+IEH2bet0vxbyQkGUI55R017CbgvtHVbrVup5m0zjkPeCkh3N7ZUjMndzd5BhJJAs4TMZp+oQ52G6r3Sss4urHM=
X-Received: by 2002:a25:b181:0:b0:dee:607c:3528 with SMTP id
 3f1490d57ef6-df4e0a9cfa9mr4821493276.3.1716458387642; Thu, 23 May 2024
 02:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-2-vignesh.raman@collabora.com> <2qzmfv3oc6feihwxu3tl37rg6w3qsj2vddu5olvqk6vhqr26cc@bxu5y6ijvtfa>
 <9cd0667a-12ee-4d45-80e8-dc34259bf01d@collabora.com>
In-Reply-To: <9cd0667a-12ee-4d45-80e8-dc34259bf01d@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 May 2024 12:59:36 +0300
Message-ID: <CAA8EJprVVkQO7aPkehwL2zhYkGRkm4Foc13ErfuY6ikBA_4nLQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] drm/ci: uprev mesa version
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	robdclark@gmail.com, david.heidelberg@collabora.com, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_030006_692427_257CBE94 
X-CRM114-Status: GOOD (  23.94  )
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

On Thu, 23 May 2024 at 09:07, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>
> Hi Dmitry,
>
> On 20/05/24 16:13, Dmitry Baryshkov wrote:
> > On Fri, May 17, 2024 at 02:54:57PM +0530, Vignesh Raman wrote:
> >> zlib.net is not allowing tarball download anymore and results
> >> in below error in kernel+rootfs_arm32 container build,
> >> urllib.error.HTTPError: HTTP Error 403: Forbidden
> >> urllib.error.HTTPError: HTTP Error 415: Unsupported Media Type
> >>
> >> Uprev mesa to latest version which includes a fix for this issue.
> >> https://gitlab.freedesktop.org/mesa/mesa/-/commit/908f444e
> >>
> >> Use id_tokens for JWT authentication. Since s3 bucket is migrated to
> >> mesa-rootfs, update the variables accordingly. Also copy helper scripts
> >> to install, so that the ci jobs can use these scripts for logging.
> >>
> >> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> >> ---
> >>
> >> v2:
> >>    - Uprev to recent version and use id_tokens for JWT authentication
> >>
> >> ---
> >>   drivers/gpu/drm/ci/build-igt.sh   |  2 +-
> >>   drivers/gpu/drm/ci/build.sh       |  6 +++--
> >>   drivers/gpu/drm/ci/container.yml  | 12 +++------
> >>   drivers/gpu/drm/ci/gitlab-ci.yml  | 44 +++++++++++++++++++++----------
> >>   drivers/gpu/drm/ci/image-tags.yml |  2 +-
> >>   drivers/gpu/drm/ci/lava-submit.sh |  4 +--
> >>   drivers/gpu/drm/ci/test.yml       |  2 ++
> >>   7 files changed, 44 insertions(+), 28 deletions(-)
> >>
> >
> > [skipped]
> >
> >> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> >> index 8bc63912fddb..612c9ede3507 100644
> >> --- a/drivers/gpu/drm/ci/test.yml
> >> +++ b/drivers/gpu/drm/ci/test.yml
> >> @@ -150,6 +150,8 @@ msm:sdm845:
> >>       BM_KERNEL: https://${PIPELINE_ARTIFACTS_BASE}/arm64/cheza-kernel
> >>       GPU_VERSION: sdm845
> >>       RUNNER_TAG: google-freedreno-cheza
> >> +    DEVICE_TYPE: sdm845-cheza-r3
> >> +    FARM: google
> >
> > I see that this is the only user of the FARM: tag. Is it correct?
>
> No, we need to add FARM variable for other jobs as well.

Why? Even if we have to, we don't have them now and the change doesn't
seem to be related to the uprev'ing of mesa. So this probably should
go to a separate commit.

>
> > Also we miss DEVICE_TYPE for several other boards. Should we be adding
> > them?
>
> Yes, device type needs to be added for msm:apq8016, msm:apq8096, virtio_gpu.
>
> I will add this. Thanks.

I'd guess, separate commit too.

>
> Regards,
> Vignesh
>
> >
> >>     script:
> >>       - ./install/bare-metal/cros-servo.sh
> >>
> >> --
> >> 2.40.1
> >>
> >



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
