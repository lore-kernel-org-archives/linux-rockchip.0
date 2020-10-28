Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CF06C55178
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0B9124650
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cBD0KU4v";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="JXm4kxvO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0B9124650
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=czbZi3SDeaP83htWW8Atz4U1Qv8O+WsBtu03f+PUNzg=; b=cBD0KU4vSNWAbm0fB3VzFI/q/
	wOsnnsVfsz6hMoTr3AMWy/203FrsMzyFaqFqXH9mocPJaAOGsOaTC+QMvSUhvzUhMr5AKEzRndwP7
	vBta++XvrfrLi/peFfrlsKqCcBDThTMsBHDsYqZfixFbssemlmYAD009lxdI/KdebfT/jmF+MGqZl
	o6b5JyJRX94UTiMdN5f297X+sWO7mlGSrN5hM8c8DUZqw5xDLbVAS28+DE6IPZybqDqsvyVC36B//
	emPq1ku0R+kLVYDJynF7apcLxkjAVXWyq0fhLmJImn+9PIIiZaj5IghRcPGqEsrs2U/ArXH8RJ9Ej
	TYwXYDpbA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlbA-0002uU-6w; Wed, 28 Oct 2020 13:34:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlb6-0002rf-3j
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id t6so1958778plq.11
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hIjSp/A5b5/ObGYcoZTbKuTKlGHhTfCc68KPBmOjPiY=;
 b=JXm4kxvOO9cCgThifTJr7Qpzio2WiYAxx7hNXnRwS5hNiOkcXVAJ0+ku5vYdlO3cGO
 wgCOSvfBxhzzBOo8I2+DJBo6u2QhQh7wDEpXdRk6IzIILY82D+/dxNgCSOibXSVYJbbY
 Hyyo/ubCz40ZVnD271pDIXk0R89KaHrO5ggfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIjSp/A5b5/ObGYcoZTbKuTKlGHhTfCc68KPBmOjPiY=;
 b=k2hDauJqEIuwWdy8auSnZbEtFwNP+EFrBzYsySAa8VDY07eJu/ve8d/aXmuLKcB1x6
 khYR7d7I2FNqmZWHgeD/jtH4VnzPuIeRuw6NMDe8xKn5CUHcPdqJl35b0Ab4DHKIu6LE
 bFhwx55PecdnoC1ytKu6PFwV//cVUJXJQajPVWaHAFUNsg5LHnedT6dVuOLE970TUZ+C
 GoqH9RshLl2AhgOa4hNWiKEXJKJyvqb4fwNb9cqxnEdcVtWIqlT4ldrsegX50xE8aKvc
 /Q3Yg+3Bz71QmIotUuqpZrNU1iX9/64NPR+gO/emL55I6ICy0f/tgB9/XEQK/vsYYZuy
 E8aw==
X-Gm-Message-State: AOAM533q2WQ5ZkXmjucwFETCVda/yQ43YTUDoeJ9bmE25499TxTqKyJJ
 QCxFI1x3BMtfEK9tVDBHc1Skhg==
X-Google-Smtp-Source: ABdhPJwLG1q4J8ZL0m276EJUwYLIlwCOiFlG/UiWVIr0aIxT8B0JMRNw8l3AFG7UeWZwtgSjB32QKw==
X-Received: by 2002:a17:90a:f993:: with SMTP id
 cq19mr4192272pjb.173.1603892077605; 
 Wed, 28 Oct 2020 06:34:37 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 7/8] rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date: Wed, 28 Oct 2020 19:03:47 +0530
Message-Id: <20201028133348.241839-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093440_257687_AF678A47 
X-CRM114-Status: GOOD (  16.76  )
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v4:
- none

 arch/arm/dts/Makefile                    |   1 +
 arch/arm/dts/px30-px30-core-ctouch2.dts  |  22 +++++
 arch/arm/mach-rockchip/px30/Kconfig      |   7 ++
 board/engicam/px30_core/MAINTAINERS      |   6 ++
 configs/px30-core-ctouch2-px30_defconfig | 108 +++++++++++++++++++++++
 5 files changed, 144 insertions(+)
 create mode 100644 arch/arm/dts/px30-px30-core-ctouch2.dts
 create mode 100644 configs/px30-core-ctouch2-px30_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b87f4334a5..658617d4dc 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -72,6 +72,7 @@ dtb-$(CONFIG_MACH_S700) += \
 dtb-$(CONFIG_ROCKCHIP_PX30) += \
 	px30-evb.dtb \
 	px30-firefly.dtb \
+	px30-px30-core-ctouch2.dtb \
 	px30-px30-core-edimm2.2.dtb \
 	rk3326-odroid-go2.dtb
 
diff --git a/arch/arm/dts/px30-px30-core-ctouch2.dts b/arch/arm/dts/px30-px30-core-ctouch2.dts
new file mode 100644
index 0000000000..2da0128188
--- /dev/null
+++ b/arch/arm/dts/px30-px30-core-ctouch2.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-ctouch2.dtsi"
+#include "px30-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core C.TOUCH 2.0";
+	compatible = "engicam,px30-core-ctouch2", "engicam,px30-px30-core",
+		     "rockchip,px30";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+};
diff --git a/arch/arm/mach-rockchip/px30/Kconfig b/arch/arm/mach-rockchip/px30/Kconfig
index 5d014f6561..16090f5b08 100644
--- a/arch/arm/mach-rockchip/px30/Kconfig
+++ b/arch/arm/mach-rockchip/px30/Kconfig
@@ -20,6 +20,13 @@ config TARGET_PX30_CORE
 	  * PX30.Core needs to mount on top of EDIMM2.2 for creating complete
 	    PX30.Core EDIMM2.2 Starter Kit.
 
