Return-Path: <SRS0=FMM6=D5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33118C388F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 23:06:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F6A7223BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2020 23:06:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HvlkES1w";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gJYZS7td"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F6A7223BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kdO2LooxNYJ1vStzTgJWgMospUVjMzlvZylQmrjSgB0=; b=HvlkES1w62IKuYTWmSBELttrI
	V4o5lPKDssDeLE2mxsgqty/UdFZ/eQOAmYdazlEQTZ++zxDUU60dObdqLp7bkleO6chnwCbsxgR/P
	o76XOT0cgcMtfelGX4N5udTcTAO+4rNfMHiNltqL2CSx1L7iKNzZlh4wInEGAcucO2Igt2kHdTUsd
	PoPi+tanmaqoVOwphtvIw/EEEAJtj5Fo6W7GwRPVLODbTwG+MmWaem9rcgg2fqnam44oGbNuzn3Jw
	LCqDJO1PwA3rknXLLib0AsOEOIsjp2oWyThM1+z0e8neAC5v5bs22LmrU7xW3VrskVa1e8YDtowaH
	joGZzeu5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kVjer-00020Y-OS; Thu, 22 Oct 2020 23:06:09 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVjen-0001zg-Es
 for linux-rockchip@lists.infradead.org; Thu, 22 Oct 2020 23:06:08 +0000
Received: by mail-ua1-x942.google.com with SMTP id c7so961893uaq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2020 16:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JxRD+phXO6nKRrNVkXhm+T+K0XfSv6hV9PXOgCrbpxQ=;
 b=gJYZS7tdUvlN6n7wCC6l8UKl/hQUhS0a6hGb7Q/FBosbV/kTJYwYa24LeSwif7tuem
 Nn8zHuCTR/p2vGK96HHZNjZTTCn3+7Xg1V5R7WwuMwwXGlg+qmNFVEfUcN5zF3aE+Qcp
 bKHh9uZDPoR1Ypgud9k2zNTUGjlrMOZRc32Ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JxRD+phXO6nKRrNVkXhm+T+K0XfSv6hV9PXOgCrbpxQ=;
 b=qbPr6ugKk04TCcmBeC3f09m3YgsQ0SHH6+bPfQQ0bIABqlTfCd5oiMqLT1P28c4AQG
 GtalWHmvogAgFeamdxLvN7FY4h/3w33y3OW17n8tLBSJGt+WIq7yxUZ1zSzibokaoDbB
 jCjAOZg8zPB2INbw68B+hxZLlOR7k8Ib+xdWZo+bcHXWLyjPrDVJK1xEWn35mg/TDTMg
 /hTcy7bHL08zhc9t4l8rEu3extZ5YTp+KlNxWbvAcHCriif0g5OQ5X+Hx/UsHvKC2pHK
 aJGAbod3IaZvX9i9mzpCz435br4UuRL6y+04zvCk4/4P4cY32KIlqk8EtaKfcKpvwUJO
 p55w==
X-Gm-Message-State: AOAM533C4rZ0PSW+4dEFHEEforY/gxOMhasNQk7kyD/SpOdrDLX8Ev4n
 fuXq4xy+oJXZymX04CtO/nb/0y8/ssWISw==
X-Google-Smtp-Source: ABdhPJzS8VtchClbNCsp+tMHxahpEl6V04V/eKkNdkNnlxkihntQIE0giGEXpAMrASQD6pJz1P5IsQ==
X-Received: by 2002:ab0:907:: with SMTP id w7mr3429142uag.100.1603407961703;
 Thu, 22 Oct 2020 16:06:01 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com.
 [209.85.217.54])
 by smtp.gmail.com with ESMTPSA id a124sm391290vsd.18.2020.10.22.16.06.00
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Oct 2020 16:06:00 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id p25so1847922vsq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2020 16:06:00 -0700 (PDT)
X-Received: by 2002:a67:1e01:: with SMTP id e1mr4095984vse.49.1603407959647;
 Thu, 22 Oct 2020 16:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20201022050445.930403-1-amstan@chromium.org>
 <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
In-Reply-To: <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 22 Oct 2020 16:05:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vf2wfPK7CCwHi65ubPnCPWJw4Qh2nKtfC=yx7h8pvuyg@mail.gmail.com>
Message-ID: <CAD=FV=Vf2wfPK7CCwHi65ubPnCPWJw4Qh2nKtfC=yx7h8pvuyg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
To: Alexandru Stan <amstan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201022_190605_542718_9439AA73 
X-CRM114-Status: GOOD (  17.35  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lee Jones <lee.jones@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Oct 21, 2020 at 10:05 PM Alexandru Stan <amstan@chromium.org> wrote:
>
> The extra 0 only adds one point in the userspace visible range,
> so this change is almost a noop with the current driver behavior.
>
> We don't need the 0% point, userspace seems to handle this just fine
> because it uses the bl_power property to turn off the display.
>
> Furthermore after adding "backlight: pwm_bl: Fix interpolation" patch,
> the backlight interpolation will work a little differently. So we need
> to preemptively remove the 0-3 segment since otherwise we would have a
> 252 long interpolation that would slowly go between 0 and 3, looking
> really bad in userspace. So it's almost a noop/cleanup now, but it will
> be required in the future.
>
> Signed-off-by: Alexandru Stan <amstan@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
