Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B09FC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 10:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrG7DVB7CcRgf44kgMZBVUOXC/I9hUKuPmv85Fc1fbE=; b=mzLtbZiiQ6VFr1
	w96w964j59oqwEnQHCu3dmWBjrXFWa3ApuTnyHmznxgGRpYswdmt9Lrsh9EeOXIaWbMA6xYgnBqEw
	km7cnGFUwvBHM1ZD6D2GzyrkXWup6qlRhD45qLzd+VXbFPmXifKQr8WClIla8Vy8bdi8n+G6w8+gz
	8wPjKP2infm4gWQxI8CwOhKDt6qjJKWqGyqzXWl1w516J6MosY+0pougn2ssK/hL8wGCi0QrGuB22
	PWIBmpnT+oWX9gFRifDh2jq00qCTdJlA9K14NGh6O5346GWcAP2doMtJzTPDcTDt2Ykh7BWxJ+l48
	8UymWJHhc7cn2CLQle6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kQy-00000005xQr-1VeO;
	Tue, 30 Apr 2024 10:10:00 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kQv-00000005xOu-0utU
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 10:09:59 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-51b526f0fc4so6897524e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2024 03:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714471794; x=1715076594; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5mbwpFJFih7RIT1NY26n8+loi/ZJwnp9wrw9uANwmIA=;
        b=Gl4ZrhQFwmi6mDlWz683UzJ9Ry9rR5EVy0TKAzTz6ku7AeWROSGmTtfmGmejN4KyNp
         EktKajO0Ifw+TFtE2T1qYDXawNX+hSGquc6s+Wn762IwD2FWG/7r1ACS+iRoW+2AaE5U
         pMbqtZZKSsc7PKjaYmJQdEA2Z8euSryjdrJAdzR4AC1msgPrYwKCNPOHr5uJkYyLPFij
         BCOWWFSxiMrwtxEsUePSv7/Jt0q3EdfeaXW+olC5qRulFFNkBEqIiy/kBieSp/AarAhB
         AzrtVziG2DoXztB6M4sVKR/fWuBICf6w+IPKGC6qT5RxVSvP0j+pZkQ6IPEmRNclsJMg
         3Bgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714471794; x=1715076594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5mbwpFJFih7RIT1NY26n8+loi/ZJwnp9wrw9uANwmIA=;
        b=Wn9qxG0JvMVV/ftKQ4rBZXTTXhizRpPcYtXxI8nItj5bSQnMJolUH6M9z35A+wjeXw
         DrxIWzlIpsd+J8LFAlBk+Yw27bGbpAzNX4CbZoukKQMydNtKUUQa2NHTuHstvqNfoWqm
         Jtp1wKrE/iVsTeXmojx1My7KoSyQ21uiU5kZFkrbcqHeRyl8B4PT+Ge+8QRI1noaCuWa
         U8X2wsyh+hpBsddnnfQticgWhtjMXO5nhJjrF30C7tU9T3hDtarS+xTSzDwYu1gIUMZb
         Y9/h/Vm057u+DHlSkdGC+udcGCyj9YB2WnhMHZr6pZkdEOAy4VskszRvlsm3NXpFB4Zl
         mslQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdup3OC5pUs308831Sp1xI2BW7EB0MIfEJ2RsPsGw5mmlCF78VJetwpIcM7t0ppz9gDUNKULLkfCAwtmbF7FX6qirMj1K4oLjYvWPZ9PERwj/n
X-Gm-Message-State: AOJu0YyZGbi31I6dyaAnLbQhmEmxsUnzBuBmV3W/3JxGYp0Q/6tv2U+U
	cFLuAPgh9M7aSYkg8tHJqrquRDfPXlKXCH8mV2vfN9XcPBicnpdRqe62MaQ839A=
X-Google-Smtp-Source: AGHT+IHLFfBk+3bT5MCPiG0Sy+oXtj7PLWqAxH1nSKl7+nAmTFj46bAxdYE1eFckW76M0RQSsj0nqA==
X-Received: by 2002:ac2:5607:0:b0:51a:f596:9d53 with SMTP id v7-20020ac25607000000b0051af5969d53mr1449277lfd.42.1714471794305;
        Tue, 30 Apr 2024 03:09:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id b30-20020a056512025e00b0051bc39ef08esm2453377lfo.10.2024.04.30.03.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 03:09:53 -0700 (PDT)
Date: Tue, 30 Apr 2024 13:09:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 4/5] drm/ci: skip driver specific tests
Message-ID: <esplx2t6yfrarxflxo5kq2lstx7uiy2atzcxtwf7kugsctnkat@ameojtgtpopj>
References: <20240430091121.508099-1-vignesh.raman@collabora.com>
 <20240430091121.508099-5-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430091121.508099-5-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_030957_335847_9DF1A2E9 
X-CRM114-Status: GOOD (  10.85  )
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

On Tue, Apr 30, 2024 at 02:41:20PM +0530, Vignesh Raman wrote:
> Skip driver specific tests and skip kms tests for
> panfrost driver since it is not a kms driver.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  .../gpu/drm/ci/xfails/amdgpu-stoney-skips.txt   | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-amly-skips.txt   | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-apl-skips.txt    | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-cml-skips.txt    | 12 ++++++++++++
>  drivers/gpu/drm/ci/xfails/i915-glk-skips.txt    | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt    | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt    | 14 +++++++++++++-
>  drivers/gpu/drm/ci/xfails/i915-whl-skips.txt    | 14 +++++++++++++-
>  .../gpu/drm/ci/xfails/mediatek-mt8173-skips.txt | 12 ++++++++++++
>  .../gpu/drm/ci/xfails/mediatek-mt8183-skips.txt | 14 ++++++++++++++
>  drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt  | 14 ++++++++++++++
>  drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt | 14 ++++++++++++++
>  drivers/gpu/drm/ci/xfails/msm-apq8096-skips.txt | 14 +++++++++++++-


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # msm skips


>  .../msm-sc7180-trogdor-kingoftown-skips.txt     | 15 +++++++++++++++
>  .../msm-sc7180-trogdor-lazor-limozeen-skips.txt | 15 +++++++++++++++
>  drivers/gpu/drm/ci/xfails/msm-sdm845-skips.txt  | 15 +++++++++++++++
>  .../gpu/drm/ci/xfails/rockchip-rk3288-skips.txt | 17 ++++++++++++++++-
>  .../gpu/drm/ci/xfails/rockchip-rk3399-skips.txt | 15 +++++++++++++++
>  .../gpu/drm/ci/xfails/virtio_gpu-none-skips.txt | 15 ++++++++++++++-
>  19 files changed, 260 insertions(+), 10 deletions(-)
>  create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8173-skips.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8183-skips.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt
> 
-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
