Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC3CC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2A8764EEE
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2A8764EEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lv0RWGWh+y1UKkWBfiv4eN9vqYiowDriYQbotfid09A=; b=XVI5eUinHB9b53ftiPkXn5mVK
	zAqLE+s6dYGmNJj8JMA77ccWl7sJHR3+b4kc4otbwy0O/vSKFNE/re+CvVN7TcXOgGTLEFqekd12x
	l+xtBFv6zZihjmsWMA4uHQTYfDvZzlbCvcqSC+hUhg4A3OQBJ/nELTUgIAbEvuC1WLO2l9MDz3cyF
	9uLxmT/p1rbavhKv9FzU7btXs2mThysyhibxDiUMyWkXSSRzSOgc/qXaNi+R7InjJbEXzKObxS2VL
	ZZd+Bqib0hmQq2unhtzjIuaB/ht7pf+5IEL/DcPw+alxwOLG5kW7ma3PQeKg+pKIJQebc3j8UDsrN
	FOQ65oRFQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMd-00G0KB-Qq; Fri, 05 Mar 2021 18:39:51 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMV-00G0EG-Kz
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:39:48 +0000
Received: by mail-ed1-x535.google.com with SMTP id dm26so3931717edb.12
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vj0fR0Hv68keiBerGEZYm4j5yOSf6bjnsnQtt9w94hk=;
 b=I5pYnbMlKeDeCDB02kLVpDRlSoszuEhN46XklEhNp0i5VoztFotrZFPataFwQ9/G1h
 xxM+sVa9t134rnWSwJzg380KeaJSYcWDzJtNmMHycZ/z/lPiuqBeBjYVcuyxLZbzaPev
 IiiVtgBUl/a/5uTbR0JbfU+p44Cd0MOT4ajcoTNsHPvPBaNkLKETIe6JHb0KE1Cv6CNe
 VosCzuvOce/XE82mppCqA5GbIU1aaHPYWe7HmyZH/mMkmmfr3zWtInHCSaWXBWFFllfQ
 m/1Gv6G8MMlwKHx+3a4xCbfshZ9vXeA7cMHGNyccW6oWoS/uQTD0o5VDx+GqzYDfYZYP
 3RMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vj0fR0Hv68keiBerGEZYm4j5yOSf6bjnsnQtt9w94hk=;
 b=rbQ7nVlYaYGAZQ7XFccxfCmElPFPgbF5WeO2WjkXh8d4gVwFHkaxqrKE+GwJhJ162Q
 uVzw6sAUjVMENDA5/qqGJj1vnotzP5kYoMrg0ZzXpAhL1yXwjSuqdoxEt/HeWocxhvqR
 3NVd3+I8WcTtCYcvBjiDXhsUoflYMaaA6pPtKN72LSTz42Rz5YnAuMXAIwjMW32bNfHt
 fFB6eslNn4IzKZcZPJ4UWoYZn/PQs5YGtb743dvTs6GtYR4NX5hNLQsYNkxMN9iiCjgL
 8nilQuLotM4ikEe+ZfKIyJzuk5ysqdeFvLbpT8GZEoT6ow0vvBCY1OFCSW245qQssv0U
 ghFg==
X-Gm-Message-State: AOAM533t3sHyNbuj6dNJlJJ4MTn3ylxWVf5FvZZOyMkRE9fpY4kdu+c/
 H02QBFbsn2c2xJbZA1w2/Bo=
X-Google-Smtp-Source: ABdhPJwGAzsAAqA4EE0xVB7Wy2nLESquIY3Pc0XL21zHXY/3rsG7/17j+Pe8EUPUWNYxgGUsP8OcyA==
X-Received: by 2002:a05:6402:215:: with SMTP id
 t21mr10491472edv.363.1614969583148; 
 Fri, 05 Mar 2021 10:39:43 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:42 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 6/7] ARM: configs: at91: sama5: update with savedefconfig
Date: Fri,  5 Mar 2021 18:39:23 +0000
Message-Id: <20210305183924.1754026-7-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183944_183649_5CE685AD 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Emil Velikov <emil.velikov@collabora.com>

While enabling an extra config, I've noticed that savedefconfig produced
a notable delta. Split out the no-op changes for clarity sake.

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 arch/arm/configs/sama5_defconfig | 48 ++++++++++++--------------------
 1 file changed, 18 insertions(+), 30 deletions(-)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index 5f6297e6c549..0dca50c64503 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -1,7 +1,6 @@
 # CONFIG_LOCALVERSION_AUTO is not set
 # CONFIG_SWAP is not set
 CONFIG_SYSVIPC=y
-CONFIG_FHANDLE=y
 CONFIG_NO_HZ_IDLE=y
 CONFIG_HIGH_RES_TIMERS=y
 CONFIG_LOG_BUF_SHIFT=14
@@ -9,29 +8,26 @@ CONFIG_CGROUPS=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_EMBEDDED=y
 CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_FORCE_LOAD=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
 CONFIG_ARCH_AT91=y
 CONFIG_SOC_SAMA5D2=y
 CONFIG_SOC_SAMA5D3=y
 CONFIG_SOC_SAMA5D4=y
 # CONFIG_ATMEL_CLOCKSOURCE_PIT is not set
