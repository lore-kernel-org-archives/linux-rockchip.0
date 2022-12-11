Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C0B2C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Dec 2022 15:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m92Dig++NtpS5Ph1/sxgyEvkBQwm1mx7CNSdv2+iMO4=; b=B3xaweM91ChfuF
	sbtlq5Ouo+oQlt99bsHtRpiupZsBgL6HseaETy8NeNjIEFkJ9zoPlRUiijNcNWBmLX9DbYfGIpe5C
	uIlWp8QDkin4AnZBDwRFwZ+KuMUtZD7/ucgOtmxUHsVXV0mfFG8jEi5utp7xx0TvF8T1vxN7tGoCy
	gvmkC6WvddChi9HbGyFHD2YW97/ajLSWNft+GAAUeK1N3TU0cn+KXlDN0D+dC95RqFMlr7/cimpT+
	H8L9VW3llLjgju7gWOdjFSLjOo9YJ8YzI4JkNgl6UzK3w/l4zTWZvv46+oLNENFOHqyD6ITvDQ69h
	0Q0YMbGC5Xyporl9RvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4Ocb-001uZl-Lp; Sun, 11 Dec 2022 15:52:09 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4OcQ-001uQX-4N; Sun, 11 Dec 2022 15:51:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8CCA0B80AE6;
	Sun, 11 Dec 2022 15:51:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47A14C433F0;
	Sun, 11 Dec 2022 15:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670773914;
	bh=dJPoRJoE0b7D0qoTg74go7ZPIqI4E63GTw/sa+mGBcw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZbAK9zubcW/9MOpoFhmS+s+SQqnT55D+dx+ku6V7jWsP+x5xeVVzaH+L6x4o3vdrA
	 xmFxvaYWEWXBmmRwoulLCR36/Eje8yP6pePGsSf2bNgl+25HY2oJon/Q+ELq+eFf0z
	 lzgGpoTXL/Hq/cEMpC+h1Eccv2uCX1Pio8A0H1UxtTSK+r5uPji1AtVyqIeWlFOaRM
	 pO2I4chV0gnqrY6JNxk/O1s47Io4zMlUncXqTlGADVHjFFJjetEKugDNJbLyRTaXM/
	 ii4QdTQEVuP10l21cRfpYLg/kb+aSpkUcc6btm9uOb3caoZ3tJsxY4PstnUmdac4LO
	 XJ6VYS8CeubUQ==
Received: by mail-ua1-f42.google.com with SMTP id q22so2556714uap.7;
        Sun, 11 Dec 2022 07:51:54 -0800 (PST)
X-Gm-Message-State: ANoB5pkoMxOXivzma4p8HmW9At0z3QUYvxD3SH1nnT2EqUbPtWVxt78K
	NpB/8DoXNL9s46Hg9TU65s1J3yJwt8UoFngUZg==
X-Google-Smtp-Source: AA0mqf4ZX6PzBBHcVvYR+A/t+vslGzC+Y0WOhfJ69k+mS5u6Cm9N+bGaMJr6O2NwLPCylgHyQA7ytgjSJwTlGjYH8A0=
X-Received: by 2002:ab0:3a96:0:b0:419:678:cf31 with SMTP id
 r22-20020ab03a96000000b004190678cf31mr35054148uaw.63.1670773913199; Sun, 11
 Dec 2022 07:51:53 -0800 (PST)
MIME-Version: 1.0
References: <20220927075511.3147847-1-clabbe@baylibre.com> <20220927075511.3147847-29-clabbe@baylibre.com>
In-Reply-To: <20220927075511.3147847-29-clabbe@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Sun, 11 Dec 2022 09:51:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkHR+iccEf=5SU40Qq+cQpGZRq26TLzec-_Nr-Buu2KQ@mail.gmail.com>
Message-ID: <CAL_JsqJkHR+iccEf=5SU40Qq+cQpGZRq26TLzec-_Nr-Buu2KQ@mail.gmail.com>
Subject: Re: [PATCH v10 28/33] arm64: dts: rockchip: rk3399: add crypto node
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, ardb@kernel.org, davem@davemloft.net, 
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221211_075158_376590_087EFADB 
X-CRM114-Status: GOOD (  16.01  )
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

On Tue, Sep 27, 2022 at 2:56 AM Corentin Labbe <clabbe@baylibre.com> wrote:
>
> The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
> node for it.
>
> Tested-by Diederik de Haas <didi.debian@cknow.org>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 92c2207e686c..4391aea25984 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
>                 status = "disabled";
>         };
>
> +       crypto0: crypto@ff8b0000 {
> +               compatible = "rockchip,rk3399-crypto";
> +               reg = <0x0 0xff8b0000 0x0 0x4000>;
> +               interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
> +               clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
> +               clock-names = "hclk_master", "hclk_slave", "sclk";
> +               resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
> +               reset-names = "master", "lave", "crypto";

This doesn't match the binding:

crypto@ff8b8000: reset-names:2: 'crypto-rst' was expected
crypto@ff8b0000: reset-names:2: 'crypto-rst' was expected
crypto@ff8b0000: reset-names:1: 'slave' was expected

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
