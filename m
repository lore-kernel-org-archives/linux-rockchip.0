Return-Path: <SRS0=JMM0=ED=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2C3C55178
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AF7924671
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2020 13:34:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uMLr9eA3";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Us7SgaUQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0AF7924671
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rioh7BUVqX9utyfgDrxPZs583tOppqkZLfZe2Wfch7g=; b=uMLr9eA3SBlQP3ro1l3b98ovI
	5xKQgN9ygjakX4I0o4/9ZYnNIRg+iz4E4je9bMo4EQelpH7avRU3SCJ/RZQoMN+ghmh2HmP8qeFsx
	B2vy6gV8nH/pexYFv4knyfhqnfU7scdcoZ8gq03nx9tAAjefLferneCMUCmoJTqPvisaaLn+2oj6C
	VxK5ePMpa3yZUTmeZJvhJnYqcrwRKCc9U88FbB3ouwcigohT7tTqib5Q29GyhGrVirhO8R3O2w9az
	ZMRfb1is7eu03jbMoYTD/8yT9wUjfrHVfzA9n+9NyjrUNevSz6Uo9QVP3sGVxfRLswj9SLwqsarVq
	ojEn+Dljg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kXlaz-0002pL-RK; Wed, 28 Oct 2020 13:34:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXlaw-0002nN-Qe
 for linux-rockchip@lists.infradead.org; Wed, 28 Oct 2020 13:34:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id r186so2803908pgr.0
 for <linux-rockchip@lists.infradead.org>; Wed, 28 Oct 2020 06:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0sXhV4oFn8qCPVyhCHnZGNHFiz5eY+QRcKJW+gmOI1A=;
 b=Us7SgaUQ9ZfKVieTRI99lSe9T9ABYdkuCzffnvMImr2d71oHtG6enOlu7IHYDAKh4D
 kytxbeCflcrLv/1Hy0m09LOpapsnk3nSaKu/+j11dp/KSs/3e7O4bPw/bFehJM8aAMVn
 UUjGGyvcKFqx4/88DEsSnPqqKA6T94BwuIt6s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0sXhV4oFn8qCPVyhCHnZGNHFiz5eY+QRcKJW+gmOI1A=;
 b=dnTBTSt63A88Hnq4V31fcbto/+26T8NCNYTNACnTrA5MxM/r8nXDJyJHC376iq5V8O
 sUW3z3Eiu+lEjM/zP3ozF9bzdM+ICgGBL458RlasaJjS0rIuyt0URGaGdG7rNf1SfRQO
 aGEWMOLK6cthjl9jaXsem54bfV+c8lvSZCY9csQ83zqzSpnu5o0CKorTV/eRdaCNSY6z
 0eXklAEknKiH4K8Ck3aG1VIfhgjdDkOias3qEtCyvlHhw5ORFfE9Qp0iRyTIop0k9Zt9
 Z0WVPnN8KMrhJd/UqV66MIyOOJXg+XUhkSzIuhjrG/IS1DpEU2oD8lhF7BPCPqP+hzFN
 TyWQ==
X-Gm-Message-State: AOAM5301F+956OtSf3pLgT/tUdyOn+NjELm4XKyxqEOB++UgKeQu/vgw
 pvPDTqBmSaclMJXcIdYTmHjheg==
X-Google-Smtp-Source: ABdhPJx/YIrq+KrwXIbihEEYQAlij73NMXUqw2hVM0ORS4S3NuqnvpPcWvaMuYmKggcI9wToruR0rQ==
X-Received: by 2002:a05:6a00:2282:b029:156:1a7b:3cf9 with SMTP id
 f2-20020a056a002282b02901561a7b3cf9mr7174698pfe.5.1603892068581; 
 Wed, 28 Oct 2020 06:34:28 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7a4:2d09:2940:d772:8d5])
 by smtp.gmail.com with ESMTPSA id
 u11sm5717073pfk.164.2020.10.28.06.34.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:34:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v4 5/8] rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
