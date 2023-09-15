Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A07EE644B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 09:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+fjaJ4Rc1BGhBXctPpijiiuFMDAouAKu2x6XRt5xHI=; b=YIqULW20nMfFic
	41SCFTFGwpwbGrJP6+yqFzml6mmWAZwxbiP4yk5IzkuaeNSghf/EPJbX5W+VdoH3OuBRqhk1u9k8q
	TySeSxbm+O77EjivNqkOI9TQXxNF0MD+5yTgVLvVgNcYjJqFY/EVAif/wb0PLW2KtCrHsx59PclOp
	kt1J9bjOyszL8oifMgYi+ylupFqP+1Sv9F+1GYSN0q7fnWf534/5FH14poqkN6HYrTzHnWxjZaD9a
	ZzlnWASueiDkf97m0YdNgWA1kO/XH1z6VGFml2euKg49/5CEWnJc4Dygn2/8wgkTBCa37F4TLgvc9
	JncivKwZOUCjLzOT6u2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh513-00AFuX-0e;
	Fri, 15 Sep 2023 09:21:33 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qh50w-00AFmL-1G
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Sep 2023 09:21:28 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2bceca8a41aso30792501fa.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Sep 2023 02:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694769685; x=1695374485; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKisBqk8Z2ap1nSKbct53Lj3iZDRshdX+0gS7XeCa7I=;
        b=yFyosw9ktslrlcieCCiLnuDKKueUc6czEG1+LXCBUH8TfnUfVp98x4Oi7HOqUrw2Af
         wRdHZFD48+v2Z9O+lNVBEi2aeiROGBat8K+cpOD17KBFelI9Vh4wxWrBIP/Q+2UzS6Sz
         frd/EdbxOrL+kY1b3GxbCuzR0Xj3WcJSasYJlYKn4Rwp3RQb8BAzHAuLUjYC8uD+jsrC
         L88DXEysIWwWHGMGZNPUhbvGa4RDl0cxTgX7OPs+JEzAuxr7acqWpyLUK1rhmpOFT5Zj
         c+2hOEn72fzmyKmi63ycPIDRMaXYdWz42D0F7tPcDbqzWGIYZ5CJ7iZZqnuB/vtRaYBx
         X0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694769685; x=1695374485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VKisBqk8Z2ap1nSKbct53Lj3iZDRshdX+0gS7XeCa7I=;
        b=kERYxJ45Um2RtiD0yw7k8+dT20+ckV2PiLcCBNReOeWuyS0ZZERfxXcpZYFVxzuFCa
         VZB19AhhI1j77SrCobubD8BQfkQVpelfr0sfKLpgZ5f2RU4jiHNLMjgK9aiyGbEqXco0
         yC8NKV+5O7tq0PbOCwXJXrXL3Eez2fUd2PTzkPYMKYuBdZPLIyoFPpfTaxMwy001THIO
         RNBDdHxGkRq4rAU/4BVZP9/eejP8khfYrflhMRBcTjpuv12HviEMB+GHXDB6siuyEO9H
         rAcHVCLaD0GIcJf4J8LCNdePZblUAK1oEL4DS2/+hfjTqU1TtPYBJvIpjjcEh/E+uQPp
         90OQ==
X-Gm-Message-State: AOJu0YzJd+cN4qKM1cvmMdPfggFfvKbIZxJpdd7wNlwBfJ8J0GZr9A+B
	WOk+hsiixej2uihs/lvq/JNh5w==
X-Google-Smtp-Source: AGHT+IGwwqHwyBASzYObjimxH00Ydcl+lAjOoi91ePvVUL0yYYiPtovN11NZd4EAB/QxxEpm7+DHfg==
X-Received: by 2002:a2e:8055:0:b0:2bc:39f5:ecb4 with SMTP id p21-20020a2e8055000000b002bc39f5ecb4mr1074596ljg.25.1694769685101;
        Fri, 15 Sep 2023 02:21:25 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-94-254-63-18.NA.cust.bahnhof.se. [94.254.63.18])
        by smtp.gmail.com with ESMTPSA id p8-20020a2e7408000000b002b9ec22d9fasm639376ljc.29.2023.09.15.02.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Sep 2023 02:21:24 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 10/17] pmdomain: rockchip: Move Kconfig option to the pmdomain subsystem
Date: Fri, 15 Sep 2023 11:19:56 +0200
Message-Id: <20230915092003.658361-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230915092003.658361-1-ulf.hansson@linaro.org>
References: <20230915092003.658361-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_022126_599658_044F7220 
X-CRM114-Status: GOOD (  16.25  )
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

The Kconfig option belongs closer to the corresponding implementation,
hence let's move it from the soc subsystem to the pmdomain subsystem.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: <linux-rockchip@lists.infradead.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/pmdomain/Kconfig          |  1 +
 drivers/pmdomain/rockchip/Kconfig | 16 ++++++++++++++++
 drivers/soc/rockchip/Kconfig      | 12 ------------
 3 files changed, 17 insertions(+), 12 deletions(-)
 create mode 100644 drivers/pmdomain/rockchip/Kconfig

diff --git a/drivers/pmdomain/Kconfig b/drivers/pmdomain/Kconfig
index 0a75a17f2f3a..8afe69251dd2 100644
--- a/drivers/pmdomain/Kconfig
+++ b/drivers/pmdomain/Kconfig
@@ -9,5 +9,6 @@ source "drivers/pmdomain/imx/Kconfig"
 source "drivers/pmdomain/mediatek/Kconfig"
 source "drivers/pmdomain/qcom/Kconfig"
 source "drivers/pmdomain/renesas/Kconfig"
+source "drivers/pmdomain/rockchip/Kconfig"
 
 endmenu
diff --git a/drivers/pmdomain/rockchip/Kconfig b/drivers/pmdomain/rockchip/Kconfig
new file mode 100644
index 000000000000..b0d70f1a8439
--- /dev/null
+++ b/drivers/pmdomain/rockchip/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0-only
+if ARCH_ROCKCHIP || COMPILE_TEST
+
+config ROCKCHIP_PM_DOMAINS
+	bool "Rockchip generic power domain"
+	depends on PM
+	select PM_GENERIC_DOMAINS
+	help
+	  Say y here to enable power domain support.
+	  In order to meet high performance and low power requirements, a power
+	  management unit is designed or saving power when RK3288 in low power
+	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
+
+	  If unsure, say N.
+
+endif
diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index aff2f7e95237..785f60c6f3ad 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -22,18 +22,6 @@ config ROCKCHIP_IODOMAIN
 	  necessary for the io domain setting of the SoC to match the
 	  voltage supplied by the regulators.
 
-config ROCKCHIP_PM_DOMAINS
-	bool "Rockchip generic power domain"
-	depends on PM
-	select PM_GENERIC_DOMAINS
-	help
-	  Say y here to enable power domain support.
-	  In order to meet high performance and low power requirements, a power
-	  management unit is designed or saving power when RK3288 in low power
-	  mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
-
-	  If unsure, say N.
-
 config ROCKCHIP_DTPM
 	tristate "Rockchip DTPM hierarchy"
 	depends on DTPM && m
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
