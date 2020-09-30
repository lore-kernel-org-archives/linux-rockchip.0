Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7678CC4727F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:18:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2770420754
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 13:18:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2XCwi2z7";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="BflnOS7v"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2770420754
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dKVKwd+YoRaSqF8eeFKTtFqgTqo260XK/tN+hUWsECE=; b=2XCwi2z7XZDlwXfDpa+B3obo5
	FRfrWpMX996IrBaldv164Efm2JWyTJ7VpmtOJM9AnFoMGb0FaXCRFmtl1Sj+itC/l1YgmihtX6r5F
	vITCDZggte59riTqaAOa853Gi4u+9qdxS+hk2yuwUImoudUL/8Ryf1kdHv7jRX3Sa2fXz4BBCPQ0d
	leT7x1aPc1UKSVTrjdodh+wGeX5IOyA4WNMe1H4WY5gExRxkUM6Zuhzl69jnwRbGSmnw5w8GKI0qL
	AYUQqR4SU1h8s1ju9pqWZAaECr437DqTYFOn1m23SgUgACjEkuKwEaYrlNxJpbjwW0CuP5DIvcGo5
	IZfJPYDBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNbza-0000Np-PR; Wed, 30 Sep 2020 13:17:58 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbzY-0000Lx-NK
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 13:17:57 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l18so937595pjz.1
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 06:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zIMO/M6bXAsSG496h31byuZfR/fFfR1Yfrl05Ec3KKA=;
 b=BflnOS7vl0H1nTzwUFRHqxCeh9O/VYp26pLCVvfPu5eb9tZ8jxwc9FtRaFOvth2JxH
 CGkZFLwvhbzu3cqdXI/8/4VoZtCLzcPyWXo7XuMPXbm9BLYQSs4MALkBZgqXS9noIDuG
 4gg1AwOXcqVTYEMCGpGVoGaQMbSoV8EelFE9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zIMO/M6bXAsSG496h31byuZfR/fFfR1Yfrl05Ec3KKA=;
 b=cW/dfNFmADcl36G+QtJt49d4huvH6tBzCxM3QH+ugi0jPSwBgtmUzqXlThuRQJ86QG
 /srbM1bM6+nh/bmwTdbFpa9ZiWYMk5MvUxNdfmY3hSSGSKWgnmuHOUakefFNkR33c/Rt
 zfJiCTeeo01ljBnHVFJzL2p/wDFGvozDSg6wBgp39X0GOUwQw8Ct11+VSfBAj4chN1BO
 iUxujXB8k/4YJKHtUShP65lR9EHGdELXwT/calPFhYf7PsM5KRo1PB398UslboZQHlyy
 UbbWR6SQkMDjEFwll13vMc1DuXMWHwW1q48OqmjwebjxW1TUSzDR5K5BRprLN8KR7x3U
 XsDw==
X-Gm-Message-State: AOAM53052YeeQkPEWyKa4nfGnYBpnWzZFFGJNTbK3TQlSMj0gyIsOnwb
 4xqvr4hp5icFAQvGNoY7fNf+dg==
X-Google-Smtp-Source: ABdhPJwtKcj4SV5KD0dJEok9DAAsBPANGKV+PBvmg/nkq9WbbEcuynzSADsIy2UVHXmMwhdJhOH6NA==
X-Received: by 2002:a17:90a:a595:: with SMTP id
 b21mr2447074pjq.95.1601471873742; 
 Wed, 30 Sep 2020 06:17:53 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch
 ([2405:201:c809:c7d5:91b9:59de:b063:d8ee])
 by smtp.gmail.com with ESMTPSA id q4sm2849004pjl.28.2020.09.30.06.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 06:17:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 sjg@chromium.org
Subject: [PATCH v3 7/8] rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date: Wed, 30 Sep 2020 18:46:25 +0530
Message-Id: <20200930131626.265206-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200930131626.265206-1-jagan@amarulasolutions.com>
References: <20200930131626.265206-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_091756_770746_3912A330 
X-CRM114-Status: GOOD (  17.47  )
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
Changes for v3:
- changes to support TPL
Changes for v2:
- Minor device tree adjustments as per Linux mainline changes
- rename device tree from ctouch2-of10.dts to ctouch2.dts
- rename defconfig from ctouch2-of10 to ctouch2
- collect Kever Yang r-b tag
- Add additional copyright

 arch/arm/dts/Makefile                    |   1 +
 arch/arm/dts/px30-px30-core-ctouch2.dts  |  22 +++++
 arch/arm/mach-rockchip/px30/Kconfig      |   7 ++
 board/engicam/px30_core/MAINTAINERS      |   6 ++
 configs/px30-core-ctouch2-px30_defconfig | 108 +++++++++++++++++++++++
 5 files changed, 144 insertions(+)
 create mode 100644 arch/arm/dts/px30-px30-core-ctouch2.dts
 create mode 100644 configs/px30-core-ctouch2-px30_defconfig

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f1b0286fa1..1ffa07cc6e 100644
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
