Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A841C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=4NKGTIGoFqxaDVrILM21Q1hmcc98g1XqsjhRvrYW1dM=; b=jExuc0e/85K1B6
	damczi4cXCynwFCbpb2rmfGF9+ntNyEOg0bk/Kw31N+U5mb/YLj+MsxBuZD9ZFvcmAP7qeJfSj/aO
	k5TDJNmBrz23Qa8iBXVix2RrBG0amNeqfFdTesM59iUq/HZU5d6mkiZ9NaEeQBokszboQOvVvcaGq
	jJ7Zu/Qm087ubaceCU0fmi0OcZ6rHGT0SgTswKRowyg1RzSyisJhmdwfVJ9U9A5LG7G1M0hZ0j1Ql
	YLvVNksrVKeRaitwqGoqhghrTtHBvi51CUKRqyafvncCMIKfiLsFFaJ7+8R4hqijbB4tUbLN/SAPN
	+N6anIulEsPmM6nPOcew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2B4n-003AbN-4r; Mon, 05 Dec 2022 13:00:05 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2B4Z-0039wd-BT
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 12:59:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20221205125942euoutp02e4de45064113d659f28eb949a91f3c1f~t5yT6GZjF0625906259euoutp02s
	for <linux-rockchip@lists.infradead.org>; Mon,  5 Dec 2022 12:59:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20221205125942euoutp02e4de45064113d659f28eb949a91f3c1f~t5yT6GZjF0625906259euoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1670245182;
	bh=indVC+6o0+OU74db1QKr4ZSd+IBeCLigeLyfLhy97uk=;
	h=From:To:Cc:Subject:Date:References:From;
	b=CJRF1AtxHQX+Wr08YToPfvrJBeGbvcEutxb8mO9VfbRQ0ml8fEOQ9+5mL4ZilRFNs
	 pepa9YZiGONKQ56/PDOTYaSZZJ6w/HGwQo5D/atby80Tn+yiQmkMz1xppzgRQ1Ont1
	 5bldisxdN0UVQNMxFjI4ivbaXQhGIbnc3hkvxqFE=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20221205125942eucas1p2f2c74a8f88bfc8657b0d5daf5b356bc4~t5yToV7FR0751007510eucas1p2I;
	Mon,  5 Dec 2022 12:59:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 29.1D.09561.E3BED836; Mon,  5
	Dec 2022 12:59:42 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20221205125942eucas1p1c2d8789c974bac19a637160ce796b115~t5yTPbAsR3122831228eucas1p1s;
	Mon,  5 Dec 2022 12:59:42 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20221205125942eusmtrp2a7084dbeae0f8e1f1b6e3f41a2c8018f~t5yTOwsJe2253722537eusmtrp2I;
	Mon,  5 Dec 2022 12:59:42 +0000 (GMT)
X-AuditID: cbfec7f2-0c9ff70000002559-a7-638deb3eed9b
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id C2.E8.08916.D3BED836; Mon,  5
	Dec 2022 12:59:42 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20221205125941eusmtip25bd6d96e90360e7203a0646060eab8e2~t5ySupmIj1609716097eusmtip28;
	Mon,  5 Dec 2022 12:59:41 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Catalin Marinas
	<catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Aurelien Jarno
	<aurelien@aurel32.net>, Dan Johansen <strit@manjaro.org>, Heiko Stuebner
	<heiko@sntech.de>
