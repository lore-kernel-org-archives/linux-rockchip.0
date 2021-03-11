Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C03C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8F5964F99
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8F5964F99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XM1tfWcqPfMaXMumMt9rEEgr1g52tXa4fy1pKDhSneE=; b=l5iBPO17xO2y+xpLkwETGbRNV
	TA/hnww8huxKHmuPCYqHz6gtC3S4uJXgWEevlinpIu+e3qzO/0OcJBrg36Oe6Nsftk/s9xbo0CJgN
	7LSHbl36dvog7K5Wf3cLAr/W8m9Tj1MMyVG/4JqukyvrIhSeAlZR6gSwuORdr/bPpKyeb0VgeyK+8
	UEtfdexOyX77oJisBc6LfABFVSS6p0kiICULizFtx/1GNf2amn9+MC/qXQ9AymQW+gJDiK3ov8jHc
	4tA1PXAajugHSTPLCxZKd3MDoxrtSpSO2Kf5j9kVJ/zGJ4iMvdJXG7/XO0xSWyfNp9e1x0mRUDzvE
	lbJzCF4Yw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNRQ-009UPM-8J; Thu, 11 Mar 2021 15:41:36 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNR2-009UEQ-4b; Thu, 11 Mar 2021 15:41:17 +0000
Received: by mail-wr1-x42c.google.com with SMTP id j2so2373138wrx.9;
 Thu, 11 Mar 2021 07:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3vDMN3dUIFWvZiCPoMmxvm3WWN6G8eQyiB18ua9S658=;
 b=YoZPNNpj+9Rrh+2g/y5CqinTkt7wlHWlptnD/O/kDrkKoZrwlq4caljUwegN4ifDii
 ieEDviQyS7BEkyCKf9+TVY1PgTDkq6K4DyYFIuSbl92xqj1FD/3On8RnOoDwqoc8pJCT
 DmyOcdR82yWPSanXKnGCzRgE1ZQjDqgdJFzT+2fg714WSZnsccLTFUwuyMia3Du8yiaA
 3MkF+aNCKCvIx2pJnGo0xD6Cylpxfnv5idar3LCyip2dq8ykzXgCJP8imHZwmzy4Tr/J
 nJn00MUBWiGNmx5H4G+TbUVC7OLJkndphZ5QyKBJqszvEZA1E5cYMFhbix4AMVVWpwrQ
 EZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3vDMN3dUIFWvZiCPoMmxvm3WWN6G8eQyiB18ua9S658=;
 b=gDqyOQ6YTO4gawgp6RVn6o2mWwwkrZc2+Yhu8cS9zXm3BYCHdExn7jKaz9Vsilzxvr
 RhhscyJfL9C18V/lkwHx6z4qU0rLrOgLf0v/6fxZqfeX0f6bPG+UOSrfZxDMF1gEDVIA
 5MY3nBT4cd8x9bi2VP2G5GAlQu9tlPmVvDOaBcNFj+S830ohmusIivoE4LzRcjlxL/73
 fXxYhatqZ1jYHNNkl2RJMDjWmP30tuMG4/yT7UlQ0GkKrE4AxIOSOOz10V9sIgJfY0HF
 R+qoqAcnV3xUdRigKQwi1qZa4xfm2hSC5Frc36y3EOr89vYdrQ4mNTsgn5QvD/zVODC4
 hK5w==
X-Gm-Message-State: AOAM5334LMQzmMLWb7w8jP2TfGxt7Wc8dqOJT9chWRkINIePVMbqHgBB
 bWAMoOPbeqk48pGM4UwDRI4=
X-Google-Smtp-Source: ABdhPJz5M0aZLrhuiW8AWBhDO2S0qjhxoZST9+8sGd43VrPXQ65ZsfzapkIfK9oXkbB9QUGDiqlouw==
X-Received: by 2002:a5d:68cd:: with SMTP id p13mr9776682wrw.247.1615477271641; 
 Thu, 11 Mar 2021 07:41:11 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:11 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/10] ARM: configs: at91: sama5: update with savedefconfig
Date: Thu, 11 Mar 2021 15:40:54 +0000
Message-Id: <20210311154055.3496076-10-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154113_217677_639F864F 
X-CRM114-Status: UNSURE (   9.61  )
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

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 arch/arm/configs/sama5_defconfig | 37 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
index f4c3c0652432..a5f274e39753 100644
--- a/arch/arm/configs/sama5_defconfig
+++ b/arch/arm/configs/sama5_defconfig
@@ -8,11 +8,6 @@ CONFIG_CGROUPS=y
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
@@ -25,9 +20,14 @@ CONFIG_KEXEC=y
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
@@ -75,8 +75,8 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_NETDEVICES=y
 CONFIG_NET_DSA_MICROCHIP_KSZ9477=m
 CONFIG_NET_DSA_MICROCHIP_KSZ9477_SPI=m
-CONFIG_MACB=y
 # CONFIG_NET_VENDOR_BROADCOM is not set
+CONFIG_MACB=y
 # CONFIG_NET_VENDOR_CIRRUS is not set
 # CONFIG_NET_VENDOR_FARADAY is not set
 # CONFIG_NET_VENDOR_INTEL is not set
@@ -91,7 +91,9 @@ CONFIG_MACB=y
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
@@ -99,10 +101,7 @@ CONFIG_RT2800USB=m
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
@@ -125,9 +124,9 @@ CONFIG_SPI_ATMEL_QUADSPI=y
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
@@ -166,11 +165,11 @@ CONFIG_SND=y
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
@@ -224,14 +223,14 @@ CONFIG_NLS_CODEPAGE_437=y
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
