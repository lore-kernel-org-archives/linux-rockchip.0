Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32549C6FA94
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXaIP+q6ISnHc5XXOEwfhDGKslYjKObxPvbAXSOxkvo=; b=Oo65p/aJQK/jHE
	U4rgPEZE5g5ackERGMZEJoErWMqFZ6HUkREsxU/VuFzxUKLYhai3bUirhDHQ/homa9VnareKDp4ws
	YaugvyXsKE0oTvMSD83oTqJmRJMvYareTD/Wsa7wnDrbZOMbmIKelE6IZFrKVgeknUyJARAnHldXn
	Q3oWwBxwWrM14K0sdtw9CIJLyJJSbcFX14qOY4dS781NKCgyCV/A6371+VVfb2tKtUMWGDGES849h
	xhQZ+o7c5ra2xbyXPCxU8VKNISly0FthfTNMPh13W5/2xU2kbCgFk+sg1C2vaOUWe1LussfHETpX1
	1ZTQ0530/zWZTIS31lrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5cx-0090kZ-SB; Tue, 27 Sep 2022 08:07:39 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Wg-008xrM-Fj
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 08:01:12 +0000
Received: by mail-wr1-x42b.google.com with SMTP id s14so13789768wro.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=66ISj6OAwBdZy2WsaubsZZCEn9jiwURYi2fgqCIpC8s=;
        b=1mqntLJxFl8NL2Eg+2hgPmHlQC9P332VFuEA4I5cg7lCW8RiNRotgeet1cvFVizxT7
         Lnw2h3k1leHID1TT7fALHv5NVlS77N+oOVIooyILUJPpq0e4DpVxiq6RtylXUGaH4x3l
         NH3CetRm4L+2bMxE67XiVAaclpmbFuYpubyXxywFvK5BqG8pgIeH6s7hmUVCZjj4jTpe
         L5JnGg1/Bs+VKCl2gI44hO2/0TjpGO+rLt1XPBBgW0+M4u6R3ZMIU86Dp1l3yh6z6nPJ
         lNKulyDwWNx275A3Vd0lLOz7B4837DbEsuozSM4/z4o0SvC9bxWE+iUbGu/xIlG8H0dO
         Zy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=66ISj6OAwBdZy2WsaubsZZCEn9jiwURYi2fgqCIpC8s=;
        b=FKtSPs3dvwJsuL9XbEn/dK75F8xhDGG6VJ2EbUhf6ogegGredcxXYt7/XSnDJETSbE
         AKwzC33yuNJ8mrHXCJt5y3sscWX6ttiWUkWpKhHXiwyTO97Qdf49Oy10yTOkQAMMOYef
         4ZfGbJurUg6BXXaidsUE+WqqjoGgzD7DCyfV/cZy20nrin2E0t6gAGMiSX6mEeWFQbOh
         Dfdh1n0EYE287PDPrvk2f7RZI3b7ztV/NIFRr2zWGMgbOjg5EnxbcTyNnK5wBzEBpfJ/
         /nXgCiwv5MllGQ+Vb2AcPcgVGQILLLsGXQ8m0PzvBdzn6KRur3MBHVb9MO5w4jM1f899
         eyvQ==
X-Gm-Message-State: ACrzQf2bW8mrRz4WwMF0pciuDL+G+RUEpVIqUsHgDNw5hpTJfXMzMA2x
	3KTHnCE6L74F7HG6ZhihKKfvXg==
X-Google-Smtp-Source: AMsMyM44jzPbkv/qWHVlKZx1LuvcjcsjkuXaATAdw37jBdECmPALd0aMe5J1f3w/V2LKB3PJT3Zdzg==
X-Received: by 2002:a05:6000:1f9d:b0:22a:fc9b:435c with SMTP id bw29-20020a0560001f9d00b0022afc9b435cmr15644239wrb.667.1664265667657;
        Tue, 27 Sep 2022 01:01:07 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:07 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 1/5] crypto: rockchip: move kconfig to its dedicated directory
Date: Tue, 27 Sep 2022 08:00:44 +0000
Message-Id: <20220927080048.3151911-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010110_678122_260D16E0 
X-CRM114-Status: GOOD (  15.00  )
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