-CONFIG_AEABI=y
 CONFIG_UACCESS_WITH_MEMCPY=y
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_ARM_APPENDED_DTB=y
 CONFIG_CMDLINE="console=ttyS0,115200 initrd=0x21100000,25165824 root=/dev/ram0 rw"
 CONFIG_KEXEC=y
 CONFIG_VFP=y
 CONFIG_NEON=y
 CONFIG_KERNEL_MODE_NEON=y
-# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 CONFIG_PM_DEBUG=y
 CONFIG_PM_ADVANCED_DEBUG=y
+CONFIG_MODULES=y
+CONFIG_MODULE_FORCE_LOAD=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODULE_FORCE_UNLOAD=y
+# CONFIG_BLK_DEV_BSG is not set
+# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -41,13 +37,7 @@ CONFIG_IP_PNP=y
 CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
-# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET_XFRM_MODE_BEET is not set
 # CONFIG_INET_DIAG is not set
-# CONFIG_INET6_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET6_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET6_XFRM_MODE_BEET is not set
 CONFIG_IPV6_SIT_6RD=y
 CONFIG_BRIDGE=m
 CONFIG_BRIDGE_VLAN_FILTERING=y
@@ -68,7 +58,6 @@ CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_CFI=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_ATMEL=y
 CONFIG_MTD_SPI_NOR=y
@@ -87,8 +76,8 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_NETDEVICES=y
 CONFIG_NET_DSA_MICROCHIP_KSZ9477=m
 CONFIG_NET_DSA_MICROCHIP_KSZ9477_SPI=m
-CONFIG_MACB=y
 # CONFIG_NET_VENDOR_BROADCOM is not set
+CONFIG_MACB=y
 # CONFIG_NET_VENDOR_CIRRUS is not set
 # CONFIG_NET_VENDOR_FARADAY is not set
 # CONFIG_NET_VENDOR_INTEL is not set
@@ -103,7 +92,9 @@ CONFIG_MACB=y
 CONFIG_MICREL_PHY=y
 CONFIG_LIBERTAS_THINFIRM=m
 CONFIG_LIBERTAS_THINFIRM_USB=m
-CONFIG_RTL8187=m
+CONFIG_MWIFIEX=m
+CONFIG_MWIFIEX_SDIO=m
+CONFIG_MWIFIEX_USB=m
 CONFIG_RT2X00=m
 CONFIG_RT2500USB=m
 CONFIG_RT73USB=m
@@ -111,10 +102,7 @@ CONFIG_RT2800USB=m
 CONFIG_RT2800USB_RT53XX=y
 CONFIG_RT2800USB_RT55XX=y
 CONFIG_RT2800USB_UNKNOWN=y
-CONFIG_MWIFIEX=m
-CONFIG_MWIFIEX_SDIO=m
-CONFIG_MWIFIEX_USB=m
-# CONFIG_INPUT_MOUSEDEV is not set
+CONFIG_RTL8187=m
 CONFIG_INPUT_EVDEV=y
 # CONFIG_KEYBOARD_ATKBD is not set
 CONFIG_KEYBOARD_QT1070=y
@@ -136,9 +124,9 @@ CONFIG_SPI_ATMEL=y
 CONFIG_SPI_GPIO=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_SAMA5D2_PIOBU=m
+CONFIG_POWER_RESET=y
 CONFIG_POWER_SUPPLY=y
 CONFIG_BATTERY_ACT8945A=y
-CONFIG_POWER_RESET=y
 CONFIG_SENSORS_JC42=m
 CONFIG_WATCHDOG=y
 CONFIG_AT91SAM9X_WATCHDOG=y
@@ -177,11 +165,11 @@ CONFIG_SND=y
 CONFIG_SND_SOC=y
 CONFIG_SND_ATMEL_SOC=y
 CONFIG_SND_ATMEL_SOC_WM8904=y
-# CONFIG_HID_GENERIC is not set
 CONFIG_SND_ATMEL_SOC_CLASSD=y
 CONFIG_SND_ATMEL_SOC_PDMIC=y
 CONFIG_SND_ATMEL_SOC_TSE850_PCM5142=m
 CONFIG_SND_ATMEL_SOC_I2S=y
+# CONFIG_HID_GENERIC is not set
 CONFIG_USB=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
 CONFIG_USB_EHCI_HCD=y
@@ -235,14 +223,14 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_CODEPAGE_850=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NLS_UTF8=y
+CONFIG_CRYPTO_USER_API_HASH=m
+CONFIG_CRYPTO_USER_API_SKCIPHER=m
+CONFIG_CRYPTO_DEV_ATMEL_AES=y
+CONFIG_CRYPTO_DEV_ATMEL_TDES=y
+CONFIG_CRYPTO_DEV_ATMEL_SHA=y
 CONFIG_STRIP_ASM_SYMS=y
 CONFIG_DEBUG_FS=y
 CONFIG_DEBUG_MEMORY_INIT=y
 # CONFIG_SCHED_DEBUG is not set
 # CONFIG_FTRACE is not set
 CONFIG_DEBUG_USER=y
-CONFIG_CRYPTO_USER_API_HASH=m
-CONFIG_CRYPTO_USER_API_SKCIPHER=m
-CONFIG_CRYPTO_DEV_ATMEL_AES=y
-CONFIG_CRYPTO_DEV_ATMEL_TDES=y
-CONFIG_CRYPTO_DEV_ATMEL_SHA=y
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
