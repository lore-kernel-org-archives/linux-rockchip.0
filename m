Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E0EC77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 15:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbOYMEaBiTmb+hbg634KMJ6wcIFjkGVq1yhPQsRU7xI=; b=sxrunFYeGeVeo7
	Mfo1RBl5c3ItpjnjDuYRM5dJDjhr321EvcROyBQLfJnH65O+jdJHkZflUw5zbX/js44yJ1Tsl8bEY
	ULPirc+hdZ/b8FFH02KvM8FfJADOvtJhqNQABUABbk7UszwMF+YlgzHSioySiZL3IySTAHIotRai5
	KrMaxf4ReS5RddCZfnK2erpLLbYzsJFdwgWYfWSdSEXXeG93/CmKWuqSp7Bkc7xpbOqUC3rVhbaqN
	mPUDATnDl6vMbQ0sWRMLwPU6XR34j3JNfnIhO8GyvupbCEJuVMCMKkznpb1nT8NBTxlKKb+FnseS8
	I+CKqJHnX7lrbxn7zWLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmyrD-006Vbw-2y;
	Thu, 13 Apr 2023 15:27:31 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmyrB-006VZt-0f
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 15:27:30 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1878504c22aso4767395fac.8
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Apr 2023 08:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681399644; x=1683991644;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CUK8UGSHUoiocToUShwFZ6IjnlM5/4ZHnGe4gLnESU0=;
        b=aeAwlhfbuxDEmGLzmr4qn1sIPbcsAKVCFKFu5pGfong4RuRbDlQ09tEYt4hkfk40Ey
         cpSkNpSfAF+AbEEbTQeftznc0uVFDpip6Uo1L16NAnp98MBcBEtetImhHGqCiZ8g5pez
         cD5FrL8Fol+jaO0r9YMWrQiZbQRnXPRStccPuQo1yX5GvLjv03fZPRegLUpQOELRFZWM
         cPRpK3Ln+iUCDTrPCFr2Q4dkfO18MoGSPcY8fWCCuKpjMC/KlzYU8kNTryN3FMyFZWZb
         RrfFxTJGoZx2Le2OwVbcCEyAwdtgr1WB1zn7Tdl9EzsG6dlCnOswkKdx6yoFoGlIjLZP
         PqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681399644; x=1683991644;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CUK8UGSHUoiocToUShwFZ6IjnlM5/4ZHnGe4gLnESU0=;
        b=ensrvKvybYyKq8XRqfbUpu1lilQR2RRKXU+1bBumu0DfePW3gQHW3nR0fGtb6AvrRQ
         s8ggggAhv+bEYVMLv8gULsxlARnZt1qJrThYB0UvoXOueJEDOzhd8ddgDCZ83R5ZZpeZ
         /WDNU/U4OUE7Cn1+PbmPBhHoA98KRf++nO7J1aWiUyFrwo068Dd3E5+yyOlnJcs2GAKl
         RqqRJ07hOVr1SSrFqCKGNYZn4VbuRqNJpoz49k1y5CARvKY5Ue8JX+nTEYv9nlEWjj7q
         Uytn27GxluT43s33TPypdJ90Eg6v2cdiVMElGRcGt+uDYeTVPDDmKNyJEDhCYOWnEPPI
         BKrw==
X-Gm-Message-State: AAQBX9eNX6GcLSpgELhKhujFM4XIXCu4PH4WYwKxgH5wbfknNBxEUPvW
	tJeiB9uhxxYa6E2fB/chB+c=
X-Google-Smtp-Source: AKy350bz179FxBnltSYj2CIpmACrhB4CeMl7xmLodBy6+1eemMwFHEBVzU8OfoLpGLRd7geQvNvWqg==
X-Received: by 2002:a05:6870:210:b0:187:87e3:1247 with SMTP id j16-20020a056870021000b0018787e31247mr2186944oad.43.1681399643830;
        Thu, 13 Apr 2023 08:27:23 -0700 (PDT)
Received: from neuromancer. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a056870414400b0017ae909afe8sm793608oad.34.2023.04.13.08.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 08:27:23 -0700 (PDT)
Message-ID: <64381f5b.050a0220.1533e.41e2@mx.google.com>
X-Google-Original-Message-ID: <ZDgfWQKFBMeDrqVu@neuromancer.>
Date: Thu, 13 Apr 2023 10:27:21 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
	=?iso-8859-1?Q?K=F6ry?= Maincent <kory.maincent@bootlin.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix suspend/resume
References: <20230413144347.3506023-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413144347.3506023-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_082729_295839_ECAB1126 
X-CRM114-Status: GOOD (  21.78  )
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

On Thu, Apr 13, 2023 at 04:43:47PM +0200, Sascha Hauer wrote:
> During a suspend/resume cycle the VO power domain will be disabled and
> the VOP2 registers will reset to their default values. After that the
> cached register values will be out of sync and the read/modify/write
> operations we do on the window registers will result in bogus values
> written. Fix this by re-initializing the register cache each time we
> enable the VOP2. With this the VOP2 will show a picture after a
> suspend/resume cycle whereas without this the screen stays dark.
> 
> Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index ba3b817895091..d9daa686b014d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -215,6 +215,8 @@ struct vop2 {
>  	struct vop2_win win[];
>  };
>  
> +static const struct regmap_config vop2_regmap_config;
> +
>  static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
>  {
>  	return container_of(crtc, struct vop2_video_port, crtc);
> @@ -839,6 +841,12 @@ static void vop2_enable(struct vop2 *vop2)
>  		return;
>  	}
>  
> +	ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
> +	if (ret) {
> +		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
> +		return;
> +	}
> +
>  	if (vop2->data->soc_id == 3566)
>  		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
>  
> -- 
> 2.39.2
> 

I confirmed this works on my Anbernic RG353P which uses the rk3566 SOC.
Before applying the patch I displayed a color pattern with modetest
before suspend and it appeared correctly. Then I suspended and resumed
the device, attempted to display the same color pattern, and only got
a single pixel on an otherwise blank display. After applying the patch
I performed the same test and the color pattern appeared correctly
both before and after suspend (and the display was no longer blank
after resume from suspend).

Tested-by: Chris Morgan <macromorgan@hotmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