+	  PX30.Core CTOUCH2:
+	  * PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
+	  * CTOUCH2.0 is a general purpose Carrier board with capacitive
+	    touch interface support.
+	  * PX30.Core needs to mount on top of CTOUCH2.0 for creating complete
+	    PX30.Core C.TOUCH Carrier board.
+
 config ROCKCHIP_BOOT_MODE_REG
 	default 0xff010200
 
diff --git a/board/engicam/px30_core/MAINTAINERS b/board/engicam/px30_core/MAINTAINERS
index f98a84450a..b87ca22207 100644
--- a/board/engicam/px30_core/MAINTAINERS
+++ b/board/engicam/px30_core/MAINTAINERS
@@ -1,3 +1,9 @@
+PX30-Core-CTOUCH2.0
+M:	Jagan Teki <jagan@amarulasolutions.com>
+M:	Suniel Mahesh <sunil@amarulasolutions.com>
+S:	Maintained
+F:	configs/px30-core-ctouch2-px30_defconfig
+
 PX30-Core-EDIMM2.2
 M:	Jagan Teki <jagan@amarulasolutions.com>
 M:	Suniel Mahesh <sunil@amarulasolutions.com>
diff --git a/configs/px30-core-ctouch2-px30_defconfig b/configs/px30-core-ctouch2-px30_defconfig
new file mode 100644
index 0000000000..d64f05d8c0
--- /dev/null
+++ b/configs/px30-core-ctouch2-px30_defconfig
@@ -0,0 +1,108 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x2000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_SPL_TEXT_BASE=0x00000000
+CONFIG_ROCKCHIP_PX30=y
+CONFIG_TARGET_PX30_CORE=y
+CONFIG_DEBUG_UART_CHANNEL=1
+CONFIG_TPL_LIBGENERIC_SUPPORT=y
+CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
+CONFIG_SPL_STACK_R_ADDR=0x600000
+CONFIG_DEBUG_UART_BASE=0xFF160000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEFAULT_DEVICE_TREE="px30-px30-core-ctouch2"
+CONFIG_DEBUG_UART=y
+CONFIG_TPL_SYS_MALLOC_F_LEN=0x600
+# CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_FIT=y
+CONFIG_FIT_VERBOSE=y
+CONFIG_SPL_LOAD_FIT=y
+# CONFIG_CONSOLE_MUX is not set
+CONFIG_DEFAULT_FDT_FILE="rockchip/px30-px30-core-ctouch2.dtb"
+CONFIG_MISC_INIT_R=y
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_SPL_BOOTROM_SUPPORT=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_SPL_STACK_R=y
+# CONFIG_TPL_BANNER_PRINT is not set
+CONFIG_SPL_CRC32_SUPPORT=y
+CONFIG_SPL_ATF=y
+# CONFIG_TPL_FRAMEWORK is not set
+# CONFIG_CMD_BOOTD is not set
+# CONFIG_CMD_ELF is not set
+# CONFIG_CMD_IMI is not set
+# CONFIG_CMD_XIMG is not set
+# CONFIG_CMD_LZMADEC is not set
+# CONFIG_CMD_UNZIP is not set
+CONFIG_CMD_GPT=y
+# CONFIG_CMD_LOADB is not set
+# CONFIG_CMD_LOADS is not set
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+CONFIG_CMD_USB_MASS_STORAGE=y
+# CONFIG_CMD_ITEST is not set
+# CONFIG_CMD_SETEXPR is not set
+# CONFIG_CMD_MISC is not set
+# CONFIG_SPL_DOS_PARTITION is not set
+# CONFIG_ISO_PARTITION is not set
+CONFIG_EFI_PARTITION_ENTRIES_NUMBERS=64
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_OF_LIVE=y
+CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_REGMAP=y
+CONFIG_SPL_REGMAP=y
+CONFIG_SYSCON=y
+CONFIG_SPL_SYSCON=y
+CONFIG_CLK=y
+CONFIG_SPL_CLK=y
+CONFIG_FASTBOOT_BUF_ADDR=0x800800
+CONFIG_FASTBOOT_BUF_SIZE=0x04000000
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
+CONFIG_ROCKCHIP_OTP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_PHY_REALTEK=y
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PINCTRL=y
+CONFIG_DM_PMIC=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_DM_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM=y
+CONFIG_SPL_RAM=y
+CONFIG_TPL_RAM=y
+CONFIG_ROCKCHIP_SDRAM_COMMON=y
+CONFIG_DM_RESET=y
+CONFIG_DM_RNG=y
+CONFIG_RNG_ROCKCHIP=y
+# CONFIG_SPECIFY_CONSOLE_INDEX is not set
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_DEBUG_UART_SKIP_INIT=y
+CONFIG_SOUND=y
+CONFIG_SYSRESET=y
+CONFIG_DM_THERMAL=y
+CONFIG_USB=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DWC2_OTG=y
+CONFIG_DM_VIDEO=y
+CONFIG_DISPLAY=y
+CONFIG_LCD=y
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_TPL_TINY_MEMSET=y
+CONFIG_LZO=y
+CONFIG_ERRNO_STR=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
