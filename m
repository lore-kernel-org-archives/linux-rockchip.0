Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF4CC11F68
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 968BB6135C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 968BB6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duuPugxrqfaxRLwdHhyrmUroGNBSxpJenlM6Lvsu+xE=; b=ikEjL8N7sQLDJe
	F1paHymPhK2MGZRB78oY0fk1c7qOhoW6qF03Ubny2odSXKi/dJdUW67LMs3j1+9+PbdyFr7/s/MoW
	n/DMXKi1fylC9sC9uFN1aNv8Xh5J9PNGS+xd+zK0mkm8HA3XiUSTJwAngfHGEIHtQ03ybitS9yjhW
	Jg4zw6pp5G7lZJ0WQ1HZKDORwu7KHf5dV25/LF/BSayod+BvkhxWdHsmMzpWAMhDn/PTgnPcJb5cV
	qjjY6OCx/Un1hqsiR6ucHSx+dVE9PJirGbeohafIvnisHubfrkYxY/WpuF70U5FU5aAJwXL0+GnfZ
	rp63eSOH3+4u55dKhZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lycza-00EioA-Rm; Wed, 30 Jun 2021 16:23:14 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczU-00EikQ-HA
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:10 +0000
Received: by mail-ej1-x635.google.com with SMTP id bu12so5283381ejb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BEiGg1/WRNwz/cVtfiaY0ETZHYBSQm9pQgkrdoPTHmQ=;
 b=iaLvqKbkQUvHsTnEDY8ZaQTc4d55GSY0iFGmnqG98ABGlXuFs3S+CBzPSEmOmU4eBm
 khb4CjO02h239FXQ48YHyc45Kd0j3pDKNrrs67+EmKtu+cZM8T4EGwZrPfPS9lWfuewg
 vB/VzXU7XpUjKKnoUMKtoyG/YX34/N0B1I1SVsFONdIk89WPgQNd1pttRpDLHjQ2qaHj
 GpRLKTDcSwpq5yMnTUM3vcTYbJqCcGhQyqTtcyrhwpwKMJn2g+SQaTE++qxH/YdaQVc/
 arLNjvfFEGWPLS25mOY2LB2mh1pVURi7uOvI3JKEnVu4JbbDjHs05Xo9hwCjtWksncz8
 +C7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BEiGg1/WRNwz/cVtfiaY0ETZHYBSQm9pQgkrdoPTHmQ=;
 b=JsJTv1nvCKzyyRXdszjJlB6J25aJhPqOY55EC7n2WiWD50bJ8Dz3GlgHobPYDkz8ou
 MtHT/floVceXIMhDPtA8fzkTY0mw+12l6lXayw5abLDXiM5xOO1+V0dxPABUCjhfw9vh
 ykxdlAjhxT979RnR75G7eXKwm9CP3+kwzd7YDgKtB9gUJnraCENWt0YPl+0Kzepm4EVP
 mRmqClG22jcgaP5af9X73Fdb92lUSH6iEOypGV+YEcW3wzdG0DCBDTU0iK+NzA9A3pDy
 9g8iv5qDI6xNf7FOjY6ZPC9hp4py3c6GAoZyLNY0Eoxy9M2HJVSQWHQDcEWjBpbgYSuR
 IUUg==
X-Gm-Message-State: AOAM531JZwK2IHZjvPURmgExGfYesawUVvF3xGy/7gcNMyspdVmdSTL3
 JkhZ+ZmEiHFzBcuZzVKZzL8=
X-Google-Smtp-Source: ABdhPJws2zvoA6F8TCPX61Zmegin9rLmQbGrkNWadGjImIr/bEMn0Dsv3l1ItCG0oSeWwG0Rp8Kjaw==
X-Received: by 2002:a17:907:7b84:: with SMTP id
 ne4mr8429374ejc.350.1625070187139; 
 Wed, 30 Jun 2021 09:23:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.23.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 5/6] rockchip: rk3318: add a95x-z2-rk3318_defconfig file
