Return-Path: <SRS0=unwu=CX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F117DC2BC11
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB0B820756
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2020 15:37:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EvugS0Fl";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="fBky78O0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB0B820756
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=diiIWcI+oojPjfvNK1+cKLV7R4hI8TrJYUPje2Sw4dw=; b=EvugS0Fl6A3oMpKDPWV3sepKOt
	M0MIowYn9KW01K+oD531wWFhiVGyngzESXpFTEghoNqaCYEl1xRcIamc1FAx0hOKNI/atdzI/9hAU
	0dA4sdiKNoy8yq1I3twPPVkQLnc/KmkB1xPcnyjUry91SQ+YaqX7UhE/B9VmZiAMdTo+XPQeSn4b4
	uhezgqxR9ks95xxnq/IuhkOqDff67kRCpnZC/vflZch5Yo1vHUBzGSr2bBTwsoa4xBl7JRkn3hE2Z
	cMjmruFoQjv1aGJrin4e3fbkzAXmX9nWHtv5wK2cDaU4racQohx9YFDeF7S4eHn9OaE4FO5im09Al
	5bLb2NAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHqXY-0003o4-7D; Mon, 14 Sep 2020 15:37:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqXV-0003mN-J9
 for linux-rockchip@lists.infradead.org; Mon, 14 Sep 2020 15:37:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id 67so45213pgd.12
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2020 08:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SXeRbKT/rEkPTH2RMnNVA87wTeLeNPAJaOL+NXaw3NQ=;
 b=fBky78O0D8Z71EDhee6vgsSTtiWv5/i960PfiG4dsgnGUh1/7R5MW5mzNtp1SKFB9Q
 AOn9wlielycP2K0qIbbVU9ND2QSxIlE0rMGc7TTIGK1d6aQr0Tl2WvNzZp0tBn8CST5T
 Mdu3FrA4miGvr5YF2MsLfJik3WJFPHYd/s5no=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SXeRbKT/rEkPTH2RMnNVA87wTeLeNPAJaOL+NXaw3NQ=;
 b=Pp5UWAPq8JbLkhAXO9ZTAiZnxvOWxZYP1hlGg59qb4NXjBV+FFeGNhIby5H74KMoM/
 hrSLek92uZQmGOKDAc8uh6ZTA2UADbNE2c5Q7t+InNOGKYz0p+PjEMViphXdIIVqFlxl
 QVbrMX0jF6NJ0wCaiPaExvYVtQx12XZ9A3B88h+aohqMGhCWQYzG554/DHgKTJBSRRp1
 ipm+4+O49mOsoUImOvyfw8VWbelMt7+c3/6PgqABSR1padWT37BuWae8XfYS1RCXtpGP
 pgxFKkKjJDITGKyeDPxCxrWrAlZPAuNq4kmlnU6qj9rr13JzPBhddBC5iamCD1SFef3k
 K5eQ==
X-Gm-Message-State: AOAM531blCUk4SVcAXe/ATWp0lQoepKKgMd2dJrSHWAIN31zWWlafKOi
 qNpWLko8BZWJAflgt/HxdRbLTA==
X-Google-Smtp-Source: ABdhPJwsthETRheCEAzm5WCpfa52ytDCMzLL1jbKXFi4jJ+WzMJ2ZD5U2qnd6db9wJDxVELDekhsWw==
X-Received: by 2002:a62:7c0f:: with SMTP id x15mr13691453pfc.7.1600097827874; 
 Mon, 14 Sep 2020 08:37:07 -0700 (PDT)
Received: from localhost.localdomain ([124.123.169.115])
 by smtp.gmail.com with ESMTPSA id ml20sm9711026pjb.20.2020.09.14.08.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:37:07 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v2 4/7] rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
Date: Mon, 14 Sep 2020 21:06:31 +0530
Message-Id: <20200914153634.18121-5-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_113709_696367_A7C83650 
X-CRM114-Status: GOOD (  18.17  )
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
 linux-amarula@amarulasolutions.com, jagan@amarulasolutions.com,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v2:
