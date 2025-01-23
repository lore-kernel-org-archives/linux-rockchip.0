Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F082FC02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 11:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jmL6Wvr7VFltr2hzqYZ1BMw8hjtxsVrO1ZgYpUGrKo=; b=KS2phW7LMuTQSN
	la+3kO/lV029YsjEWQGLBK3hE/JhROgSyWx394OINCKU5H5giooV+tR39Rzbe818NxbLD+7g20bfN
	Ip19UadgSqfn2URh4+wvJMyxFyVR56sn/SIcq1+Ey9Np3gdddCmxAgOogAN7nKL3JHwQ0M5y777BD
	Jalp4bzmJx55Ujr2J1wEfbRjPZDMah8+mjeArY5dETt+CRoi48vdogJeN67Jnz2LEj3dsRtGS/bhS
	FND+/eT2Ia8Z7bwA+Xo5kxccJbBXxY1dp2JvDpt+pMiXxqoN0Ra00Kjr0C8/wmEBYFfT+JaSKNoGR
	ZzFFvR1eMmcgYsM8bGJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tavSH-0000000CLCq-1lj8;
	Thu, 23 Jan 2025 11:33:01 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tavQz-0000000CKrP-1miJ
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Jan 2025 11:31:43 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5401bd6ccadso877306e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 03:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631900; x=1738236700; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6GV/GI1CAs1idJHC9goHRl9dRjKhZ5TZhhQYyHtO4m8=;
        b=pyLdNqsyAMGUfYHBcaQNevOhU733kvPMGcO7RvAmNJC2aEu3TVNiYd+DzRBMa2CTEx
         QfDgN9sT6KWpsrjU7AWX2CDFp1YrzBw5IU3O23GutAMYpPrzDK1eNjwpi+DSsEtIV2SQ
         tff15H0xDOmTf/1p3BXDTyNdFZgQS1MsU8g4W9cSYqRbartNv4lRIHsilh67e6H1r+rM
         g8pNh/C8fjltkVzd3Un2npfaVH+zwZ8jQxwMlufhRhMgX6pg3i3m0YnJuMFRl9ozE3Aj
         2tzZrdVK61jKkks6vjxEN51YOkAijwU2Y2SvcPR7CPgabUoYpwNoCzNt9DCtWxb3hkJd
         7zAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631900; x=1738236700;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6GV/GI1CAs1idJHC9goHRl9dRjKhZ5TZhhQYyHtO4m8=;
        b=AbfZ3GvMd4IEOywslZItD9Tjl2l9ps0hMzUYN3BmPtfxFnBMYlUO8Yrk17Zp32VPDt
         ZbU5M+nwRFpaLd69tf8QqUkw72RR0GPs9538BxD6OO3MpSXDMmVrPVTZQIJAPzEZyYHe
         cAsIl0qybe1MnXgHRONSLswh4Cq9GFW0cWAGFmW7ypnG2Fy2Swv75jwDGAb/+/XfwBLm
         zg8iRIsySQuAcCkmI35mWxtiGPM86PWSRw9Q8woQJcIOt3vIIw4/Rqd0t/+GPb3ok5S7
         nT9Eeo6NrtU6MlpQxAfl1LJmD7GGDjXhdYyLJdLRR/iNeS0q1vL0fLWaQrj887BisXIJ
         Noxg==
X-Forwarded-Encrypted: i=1; AJvYcCUu9OB/GPned4n1SHu653FS29j6NnVJWW2dKqrhYgK68FqIM9b3AwKl4PlfWxU1icClHlkvNVagbz5NqmQjMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAiJk8mOYU6JzqP9o4RmJHVvLpRklX94/jSggsYm/cJ6tSq6Kf
	cy6lEoLtUGpFd9s7cgKAjpMGrPoobjQJMsBHRh0K+28d7mcKqB2WByELulmYaVo=
