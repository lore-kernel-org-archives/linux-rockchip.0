Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DB66C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 14:20:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4DFD22201
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 14:20:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="BXKtU/ak";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fye/mZ83"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4DFD22201
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=14zoIk5SsVSXEHBolf21uh8UhiybC+kuuxX5a04/9wQ=; b=BXKtU/akWbSiEAx7huvY2gRLT
	1IfZ0Eqzi+j9jM6hc+FWf4cZPURgV3KkJRi1nGhlQpmglMi7nkAiISl/lQ7kmPVl5hqGFlU/BNx02
	Oq5CPymEjaat8FWNlWCiV8um/H9hw6t958MmNjw91DD6ONu0ilZdQYRD4/It0CNTRmjmSPAQ/1D10
	nwpIPxxokGL+ZJTPW/kFmPGHFTbpWHoz/JRxPd1PRPBP9V87gLy19ftXbgPbUXCS+fXykN7FIr0Ta
	V2v27SOTmyFGrEOlx/zHlAsFxRkV6YWJufPzG/ZsTHE8kJRCyltjyOUxjZnzx5aO3xr/aUuEgR44/
	2ZYLBF//w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kShdD-00038F-HD; Wed, 14 Oct 2020 14:19:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kShdA-000378-Oo
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 14:19:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id p15so2451101wmi.4
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2020 07:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ujYG5VF4LvrSV22lkx9qOMlIjb18yncwxkcr5GCM7hw=;
 b=Fye/mZ83y9B+0r+U9CJZ1waeayX+85FMlLHSc4+gTJWWZf4vBLP2YxZjSTBfzYBG8u
 8APzEnC430HqQz/llme76vMg8opmfPSROhfWmdUUgRVFP5yBpx4xlGeLcRaI5yoXYdkz
 5dzLed7XQ0dpRBNNDkzNdlSU9oKJDhO2qys/7oXsPla+LJdfvvjJF6hPB9SdlBPOXovk
 TmOGtJuIKFI4KHnsX1xLbC6gEPjK+oXdU8eSTh4nvZb2ThNHkeN207h50olGTuEFE5ax
 YavntgaTXvTtRdYN+fpGSbF9FWQHfY57Hr44ujNADGf3Y7GQB9kdlTGJ5ifZf3lFCToP
 ByJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ujYG5VF4LvrSV22lkx9qOMlIjb18yncwxkcr5GCM7hw=;
 b=HWo8xXb7fnLvdaMZjJgcvpJhXuwjTTacldqGfyx2wXHQFtyRzE63ltTR1k79+KotLy
 STl7HVDOQBQYgV5PphwdWLfOVYhc3kSH9IuYu6mDQMElLLlYLyzB2ZkInhiHbSkAs4xT
 H47G0y3rlUtPZCEDHmrOEwQ5CqNPhT4IEKcExjU25OkD+PRbQTtqPZVzXKAxvwZEt4FS
 nesSokf7d3QEt35454OJv6obX4DVxKrbhY6GixDRREGMCo7dQ4cQZ/y1M6bN6tvGO4hb
 U6YxSg6GBaPjJYTCulLpPi5A+W+ZVNYfpFMb2Q53M4vRmEDTKuc8wCethnBSX6di1gbs
 xUmg==
X-Gm-Message-State: AOAM531AL2hHay5qVVPKAxjlBy4ZnZMwTF9rujHLhzOkRVZdiDWdufdQ
 vRVcWk0PhU+zigdZMiEybYkJYg==
X-Google-Smtp-Source: ABdhPJwhR5pVDkdV21ZSdeSLhJ7AM3WRmBim9XMCrehLjwtv0ScetmpTUZvdsADXzGFUQx3KVOD3YQ==
X-Received: by 2002:a1c:e1c2:: with SMTP id y185mr3557489wmg.81.1602685189944; 
 Wed, 14 Oct 2020 07:19:49 -0700 (PDT)
Received: from holly.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net.
 [80.7.220.175])
 by smtp.gmail.com with ESMTPSA id m14sm5155294wro.43.2020.10.14.07.19.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 07:19:49 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:19:46 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Alexandru Stan <amstan@chromium.org>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
Message-ID: <20201014141946.mkrvpkrttucffkhj@holly.lan>
References: <20201013080103.410133-1-amstan@chromium.org>
 <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013010056.v2.2.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_101952_899106_EA41A3F0 
X-CRM114-Status: GOOD (  20.52  )
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lee Jones <lee.jones@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Oct 13, 2020 at 01:01:02AM -0700, Alexandru Stan wrote:
> After the "PWM backlight interpolation adjustments" patches, the
> backlight interpolation works a little differently. The way these
> dts files were working before was relying on a bug (IMHO).
> 
> Remove the 0-3 range since otherwise we would have a 252 long
> interpolation that would slowly go between 0 and 3, looking really bad
> in userspace.
> 
> We don't need the 0% point, userspace seems to handle this just fine
> because it uses the bl_power property to turn off the display.
> 
> Signed-off-by: Alexandru Stan <amstan@chromium.org>

Acked-by: Daniel Thompson <daniel.thompson@linaro.org>

Note also shouldn't this be patch 1 of the set. AFAICT it makes sense
whether or not the interpolation algorithm is changed.


Daniel.

> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> index af77ab20586d..4a148cf1defc 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> @@ -20,7 +20,7 @@ / {
>  
>  &backlight {
>  	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
> -	brightness-levels = <0 8 255>;
> +	brightness-levels = <8 255>;
>  	num-interpolated-steps = <247>;
>  };
>  
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index f8b69e0a16a0..82fc6fba9999 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -39,7 +39,7 @@ volum_up {
>  
>  &backlight {
>  	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -	brightness-levels = <0 3 255>;
> +	brightness-levels = <3 255>;
>  	num-interpolated-steps = <252>;
>  };
>  
> diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> index 069f0c2c1fdf..52a84cbe7a90 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
> @@ -23,7 +23,7 @@ / {
>  
>  &backlight {
>  	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -	brightness-levels = <0 3 255>;
> +	brightness-levels = <3 255>;
>  	num-interpolated-steps = <252>;
>  };
>  
> -- 
> 2.28.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
