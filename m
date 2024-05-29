Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C66C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 07:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8znmGWEUfswZsW4d8uPetfmH20MMvWN9Yh1w4WmOfQ=; b=4/2ki5tBST0o2p
	QwYGK6pzY7QchD/ifFnbJNcCKuuQXOnOhlw+4iptpEGBTNWB+vyIvk5EuHztQ7CzUT4zV8YV8r788
	PDQAr8caUou46NyCxya5vSvYY5bfqOv4GuT9Lp/qpPWbbDzPo2/CDmkjn4jIpiNas11/t5IUqEwbm
	XmSYxxq2NxG9mqDOtyXaB+HoFaZJoNgD78aLt0Jib9dQCmhzP5i/mHy2ohJdbetchV86wv3gO6qYe
	6JJuNqJo41Omjof8a5NWQcgUPd4MhO76ovAwPB9JUBzXNfvSquQ3DzGwO2NO2epJ108k1/uM1dpPl
	OkyAAXkS5JdFA7h9phtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDyc-00000003Bvi-1wdE;
	Wed, 29 May 2024 07:44:02 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDyY-00000003BuH-41og
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 07:44:00 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52ac99930c6so582212e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2024 00:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968636; x=1717573436; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ka2Maam5Ei5EuRcb2P0MO3/hFv2w3w7reQQ7Fg93ZTo=;
        b=br7KtXjf+Q4+V4jKTkURqoCSjRI7FgE30Q93JWJGSGyTX6EAJIZvwD3zUirYWsTvAE
         bzsvpeoBNaZdCbUHJXktG9N8ircW2VNHrY3WYFyVDpVj7N1be+sv8cU2X+VcjL62ACCh
         karxT4Gd0FEqa4Pfha7uj5T3US7VRIAynlhTAkbBWrUdvQZGA9o6WD6CAS7NDzdWLMsr
         O1YTOj56YsAYmxijjWIDtmuUUv4OablaUaQsuFn6Pt8UPY6TCGFEvYRxASlhXUlzSu//
         t87zWvwb1QlsBj+250mk87RzHRvcfzo3A7Xtp6QwV9ePyj6au4C1ze5zLqVtxKxIsrHz
         1OBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968636; x=1717573436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ka2Maam5Ei5EuRcb2P0MO3/hFv2w3w7reQQ7Fg93ZTo=;
        b=l49YZ5yGRLEjuA1VwTwvdSHUioddgP2mZXJw8gjpTCuG7SiZ5UT1X8jfc8W7BULwzA
         jhc0onjlrH3OaJs2Wf+5rhVp7JWbOu7uSd4ERfd4ZKTNSfGHSCkAeFhWvFNvlvHFjpwu
         exn3ILcobH6wDFsXeTq0Mo3UJhVcBCgRaQyqmrfZDnCMvPLWIjGw6PxOnavfyG8RJXgh
         wPX+QpFSTtI2YuM5B9iaIvYE/ENrJ6k2XqwmRNzGLt+Ii6V0KDNtiSIO1m+1zgRGtsCT
         d4SmXVMwnTisFtxJXhLV9aE1gGC36SKZEk+J4gI440BDP4PgdSHlZ1uHiHpnA+blwR0p
         tVRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVas1z5TQYhQ5gzJdkDBwTYrQyhsoV8jbpQ8oU7qAWe+P5y5yr3pnm0RNh8bvF7owwSOZT192QtC1NgmAZtuZ/6qXiTgE/V4RGJt2OSMhY177xw
X-Gm-Message-State: AOJu0YymY/fFGcBpIf5UelgMjcba2g8jl0r5E6FI0il5o0ubK4OFrRHA
	3xhBY3esjpHxvxIc8sCr+fesFlkBVazijYjM4w8OViF3cgJrMhMIwEMn/guv08w=
X-Google-Smtp-Source: AGHT+IEpKoJxeYMMRmRHKz19pKO8ijGaGc5T6KYCnRuUNFgdev3K9Yfz0P6oPUoZ1/TYqG8Ww0hnig==
X-Received: by 2002:a05:6512:3241:b0:51c:df1f:2edc with SMTP id 2adb3069b0e04-529644ebe8cmr7988541e87.2.1716968635950;
        Wed, 29 May 2024 00:43:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529a50b1d85sm978336e87.113.2024.05.29.00.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 00:43:55 -0700 (PDT)
Date: Wed, 29 May 2024 10:43:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/6] drm/ci: add farm variable
Message-ID: <xhdcswueynlctjznqnxo663v2k6q2lrk55jjdodrkd7ojijaiw@lg3e2e5qcnny>
References: <20240529024049.356327-1-vignesh.raman@collabora.com>
 <20240529024049.356327-3-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529024049.356327-3-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_004359_015228_A4375B10 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

On Wed, May 29, 2024 at 08:10:45AM +0530, Vignesh Raman wrote:
> Mesa uses structured logs for logging and debug purpose,
> https://mesa.pages.freedesktop.org/-/mesa/-/jobs/59165650/artifacts/results/job_detail.json
> 
> Since drm-ci uses the mesa scripts, add the farm variable
> and update the device type for missing jobs.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v3:
>   - New commit to add farm variable and update device type variable.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
