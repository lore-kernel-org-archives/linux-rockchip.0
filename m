Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319BBE7719F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 09:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6ljvnBzcfoSd1uAHdPI/Vdy9lTe1A5HX+uIqKny+U4=; b=CINsbfx2+n/7X3
	TNpSGnGPVbc3go+cEohP20WD5PlHZ4aw2+QIJAe3o9OJHyP/AWJtCLIVJMynAhIkgolJ/bKyhmfzP
	o8eF0Y9NBd8p6uVvG/m3p19/gPnqjQW3bYMZROn5O0CkU0711RgNhG2tdXvYnKHCaourCiJZt1Zk6
	DLJWOlnssk1wpCCAhCtLIUruvw4L6uaT9CMOG1Sb72cvztdws0oD6OBqIuAwWzAdC36Vwjwy/2kID
	QbVRhpAIuWqvOFbeNhpOH7uHfOlpPSCpFOcCDt8jCeQL1mk/Obd8exN1O/al/2pXnBs5qYqmmnAg0
	gk3VOJdJEWSisECYDNiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGcU-00000004a38-1OSQ;
	Mon, 13 Jan 2025 09:20:26 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGSV-00000004Y8u-0GzY
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jan 2025 09:10:09 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so4083529e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jan 2025 01:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736759405; x=1737364205; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=f66w0IweUKuCo07oZfKp/IZrAs5/BZA08j1LADCj/KUCVFcrDI7VIIkzwXZICmWvDe
         XjCnkuMJjFkZ/p5+G+sBvBlgXJ1Addjv2Fmqy+ERtUcKo2xLtmkoC9nDE3H0S9RTAEPa
         RZazfSAt0SZxQjvakPq/C5s0X89LwZpd1Sdt4frzpnQRHlnTaDvv8lI55lxT2wR0tPHR
         X5yBWVgifkvw61Hr6ASDKao+zaIVeywCPMir8frtPcDcmRco8mZByxawbEbTDuFCMObz
         pQeBd1DOfu70tCTOhmy3yD5pJSUmuwRDPJbDC5enRLSo5Ojt4MM3OlrqsINI//ZvpL/l
         YE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736759405; x=1737364205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2m7BqFyPTCb5l2+wQfuOnNqekkEOfPARePQKvpZbjSw=;
        b=TZg4LDG+2Pusstj7Yget1sGcUl8jK7KDQbndKnFFpO6BUZpI+qkFLBNrCdckqVZZyl
         KGvvK2IdlWrwYWACCHASAD6pMgSXj1/UjS0krzzieaRmpkOJezQoMXauOhyUos6HRAGo
         rTQzNKSXIwsFfiSQ0hOxFNYnNkFuh31ymXijCrqjjOrHHsnUs+ezJcSdYe/nQ4m3mWYZ
         yfOgfv+uMIvUEANchBfLTjQpsiWDP0GeY1WnCeIZGc2PuArUUFDAD2EYifFGtymGpRVD
         ClnqLnINQoZp+G1LbZwrWec+sAb9jAXEdH2/HWzLDYJRUz1wxGWMM49iZ4BYRbaS35yh
         Mw6g==
X-Forwarded-Encrypted: i=1; AJvYcCWWVjMhR3MuMGd79H3bkS0SXAfdYpvkuhUYPiG6rdahwShn2DxdjZ1WyxrvX3tcRG568Ur+n5Aqxc4MCqL23w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvbyF+f3FnCPIUwaljZfYfAT8uE9gdmw2waCep7XwVLO7uv5Ei
	7S9Zm7/zDtjf5PvJYQpUF23n02LPzne/zDs7ZwdLIf3UKgH9dm4MwZJoHmBuy/s=
X-Gm-Gg: ASbGncvAOPQauB+bBuFgzgWMdCTEwgOOdrmUBhb2OSmg9fIvOnv72sDEsPim4xgdEW1
	2mwm3TS+OGYPHNM7tiEyH6xndBteUh1Da1ndwd4+CEdXk1wwaw4QKlTxyAT0kMhTNPaNg60REws
	S/GQ346nsm+Mz0QDTsxq2BRglxdrLRsxEyFb3UtsKXJDsO52uzr4s398grXqexuVuvDaUViL2P1
	SUoLJb/xRnBF9IwELw9+PnnEE/eTUiwySP2J23EjZuAK76CmItZjSL9MsYxzkJET0VY7wALjnNx
	j3wIs5zH9/GmLKFs338XyVEKPlM0NuCXI3E1
X-Google-Smtp-Source: AGHT+IGw4VY/Y6W8zkOKJuAFr5OCeGQE4lHsOJ/tJKFeVu0YC0sUMWeW67o9DovWrzDT+skDY5PJJw==
X-Received: by 2002:a05:6512:3f12:b0:540:3566:5397 with SMTP id 2adb3069b0e04-542845b70d4mr6410811e87.22.1736759405308;
        Mon, 13 Jan 2025 01:10:05 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be5492bsm1294955e87.104.2025.01.13.01.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 01:10:04 -0800 (PST)
Date: Mon, 13 Jan 2025 11:10:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 0/6] Add eDP mode support for Rockchip Samsung HDPTX
 PHY
Message-ID: <ezoduel3qz5ihlhekry26cb7ace3bm4xmzsfrsqvbodtcl3gjq@xxo75h7uozei>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_011008_306084_B6A43EB8 
X-CRM114-Status: GOOD (  13.20  )
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

On Sun, Jan 12, 2025 at 05:07:08PM +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=923593

Then it should have been v6, not v1.

> 
> These patchs have been tested with a 1536x2048p60 eDP panel on
> RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
> on RK3588 EVB1 board.
> 
> Damon Ding (6):
>   phy: phy-rockchip-samsung-hdptx: Swap the definitions of LCPLL_REF and
>     ROPLL_REF
>   phy: phy-rockchip-samsung-hdptx: Supplement some register names with
>     their full version
>   phy: phy-rockchip-samsung-hdptx: Add the '_MASK' suffix to all
>     registers
>   phy: phy-rockchip-samsung-hdptx: Add eDP mode support for RK3588
>   dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
>     HDMI TX Controller
>   arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   4 +-
>  .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
>  .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
>  .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
>  .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
>  .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
>  .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
>  .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 971 +++++++++++++++++-
>  19 files changed, 934 insertions(+), 75 deletions(-)
> 
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
