Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73ACC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 23:22:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 383AD6117A
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 23:22:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 383AD6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8U1KfeYELwouFrH7jtZK/JTmcPpc+ql8wFDIBMIAsN4=; b=FQUq3+Usx7MY5pDS08hyUOaSE
	AZQDghpfBFw9Tng04VcOcff/K7Uq3xbz4uDMbeJ/punclCz4vv/woIIznj2KH81Jwv55zq1dKzQYe
	JQcM/V0du/0JH3INrmVeJPV3c3pQAL8uxZJxKbamWIi2gMWAIP00nFVZpOlCZPbu5qsb0UAFspwOB
	tRjzohpv0vjnwwc4vwIY3fBrKX92mp/AJmInE8NI45N2N1ER2QaELO0hqalrnuBJ3lj/mCrK3iwFv
	TjV64Nd5YTPKHs97YgJ9fnv42vrQxsQHcrcKhob0ruwLDleUNCSgJkQawpMi/jz3P0q0RTSBsX6gu
	IW6wTUvqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW5tD-007sNp-JD; Mon, 12 Apr 2021 23:22:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5t3-007sKR-1q; Mon, 12 Apr 2021 23:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jUN8tSeSOnf7DAkPqNQanB/rFs0da6WdiLNb6KUhk6s=; b=aS25luL1WGkSUfcoxzKCh0Lhpm
 YrbEuyoduYbhmYL02v6F1kBHUINtjOWNG+O2eAkDHB62QYZLXZHTPWcTvGPvRkwjFNvQFzsnAoDkG
 h2SSl4avuDWWD24JCuLmGlN0Qql4mWHno6a7i/+AXG4HlKu1OrXfg9Zcm8nxS3y2epTnny+nN/NGN
 gSlLzsiou0VPOYlKz7DMLXjEJP+GCc1TVT/3FkD7J3EWJHrgGfZdAIfFsqyliRznzQo9TqV/yHkwE
 EPOzVS2DgvJ5DAgkYxFel7h+Nmvz7XkwSmIeENnYT4sY8+hQBwXMmToWAzmRVmmw94xl5eB1FMqdW
 ivg3Owow==;
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW5sz-006ckd-Rs; Mon, 12 Apr 2021 23:22:31 +0000
Received: by mail-qt1-x82d.google.com with SMTP id f12so11372737qtq.4;
 Mon, 12 Apr 2021 16:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jUN8tSeSOnf7DAkPqNQanB/rFs0da6WdiLNb6KUhk6s=;
 b=vB2w0y1h4Ef8oVhbqXA1cZCrsfvvJLt3EDVgYFW4xa1T7icicCaz/dGEbCvCdZ5Sq5
 815+75lH4znEV2R97bC2YmM00/AZkUaJ3RBkGRT3rdS+UBGQ0WMhS6DcDRVVrHEBxRDq
 8yG3NICtoDJgUhtQMIfk5dSqnRotcbOcinDkD2BVcq0PBD3OwRkYf6FQ5MKcQZWeDJxV
 3ZvyPYr1dRrpGCUqeE2jjWjKnWeEnbv+74HFi6+mSGYWKJobBCZhZ3+Nzw41B6OVnoWI
 kf2UphxBHYBH6BCenkc9FjnjF/Wz+6qHyqOD18oLtUzUGEemwefmbXaYXD0RjxVbv4iW
 GC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jUN8tSeSOnf7DAkPqNQanB/rFs0da6WdiLNb6KUhk6s=;
 b=RgNddkMAdiB34nxQtRF3hC+tTGBa2Nf2yR3Ob7vJodV3Y/Wjm3RTrmj82QFVhEM+0m
 o+hzYDmSSafBrd+rQWx2aRag7EVjM/8O1dQnzgHDUFlR1uiIbDE3dh7FWAb/U7YxB9Hf
 kgMZRJzxjmNlU9fYVW6AXTv0Jjmm0LFGqfCfLEakwIEmW6oep9ntkeSu/sD7IplXNLE8
 Dthe/jAdeYYN8BB/a3SYjh4iEQ9nXeT2G+JY8jm/Ltn/cV0sms7am2jMI+zHi8BBv8eI
 JzZvpH5S82fRLmg6RsPbFr5S8PKFu94ior+fZ0IBAqOquNdcZhoDoJDOJiiZj+6CLQpU
 WEAg==
X-Gm-Message-State: AOAM531wFDXpZmYiH2SyJO/rzUozbVo/Siy09wM9NYIenF+IgFwqR8QX
 uabSMHvg6liZWFW6f1bLgFHahCprvgstv0hNvdA=
X-Google-Smtp-Source: ABdhPJznh7/pGX/O2H6YmpOs21DYtphA0HiiIUimdzJayeF/wu2KIzIQu0vLTkiM/NpY5EvB7/qLo8DYJKbX0ubwvvo=
X-Received: by 2002:ac8:4899:: with SMTP id i25mr15866226qtq.59.1618269748446; 
 Mon, 12 Apr 2021 16:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com>
 <20210412223617.8634-3-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-3-jbx6244@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 12 Apr 2021 19:22:17 -0400