Move all rockchip kconfig in its own subdirectory.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/Kconfig          | 32 ++------------------------------
 drivers/crypto/Makefile         |  2 +-
 drivers/crypto/rockchip/Kconfig | 28 ++++++++++++++++++++++++++++
 3 files changed, 31 insertions(+), 31 deletions(-)
 create mode 100644 drivers/crypto/rockchip/Kconfig

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 2947888d3b82..96c5b8060db0 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -646,6 +646,8 @@ config CRYPTO_DEV_QCOM_RNG
 	  To compile this driver as a module, choose M here. The
 	  module will be called qcom-rng. If unsure, say N.
 
+source "drivers/crypto/rockchip/Kconfig"
+
 config CRYPTO_DEV_VMX
 	bool "Support for VMX cryptographic acceleration instructions"
 	depends on PPC64 && VSX
@@ -666,36 +668,6 @@ config CRYPTO_DEV_IMGTEC_HASH
 	  hardware hash accelerator. Supporting MD5/SHA1/SHA224/SHA256
 	  hashing algorithms.
 
-config CRYPTO_DEV_ROCKCHIP
-	tristate "Rockchip's Cryptographic Engine driver"
-	depends on OF && ARCH_ROCKCHIP
-	depends on PM
-	select CRYPTO_ECB
-	select CRYPTO_CBC
-	select CRYPTO_DES
-	select CRYPTO_AES
-	select CRYPTO_ENGINE
-	select CRYPTO_LIB_DES
-	select CRYPTO_MD5
-	select CRYPTO_SHA1
-	select CRYPTO_SHA256
-	select CRYPTO_HASH
-	select CRYPTO_SKCIPHER
-
-	help
-	  This driver interfaces with the hardware crypto accelerator.
-	  Supporting cbc/ecb chainmode, and aes/des/des3_ede cipher mode.
-
-config CRYPTO_DEV_ROCKCHIP_DEBUG
-	bool "Enable Rockchip crypto stats"
-	depends on CRYPTO_DEV_ROCKCHIP
-	depends on DEBUG_FS
-	help
-	  Say y to enable Rockchip crypto debug stats.
-	  This will create /sys/kernel/debug/rk3288_crypto/stats for displaying
-	  the number of requests per algorithm and other internal stats.
-
-
 config CRYPTO_DEV_ZYNQMP_AES
 	tristate "Support for Xilinx ZynqMP AES hw accelerator"
 	depends on ZYNQMP_FIRMWARE || COMPILE_TEST
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index 116de173a66c..7a9c627a09c6 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -36,7 +36,7 @@ obj-$(CONFIG_CRYPTO_DEV_PPC4XX) += amcc/
 obj-$(CONFIG_CRYPTO_DEV_QAT) += qat/
 obj-$(CONFIG_CRYPTO_DEV_QCE) += qce/
 obj-$(CONFIG_CRYPTO_DEV_QCOM_RNG) += qcom-rng.o
-obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) += rockchip/
+obj-y += rockchip/
 obj-$(CONFIG_CRYPTO_DEV_S5P) += s5p-sss.o
 obj-$(CONFIG_CRYPTO_DEV_SA2UL) += sa2ul.o
 obj-$(CONFIG_CRYPTO_DEV_SAHARA) += sahara.o
diff --git a/drivers/crypto/rockchip/Kconfig b/drivers/crypto/rockchip/Kconfig
new file mode 100644
index 000000000000..1010d897d9ef
--- /dev/null
+++ b/drivers/crypto/rockchip/Kconfig
@@ -0,0 +1,28 @@
+config CRYPTO_DEV_ROCKCHIP
+	tristate "Rockchip's Cryptographic Engine driver"
+	depends on OF && ARCH_ROCKCHIP
+	depends on PM
+	select CRYPTO_ECB
+	select CRYPTO_CBC
+	select CRYPTO_DES
+	select CRYPTO_AES
+	select CRYPTO_ENGINE
+	select CRYPTO_LIB_DES
+	select CRYPTO_MD5
+	select CRYPTO_SHA1
+	select CRYPTO_SHA256
+	select CRYPTO_HASH
+	select CRYPTO_SKCIPHER
+
+	help
+	  This driver interfaces with the hardware crypto accelerator.
+	  Supporting cbc/ecb chainmode, and aes/des/des3_ede cipher mode.
+
+config CRYPTO_DEV_ROCKCHIP_DEBUG
+	bool "Enable Rockchip crypto stats"
+	depends on CRYPTO_DEV_ROCKCHIP
+	depends on DEBUG_FS
+	help
+	  Say y to enable Rockchip crypto debug stats.
+	  This will create /sys/kernel/debug/rk3288_crypto/stats for displaying
+	  the number of requests per algorithm and other internal stats.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
