Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59031C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 14:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv9hmH/8uR4CQOFtHA2UPcSmLozmtjth3gzzO7z4FOw=; b=y7t5dqT8XJvTaL
	oOqx2pMBbCsh0LrcCbdcIqjdYTJMk836fhgjM3hZDVuuDqxPSv9VpYqqdR8lmRd2EEb9v2KfNOBYC
	dqK+uwLCwlD5ejhCh4Zc1iJlSZ1WR2HAIf47ZCPEAeBQ1f7VdzAKz6pbF0Ahkmju2jgBeeoNQYjdx
	wXR7cO++lTn7xjznt7ZnKMVxGa1Wlv9anMRXGoawXyEYsCVPucQWF7KkpQPfPm1MufH9JdzOKJrED
	8kofGJ+fBDMs4YC10WlIOBkt2ZOWFmSzhBS2HmxnJOMNeS/pd9u/4dPUliI4sWEiCay+8B8Q4R6zq
	4+62vFw1dSGjxnWmz33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxc2-003wr0-8L; Fri, 04 Nov 2022 14:24:02 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxXy-003uyB-N6
	for linux-rockchip@lists.infradead.org; Fri, 04 Nov 2022 14:19:54 +0000
Received: by mail-lj1-x22c.google.com with SMTP id a15so6546308ljb.7
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Nov 2022 07:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=voYiNsyY/ek+IToQ07CcYY4mSqrFhgou3qPtSDlDP1k=;
        b=XRhbm3QbiRh2CLfnWomQBfhuEqdrThEhDEBRNtSNBbz5ba50fEhbTe/19ySlo61bP/
         fXL/vtM7oizgNn06YBpUeewCIwQWwwBZv6Kc5ijGbGo3jAS6PFB6RuhcrEMWf461JiGF
         icTWxx/P//aLL4p3m5WyWjjGNUIVi6/C5FI7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=voYiNsyY/ek+IToQ07CcYY4mSqrFhgou3qPtSDlDP1k=;
        b=CKj2hBJJMVlmasjQlScjEj38VePLYI/65KAp+UtKYBggdHTAJgOVGORttEcCebsXTE
         PNH3fb6KT1+vwc5RPJiIni5PkYUp3tRhz2qVfvMRHuVtojuIMePAqWptbQSo++gvrMNx
         Q+RDZnVE2K0X3YV+m5xlTGR9ycibPcIshAHGOzwR0AwK+iTVP4zXLkf+TVWzQNfwy+jw
         OfdRbgqs3bu2Ksmrvi7siW0v7uOvmmCpMRvDTdJtSscmocmsNc7iy7X17GibxdSrADiZ
         pZGKN+cTE+eOxUWxDfIFPbo/u32KYGoogh3RhOv+vBNvYNFFPqDQNtOsBlA2IdtbMWFN
         kt4w==
X-Gm-Message-State: ACrzQf1dO3t+0LssRk35R82AlGXVTNzf4wmF42EY7yjX7eYbOVvbriwG
	OV00jHJ4QCGimNsy+7InHr+JUdzgWL8eEwww77NEOA==
X-Google-Smtp-Source: AMsMyM520aXMi+FrAZPgy5y0X4+JSH/DVaaHj5aug/Cislo5YHYwrKDaMjtI06Tx1gYVGNzCTjllogi7gQZU8oq2CWs=
X-Received: by 2002:a05:651c:11d0:b0:277:f8b:bb4f with SMTP id
 z16-20020a05651c11d000b002770f8bbb4fmr2238379ljo.161.1667571587275; Fri, 04
 Nov 2022 07:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20221104132046.1555932-1-thierry.reding@gmail.com>
In-Reply-To: <20221104132046.1555932-1-thierry.reding@gmail.com>
From: Da Xue <da@lessconfused.com>
Date: Fri, 4 Nov 2022 10:19:36 -0400
Message-ID: <CACdvmAjRwUhMbPrVHpbHzA-bDAzegvtnVuE00abrTEW2WxqRvg@mail.gmail.com>
Subject: Re: [PATCH] arm64: rockchip: Remove unknown regulator-init-microvolt property
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_071950_785099_1F327E26 
X-CRM114-Status: GOOD (  15.56  )
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

On Fri, Nov 4, 2022 at 9:22 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> The regulator-init-microvolt is not defined anywhere and not used by any
> driver, so remove it from existing device trees.

These are used in u-boot: grep -r regulator-init-microvolt

