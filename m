Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C319C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 10:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/DfotUOP2HG80pp0Yg3tJid6vd9F+303dYfVBW9qO8=; b=KdNnm7XsdnawcK
	vDsqa1/WsmDplPRSwKWt7mgUG3Wid2van6pTGCRkg3C7hL9B/sHM7xI5AURkfGPaccCjQe5UuiIvF
	iI+cEf4qlFK6u/SQyjpse34cQiwInVScrtIjSI8tUliPiiMengpUGj/vPwgW+hmhRDMo+ewKH35/5
	Ov5/OqcB8UKc4+OroGT7aXlQgg+8G02Rj/8ERKFZB21rHc7IMyPgw2NpeQi3zKVNNNi6eA3LYaXnc
	8HeJKGwcBjEkHMKzTsydiX1BtmLPtEsuDcJ0a845al6Ps6fgzkO9dITaFmjRjKqa/gPNhh9ec87aj
	AN7dL91cc1k/M0NFGJLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kW3-00000005yIC-13Pi;
	Tue, 30 Apr 2024 10:15:15 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kVz-00000005yGh-3LJD
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 10:15:13 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-51ca95db667so5120751e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2024 03:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714472110; x=1715076910; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dIx1dFfAcpeKO8TErHh7vGY1lorqPiA5UlnTCSzH2HY=;
        b=o6K0W/O/mrX+dEy9VOW0FHvUpriLDDGBtaSTM21kEzkxxra/w7FknU9EQGhW2X4+TX
         Fx7ABLMn+AQUq6+2rEAi9pC/pXFjQj0cqDTtovtPur97+8tjMyNzvaxjl64ZUziULrr3
         2RlKiTo/U+ekE9C2rfs3XXTPpNsD/0BjxurmRw03VYp7ypvdwFkixaatZhgdyB7YyLsh
         7UyWpjf5tdfzFcWXwnQM4tQGwNnKFL3KgDF+Gw96NJ5KWCMN7+Vn/T/rj9c1MDf7KkjX
         B+lbl/V2DdldwxIqZw39URXDpTa/h7G1TWYpDtrCOdEwN5/glwLdtYWw/6ZaLxM3B0xU
         SIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714472110; x=1715076910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dIx1dFfAcpeKO8TErHh7vGY1lorqPiA5UlnTCSzH2HY=;
        b=khiCqHtTGivXYkMYFyMAuc44Z8Ber8YWg0xC0f6AmHS8cW4+lVkr0lIoR5/V9rYgOb
         rM0Sv0SJexs2ecoZDMEPygVkUpgCInJPw3HQiA4cFMPw95rF7Iyz6MGS4ijN/BJShg4G
         LHpMB8oE89tUkcMAzrUnPhdMQi8Jdx+baG2T28zjMxDDzTy/epiHZYMu+SkFIqg/c6X3
         kdB0p2VGt6Le1f0+/QDMbo3qhlnJf6ni6kXEf3hw2XldGOeA+O6MGcFDmXk1mjzrJ0AK
         4xSXVx+9ZSXO1G6HDeAeloNYkyJATQX7aYeFkHzEQ+lmIZayERR63pRd4pXMMse4zbhQ
         tl9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWRkR1lVlLKEfMFt7oI123Sx94CxCsfyI+SpdgzWIuYdllQefhPAuuplQ9ukamx0eJ4vs/jvo4LLDRhnNY6UqoHTjevPu0e5xpWI71278hwpRr5
X-Gm-Message-State: AOJu0YyE/1p68tYIzNaC+2bKIe4qzqnd3y1KmXuwO5XDjiapTd2SZyRQ
	ST0uAu12Uubxnk5lsJeITINmOvV4COPxEDBrSKn/7w3yi4LaMzF+7Q0eLg9cQ7A=
X-Google-Smtp-Source: AGHT+IEeZGVbkW3UvagFGYDQZ5bMmN4VdL24N9F8cduZig7xQbulffwe9LBCfuUp6MPaqlZqlp0YPw==
X-Received: by 2002:ac2:4945:0:b0:516:cf23:588 with SMTP id o5-20020ac24945000000b00516cf230588mr10156881lfi.27.1714472109993;
        Tue, 30 Apr 2024 03:15:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id g29-20020a0565123b9d00b0051d807addd7sm884156lfv.60.2024.04.30.03.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 03:15:09 -0700 (PDT)
Date: Tue, 30 Apr 2024 13:15:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 5/5] drm/ci: update xfails for the new testlist
Message-ID: <hon4klkoaouuxhtvm3qb3qstsrdcibihksyrmvxkt3taijl6wb@ubitr6namryw>
References: <20240430091121.508099-1-vignesh.raman@collabora.com>
 <20240430091121.508099-6-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430091121.508099-6-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_031511_865528_3D6DA7CD 
X-CRM114-Status: GOOD (  20.48  )
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