Subject: [PATCH] arm64: defconfig: Enable drivers for the Odroid-M1 board
Date: Mon,  5 Dec 2022 13:59:27 +0100
Message-Id: <20221205125928.27806-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIKsWRmVeSWpSXmKPExsWy7djP87p2r3uTDW6sk7K4OW0Ni8X7ZT2M
	Fv8fvWa12PT4GqvFpwf/mS3WHrnLbtHzdB2zRcsdUwcOjzXz1jB69C2dx+SxaVUnm8fmJfUe
	DYdBQltWMXpsvzaPOYA9issmJTUnsyy1SN8ugStj/7KDjAXfJSu2f9rO3MD4XKyLkZNDQsBE
	YvbE9SxdjFwcQgIrGCVuXbnGDuF8YZTYdfwEM4TzmVHiwIHXTDAtHV8PMEEkljNKXPm7nh0k
	Adbyu90HxGYTMJToetvFBmKLCPhIXF80nw2kgVngFaPEj1uXGEESwgKeEnvegKzg5GARUJV4
	d2crK4jNK2ArcfRMDzvENnmJ34/3sUDEBSVOznwCZjMDxZu3zgY7T0JgLYfEidvn2CAaXCQ+
	/n3FCmELS7w6vgVqkIzE/53zmSAa2hklFvy+D+VMYJRoeH6LEaLKWuLOuV9AkziAVmhKrN+l
	DxF2lDiybAcjSFhCgE/ixltBiCP4JCZtm84MEeaV6GgTgqhWk5h1fB3c2oMXLjFD2B4SL5/s
	ZIMEVqzEicOrGCcwKsxC8tosJK/NQrhhASPzKkbx1NLi3PTUYsO81HK94sTc4tK8dL3k/NxN
	jMBUdPrf8U87GOe++qh3iJGJg/EQowQHs5II74uNvclCvCmJlVWpRfnxRaU5qcWHGKU5WJTE
	eVdM6UgWEkhPLEnNTk0tSC2CyTJxcEo1MKkevS/b7bT3m9nEvBvBbu92st5Ji81yXhddt3nK
	9G2Ce356Bu5Tiv72WqbKp6N94ondZj3sLmf3Krb+r2Fau/fu793TYosWWP+w+fzR56CmyoKd
	vH+WP2eNPD/v2p6U3itHX+Z5/M4P4ZW8u2zL901bWNw0eb9HzJBR85efLfyv+rf78jKJOdfP
	er2y6T8uVBNqqrFD+Ib2+7KVXTU/L1cobg39nHDv1fwU2SuylovTllQy/3b66PVazfHpwXKn
	5TzNB46p/A3pUm659fT7/IWhhRwhv/4w8q7KP3x/yUXt2Em2bTNeX2ni/S3H1PxP6lztgzMt
	IQrTr8hNPjDLOnn+9T+fpxy817ZV/bXQq8U+SizFGYmGWsxFxYkA57RVaLQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOLMWRmVeSWpSXmKPExsVy+t/xe7p2r3uTDTZvZ7S4OW0Ni8X7ZT2M
	Fv8fvWa12PT4GqvFpwf/mS3WHrnLbtHzdB2zRcsdUwcOjzXz1jB69C2dx+SxaVUnm8fmJfUe
	DYdBQltWMXpsvzaPOYA9Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
	JTUnsyy1SN8uQS9j/7KDjAXfJSu2f9rO3MD4XKyLkZNDQsBEouPrAaYuRi4OIYGljBKT/k5g
	hEjISJyc1sAKYQtL/LnWxQZR9IlRYl7/PjaQBJuAoUTX2y4wW0TAT+Lsw/uMIEXMAu8YJW60
	9DGDJIQFPCX2vDkBZrMIqEq8u7MVbCqvgK3E0TM97BAb5CV+P97HAhEXlDg58wmYzQwUb946
	m3kCI98sJKlZSFILGJlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBMbAtmM/N+9gnPfqo94h
	RiYOxkOMEhzMSiK8Lzb2JgvxpiRWVqUW5ccXleakFh9iNAW6byKzlGhyPjAK80riDc0MTA1N
	zCwNTC3NjJXEeT0LOhKFBNITS1KzU1MLUotg+pg4OKUamJaHlQmnVJjPTbk6nd0vVrqMJ0X6
	6PQvszlWB9rPPauQmNZwpiy4UW3J/IX6nf9mBoteF50n+ORyirFj4maJ8pYJ9Ytm56ptrz0z
	wbj3VUVCW92dxjW+4rccXPeEzV3T5d+0ffFiJ6dNM6cqtnbUzU+fW2+eFuGbqFh95FU6R6KQ
	0Z3M7h9sRfMYWbcUsbu3LW+wS+LQOHdfvCmLUXbe4f0My15OT5528ndA/EGG8w3qB5PXFWT1
	GwmfOO3A1nT0oZrEf6dCwfi3Exa8jXA0Yro+S16R4+/d24VHn+Yu1HlULcW9PnGt46GlZzzX
	7M9z9S2791Rjn8WZpQ766gr/fyw+wdt11XfS/aMJb9dtVmIpzkg01GIuKk4EAKvH6oMKAwAA
X-CMS-MailID: 20221205125942eucas1p1c2d8789c974bac19a637160ce796b115
X-Msg-Generator: CA
X-RootMTR: 20221205125942eucas1p1c2d8789c974bac19a637160ce796b115
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20221205125942eucas1p1c2d8789c974bac19a637160ce796b115
References: <CGME20221205125942eucas1p1c2d8789c974bac19a637160ce796b115@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_045952_784178_D1B5B762 
X-CRM114-Status: GOOD (  10.77  )
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

Hardkernel Odroid-M1 board is supported since commit fd3583267703
("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board"). Enable all
drivers needed by that board in the defconfig to let the automated
test systems to check them on the real hardware.

