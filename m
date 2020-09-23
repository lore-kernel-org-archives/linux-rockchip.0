Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B64C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:55:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BBE1208E4
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:55:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Eve3jf4b";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UT6OKO8Q"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BBE1208E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7GodU6N5Otz6DqWA5K+Rw4csv3wMITsBMRPGSXZb8P8=; b=Eve3jf4bCG22DjjLpWcc8FEPg
	virzJf8awr8EE2u4dHYLeZKfqwApmiPXFPrPt5MVr1oF0/vR1W3CqVZEEzPFpBoCJlEm9ynVtpDxE
	1iSM3dMDk9SS+mEvx8LcDw0ZCFsxh6LM2vEprbMxHLo562FparAsB+GH4QU2lBJJVw5BjWlOHSnr/
	0CZsZdnkXK51nA3O095jte2IwLbjfp4+kFAlJN7gOqQWf49nWlYWrvTKmX7XMEG9QuapdGN2aLnbN
	ViD+DDtNJg9r8JZSc4pivGwdo3KZG77MBE6IctGZc3e3fkexsxDy2ZhIEYKZFrnU/37awy0EzfRBL
	YO/1hZphw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLDft-0005zZ-OL; Wed, 23 Sep 2020 22:55:45 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLDfq-0005yw-QM
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 22:55:43 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y190so988811vsy.1
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 15:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vlysOyKJkFmadKzqukaQyhHtYSz6cPklZSFksdyIyRg=;
 b=UT6OKO8QO/bCPpV2cyrz5jV7YLF30uiPhGO4zqV3EYySmxbmK3iExKdq2ppzKoAosx
 P8zhEflR6m7/WxBgbMx7L1m+yryJ9p3jL9DImYYnocNB6BEeercvuVcMlAGYUzCimYhH
 fnjXsD5Xs91goRkoT2EN6129Lckn/P+hv96Jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vlysOyKJkFmadKzqukaQyhHtYSz6cPklZSFksdyIyRg=;
 b=qUzLpit/Z7XS4oqRqTAbO/J8vQz65SomBkzJQZfaNzGa1ghfLzRlUEJeKfvMWPE8NS
 KajDsXeDF4SiYpTpWhjD/2qHT3i2cWA/4rbiA38B/1VIsbkgKlS2aRcv6+tU2OEYpZhs
 vF1GogRCOPhv2spjxcrbKun0xZXmDxFyZZ7ziSe5ITxUCJCzU5QTTPhokroC3UMao1ta
 h2Z/ryWbofa8iES7AhAc715321JVp5DOJd4JdL67ShOYM/cXVUBW52Q6v/JZSW3PT008
 rQ4l3rBLh0etRwnFDWoqCzy82GMA+FIWET4wa3uVUgM7FhoAHgm73RV4CCS7QQXYJGm8
 n+Mw==
X-Gm-Message-State: AOAM533Rg35JFi0w5WjJ2DIsdjpJMNcCiIG8/h/LBWPOFQyDmlnuvF1B
 1EQD5LGdpUSsZL8Wol0O2/P3aenm1Cfv4g==
X-Google-Smtp-Source: ABdhPJyLTKFsspfd9q1l+93Izr/Rd2jGmU/Syt4rTKQbtXf4lyTOLhD94eYPd70uwWgN8HEFkBJHew==
X-Received: by 2002:a67:1804:: with SMTP id 4mr2099797vsy.54.1600901740846;
 Wed, 23 Sep 2020 15:55:40 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com.
 [209.85.217.47])
 by smtp.gmail.com with ESMTPSA id d5sm202674vkf.39.2020.09.23.15.55.39
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 15:55:40 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id a16so944864vsp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 15:55:39 -0700 (PDT)
X-Received: by 2002:a67:ad0e:: with SMTP id t14mr2079101vsl.34.1600901739443; 
 Wed, 23 Sep 2020 15:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200922203107.2932-1-vicencb@gmail.com>
 <20200922203107.2932-2-vicencb@gmail.com>
In-Reply-To: <20200922203107.2932-2-vicencb@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 23 Sep 2020 15:55:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wjd-OCdR1-vpiApFPnJbSbfQdv88kbAhHaQLLM71a2gg@mail.gmail.com>
Message-ID: <CAD=FV=Wjd-OCdR1-vpiApFPnJbSbfQdv88kbAhHaQLLM71a2gg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm: rockchip: hdmi: fix clock rounding code
To: Vicente Bergas <vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_185542_903300_DB147CE2 
X-CRM114-Status: GOOD (  14.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: crj <algea.cao@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Sep 22, 2020 at 1:31 PM Vicente Bergas <vicencb@gmail.com> wrote:
>
> Under certain conditions vop_crtc_mode_fixup rounds the clock
> 148500000 to 148501000 which leads to the following error:
> dwhdmi-rockchip ff940000.hdmi: PHY configuration failed (clock 148501000)
>
> The issue was found on RK3399 booting with u-boot. U-boot configures the
> display at 2560x1440 and then linux comes up with a black screen.
> A workaround was to un-plug and re-plug the HDMI display.
>
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> Tested-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)

My rk3288-veyron-minnie is stuck at work (but not plugged in) and it's
Covid times, so I can't easily test this.  ...but it looks fine to me
and makes things more symmetric / clean.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
