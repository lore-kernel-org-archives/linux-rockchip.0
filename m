Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AFFDEDE9A7
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 11:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MxuCvrQq1W0BBjTimbbjuuKK9hSX+dIuCRL8OEUN8Aw=; b=dmwiX/oDXYsYh7
	Q/Ov583fbY2eJ3HGIBUTXHqPhhxuMrba/twwo8Lm/TnGWNyQEVy7GA2fPNvvN3kD4vKMdT5J/+FbI
	BQDu6vN80GiUfqGOc+6UtR/ChO597p3dlIQtiO5cSSzDkYZSZ4xv+gOqf7PlhF0FepEqD7tlR/AEf
	APpB6+/U7bonlHVeu7HO0d+v830jHNz8DJxsou/O3ZE0Pgvyff6JqQPcytf4U2n2p453s+M+S1QbC
	1RErVez/xVxU8RAP6XxoUvwy2KgW1Xk9a3lHPJ2g99zSZZok1sFzGEtlLWSR4ErKjPjiJB3BJIQE3
	tWAhX/AbPiowL158+8hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgkMU-008DbA-1Y;
	Thu, 14 Sep 2023 11:18:18 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgkMS-008DZh-0g
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 11:18:17 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-502b0d23f28so1404159e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Sep 2023 04:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694690295; x=1695295095; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgTaOHBfImHk+QFs8F8yB4KkJMugQjfBX2V5uwaw/P0=;
        b=HsC46NkPV/VV4Roq2NwPKW4nGElOotU+68jLbQOeMV+Ap3Rm4Sko70N9ZHWh85u/ej
         RnqlAOeyp0/5Hd0N0PF2cy1GUsO6j/y1MRzpX04sDNR2tCx7xJ0GMmLGAXYXqIGx0zlk
         ebz5irNpIGOWRx8Z5jZQVsZurnc6gL7I1ZLkkiF0DAfjsUtZ07zLLExCbPBf0ZczZCVQ
         aU1AMFh9rjHT4Kt5X47RJ8xv/+qZwO7ACq75O42Ht4Z54Qc0p+V60g6ynFcglaeAIzRL
         BuZE11M49SHzpUa6k3TgUyH3ZRoqZUBqLd7EpextYCCtthOTQidYFQcDha6Xg+bseoNQ
         UaIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694690295; x=1695295095;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgTaOHBfImHk+QFs8F8yB4KkJMugQjfBX2V5uwaw/P0=;
        b=Q5RJNBIqU+krBaGywDkxpf6Drceco71HlxiAXwNe9s43WIclSwzx1Qg8PV71YrFrCv
         fyjNC4wxJhkpo+KD6Dr7rW4SvER6TTZ2ZhCryDyGRDQrDvR7ANuDRycuKJBHcOzzGhRg
         6ISAUdpoJogwCBe7d1q5Bkvu1foOuCSogOzjfrRAxKbvi7/dj8vYFA51glhMNmKb84UM
         HzVS5U4oOQSiKsiaoJH1j8QZssFZV/mSaAdBPpT/cqL2rFiwSWyhOXPus4o0GTzhmdJh
         auvGya41u55iZzcptnYKm7G50bVQbGaziAtnQw+KAqBmQRuL3aQfp44whgjWd6qJkOHi
         bJMQ==
X-Gm-Message-State: AOJu0Yx3hXiEIrmcoSB2/MqyaJFMlwWZSNdP7sLc4g1SCwYJNpyR3DcI
	QFM4zTpSqR3d7tdMd4aKD0tFdymGgYrDduVs5ArBkw==
X-Google-Smtp-Source: AGHT+IHQhK+nElK2gIDtqvOYyMwT+vSbvR3SdvfQ2bS1iSqYmdY9eUO8VZUnxX/es08eft+TEf1dEg==
X-Received: by 2002:a19:651d:0:b0:500:76aa:b962 with SMTP id z29-20020a19651d000000b0050076aab962mr3733875lfb.15.1694690294671;
        Thu, 14 Sep 2023 04:18:14 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-94-254-63-18.NA.cust.bahnhof.se. [94.254.63.18])
        by smtp.gmail.com with ESMTPSA id d20-20020ac24c94000000b004fb9536bc99sm233052lfl.169.2023.09.14.04.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 04:18:14 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 10/17] pmdomain: rockchip: Move Kconfig option to the pmdomain subsystem
Date: Thu, 14 Sep 2023 13:18:11 +0200
Message-Id: <20230914111811.586668-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_041816_251488_60FFF32E 
X-CRM114-Status: GOOD (  15.47  )
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
index e8181782751c..74066c5daa37 100644
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