Date: Wed, 30 Jun 2021 18:22:50 +0200
Message-Id: <20210630162251.7378-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210630162251.7378-1-jbx6244@gmail.com>
References: <20210630162251.7378-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092308_612908_671C9767 
X-CRM114-Status: GOOD (  13.19  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This commit adds the default configuration file and relevant description
for A95X Z2 board

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 board/rockchip/evb_rk3328/MAINTAINERS |   6 ++
 configs/a95x-z2-rk3318_defconfig      | 102 ++++++++++++++++++++++++++++++++++
 doc/board/rockchip/rockchip.rst       |   2 +
 3 files changed, 110 insertions(+)
 create mode 100644 configs/a95x-z2-rk3318_defconfig

diff --git a/board/rockchip/evb_rk3328/MAINTAINERS b/board/rockchip/evb_rk3328/MAINTAINERS
index 14fda46e8f..a4573c2ff9 100644
--- a/board/rockchip/evb_rk3328/MAINTAINERS
+++ b/board/rockchip/evb_rk3328/MAINTAINERS
@@ -1,3 +1,9 @@
+A95X-Z2-RK3318
+M:      Johan Jonker <jbx6244@gmail.com>
+S:      Maintained
+F:      configs/a95x-z2-rk3318_defconfig
+F:      arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
+
 EVB-RK3328
 M:      Kever Yang <kever.yang@rock-chips.com>
 S:      Maintained
diff --git a/configs/a95x-z2-rk3318_defconfig b/configs/a95x-z2-rk3318_defconfig
new file mode 100644
index 0000000000..cba0f6c659
--- /dev/null
+++ b/configs/a95x-z2-rk3318_defconfig
@@ -0,0 +1,102 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_GPIO_SUPPORT=y
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3328=y
+CONFIG_TPL_ROCKCHIP_COMMON_BOARD=y
+CONFIG_TPL_LIBCOMMON_SUPPORT=y
+CONFIG_TPL_LIBGENERIC_SUPPORT=y
+CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
+CONFIG_SPL_STACK_R_ADDR=0x600000
+CONFIG_DEBUG_UART_BASE=0xFF130000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_DEFAULT_DEVICE_TREE="rk3318-a95x-z2"
+CONFIG_DEBUG_UART=y
+CONFIG_TPL_SYS_MALLOC_F_LEN=0x800
+# CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_FIT=y
+CONFIG_FIT_VERBOSE=y
+CONFIG_SPL_LOAD_FIT=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3318-a95x-z2.dtb"
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+CONFIG_MISC_INIT_R=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_TPL_SYS_MALLOC_SIMPLE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_I2C_SUPPORT=y
+CONFIG_SPL_POWER_SUPPORT=y
+CONFIG_SPL_ATF=y
+CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+# CONFIG_CMD_SETEXPR is not set
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_TPL_OF_CONTROL=y
+CONFIG_OF_SPL_REMOVE_PROPS="clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_TPL_OF_PLATDATA=y
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+# CONFIG_NET is not set
+CONFIG_TPL_DM=y
+CONFIG_REGMAP=y
+CONFIG_SPL_REGMAP=y
+CONFIG_TPL_REGMAP=y
+CONFIG_SYSCON=y
+CONFIG_SPL_SYSCON=y
+CONFIG_TPL_SYSCON=y
+CONFIG_CLK=y
+CONFIG_SPL_CLK=y
+CONFIG_FASTBOOT_BUF_ADDR=0x800800
+CONFIG_FASTBOOT_MMC_BOOT_SUPPORT=y
+CONFIG_FASTBOOT_MMC_USER_SUPPORT=y
+CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_SF_DEFAULT_SPEED=20000000
+CONFIG_DM_ETH=y
+CONFIG_DM_ETH_PHY=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PINCTRL=y
+CONFIG_SPL_PINCTRL=y
+CONFIG_DM_PMIC=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_SPL_DM_REGULATOR=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_DM_REGULATOR_FIXED=y
+CONFIG_SPL_DM_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM=y
+CONFIG_SPL_RAM=y
+CONFIG_TPL_RAM=y
+CONFIG_DM_RESET=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_SYSINFO=y
+CONFIG_SYSINFO_SMBIOS=y
+CONFIG_SYSRESET=y
+# CONFIG_TPL_SYSRESET is not set
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_USB_OHCI_GENERIC=y
+CONFIG_USB_DWC2=y
+CONFIG_USB_DWC3=y
+# CONFIG_USB_DWC3_GADGET is not set
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DWC2_OTG=y
+CONFIG_USB_FUNCTION_ROCKUSB=y
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_TPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index fbb9983988..49a2dd2dd3 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -44,6 +44,8 @@ List of mainline supported rockchip boards:
 * rk3308
      - Rockchip Evb-RK3308 (evb-rk3308)
      - Roc-cc-RK3308 (roc-cc-rk3308)
+* rk3318
+     - A95X Z2 (a95x-z2-rk3318)
 * rk3328
      - Rockchip Evb-RK3328 (evb-rk3328)
      - Pine64 Rock64 (rock64-rk3328)
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