The drivers were configured to be compiled as modules if that was
supported.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm64/configs/defconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 851e8f9be06d..01014451ba8e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -237,6 +237,7 @@ CONFIG_PCI_LAYERSCAPE=y
 CONFIG_PCI_HISI=y
 CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
+CONFIG_PCIE_ROCKCHIP_DW_HOST=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
 CONFIG_PCIE_TEGRA194_HOST=m
@@ -300,6 +301,7 @@ CONFIG_ATA=y
 CONFIG_SATA_AHCI=y
 CONFIG_SATA_AHCI_PLATFORM=y
 CONFIG_AHCI_BRCM=m
+CONFIG_AHCI_DWC=m
 CONFIG_AHCI_CEVA=y
 CONFIG_AHCI_MVEBU=y
 CONFIG_AHCI_XGENE=y
@@ -421,6 +423,7 @@ CONFIG_INPUT_PM8941_PWRKEY=y
 CONFIG_INPUT_PM8XXX_VIBRATOR=m
 CONFIG_INPUT_PWM_BEEPER=m
 CONFIG_INPUT_PWM_VIBRA=m
+CONFIG_INPUT_RK805_PWRKEY=m
 CONFIG_INPUT_HISI_POWERKEY=y
 # CONFIG_SERIO_SERPORT is not set
 CONFIG_SERIO_AMBAKMI=y
@@ -516,6 +519,7 @@ CONFIG_SPI_MT65XX=y
 CONFIG_SPI_ORION=y
 CONFIG_SPI_PL022=y
 CONFIG_SPI_ROCKCHIP=y
+CONFIG_SPI_ROCKCHIP_SFC=m
 CONFIG_SPI_RPCIF=m
 CONFIG_SPI_RSPI=m
 CONFIG_SPI_QCOM_QSPI=m
@@ -529,6 +533,7 @@ CONFIG_SPI_TEGRA114=m
 CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_PINCTRL_MAX77620=y
+CONFIG_PINCTRL_RK805=m
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_OWL=y
 CONFIG_PINCTRL_S700=y
@@ -596,6 +601,7 @@ CONFIG_BATTERY_MAX17042=m
 CONFIG_CHARGER_MT6360=m
 CONFIG_CHARGER_BQ25890=m
 CONFIG_CHARGER_BQ25980=m
+CONFIG_CHARGER_RK817=m
 CONFIG_SENSORS_ARM_SCMI=y
 CONFIG_SENSORS_ARM_SCPI=y
 CONFIG_SENSORS_GPIO_FAN=m
@@ -697,6 +703,7 @@ CONFIG_REGULATOR_VCTRL=m
 CONFIG_RC_CORE=m
 CONFIG_RC_DECODERS=y
 CONFIG_RC_DEVICES=y
+CONFIG_IR_GPIO_CIR=m
 CONFIG_IR_MESON=m
 CONFIG_IR_SUNXI=m
 CONFIG_MEDIA_SUPPORT=m
@@ -742,6 +749,7 @@ CONFIG_DRM_EXYNOS_DSI=y
 CONFIG_DRM_EXYNOS_HDMI=y
 CONFIG_DRM_EXYNOS_MIC=y
 CONFIG_DRM_ROCKCHIP=m
+CONFIG_ROCKCHIP_VOP2=y
 CONFIG_ROCKCHIP_ANALOGIX_DP=y
 CONFIG_ROCKCHIP_CDN_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
@@ -831,6 +839,7 @@ CONFIG_SND_SOC_SM8250=m
 CONFIG_SND_SOC_SC7180=m
 CONFIG_SND_SOC_SC7280=m
 CONFIG_SND_SOC_ROCKCHIP=m
+CONFIG_SND_SOC_ROCKCHIP_I2S_TDM=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
 CONFIG_SND_SOC_ROCKCHIP_RT5645=m
 CONFIG_SND_SOC_RK3399_GRU_SOUND=m
@@ -863,6 +872,7 @@ CONFIG_SND_SOC_GTM601=m
 CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_PCM3168A_I2C=m
+CONFIG_SND_SOC_RK817=m
 CONFIG_SND_SOC_RT5640=m
 CONFIG_SND_SOC_RT5659=m
 CONFIG_SND_SOC_SIMPLE_AMPLIFIER=m
@@ -1277,7 +1287,9 @@ CONFIG_PHY_ROCKCHIP_EMMC=y
 CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m
 CONFIG_PHY_ROCKCHIP_PCIE=m
+CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_SAMSUNG_UFS=y
 CONFIG_PHY_UNIPHIER_USB2=y
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