- Collect Kever Yang r-b tag

 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/px30-px30-core-edimm2.2.dts  |  21 +++++
 arch/arm/mach-rockchip/px30/Kconfig       |   6 ++
 board/rockchip/evb_px30/MAINTAINERS       |   6 ++
 configs/px30-core-edimm2.2-px30_defconfig | 108 ++++++++++++++++++++++
 5 files changed, 142 insertions(+)
 create mode 100644 arch/arm/dts/px30-px30-core-edimm2.2.dts
 create mode 100644 configs/px30-core-edimm2.2-px30_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f8f529435b..f1b0286fa1 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -72,6 +72,7 @@ dtb-$(CONFIG_MACH_S700) += \
 dtb-$(CONFIG_ROCKCHIP_PX30) += \
 	px30-evb.dtb \
 	px30-firefly.dtb \
+	px30-px30-core-edimm2.2.dtb \
 	rk3326-odroid-go2.dtb
 
 dtb-$(CONFIG_ROCKCHIP_RK3036) += \
diff --git a/arch/arm/dts/px30-px30-core-edimm2.2.dts b/arch/arm/dts/px30-px30-core-edimm2.2.dts
new file mode 100644
index 0000000000..c36280ce7f
--- /dev/null
+++ b/arch/arm/dts/px30-px30-core-edimm2.2.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "px30.dtsi"
+#include "px30-engicam-edimm2.2.dtsi"
+#include "px30-px30-core.dtsi"
+
+/ {
+	model = "Engicam PX30.Core EDIMM2.2 Starter Kit";
+	compatible = "engicam,px30-core-edimm2.2", "engicam,px30-px30-core",
+		     "rockchip,px30";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+};
diff --git a/arch/arm/mach-rockchip/px30/Kconfig b/arch/arm/mach-rockchip/px30/Kconfig
index 6cd65dfa97..98959fbf53 100644
--- a/arch/arm/mach-rockchip/px30/Kconfig
+++ b/arch/arm/mach-rockchip/px30/Kconfig
@@ -8,6 +8,12 @@ config TARGET_EVB_PX30
 	  EVB_PX30:
 	  * EVB_PX30 is an evaluation board for Rockchip PX30.
 
+	  PX30.Core EDIMM2.2:
+	  * PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
+	  * EDIMM2.2 is a Form Factor Capacitive Evaluation Board from Engicam.
+	  * PX30.Core needs to mount on top of EDIMM2.2 for creating complete
+	    PX30.Core EDIMM2.2 Starter Kit.
+
 config TARGET_ODROID_GO2
 	bool "ODROID_GO2"
 
diff --git a/board/rockchip/evb_px30/MAINTAINERS b/board/rockchip/evb_px30/MAINTAINERS
index 4dc060c501..48fba4e046 100644
--- a/board/rockchip/evb_px30/MAINTAINERS
+++ b/board/rockchip/evb_px30/MAINTAINERS
@@ -5,3 +5,9 @@ F:      board/rockchip/evb_px30
 F:      include/configs/evb_px30.h
 F:      configs/evb-px30_defconfig
 F:      configs/firefly-px30_defconfig
+
+PX30-Core-EDIMM2.2
+M:	Jagan Teki <jagan@amarulasolutions.com>
+M:	Suniel Mahesh <sunil@amarulasolutions.com>
+S:	Maintained
+F:	configs/px30-core-edimm2.2-px30_defconfig
diff --git a/configs/px30-core-edimm2.2-px30_defconfig b/configs/px30-core-edimm2.2-px30_defconfig
new file mode 100644
index 0000000000..07205f0243
--- /dev/null
+++ b/configs/px30-core-edimm2.2-px30_defconfig
@@ -0,0 +1,108 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_LIBCOMMON_SUPPORT=y
+CONFIG_SPL_LIBGENERIC_SUPPORT=y
+CONFIG_SYS_MALLOC_F_LEN=0x2000
+CONFIG_SPL_TEXT_BASE=0x00000000
+CONFIG_ROCKCHIP_PX30=y
+CONFIG_TARGET_EVB_PX30=y
+CONFIG_TPL_LIBGENERIC_SUPPORT=y
+CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
+CONFIG_SPL_STACK_R_ADDR=0x600000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF160000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEBUG_UART=y
+CONFIG_TPL_SYS_MALLOC_F_LEN=0x600
+# CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_FIT=y
+CONFIG_FIT_VERBOSE=y
+CONFIG_SPL_LOAD_FIT=y
+# CONFIG_CONSOLE_MUX is not set
+CONFIG_DEFAULT_FDT_FILE="rockchip/px30-px30-core-edimm2.2.dtb"
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
+CONFIG_DEFAULT_DEVICE_TREE="px30-px30-core-edimm2.2"
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
+# CONFIG_EFI_LOADER is not set
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
