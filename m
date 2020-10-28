Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 211A6C388F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 14:56:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68385247A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 14:56:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UA2BEgp2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QT3KbY0c"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68385247A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56GcOqPtEtJdmrnl1I4ubQdREB/sbdJAN+8KXdHltwI=; b=UA2BEgp2bIugkEx1bTadLAaRN
	poGnOCMdIGtf1oz3FwbxeRyaw8Zq6CiFMhIfwKl5cKdKuFzoUswy56seKog3sqn4vfBVbY37I/9wP
	Zd7MMR9S2rfknDU7GxGFY8W3KyUPpS6L4HA0orybYvoVKb0UFY0BDLgDfP81A0m79kt4Pbr0nOTAv
	muFGBWqb+ws62qfcboit1cXSd4RVmu7SdYRbPLe8PnTEpXf1jybZ1KCmmi/rCSekcxH0QWKyhpr1U
	x+qRXNAwUt0ox6D2YDsCDGO4J9I9ELXFDm8TJHhBRifuXt6Io43iQYyd77c8yZu13tvqwbMLPYDbS
	enHJFLn6w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXmrn-0005wG-DC; Wed, 28 Oct 2020 14:55:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXmrk-0005vQ-Cx
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 14:55:57 +0000
Received: by mail-wr1-x441.google.com with SMTP id w1so6037830wrm.4
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Kgs7oOpZiYMl5H9WjnHmd1QkROQmWLTfKSTmyAsUaIY=;
 b=QT3KbY0cn1J1iTy+1fLJ5oZJ8uOp5dPKiT042ECYgACs1DaqqiFE004N4MiEUzm/sp
 FAGwauvRmcA2zwmtAvP5tm66nl0F5bmxowyhvdvHkCwxaSCMv3YtQfyWj7hKqMK99pi0
 rq5bjRVVgPgc8xm1MiAb8eBS1PmEGqTAsetdy2p0Dee1QAfrvbj6JSLyEingLRR76jaN
 0enE9H0GyhN8UXfmQu0BaAx7y41A+P7mvBrHXBv9gRPzR/lLI4LyA8ZopOafNnfGonG7
 vKpodtSSQw5wZDx52aJEDswkFk29D6mftf+sufUo7K/tHY1PwOpGvSjyEaw5MZwjcwCR
 Ef2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Kgs7oOpZiYMl5H9WjnHmd1QkROQmWLTfKSTmyAsUaIY=;
 b=Nnwd5ooGZlKIq2R6X6FJpJRnLNrNhHw2AIC38fw3uvEyaIvf5M3bEur0E9AjY+6Oae
 qK9v7lm0/MpeRfltVkPqJ0+0p8u+Ljj5S1Hm0JVpksAzkZ/gpn+CBK/onoTk6ABvqnii
 bdKqGRT7wEcaTSQZQmVNmXa+U78GLAfB/rNJz9dmEoPebma6Dbt1Mhvge2hhHJI50a7j
 dY/o+gxV9uHHzVDWTf1nQBUYCiZqs0Mfv+7rN2r2wxzIS9DDaM4oWPTuDRb2/oHTd/1H
 ncBntFKo1xulI2mT9nc1Av5i4BeCHIvVUr4LnX3eYFlXT0XoV19rNHqpif0LQdbxXiIl
 y2wA==
X-Gm-Message-State: AOAM532Z+EhBsZIXI6lgPxZobq3uB0Gpsa9NtgnL5HCvCAE6u7tBDtDC
 pF1cnPoL/3YgdDaLodZMQKwdUQ==
X-Google-Smtp-Source: ABdhPJxaoMdHf9VjBHJiaJux8MOBb5IV8da8WyQ7NwAcHNA6kfKRLpioHRTMxrceTg2Ior50e3Xf5Q==
X-Received: by 2002:a5d:420b:: with SMTP id n11mr5541659wrq.218.1603896953907; 
 Wed, 28 Oct 2020 07:55:53 -0700 (PDT)
Received: from holly.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net.
 [80.7.220.175])
 by smtp.gmail.com with ESMTPSA id l5sm7110494wrq.14.2020.10.28.07.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 07:55:53 -0700 (PDT)
Date: Wed, 28 Oct 2020 14:55:51 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Alexandru Stan <amstan@chromium.org>
Subject: Re: [PATCH v3 1/3] ARM: dts: rockchip: veyron: Remove 0 point from
 brightness-levels
Message-ID: <20201028145551.pn6nxi6skcfbqori@holly.lan>
References: <20201022050445.930403-1-amstan@chromium.org>
 <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021220404.v3.1.I96b8d872ec51171f19274e43e96cadc092881271@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_105556_777720_3BD2BD0A 
X-CRM114-Status: GOOD (  21.48  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Douglas Anderson <dianders@chromium.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lee Jones <lee.jones@linaro.org>, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 21, 2020 at 10:04:43PM -0700, Alexandru Stan wrote:
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

Acked-by: Daniel Thompson <daniel.thompson@linaro.org>


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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
