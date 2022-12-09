Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98508C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Dec 2022 10:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=DUtHRgjpmtoGKGjKkK/3u5KQ0/GkzSmIZcdtQEr8I6E=; b=0ViH+dL3Nv0YQD
	KVsB3obCTf5oz22hgpt17NgN4EsXrrjpsmhh58wdcjrAfHFwjfcDmaRi6W400TPt/JHhc1fVCUeEU
	oQgH+uC0eP6IFP+L8GFuKLLR9bHjl0sqnMkKa6Wt0iUhu9HcJUTLt0keb7Pxf+3rt9P4ixcT0Jjww
	iy/LtrwTCyV/z6KkPUmOr5TAuRhcbJ+AMqP/DQ/qwmvGcZv27vJ8vxL9u6AxDooN5wcbv+kp3bafs
	lbiL2Z050iOsulWlznKbiQwa5c6W1sPhRXw9Ff3BjFjxhHFJ8GcAyP3vPSBdG+WpIFRIFscaKvYg2
	86bp33IG9ga/jYMIJ4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aTJ-006V6e-9P; Fri, 09 Dec 2022 10:19:13 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3aSz-006Ug7-RA
	for linux-rockchip@lists.infradead.org; Fri, 09 Dec 2022 10:18:57 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20221209101847euoutp02d70df4aeb601b4c4df1e41dca3cc69ef~vGK9EeG4i2800728007euoutp02i
	for <linux-rockchip@lists.infradead.org>; Fri,  9 Dec 2022 10:18:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20221209101847euoutp02d70df4aeb601b4c4df1e41dca3cc69ef~vGK9EeG4i2800728007euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1670581127;
	bh=X/5LW8/OUt9ni9uw8BlVZOzbN/8GeScqyxM13RwnS78=;
	h=From:To:Cc:Subject:Date:References:From;
	b=LSEc7GvzlPXB9y8F4Sdmu9cd775QuhoTz1l4yx5kQJJsRRjuwXFMKynjJEpIKYc3t
	 FpdtW3M7N1zHdoYf5O6QXCn0z5sA1Cmx76pIr8x1qYBO1cn6sEz0hLoUO0DxrUxWcp
	 ScVSGrlI5D4tyXDOSfe3OuLJwC18hnaNqdV7M33g=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20221209101847eucas1p27bc5f59e5a82593881912b6c0dd0d295~vGK8wT5GM0836808368eucas1p2j;
	Fri,  9 Dec 2022 10:18:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 2D.91.10112.78B03936; Fri,  9
	Dec 2022 10:18:47 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20221209101847eucas1p158347a99c3d9e7a5c8349cfcf8e2ee7b~vGK8aOavt1512715127eucas1p1C;
	Fri,  9 Dec 2022 10:18:47 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20221209101847eusmtrp2fc982fc9dc54ff9e5ac80b498685dc2f~vGK8ZWtMN1007010070eusmtrp2r;
	Fri,  9 Dec 2022 10:18:47 +0000 (GMT)
X-AuditID: cbfec7f4-cf3ff70000002780-a8-63930b870ccf
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id BB.92.08916.68B03936; Fri,  9
	Dec 2022 10:18:47 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20221209101846eusmtip1b2bb5596dd58d68d8a0011d794a02ef1~vGK73IufT2411224112eusmtip1Y;
	Fri,  9 Dec 2022 10:18:46 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Catalin Marinas
	<catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Aurelien Jarno
	<aurelien@aurel32.net>, Dan Johansen <strit@manjaro.org>, Heiko Stuebner
	<heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2] arm64: defconfig: Enable drivers for the Odroid-M1 board
