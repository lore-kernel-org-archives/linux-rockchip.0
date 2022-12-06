Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 282CCC3A5A7
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 08:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8AEVOINLnl6VprOfhGNGcvOaXeQhDeN6DlvgcsRE6k=; b=C4Q5/GwqpF3uCH
	HWtZXKWa9nydGiKzEEFrDbRs6uEc3l25JNKWArgDHoOjPIjN6bfrana2HDZwbSoyAeLwZRdWW5Msm
	Z2Q/m6oPuq1YTkGn8yJCNF62KKGxXqDzQkMsQdumc3QBn1Z5YoFLG/zUO23MRK8InhSmMxkNtJu+C
	mHg9c2vRmGjkhJWCHTjljiuEEkLnGEyVdRwjlkQGI4oH7imH/MTgNYnujqAjnGJlGQ1u4qLj+J/7s
	8RbIkKdITcbTXah2FC3r0YJtVUGBLBQZ/074nGFUxIbnnN5k6sGEqpqG7SmUNEEzbLSOsLcZqiyS7
	0ohjOLr0faVQRh8rastw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2T2H-004Sac-Km; Tue, 06 Dec 2022 08:10:41 +0000
Received: from mail-ua1-x935.google.com ([2607:f8b0:4864:20::935])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2T25-004SR5-BC; Tue, 06 Dec 2022 08:10:31 +0000
Received: by mail-ua1-x935.google.com with SMTP id 97so4748564uam.0;
        Tue, 06 Dec 2022 00:10:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bKcAWEZZXTJpmyPT1ayr3jLpdTGOIb7NDrdQ3e/+G1A=;
        b=FidlB7LoUGNvZcM2mg/9CkOqvedcP6DzjlCqNsACtTbAQxvkOjnqziCp+cKcQOUJj3
         KgvjUhzSniWZbvzvN13HlnFLHzSSrZn0EAzXUoZdfwynSG5Whta6Ob5Ge18VFfczNHUq
         J0d4B+trJbTDhLwLxpS2FZRxz6SE0kHrKCKNBz35WsAh5tA11U1tfBenciRWu5BvXs0u
         tpXEmq/HywxPCK6QltO2TWtFJhYh/LVCiXJ8L1FfJXbVzPgsxFlDlko7ZOI8hTPQo9D2
         4jqrmqdGckJ3pM8yybxXWmcGVbpEkUItjMSkiQc9+EcDI/dYNZXQEyD7jaL4dZ+luGDY
         UaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bKcAWEZZXTJpmyPT1ayr3jLpdTGOIb7NDrdQ3e/+G1A=;
        b=sZA1S/82UjB2qZMH8LSTqRuSsZxJ/jL6w8o11d/Rss5sfuAdoHc49vhXd1PIsdIirX
         ElckJ8ckjmxbJl5gVGmrxrsWd/FCxBgVSxTC9IngdxXlTbyvUzI7YLXM4B5hfgjgkDt1
         QmzBeaJSnJeUL1B6O3/Fow7mw/gq2fwyfXkOq/ycJBS2mv9PZvW5U7R7hYfBnZyXtvw8
         hWqD8wpAWISpLFOCNxHujhSPKLr16ZLWqqD035ZupUYBJDUkWBvkh6RjmAC8v/6YR6cg
         a+4sC3Crbgoq7TRWIrCUK+yxIKgfoOzUelBh4hbZKx04mmRcAhjMdt39qocQvTPZiJ8w
         kTzA==
X-Gm-Message-State: ANoB5pk3kXwjYZ0jyKCxhkUP/VrnDiYsXgdE2ffs/mWfTMkrG7rTM0oG
	b3Wjru5VPI1yxZVq4v1a5ekBAmlIQzREhoPb38k=
X-Google-Smtp-Source: AA0mqf4S5yw8gvqxZKOx0xrCzNJZhvykGIP1wLK+b3BJ9RAdi4ofJ77OqZ6v71SijhiYv+NQQhjGVG6HLdxgycZMn3E=
X-Received: by 2002:a05:6130:316:b0:418:b66a:6f26 with SMTP id
 ay22-20020a056130031600b00418b66a6f26mr39467855uab.21.1670314226644; Tue, 06
 Dec 2022 00:10:26 -0800 (PST)
MIME-Version: 1.0
References: <CGME20221205125942eucas1p1c2d8789c974bac19a637160ce796b115@eucas1p1.samsung.com>
 <20221205125928.27806-1-m.szyprowski@samsung.com>
In-Reply-To: <20221205125928.27806-1-m.szyprowski@samsung.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 6 Dec 2022 13:40:09 +0530
Message-ID: <CANAwSgQCdfgY=EpPKHLiXueW0AWUwz0yfvouodU1yfcSLtewgA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable drivers for the Odroid-M1 board
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Dan Johansen <strit@manjaro.org>, 
	Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_001029_453493_B94B7EF5 
X-CRM114-Status: GOOD (  20.21  )
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

Hi Marek,