X-Gm-Gg: ASbGncvWx9tW40Xbr1hTM1kVpx8B4+iwQpauBdM/+SUVDLYnkRGhYozfP5jAjxf80qC
	8LkwCbLjBFemQh3X90AWLBnohWRGtJJ5Fa+k/tcFibEnVmmBvXAuG/ApqYP9J1Ia3aF8ZfPy3uK
	ih1lu0WIm083wwET7gNtyCH5DZsrOb5NnpFv3CaHfCa/heoeCJULeEOU5jLHZ7FmuW7gu05zpiV
	cordwYvogJjxqUmv+GCO34hc0nrXanQCy1mLfMEwcOujU3dYEBtyM1N+W3c882VIdcBlObRGdFl
	Bkzr8f9yPjHsVq0Y6BNiTi12e8/juV58iNI9RT7fhI+lyZLTZcvNDeM0kaOy
X-Google-Smtp-Source: AGHT+IHtXPZP5fXc+jx9qkDw8OG65Yz52T0nmfyDaHj9u5aH3nN5zjNMvgxVC7Tag6Djcezn71sacw==
X-Received: by 2002:a05:6512:483:b0:540:1b2d:8ee1 with SMTP id 2adb3069b0e04-5439c21f2bfmr7480684e87.11.1737631899528;
        Thu, 23 Jan 2025 03:31:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af7a281sm2612994e87.259.2025.01.23.03.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:31:38 -0800 (PST)
Date: Thu, 23 Jan 2025 13:31:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>, 
	Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v6 12/14] drm/edp-panel: Add LG Display panel model
 LP079QX1-SP0V
Message-ID: <rwn3g7tqgjnc525cjqtivgfgedhooiayn5nujng7bdzazgqhle@wfpuvoyr2tii>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-13-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250123100747.1841357-13-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_033141_457899_4D48111C 
X-CRM114-Status: GOOD (  14.54  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 23, 2025 at 06:07:45PM +0800, Damon Ding wrote:
> The raw edid for LP079QX1-SP0V panel model is:
> 
> 00 ff ff ff ff ff ff 00 16 83 00 00 00 00 00 00
> 04 17 01 00 a5 10 0c 78 06 ef 05 a3 54 4c 99 26
> 0f 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 ea 4e 00 4c 60 00 14 80 0c 10
> 84 00 78 a0 00 00 00 18 00 00 00 10 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 fe 00 4c
> 50 30 37 39 51 58 31 2d 53 50 30 56 00 00 00 fc
> 00 43 6f 6c 6f 72 20 4c 43 44 0a 20 20 20 00 3f
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/panel/panel-edp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)

Please use get_maintainers.pl when compiling To/Cc lists. Added Douglas
to CC manually.

Or, better, split irrelevant patches to separate series.

> 
> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
> index f8511fe5fb0d..77e3fd3ed160 100644
> --- a/drivers/gpu/drm/panel/panel-edp.c
> +++ b/drivers/gpu/drm/panel/panel-edp.c
> @@ -1808,6 +1808,12 @@ static const struct panel_delay delay_200_150_e50 = {
>  	.enable = 50,
>  };
>  
> +static const struct panel_delay delay_50_500_e200 = {
> +	.hpd_absent = 50,
> +	.unprepare = 500,
> +	.enable = 200,
> +};
> +
>  #define EDP_PANEL_ENTRY(vend_chr_0, vend_chr_1, vend_chr_2, product_id, _delay, _name) \
>  { \
>  	.ident = { \
> @@ -1955,6 +1961,8 @@ static const struct edp_panel_entry edp_panels[] = {
>  	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1100, &delay_200_500_e80_d50, "MNB601LS1-1"),
>  	EDP_PANEL_ENTRY('C', 'S', 'W', 0x1104, &delay_200_500_e50, "MNB601LS1-4"),
>  
> +	EDP_PANEL_ENTRY('E', 'T', 'C', 0x0000, &delay_50_500_e200, "LP079QX1-SP0V"),
> +
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d51, &delay_200_500_e200, "Unknown"),
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5b, &delay_200_500_e200, "MB116AN01"),
>  	EDP_PANEL_ENTRY('H', 'K', 'C', 0x2d5c, &delay_200_500_e200, "MB116AN01-2"),
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
