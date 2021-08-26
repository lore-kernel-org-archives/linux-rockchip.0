Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E551CC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 09:19:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A793C610A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 09:19:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A793C610A4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAbnuwlLJiGLmdF69ia4kU7KjpldDlYlcIou0ZvwL8k=; b=Rtw4Dnedw/wTV7
	mpjVM5iPl2j8elWRSsS5ThcBtPtTh4R96qvuAlGduDCCPyfAVX27wuEDYQvxZMDYqdSuxAs1Bp2eH
	Y/ieCx5kT7ikFMeEJhCtWtHIDQBf3ixi+91CVGm9NQl7JQzomwmSxP0zDNgEe6H/BHzbDI8PP4IfW
	hdT5OaS+ZoNZunfnJaQohPjpCfGpYauV4+Pc1kapSUT1xZNRSMENw1VbPxw4K9n+T3d5XcoSFM7oV
	046GloywWqoLDHmQu57oXjm7c/MCHdMzFuOY5IcrqJdVMzIAk3fGnXd/P+6Qq596yzACTZkZpGbCX
	0kO2RbTC9jBevU9lv81Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJBXZ-009eYn-Qv; Thu, 26 Aug 2021 09:19:17 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJBXJ-009eWP-87
 for linux-rockchip@lists.infradead.org; Thu, 26 Aug 2021 09:19:05 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 z9-20020a7bc149000000b002e8861aff59so2195329wmi.0
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Aug 2021 02:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=KMJBcmq1ZbF4M7qvQIwnmFbcPOdYmPNTJCyQyrP/K4I=;
 b=HYMxJKmJI6lkK9oRwabJkJvg4BmknVTOZc6kLrTHzRnJGXKHNy8FEqyc/pVEv7AI7v
 FzXm9+8wsENdDtneykOm5Kwv7Wkqek7pHpSFvoGSt9UThVfJDY/Xjr3I8M3VHEHX0PUo
 DoWF7H0mo9TXaFpvpSbb9W/3UlLv8RvHPMGyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=KMJBcmq1ZbF4M7qvQIwnmFbcPOdYmPNTJCyQyrP/K4I=;
 b=AzhO9C1YXcBPLP1nFUuAusuFn9NfWvpDYWZ80jKoRA7hBz3z/CsDOzmuWRTcjYvTnP
 QMquiYtNFnpuXH5+IiTXHP04D8V3J9CPkag/+3nHMV3VF9C170YeWkDoFab9vF2mz1qT
 tPU1iMWa845tBOceDcK5egCKIRsqDXJeUJkxXgyz5OJeC7C4rpHVvllHkS0AP5+kQUuc
 yJbJp/sQLM+H43GiN2v4VZj3AgJ58xcgQZVyX/Dj/Dz57h/j4efOt+EKT2sjTIbRgzXU
 fd5GpDjkBzx4onQvjuK73iE5fLjUSZrnWnqbe7cybw8cQjqbn/CF5OT2w4CCqD9UsByF
 aG6g==
X-Gm-Message-State: AOAM532x0ePlSbf5hKFhzSud/0gWDsmhgKueBUNr0/ZwX7qwYSGbD7ZZ
 VWuUGEeYBto7PNrnk98qz2SnMQ==
X-Google-Smtp-Source: ABdhPJyRLhnVn7qZJ+4BuVfziyV2sSG5HJDNYqpREM4DjFqEBEWHewXDa8dbxtyIY5O9FmU4npDFrA==
X-Received: by 2002:a05:600c:4fc7:: with SMTP id
 o7mr12963274wmq.55.1629969538974; 
 Thu, 26 Aug 2021 02:18:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u5sm2417412wrr.94.2021.08.26.02.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 02:18:58 -0700 (PDT)
Date: Thu, 26 Aug 2021 11:18:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/5] drm: omap: remove obsolete selection of OMAP2_DSS
 in config DRM_OMAP
Message-ID: <YSdcgLcD2hOZks6l@phenom.ffwll.local>
Mail-Followup-To: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
 <20210819112253.16484-6-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819112253.16484-6-lukas.bulwahn@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_021901_342755_C3167607 
X-CRM114-Status: GOOD (  21.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Aug 19, 2021 at 01:22:53PM +0200, Lukas Bulwahn wrote:
> Commit 55b68fb856b5 ("drm/omap: squash omapdrm sub-modules into one")
> removes the config OMAP2_DSS in ./drivers/gpu/drm/omapdrm/dss/Kconfig,
> while moving the other configs into./drivers/gpu/drm/omapdrm/Kconfig, but
> misses to remove an obsolete selection of OMAP2_DSS in config DRM_OMAP.
> 
> Hence, ./scripts/checkkconfigsymbols.py warns:
> 
> OMAP2_DSS
> Referencing files: drivers/gpu/drm/omapdrm/Kconfig
> 
> Remove this reference in an obsolete selection.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Except the amdgpu patch all merged to drm-misc-next. amdgpu should get
picked up by Alex.
-Daniel

> ---
>  drivers/gpu/drm/omapdrm/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/omapdrm/Kconfig b/drivers/gpu/drm/omapdrm/Kconfig
> index e7281da5bc6a..d6e4df291d6f 100644
> --- a/drivers/gpu/drm/omapdrm/Kconfig
> +++ b/drivers/gpu/drm/omapdrm/Kconfig
> @@ -3,7 +3,6 @@ config DRM_OMAP
>  	tristate "OMAP DRM"
>  	depends on DRM
>  	depends on ARCH_OMAP2PLUS || ARCH_MULTIPLATFORM
> -	select OMAP2_DSS
>  	select DRM_KMS_HELPER
>  	select VIDEOMODE_HELPERS
>  	select HDMI
> -- 
> 2.26.2
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