On Mon, 5 Dec 2022 at 18:30, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
>
> Hardkernel Odroid-M1 board is supported since commit fd3583267703
> ("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board"). Enable all
> drivers needed by that board in the defconfig to let the automated
> test systems to check them on the real hardware.
>
> The drivers were configured to be compiled as modules if that was
> supported.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  arch/arm64/configs/defconfig | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 851e8f9be06d..01014451ba8e 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -237,6 +237,7 @@ CONFIG_PCI_LAYERSCAPE=y
>  CONFIG_PCI_HISI=y
>  CONFIG_PCIE_QCOM=y
>  CONFIG_PCIE_ARMADA_8K=y
> +CONFIG_PCIE_ROCKCHIP_DW_HOST=y
>  CONFIG_PCIE_KIRIN=y
>  CONFIG_PCIE_HISI_STB=y
>  CONFIG_PCIE_TEGRA194_HOST=m
> @@ -300,6 +301,7 @@ CONFIG_ATA=y
>  CONFIG_SATA_AHCI=y
>  CONFIG_SATA_AHCI_PLATFORM=y
>  CONFIG_AHCI_BRCM=m
> +CONFIG_AHCI_DWC=m
>  CONFIG_AHCI_CEVA=y
>  CONFIG_AHCI_MVEBU=y
>  CONFIG_AHCI_XGENE=y
> @@ -421,6 +423,7 @@ CONFIG_INPUT_PM8941_PWRKEY=y
>  CONFIG_INPUT_PM8XXX_VIBRATOR=m
>  CONFIG_INPUT_PWM_BEEPER=m
>  CONFIG_INPUT_PWM_VIBRA=m
> +CONFIG_INPUT_RK805_PWRKEY=m
>  CONFIG_INPUT_HISI_POWERKEY=y
>  # CONFIG_SERIO_SERPORT is not set
>  CONFIG_SERIO_AMBAKMI=y
> @@ -516,6 +519,7 @@ CONFIG_SPI_MT65XX=y
>  CONFIG_SPI_ORION=y
>  CONFIG_SPI_PL022=y
>  CONFIG_SPI_ROCKCHIP=y
> +CONFIG_SPI_ROCKCHIP_SFC=m
>  CONFIG_SPI_RPCIF=m
>  CONFIG_SPI_RSPI=m
>  CONFIG_SPI_QCOM_QSPI=m
> @@ -529,6 +533,7 @@ CONFIG_SPI_TEGRA114=m
>  CONFIG_SPI_SPIDEV=m
>  CONFIG_SPMI=y
>  CONFIG_PINCTRL_MAX77620=y
> +CONFIG_PINCTRL_RK805=m
>  CONFIG_PINCTRL_SINGLE=y
>  CONFIG_PINCTRL_OWL=y
>  CONFIG_PINCTRL_S700=y
> @@ -596,6 +601,7 @@ CONFIG_BATTERY_MAX17042=m
>  CONFIG_CHARGER_MT6360=m
>  CONFIG_CHARGER_BQ25890=m
>  CONFIG_CHARGER_BQ25980=m
> +CONFIG_CHARGER_RK817=m
>  CONFIG_SENSORS_ARM_SCMI=y
>  CONFIG_SENSORS_ARM_SCPI=y
>  CONFIG_SENSORS_GPIO_FAN=m
> @@ -697,6 +703,7 @@ CONFIG_REGULATOR_VCTRL=m
>  CONFIG_RC_CORE=m
>  CONFIG_RC_DECODERS=y
>  CONFIG_RC_DEVICES=y
> +CONFIG_IR_GPIO_CIR=m
>  CONFIG_IR_MESON=m
>  CONFIG_IR_SUNXI=m
>  CONFIG_MEDIA_SUPPORT=m
> @@ -742,6 +749,7 @@ CONFIG_DRM_EXYNOS_DSI=y
>  CONFIG_DRM_EXYNOS_HDMI=y
>  CONFIG_DRM_EXYNOS_MIC=y
>  CONFIG_DRM_ROCKCHIP=m
> +CONFIG_ROCKCHIP_VOP2=y
>  CONFIG_ROCKCHIP_ANALOGIX_DP=y
>  CONFIG_ROCKCHIP_CDN_DP=y
>  CONFIG_ROCKCHIP_DW_HDMI=y
> @@ -831,6 +839,7 @@ CONFIG_SND_SOC_SM8250=m
>  CONFIG_SND_SOC_SC7180=m
>  CONFIG_SND_SOC_SC7280=m
>  CONFIG_SND_SOC_ROCKCHIP=m
> +CONFIG_SND_SOC_ROCKCHIP_I2S_TDM=m
>  CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
>  CONFIG_SND_SOC_ROCKCHIP_RT5645=m
>  CONFIG_SND_SOC_RK3399_GRU_SOUND=m
> @@ -863,6 +872,7 @@ CONFIG_SND_SOC_GTM601=m
>  CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
>  CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
>  CONFIG_SND_SOC_PCM3168A_I2C=m
> +CONFIG_SND_SOC_RK817=m
>  CONFIG_SND_SOC_RT5640=m
>  CONFIG_SND_SOC_RT5659=m
>  CONFIG_SND_SOC_SIMPLE_AMPLIFIER=m
> @@ -1277,7 +1287,9 @@ CONFIG_PHY_ROCKCHIP_EMMC=y
>  CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
>  CONFIG_PHY_ROCKCHIP_INNO_USB2=y
>  CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
> +CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m

The following should be set to CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y

If not it fails to enable PCIe on Radxa 3a
[    0.735048] mmc1: SDHCI controller on fe310000.mmc [fe310000.mmc] using ADMA
[    0.759924] phy phy-fe8c0000.phy.4: lane number 0, val 1
[    0.760915] phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init:
lock failed 0x6890000, check input refclk and power supply
[    0.761881] phy phy-fe8c0000.phy.4: phy init failed --> -110
[    0.762477] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110

Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thanks

-Anand

>  CONFIG_PHY_ROCKCHIP_PCIE=m
> +CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
>  CONFIG_PHY_ROCKCHIP_TYPEC=y
>  CONFIG_PHY_SAMSUNG_UFS=y
>  CONFIG_PHY_UNIPHIER_USB2=y
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