Date: Wed, 28 Oct 2020 19:03:45 +0530
Message-Id: <20201028133348.241839-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201028133348.241839-1-jagan@amarulasolutions.com>
References: <20201028133348.241839-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201028_093430_880956_4FA16275 
X-CRM114-Status: GOOD (  20.41  )
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

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v4:
- drop ram change
- on top of https://patchwork.ozlabs.org/project/uboot/patch/20201001184003.3704604-1-heiko@sntech.de/

 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/px30-px30-core-edimm2.2.dts  |  21 +++++
 arch/arm/mach-rockchip/px30/Kconfig       |  10 ++
 board/engicam/px30_core/Kconfig           |  16 ++++
 board/engicam/px30_core/MAINTAINERS       |   7 ++
 board/engicam/px30_core/Makefile          |   7 ++
 board/engicam/px30_core/px30_core.c       |   4 +
 configs/px30-core-edimm2.2-px30_defconfig | 108 ++++++++++++++++++++++
 include/configs/px30_core.h               |  15 +++
 9 files changed, 189 insertions(+)
 create mode 100644 arch/arm/dts/px30-px30-core-edimm2.2.dts
 create mode 100644 board/engicam/px30_core/Kconfig
 create mode 100644 board/engicam/px30_core/MAINTAINERS
 create mode 100644 board/engicam/px30_core/Makefile
 create mode 100644 board/engicam/px30_core/px30_core.c
 create mode 100644 configs/px30-core-edimm2.2-px30_defconfig
 create mode 100644 include/configs/px30_core.h

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b195723f16..b87f4334a5 100644
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
index 6cd65dfa97..5d014f6561 100644
--- a/arch/arm/mach-rockchip/px30/Kconfig
+++ b/arch/arm/mach-rockchip/px30/Kconfig
@@ -11,6 +11,15 @@ config TARGET_EVB_PX30
 config TARGET_ODROID_GO2
 	bool "ODROID_GO2"
 
+config TARGET_PX30_CORE
+	bool "Engicam PX30.Core"
+	help
+	  PX30.Core EDIMM2.2:
+	  * PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
+	  * EDIMM2.2 is a Form Factor Capacitive Evaluation Board from Engicam.
+	  * PX30.Core needs to mount on top of EDIMM2.2 for creating complete
+	    PX30.Core EDIMM2.2 Starter Kit.
+
 config ROCKCHIP_BOOT_MODE_REG
 	default 0xff010200
 
@@ -44,6 +53,7 @@ config DEBUG_UART_CHANNEL
 	  For using the UART for early debugging the route to use needs
 	  to be declared (0 or 1).
 
+source "board/engicam/px30_core/Kconfig"
 source "board/hardkernel/odroid_go2/Kconfig"
 source "board/rockchip/evb_px30/Kconfig"
 
diff --git a/board/engicam/px30_core/Kconfig b/board/engicam/px30_core/Kconfig
new file mode 100644
index 0000000000..a03be78369
--- /dev/null
+++ b/board/engicam/px30_core/Kconfig
@@ -0,0 +1,16 @@
+if TARGET_PX30_CORE
+
+config SYS_BOARD
+	default "px30_core"
+
+config SYS_VENDOR
+	default "engicam"
+
+config SYS_CONFIG_NAME
+	default "px30_core"
+
+config BOARD_SPECIFIC_OPTIONS # dummy
+	def_bool y
+	select RAM_PX30_DDR4 
+
+endif
diff --git a/board/engicam/px30_core/MAINTAINERS b/board/engicam/px30_core/MAINTAINERS
new file mode 100644
index 0000000000..f98a84450a
--- /dev/null
+++ b/board/engicam/px30_core/MAINTAINERS
@@ -0,0 +1,7 @@
+PX30-Core-EDIMM2.2
+M:	Jagan Teki <jagan@amarulasolutions.com>
+M:	Suniel Mahesh <sunil@amarulasolutions.com>
+S:	Maintained
+F:	board/engicam/px30_core
+F:	include/configs/px30_core.h
+F:	configs/px30-core-edimm2.2-px30_defconfig
diff --git a/board/engicam/px30_core/Makefile b/board/engicam/px30_core/Makefile
new file mode 100644
index 0000000000..321fdb0173
--- /dev/null
+++ b/board/engicam/px30_core/Makefile
@@ -0,0 +1,7 @@
+#
+# Copyright (c) 2020 Amarula Solutions(India)
+#
+# SPDX-License-Identifier:     GPL-2.0+
+#
+
+obj-y	+= px30_core.o
diff --git a/board/engicam/px30_core/px30_core.c b/board/engicam/px30_core/px30_core.c
new file mode 100644
index 0000000000..3adc2f11de
--- /dev/null
+++ b/board/engicam/px30_core/px30_core.c
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
diff --git a/configs/px30-core-edimm2.2-px30_defconfig b/configs/px30-core-edimm2.2-px30_defconfig
new file mode 100644
index 0000000000..50a9a150c8
--- /dev/null
+++ b/configs/px30-core-edimm2.2-px30_defconfig
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
+CONFIG_DEFAULT_DEVICE_TREE="px30-px30-core-edimm2.2"
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
diff --git a/include/configs/px30_core.h b/include/configs/px30_core.h
new file mode 100644
index 0000000000..01b4995598
--- /dev/null
+++ b/include/configs/px30_core.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#ifndef __PX30_CORE_H
+#define __PX30_CORE_H
+
+#include <configs/px30_common.h>
+
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
+#endif /* __PX30_CORE_H */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