doc/device-tree-bindings/regulator/regulator.txt:-
regulator-init-microvolt: a init allowed Voltage value
doc/device-tree-bindings/regulator/regulator.txt:
regulator-init-microvolt = <1800000>;
drivers/power/regulator/pwm_regulator.c:        priv->init_voltage =
dev_read_u32_default(dev, "regulator-init-microvolt", -1);
drivers/power/regulator/regulator-uclass.c:     uc_pdata->init_uV =
dev_read_u32_default(dev, "regulator-init-microvolt",

>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
>  arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
>  13 files changed, 29 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> index 7ea48167747c..9232357f4fec 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> @@ -106,7 +106,6 @@ vdd_core: vdd-core {
>                 regulator-name = "vdd_core";
>                 regulator-min-microvolt = <827000>;
>                 regulator-max-microvolt = <1340000>;
> -               regulator-init-microvolt = <1015000>;
>                 regulator-settling-time-up-us = <250>;
>                 regulator-always-on;
>                 regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> index a71f249ed384..e9810d2f0407 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> @@ -105,7 +105,6 @@ vdd_core: vdd-core {
>                 regulator-name = "vdd_core";
>                 regulator-min-microvolt = <827000>;
>                 regulator-max-microvolt = <1340000>;
> -               regulator-init-microvolt = <1015000>;
>                 regulator-settling-time-up-us = <250>;
>                 regulator-always-on;
>                 regulator-boot-on;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index b6e082f1f6d9..7c5f441a2219 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -375,7 +375,6 @@ regulator-state-mem {
>                         vcc_sdio: LDO_REG4 {
>                                 regulator-always-on;
>                                 regulator-boot-on;
> -                               regulator-init-microvolt = <3000000>;
>                                 regulator-min-microvolt = <1800000>;
>                                 regulator-max-microvolt = <3300000>;
>                                 regulator-name = "vcc_sdio";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> index 41262a69d33e..a71973b16075 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-name = "vdd_logic";
> @@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-name = "vdd_gpu";
> @@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
>                 regulator-boot-on;
>                 regulator-min-microvolt = <712500>;
>                 regulator-max-microvolt = <1390000>;
> -               regulator-init-microvolt = <900000>;
>                 regulator-name = "vdd_cpu";
>                 regulator-ramp-delay = <2300>;
>                 vin-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index 8d61f824c12d..d899087bf0b5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-always-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>
> @@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu_npu";
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 25a8c781f4e7..854d02b46e6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-name = "vdd_logic";
> @@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-name = "vdd_gpu";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 77b179cd20e7..fc38b30d3722 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>
>                                 regulator-state-mem {
> @@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <900000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>
>                                 regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index 61c7a3ad7387..45807d7e22eb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -250,7 +250,6 @@ vdd_log: DCDC_REG1 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>
>                                 regulator-state-mem {
> @@ -263,7 +262,6 @@ vdd_gpu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu";
>                                 regulator-min-microvolt = <900000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>
>                                 regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index 5bcd4be32964..e23e2293d10a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -192,7 +192,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-state-mem {
> @@ -207,7 +206,6 @@ vdd_gpu: DCDC_REG2 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-ramp-delay = <6001>;
>                                 regulator-initial-mode = <0x2>;
>                                         regulator-state-mem {
> @@ -230,7 +228,6 @@ vdd_npu: DCDC_REG4 {
>                                 regulator-boot-on;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-name = "vdd_npu";
>                                 regulator-state-mem {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 26d7fda275ed..a70b89e39dd6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -301,7 +301,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-name = "vdd_logic";
>                                 regulator-always-on;
>                                 regulator-boot-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -315,7 +314,6 @@ regulator-state-mem {
>                         vdd_gpu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu";
>                                 regulator-always-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -339,7 +337,6 @@ regulator-state-mem {
>
>                         vdd_npu: DCDC_REG4 {
>                                 regulator-name = "vdd_npu";
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 674792567fa6..19f8fc369b13 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-name = "vdd_logic";
>                                 regulator-always-on;
>                                 regulator-boot-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -307,7 +306,6 @@ regulator-state-mem {
>                         vdd_gpu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu";
>                                 regulator-always-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -331,7 +329,6 @@ regulator-state-mem {
>
>                         vdd_npu: DCDC_REG4 {
>                                 regulator-name = "vdd_npu";
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> index 59ecf868dbd0..a337f547caf5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> @@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-name = "vdd_logic";
>                                 regulator-always-on;
>                                 regulator-boot-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -305,7 +304,6 @@ regulator-state-mem {
>                         vdd_gpu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu";
>                                 regulator-always-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -329,7 +327,6 @@ regulator-state-mem {
>
>                         vdd_npu: DCDC_REG4 {
>                                 regulator-name = "vdd_npu";
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ea74ba32fbbd..482c892567de 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -340,7 +340,6 @@ vdd_logic: DCDC_REG1 {
>                                 regulator-name = "vdd_logic";
>                                 regulator-always-on;
>                                 regulator-boot-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -354,7 +353,6 @@ regulator-state-mem {
>                         vdd_gpu: DCDC_REG2 {
>                                 regulator-name = "vdd_gpu";
>                                 regulator-always-on;
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> @@ -378,7 +376,6 @@ regulator-state-mem {
>
>                         vdd_npu: DCDC_REG4 {
>                                 regulator-name = "vdd_npu";
> -                               regulator-init-microvolt = <900000>;
>                                 regulator-initial-mode = <0x2>;
>                                 regulator-min-microvolt = <500000>;
>                                 regulator-max-microvolt = <1350000>;
> --
> 2.38.1
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