On Tue, Apr 30, 2024 at 02:41:21PM +0530, Vignesh Raman wrote:
> Now the testlist is used from IGT build, so update
> xfails with the new testlist.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  .../gpu/drm/ci/xfails/amdgpu-stoney-fails.txt | 47 +++++++----
>  .../drm/ci/xfails/amdgpu-stoney-flakes.txt    |  8 +-
>  .../gpu/drm/ci/xfails/amdgpu-stoney-skips.txt | 15 ++++
>  drivers/gpu/drm/ci/xfails/i915-amly-fails.txt | 22 ++++-
>  .../gpu/drm/ci/xfails/i915-amly-flakes.txt    |  8 ++
>  drivers/gpu/drm/ci/xfails/i915-amly-skips.txt |  8 ++
>  drivers/gpu/drm/ci/xfails/i915-apl-fails.txt  | 45 +++++-----
>  drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt |  5 ++
>  drivers/gpu/drm/ci/xfails/i915-apl-skips.txt  | 12 +++
>  drivers/gpu/drm/ci/xfails/i915-cml-fails.txt  | 26 +++++-
>  drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt |  6 ++
>  drivers/gpu/drm/ci/xfails/i915-cml-skips.txt  |  8 ++
>  drivers/gpu/drm/ci/xfails/i915-glk-fails.txt  | 28 +++++--
>  drivers/gpu/drm/ci/xfails/i915-glk-skips.txt  | 12 +++
>  drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt  | 39 ++++-----
>  drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt | 10 ++-
>  drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt  | 21 +++++
>  drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt  | 75 +++++++++--------
>  drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt  | 13 +++
>  drivers/gpu/drm/ci/xfails/i915-whl-fails.txt  | 46 +++++------
>  drivers/gpu/drm/ci/xfails/i915-whl-skips.txt  |  8 ++
>  .../drm/ci/xfails/mediatek-mt8173-fails.txt   | 47 +++--------
>  .../drm/ci/xfails/mediatek-mt8183-fails.txt   | 17 +---
>  .../drm/ci/xfails/mediatek-mt8183-flakes.txt  |  5 ++
>  .../gpu/drm/ci/xfails/meson-g12b-fails.txt    | 20 +----
>  .../gpu/drm/ci/xfails/meson-g12b-flakes.txt   |  5 ++
>  .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   | 26 ++----
>  .../gpu/drm/ci/xfails/msm-apq8016-flakes.txt  |  5 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-fails.txt   |  5 +-
>  .../gpu/drm/ci/xfails/msm-apq8096-flakes.txt  |  5 ++
>  .../gpu/drm/ci/xfails/msm-apq8096-skips.txt   | 67 +++++++++++++++
>  .../msm-sc7180-trogdor-kingoftown-fails.txt   | 34 ++++----
>  .../msm-sc7180-trogdor-kingoftown-flakes.txt  |  5 ++
>  ...sm-sc7180-trogdor-lazor-limozeen-fails.txt | 34 ++++----
>  ...m-sc7180-trogdor-lazor-limozeen-flakes.txt |  5 ++
>  .../gpu/drm/ci/xfails/msm-sdm845-fails.txt    | 75 ++++-------------
>  .../gpu/drm/ci/xfails/msm-sdm845-flakes.txt   | 26 ++----
>  .../drm/ci/xfails/rockchip-rk3288-fails.txt   | 54 ------------
>  .../drm/ci/xfails/rockchip-rk3399-fails.txt   | 80 ++----------------
>  .../drm/ci/xfails/rockchip-rk3399-flakes.txt  |  7 --
>  .../drm/ci/xfails/virtio_gpu-none-fails.txt   | 82 +++++++++++++------
>  .../drm/ci/xfails/virtio_gpu-none-skips.txt   |  3 +
>  42 files changed, 574 insertions(+), 495 deletions(-)
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/mediatek-mt8183-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/meson-g12b-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-apq8016-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
>  create mode 100644 drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt
>  delete mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt
>  delete mode 100644 drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt
> 

[skipped]

> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> index 44a5c62dedad..96e9faf0e607 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> @@ -1,19 +1,9 @@
> +core_setmaster_vs_auth,Fail
> +device_reset,Fail
> +dumb_buffer,Fail

This doesn't look correct, core tests should be passing.

>  kms_3d,Fail
> -kms_addfb_basic@addfb25-bad-modifier,Fail
> -kms_cursor_legacy@all-pipes-forked-bo,Fail
> -kms_cursor_legacy@all-pipes-forked-move,Fail
> -kms_cursor_legacy@all-pipes-single-bo,Fail
> -kms_cursor_legacy@all-pipes-single-move,Fail
> -kms_cursor_legacy@all-pipes-torture-bo,Fail
> -kms_cursor_legacy@all-pipes-torture-move,Fail
> -kms_cursor_legacy@pipe-A-forked-bo,Fail
> -kms_cursor_legacy@pipe-A-forked-move,Fail
> -kms_cursor_legacy@pipe-A-single-bo,Fail
> -kms_cursor_legacy@pipe-A-single-move,Fail
> -kms_cursor_legacy@pipe-A-torture-bo,Fail
> -kms_cursor_legacy@pipe-A-torture-move,Fail
> -kms_force_connector_basic@force-edid,Fail
> -kms_hdmi_inject@inject-4k,Fail
> -kms_selftest@drm_format,Timeout
> -kms_selftest@drm_format_helper,Timeout

Fine, kms_cursor_legacy tests were migrated to -flakes. But what
happened with the rest of the failures?

> -msm_mapping@ring,Fail
> +kms_force_connector_basic,Fail
> +kms_lease,Fail
> +msm_mapping,Fail
> +msm_submit,Fail
> +tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-flakes.txt
> new file mode 100644
> index 000000000000..3cc361b3d3b3
> --- /dev/null
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-flakes.txt
> @@ -0,0 +1,5 @@
> +# Board Name: apq8016-sbc-usb-host
> +# Bug Report: TBD
> +# IGT Version: 1.28-gd2af13d9f
> +# Linux Version: 6.9.0-rc4
> +kms_cursor_legacy

It looks like one of the scripts has lost subtest granularity. It should
be fixed before the patchset can be merged.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