Date: Fri,  9 Dec 2022 11:18:34 +0100
Message-Id: <20221209101834.2030-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOKsWRmVeSWpSXmKPExsWy7djP87rt3JOTDRYvkrC4OW0Ni8X7ZT2M
	Fv8fvWa12PT4GqvFpwf/mS3WbbzFbrH2yF12i56n65gtWu6YOnB6rJm3htGjb+k8Jo+ds+6y
	e2xa1cnmsXlJvUfDYZD4llWMHtuvzWMO4IjisklJzcksSy3St0vgyuj9pVbwVaZi9fGjLA2M
	SyW7GDk5JARMJFo2rWfpYuTiEBJYwShxqusKG4TzhVHidOtiRgjnM6PEvMNfmGFaLl3+ygpi
	CwksZ5S4sLECrmPWi69MIAk2AUOJrrddbCC2iICPxPVF88FsZoE+JomNe/hBbGGg+Kv+HWCD
	WARUJa7NWsoIYvMK2EjMbVzJBrFMXuL3430sEHFBiZMzn7BAzJGXaN46mxlksYTAAQ6JEz+2
	AzVzADkuElsfu0L0Cku8Or6FHcKWkfi/cz4TRH07o8SC3/ehnAmMEg3PbzFCVFlL3Dn3iw1k
	ELOApsT6XfoQYUeJrQu+skHM55O48VYQ4gY+iUnbpjNDhHklOtqEIKrVJGYdXwe39uCFS9Bw
	85B4cfEgC0i5kECsxKT3rBMYFWYheWwWksdmIZywgJF5FaN4amlxbnpqsVFearlecWJucWle
	ul5yfu4mRmBaOv3v+JcdjMtffdQ7xMjEwXiIUYKDWUmEd9myiclCvCmJlVWpRfnxRaU5qcWH
	GKU5WJTEeVdM6UgWEkhPLEnNTk0tSC2CyTJxcEo1MGm+lxLw0VRl5/ygtTNl2o0l65xumjan
	T5ioGZC/ydZZ8fWiiHebLKX89hU4c9RM31D4f0Ntx980pxczzh3bmftQQOiWGofevTv7Z0w0
	7pMt33NSb59b33/+xbd+G3IKShxYY9QV5eMvzsrjEHuWkV21dabT35sHw9ntQzYZXSso6Py3
	un2Gi/1EXtmETete/ivP28fud+S186//FUKzvXjSVkT6cFWJtvXcfuZoKcKTfvSDsu/746si
	9Q/PLwrd5rzxWOlDtStnP3NVKL9+Zrcpn9vy7WO1hyEMrGvnd91RKVzA5bzLutxuRniTO1PK
	lu1i93ctFTlpGqF+S9P+f9uuBfdSI5hyJdg8xZeVK7EUZyQaajEXFScCAO10UzC6AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPLMWRmVeSWpSXmKPExsVy+t/xu7rt3JOTDU6uZ7K4OW0Ni8X7ZT2M
	Fv8fvWa12PT4GqvFpwf/mS3WbbzFbrH2yF12i56n65gtWu6YOnB6rJm3htGjb+k8Jo+ds+6y
	e2xa1cnmsXlJvUfDYZD4llWMHtuvzWMO4IjSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQz
	NDaPtTIyVdK3s0lJzcksSy3St0vQy+j9pVbwVaZi9fGjLA2MSyW7GDk5JARMJC5d/sraxcjF
	ISSwlFFi0erjzBAJGYmT0xpYIWxhiT/XuthAbCGBT4wS11/bgdhsAoYSXW8h4iICfhJnH95n
	BBnELDCFSeL705Vgg4QFfCRe9e8AG8QioCpxbdZSRhCbV8BGYm7jSjaIBfISvx/vY4GIC0qc
	nPkEzGYGijdvnc08gZFvFpLULCSpBYxMqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQJjYtux
	n5t3MM579VHvECMTB+MhRgkOZiUR3mXLJiYL8aYkVlalFuXHF5XmpBYfYjQFum8is5Rocj4w
	KvNK4g3NDEwNTcwsDUwtzYyVxHk9CzoShQTSE0tSs1NTC1KLYPqYODilGphslY6cWvr53qlj
	n5+7fOCdv+33hxzde6rVxq8KTTbvPMgRH896sOfB3X/VDTNmKP93mmG//q3RIskU2T4hXRPN
	G/u1G2NOCUbOeLBaQaExO6lJ+GvQiWlRbCLrxOZHneIVubnz0qH7yS9ncl8XOnjmp3arwzJO
	fq0vdXMOKqb7KZ7ev3HVvj+KQjcaHxVozMorfOJm7sMn5PdF/Kx4Y/zVZhabB2d4Ga8ZnTtq
	xSfTsFlPY3bCthNFXnHdlnM0zJVsz158qvI3+HWWp0CU2PWKv5PC9/KGz741Pap4hdPxTX7H
	/9p+S1JodudTmX47Qizw4NZbGwtljuy4XCOjH71BOLtaW0Gg7OYBxi9+XK5KLMUZiYZazEXF
	iQAx5Z3FEgMAAA==
X-CMS-MailID: 20221209101847eucas1p158347a99c3d9e7a5c8349cfcf8e2ee7b
X-Msg-Generator: CA
X-RootMTR: 20221209101847eucas1p158347a99c3d9e7a5c8349cfcf8e2ee7b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20221209101847eucas1p158347a99c3d9e7a5c8349cfcf8e2ee7b
References: <CGME20221209101847eucas1p158347a99c3d9e7a5c8349cfcf8e2ee7b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221209_021854_604848_8C5F9A1B 
X-CRM114-Status: GOOD (  11.39  )
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

RK817 charger driver is not strictly needed for Odroid-M1, but other
RK356x devices (like the Quartz 64) also use this PMIC and might need it.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Anand Moon <linux.amoon@gmail.com>
Reviewed-by: Aurelien Jarno <aurelien@aurel32.net>
---
v2:
- made NANENG_COMBO_PHY driver compiled-in as advised by Anand
- added comment about RK817 charger as advised by Aurelien
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
+CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
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
