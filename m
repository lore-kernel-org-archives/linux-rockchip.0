Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFF31C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 21:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psZgLpTFy12NJnW0OJhW0JI/mVSpGwHurprmEjKbI6Y=; b=I82BDtB63wRn9v
	GmREJdQSk1e8gCHQar0ZxXR1adUUyTAHeBYfGYDtaEQJNFyPGmdP3eom75aiQvmLSShsBDeRYLbWj
	GHKO2imkGMGyrwgn0aeGhx60cYKTCjDZO2xQooxpsOLeCtr2jYa+iik5PflStymECevR/IadqO8TP
	ZLBf7bkKd/WmSg4woq3Z925mwFBVS2kzQpjamDP/MzF2T+Q9vJgDnCOqZdnzp1bj9q+dCfQ/1hRIW
	uQK1S28PnL+V/cik+qlTv+AyCleVTp2aspfQHKNj1iotDgpyIT0ho//kf+8kZDx5UEa61Nc/zoQzh
	dW+xowEP8FeWfxfKgF/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2J7r-00Amnf-JT; Mon, 05 Dec 2022 21:35:47 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2J7c-00AmbW-AZ; Mon, 05 Dec 2022 21:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=bHrfGiglmpHHeOv67TCjmL1kp1aAUYZvlhsnUZgxP3o=; b=r+/iHNLK250ZHrTb0LZUhukqtm
	p4vt/nj+/wkE42vA64JOUEcTomSVBBX+DRej0KTktQfIaF4MNgu0LFe1n4cplTLinT/bAx9mmRZQX
	vTP3dah4xcvtuD6HkWDaQwA0kJPOsyx+PlDP7GTvAextTamyALmrMrSHiCChCTkFnqTG8slS0vwq3
	np+otmhJ7SFZvR+GIJ/MOnJBYtTPmXdSrkS7yhngVXiTdemxQrg3KmIKURxx67nXuU7oNegO5xawQ
	6LOiOX6uAYzdQf7ZFSAThoWIyRvR2RNH6nYZIZDnYg0Q9Et9KNPE6ixuRihLAp6SNmwQPt8+t6ibA
	UP/xoo0g==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1p2J7S-00BL3B-Ha; Mon, 05 Dec 2022 22:35:22 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1p2J7R-00GGC0-0t;
	Mon, 05 Dec 2022 22:35:21 +0100
Date: Mon, 5 Dec 2022 22:35:21 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Dan Johansen <strit@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: defconfig: Enable drivers for the Odroid-M1 board
Message-ID: <Y45kGbCFgLHfskGY@aurel32.net>
References: <CGME20221205125942eucas1p1c2d8789c974bac19a637160ce796b115@eucas1p1.samsung.com>
 <20221205125928.27806-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221205125928.27806-1-m.szyprowski@samsung.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_133532_404589_601F7A6A 
X-CRM114-Status: GOOD (  19.70  )
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

Hi,

On 2022-12-05 13:59, Marek Szyprowski wrote:
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

Thanks a lot for working on that. I have built my kernels with my own
local config, so I forgot to update this.

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

Technically the ODROID-M1 uses the RK808 PMIC, so this is not needed.
The corresponding options are already enabled in the arm64 default
config.

That said other RK356x devices (like the Quartz 64) use this PMIC so I
think it makes sense to enable that option.

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

This is correct, the ODROID M1 uses the RK809 codec, which is supported
by the RK817 driver.

>  CONFIG_SND_SOC_RT5640=m
>  CONFIG_SND_SOC_RT5659=m
>  CONFIG_SND_SOC_SIMPLE_AMPLIFIER=m
> @@ -1277,7 +1287,9 @@ CONFIG_PHY_ROCKCHIP_EMMC=y
>  CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
>  CONFIG_PHY_ROCKCHIP_INNO_USB2=y
>  CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
> +CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m
>  CONFIG_PHY_ROCKCHIP_PCIE=m
> +CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
>  CONFIG_PHY_ROCKCHIP_TYPEC=y
>  CONFIG_PHY_SAMSUNG_UFS=y
>  CONFIG_PHY_UNIPHIER_USB2=y

With the minor comment above:

Reviewed-by: Aurelien Jarno <aurelien@aurel32.net>

Regards
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
