Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67163C43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 11:44:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C6C620709
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 11:44:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1BonHHDt";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ERPML5Tf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C6C620709
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WHDRf8cyNgKmnweARd1ASACmUGpJ72pWqAEZEad1ilU=; b=1BonHHDtQefyrDjrvL1/lxtl+
	WzHuayxDxTLt25/2xLu3AHOKgMIP/Z9Kx4kzTYvlyAD1PYcA12MkW66JJ8/qjlq8RYhTXmWcW/li5
	9ni53HeUfWNBsXaGeIbpvlmOPQaj+3Op19RgA+m5jHqjkpzX+FTOXR1LnSuXeyjsVtxmJsnZQc24V
	2zRtMSNVqQmucfPxtwdmCY2Xrt7/JCI9Cvg/bHQzoePCLGp0livvvdmuleY4eFL1oh0JOvXF7q9Je
	ml6c8OvbqDgLNiCJZ0lra8Aorbt2YgV2Rzx8893rhdOcsXbzLEu3rv3oStW/gqyga1ETZWcfxH39Z
	btOEQI6DQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEA8M-0000wz-M1; Fri, 04 Sep 2020 11:43:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEA8I-0000wA-VN
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 11:43:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id k15so6399654wrn.10
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2020 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ysBV8EHmB5bF7bmhKaHH5XXdeOwwXfi3lB8yzT/cQJI=;
 b=ERPML5TfkAu4IeCukhG/Nhlef0bp6OEGWyqpI+H9cqWpmexGM/dwCjHvlLMpvGvX82
 s++1gsWLmCFIQqjtJ6gPxGZg64liHxtYHMNfzEwXjYUhG1pqLBkD6MzKYUkK5ioJ0e28
 1gE7JrRjKkvKi2dnQs5itiw0RcAflKbRtSmVy4BEyrD+youQszYtp+ZAq2TK2TQHQ3/Z
 NvPbd39Cf8+edAPlFgRmtHkYGb40/7T/A+vmU9uqJ1gqGH5frO/n3rDNoiuxeb6RzMiM
 DHqMTkB1Z03edqTnGiWf+N3I4VCcU3DMoQM+drbafMbvrHXFaQ6EpO+AEYAVV0xS+Nlh
 V0Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ysBV8EHmB5bF7bmhKaHH5XXdeOwwXfi3lB8yzT/cQJI=;
 b=C8lGhEbJWQyXZTcag4vRwnFdUXlZ2o/pX7PudLyK+d07GvBM2XUAYESUEImrYX/yhn
 zVI4PQP1b24+7MYPdMAY/P6Ls4ufHoKHcbFjW7J5HftZDyCsYJHakDR0eJVvjoJV9cj1
 aMkEjmSpdaq2n6honuXuekruwgzmpCrmch6RuYIZIajLEoO25Ma50aDmS3i4qRXHZUig
 CR9ZpjLvoQEvGG6geeEdpL/N8u3UuH6QP94PRUryYla9lBdKnWI/pZI0WDe1L63KoUOe
 wnaKk+HuE1d6Q6MQYUq8zvotrxIHL5O/S0TRK4LwXCPjXcQXl40I4rIaGivnUmIdiAv9
 r5NA==
X-Gm-Message-State: AOAM532kbsu8AjRl1yRLZ7ZXTN6jZm5q+BJesbOPPQpHjNnXwXZTxQVQ
 A0z7onVC536wtRc6EMwBaaEW1w==
X-Google-Smtp-Source: ABdhPJy9JCvlhC4pfdcbOeNMvmI99h2ggyh5dFXaXSknmVKya2fRCYzaf1Gn4wvLYshTpHoPPGgO8g==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr6996379wrv.369.1599219832344; 
 Fri, 04 Sep 2020 04:43:52 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id o4sm6783818wru.55.2020.09.04.04.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 04:43:51 -0700 (PDT)
Date: Fri, 4 Sep 2020 12:43:49 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Alexandru Stan <amstan@chromium.org>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Remove 0 point in backlight
Message-ID: <20200904114349.fq26qqozd4tz6sjs@holly.lan>
References: <20200721042522.2403410-1-amstan@chromium.org>
 <20200720212502.3.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720212502.3.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_074355_317611_961F4A57 
X-CRM114-Status: GOOD (  20.74  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lee Jones <lee.jones@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 20, 2020 at 09:25:22PM -0700, Alexandru Stan wrote:
> After the "PWM backlight interpolation adjustments" patches, the
> backlight interpolation works a little differently. The way these
> dts files were working before was relying on a bug (IMHO).
> 
> Remove the 0-3 range since otherwise we would have a 252 long
> interpolation that would slowly go between 0 and 3, looking really bad
> in userspace.
> 
> We'll still have the 0% point available to userspace, "backlight:
> pwm_bl: Artificially add 0% during interpolation" takes care of that.
> 
> Signed-off-by: Alexandru Stan <amstan@chromium.org>

Hmnn... almost wish I hadn't seen this ;-)

This basically says that your first patch will produce some odd
behaviour for existing device trees! On the other hand I strongly
suspect this trick is only currently seen on Chromebooks (since IIRC
that's where backlight animation is popular).

To be clear I'm entirely in favour of the changes in this patch... I
just dubious about combining it with artifically adding that 0%


Daniel.


> ---
> 
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 2 +-
>  arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> index 171ba6185b6d..af4b21636c08 100644
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
> index 383fad1a88a1..b25aa2f3cbee 100644
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
> 2.27.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