Message-ID: <CAMdYzYqTS-qEOaVsnWMSABpj5Z55An_GLCUoOZZg-fjMp9qi8w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: change gpio nodenames
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, bgolaszewski@baylibre.com, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_162229_938990_558FADA0 
X-CRM114-Status: GOOD (  19.50  )
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

On Mon, Apr 12, 2021 at 6:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.

Currently the rockchip pinctrl driver checks np->name against the
bank->name and if they do not match it does not set the gpio-bank as
valid.
The new GPIO driver appears to follow a similar method.
This will break the driver without a correction.

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/pinctrl/pinctrl-rockchip.c?h=next-20210412#n3836

>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi   |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 10 +++++-----
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi |  8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 +++++-----
>  5 files changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 939440015..96924e05a 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1247,7 +1247,7 @@
>                 #size-cells = <2>;
>                 ranges;
>
> -               gpio0: gpio0@ff040000 {
> +               gpio0: gpio@ff040000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff040000 0x0 0x100>;
>                         interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1259,7 +1259,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio1: gpio1@ff250000 {
> +               gpio1: gpio@ff250000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff250000 0x0 0x100>;
>                         interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1271,7 +1271,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio2: gpio2@ff260000 {
> +               gpio2: gpio@ff260000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff260000 0x0 0x100>;
>                         interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1283,7 +1283,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio3: gpio3@ff270000 {
> +               gpio3: gpio@ff270000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff270000 0x0 0x100>;
>                         interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 00844a0e0..ba7dee2e8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -688,7 +688,7 @@
>                 #size-cells = <2>;
>                 ranges;
>
> -               gpio0: gpio0@ff220000 {
> +               gpio0: gpio@ff220000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff220000 0x0 0x100>;
>                         interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> @@ -699,7 +699,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio1: gpio1@ff230000 {
> +               gpio1: gpio@ff230000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff230000 0x0 0x100>;
>                         interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> @@ -710,7 +710,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio2: gpio2@ff240000 {
> +               gpio2: gpio@ff240000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff240000 0x0 0x100>;
>                         interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> @@ -721,7 +721,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio3: gpio3@ff250000 {
> +               gpio3: gpio@ff250000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff250000 0x0 0x100>;
>                         interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> @@ -732,7 +732,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio4: gpio4@ff260000 {
> +               gpio4: gpio@ff260000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff260000 0x0 0x100>;
>                         interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index c2ca358c7..858d52e2d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -1019,7 +1019,7 @@
>                 #size-cells = <2>;
>                 ranges;
>
> -               gpio0: gpio0@ff210000 {
> +               gpio0: gpio@ff210000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff210000 0x0 0x100>;
>                         interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1032,7 +1032,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio1: gpio1@ff220000 {
> +               gpio1: gpio@ff220000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff220000 0x0 0x100>;
>                         interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1045,7 +1045,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio2: gpio2@ff230000 {
> +               gpio2: gpio@ff230000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff230000 0x0 0x100>;
>                         interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1058,7 +1058,7 @@
>                         #interrupt-cells = <2>;
>                 };
>
> -               gpio3: gpio3@ff240000 {
> +               gpio3: gpio@ff240000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff240000 0x0 0x100>;
>                         interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 7832e26a3..8ae10c434 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -803,7 +803,7 @@
>                 #size-cells = <0x2>;
>                 ranges;
>
> -               gpio0: gpio0@ff750000 {
> +               gpio0: gpio@ff750000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff750000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO0>;
> @@ -816,7 +816,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio1: gpio1@ff780000 {
> +               gpio1: gpio@ff780000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff780000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO1>;
> @@ -829,7 +829,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio2: gpio2@ff790000 {
> +               gpio2: gpio@ff790000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff790000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO2>;
> @@ -842,7 +842,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio3: gpio3@ff7a0000 {
> +               gpio3: gpio@ff7a0000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff7a0000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 6221b027e..c97a25c70 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1941,7 +1941,7 @@
>                 #size-cells = <2>;
>                 ranges;
>
> -               gpio0: gpio0@ff720000 {
> +               gpio0: gpio@ff720000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff720000 0x0 0x100>;
>                         clocks = <&pmucru PCLK_GPIO0_PMU>;
> @@ -1954,7 +1954,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio1: gpio1@ff730000 {
> +               gpio1: gpio@ff730000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff730000 0x0 0x100>;
>                         clocks = <&pmucru PCLK_GPIO1_PMU>;
> @@ -1967,7 +1967,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio2: gpio2@ff780000 {
> +               gpio2: gpio@ff780000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff780000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO2>;
> @@ -1980,7 +1980,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio3: gpio3@ff788000 {
> +               gpio3: gpio@ff788000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff788000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO3>;
> @@ -1993,7 +1993,7 @@
>                         #interrupt-cells = <0x2>;
>                 };
>
> -               gpio4: gpio4@ff790000 {
> +               gpio4: gpio@ff790000 {
>                         compatible = "rockchip,gpio-bank";
>                         reg = <0x0 0xff790000 0x0 0x100>;
>                         clocks = <&cru PCLK_GPIO4>;
> --
> 2.11.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
