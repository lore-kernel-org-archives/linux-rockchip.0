Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A470DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPR1Kix9Kp+/O6kqR6ZP8AsDhjgchShCsfEVp3YUcfA=; b=yGkD1SCN0mErj8
	Ef+/p2usN2lGqWiapDPB1kNuNzHS6/TwJfSgw8MkzSqlCOy5ZE1oyv1xombPPd6LW+7Zx4hX/ChLq
	LytAtp4CiyX0y4Z81Tbj9G8HvmOCXIMDM50sg6SU4n41YCH1z9ENK/Sy7otd1ry74fYPAviTLwML5
	S8ez4oV5nwZPyjWj4soAkpW7JbYO5aa2PIhukrTkQUpWGB2J+GgWeT6qA/6IK4bZuwtpDu5edVnU8
	V4Y4hsc3nzXM4U8yX06MS5zM3o4q9tPi46KF4DxljPSvvtVFpIbHbpZqkB2q5VX5JfQPNdXFAVPM1
	wH+YWRIpdUcTgFW8EKQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njRaD-00G4q4-N0; Tue, 26 Apr 2022 20:14:49 +0000
Received: from mail-oa1-x2d.google.com ([2001:4860:4864:20::2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njRa9-00G4mm-DY
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 20:14:47 +0000
Received: by mail-oa1-x2d.google.com with SMTP id
 586e51a60fabf-e5e433d66dso20593328fac.5
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 13:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=avrL8kBGOAtHrlufWidGzW1SmL7urHwKdn/4+Y9ZapU=;
 b=ekwF9H5Lj4Esed2D7g0ZUxlVHCSLuJ639rdDmoSOqIXBY3XdEIHYO22C8h1/MujRSd
 JM+nnb9rUVZTY941rNSAtVeqzY1AVWUnpT0BpKB0m1L88RNWJr8llN9wDMolf7GjsaGc
 ZuQxQq5xU67IJb3sZ0x4kQm1JzrkYCC0CC9KbMZAIdVEo3MNXS5iB9U0P0+V4h71J4qZ
 OUVLMaztRxOBpZTQtW2l/TjH0qJ9+WvHmGi5/AIVzlAjcvio383qf5MJcUwbU8tBjXOM
 +/ggS4GDBBmiqwk6w8KJWSiJBKPono+ukIA8elVgStzLeHt70xT8Zel4SxrJ6KuI42u7
 x5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=avrL8kBGOAtHrlufWidGzW1SmL7urHwKdn/4+Y9ZapU=;
 b=vqhzCtUPkZW6NNe11NHXVQkYdcK1NTQbL0pGTFEdrFegKMiMMUPHEPb6tHinDhULK1
 q1GaZvq9fSeWUSbP4iOxEPif72g6xZ0heqhRMrmdO9i+lG+P5ifjc/pvHFbqMML6EWvw
 OKoCm3L7D7j1pnW3XsFDR3RkWDxHYuzs/hYaEaMsC8fZl+UmXVaQPMPcYC5yycc/nlYF
 aftqQUPSKUiYKKVlxOBiXdCpnq7tAEfy5Uhj0/tn4D4KaFwgWHPMaH5umX2hxoGPbWHm
 T+B9B5kgCwmlumhKmGBDpOjUekD01zaTyMdu6bpza8V66f23o0Z/YCpM59TaaPtrmfm+
 1CGg==
X-Gm-Message-State: AOAM53265738K2kZcszJJ160KGZHYLXgOXM8g0QPSD1rdLjCtg56+FO6
 O48OcKuaQGEiy30kdLQa7QI=
X-Google-Smtp-Source: ABdhPJyLGBKirk1hBPpVS+1Z9qsk4+S0BscWuLt5Raf+YLahHgrw6ExNxnQyBMPC1NF+gSFUJSzLJw==
X-Received: by 2002:a05:6870:4728:b0:e9:4272:fe3 with SMTP id
 b40-20020a056870472800b000e942720fe3mr4875695oaq.61.1651004083313; 
 Tue, 26 Apr 2022 13:14:43 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j72-20020a9d17ce000000b005e6b89f9f54sm5321108otj.32.2022.04.26.13.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 13:14:42 -0700 (PDT)
Date: Tue, 26 Apr 2022 13:14:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] soc: rockchip: Fix compile-testing SoC drivers
Message-ID: <20220426201441.GJ4093517@roeck-us.net>
References: <20220426014545.628100-1-briannorris@chromium.org>
 <20220425184503.v3.3.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220425184503.v3.3.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_131445_479157_94AB2D36 
X-CRM114-Status: GOOD (  21.14  )
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

On Mon, Apr 25, 2022 at 06:45:44PM -0700, Brian Norris wrote:
> Similar to commit 7f94b69ece51 ("ARM: ixp4xx: fix compile-testing soc
> drivers").
> 
> drivers/soc/rockchip/Kconfig makes plenty of provision for configuring
> drivers either for ARCH_ROCKCHIP or for COMPILE_TEST. But
> drivers/soc/Makefile pulls the rug out from under us, by refusing to
> build anything if we specified COMPILE_TEST but not ARCH_ROCKCHIP.
> 
> Currently, I'm not aware of anything that breaks without this patch, but
> it certainly makes for confusing builds (CONFIG_ROCKCHIP_PM_DOMAINS=y,
> but we didn't actually compile the driver?) and leaves room for future
> error (I have pending patches that break confusingly with COMPILE_TEST=y
> even though their Kconfig dependencies seem correct [1]).
> 
> Defer to drivers/soc/rockchip/{Makefile,Kconfig} to do the right thing.
> 
> [1] e.g.,
> https://lore.kernel.org/linux-rockchip/20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid/
> [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during transitions
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes in v3:
>  * Drop ARM||ARM64 dependency, now that bare dsb()s have been removed
> 
> Changes in v2:
>  * Depend on ARM||ARM64
> 
>  drivers/soc/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
> index fd7717d597fc..4c91705a8bb3 100644
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -23,7 +23,7 @@ obj-y				+= pxa/
>  obj-y				+= amlogic/
>  obj-y				+= qcom/
>  obj-y				+= renesas/
> -obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
> +obj-y				+= rockchip/
>  obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
>  obj-$(CONFIG_SOC_SIFIVE)	+= sifive/
>  obj-y				+= sunxi/
> -- 
> 2.36.0.rc2.479.g8af0fa9b8e-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
