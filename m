Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F992C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 15:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmXGNhlyVtVa4uyfoL2ylZXAwXIM1DYk2l3Qkfn67Gg=; b=eiCUXiC3JIzGvY
	A2/B+dLeXnmZBzjrUc3LnOvDueqKm/mTitXPbBcuuVnTQt8y003kItuf5BinYH6/4dkaZnxre3pIe
	FlfvBhbsUDDNeVTKN+GaodO9N/i5cbq3e8sde5O0S/CBO/1WyAS5bk7gSHK/fCVkvCuRwRYvW462A
	qSZs6Zv1pyVwxbn260lhdmRkxGxuV8z1lgJGa3Exip9MuJyAkjmxX8JyCjALTSsuFfzCNRKqIK5Sf
	TYsmWwbw7s2MeIQeJHBoibnAmJm8Dk6xOlWE3/NHpXfQAAHn27nS+ijIvWDLItR2EAGrDmuul5AId
	kZAAeOosPqrQ8Lm5fDEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQv-001vSs-0S;
	Tue, 07 Nov 2023 15:56:05 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OQn-001vJu-17
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 15:55:59 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c50d1b9f22so77168211fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Nov 2023 07:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699372555; x=1699977355; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RudCoJ8NR0SEmzqEwB5YrG9jC9FrLgs56yqGgQd2uTA=;
        b=GC1vyvxHDAL40UJR/CnVmO8+sXwf3heszdl8kHaQLdGrJZmrYwS0G8nG36rizauRtu
         FHSJtr74/Mm9rFQR1m31QLLeMGcGk673pdwlsatYRctlN/wJCyIbHJqFmaSlwLEIqmf0
         /wgW5Pm4KV4WgtQsYQYW1uXbca5D5mhU0g2j3d9WQ2rNZ5QhTqtlHcDWWrM1b6DZsE07
         1UrREwXZQqieryeXhBU94oZuooHXRW670A/CiNyTDcDF6meGl4PVJu16795M/KYx6Fux
         srtYUlnLlT1hcwENLaUrz3iFbJnl1DayhDfeinX7IpI57MAIIJ6Be3izsG5QCzbyMzf/
         PV+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699372555; x=1699977355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RudCoJ8NR0SEmzqEwB5YrG9jC9FrLgs56yqGgQd2uTA=;
        b=FFktvhpGDoDYg+WZdk1LlHLO6TpIb/1i2Zm3MWgkpfWRnIyHJ1VkqVIH2arHPswvnS
         VQy5C9Q2Zice6M6jazJS838rukqpb9auieXFHev0ZF7uFGsTppwUOlbb7X0Dr03WbQtE
         1tqP5KVXabCvwszyUvQF3t2jNaSH8A4P6/LcJv29JcA9kwL11HwI4QNX2dOHC2w4k3qq
         9yeJKjKNFlhJHS50uZks45vpDOTOsj47UASNkwXxBPhqq236CpdNBBNPjE6cISATUnJI
         0pIyczwHraw4TcfrRSDScyXx+/ea4WPkmRufvVWdWud96W6pdN3kBQCmCr6aj0GStJy2
         APTg==
X-Gm-Message-State: AOJu0Yxrui3t51Ecv7re36FrxbERehc46ae2iXaWQeR+JMSBXHLNGy/4
	5PYihmSvI73Aa/PeKBn/m0Y1yw==
X-Google-Smtp-Source: AGHT+IGo5CYgPSxvFOkcB6TV2qu3wAGlFcNsCAhIeLXNyMTOhymnxJFmrLUMB62tN0KlJI+RPeupXg==
X-Received: by 2002:a05:651c:221c:b0:2bc:dcdb:b5dc with SMTP id y28-20020a05651c221c00b002bcdcdbb5dcmr31511815ljq.39.1699372554809;
        Tue, 07 Nov 2023 07:55:54 -0800 (PST)
Received: from arnold.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f6-20020a05600c4e8600b003fefb94ccc9sm16579085wmq.11.2023.11.07.07.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 07:55:53 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net,
	heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: ricardo@pardini.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 5/6] reset: rockchip: secure reset must be used by SCMI
Date: Tue,  7 Nov 2023 15:55:31 +0000
Message-Id: <20231107155532.3747113-6-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231107155532.3747113-1-clabbe@baylibre.com>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_075557_438713_CBE375B9 
X-CRM114-Status: GOOD (  10.93  )
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

While working on the rk3588 crypto driver, I loose lot of time
understanding why resetting the IP failed.
This is due to RK3588_SECURECRU_RESET_OFFSET being in the secure world,
so impossible to operate on it from the kernel.
All resets in this block must be handled via SCMI call.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/clk/rockchip/rst-rk3588.c             | 42 ------------
 .../dt-bindings/reset/rockchip,rk3588-cru.h   | 68 +++++++++----------
 2 files changed, 34 insertions(+), 76 deletions(-)

diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
index e855bb8d5413..6556d9d3c7ab 100644
--- a/drivers/clk/rockchip/rst-rk3588.c
+++ b/drivers/clk/rockchip/rst-rk3588.c
@@ -16,9 +16,6 @@
 /* 0xFD7C8000 + 0x0A00 */
 #define RK3588_PHPTOPCRU_RESET_OFFSET(id, reg, bit) [id] = (0x8000*4 + reg * 16 + bit)
 
-/* 0xFD7D0000 + 0x0A00 */
-#define RK3588_SECURECRU_RESET_OFFSET(id, reg, bit) [id] = (0x10000*4 + reg * 16 + bit)
-
 /* 0xFD7F0000 + 0x0A00 */
 #define RK3588_PMU1CRU_RESET_OFFSET(id, reg, bit) [id] = (0x30000*4 + reg * 16 + bit)
 
@@ -806,45 +803,6 @@ static const int rk3588_register_offset[] = {
 	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_PMU0IOC, 5, 4),
 	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_GPIO0, 5, 5),
 	RK3588_PMU1CRU_RESET_OFFSET(SRST_GPIO0, 5, 6),
-
-	/* SECURECRU_SOFTRST_CON00 */
-	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_NS_BIU, 0, 10),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_NS_BIU, 0, 11),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_S_BIU, 0, 12),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_S_BIU, 0, 13),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_P_SECURE_S_BIU, 0, 14),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_CORE, 0, 15),
-
-	/* SECURECRU_SOFTRST_CON01 */
-	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_PKA, 1, 0),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_RNG, 1, 1),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_A_CRYPTO, 1, 2),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_CRYPTO, 1, 3),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_CORE, 1, 9),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_RNG, 1, 10),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_A_KEYLADDER, 1, 11),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_KEYLADDER, 1, 12),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_P_OTPC_S, 1, 13),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_OTPC_S, 1, 14),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_WDT_S, 1, 15),
-
-	/* SECURECRU_SOFTRST_CON02 */
-	RK3588_SECURECRU_RESET_OFFSET(SRST_T_WDT_S, 2, 0),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM, 2, 1),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_A_DCF, 2, 2),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_P_DCF, 2, 3),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM_NS, 2, 5),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_P_KEYLADDER, 2, 14),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_S, 2, 15),
-
-	/* SECURECRU_SOFTRST_CON03 */
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_NS, 3, 0),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_D_SDMMC_BUFFER, 3, 1),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC, 3, 2),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC_BUFFER, 3, 3),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_SDMMC, 3, 4),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_P_TRNG_CHK, 3, 5),
-	RK3588_SECURECRU_RESET_OFFSET(SRST_TRNG_S, 3, 6),
 };
 
 void rk3588_rst_init(struct device_node *np, void __iomem *reg_base)
diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
index d4264db2a07f..c0d08ae78cd5 100644
--- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
@@ -716,39 +716,39 @@
 #define SRST_P_GPIO0			627
 #define SRST_GPIO0			628
 
-#define SRST_A_SECURE_NS_BIU		629
-#define SRST_H_SECURE_NS_BIU		630
-#define SRST_A_SECURE_S_BIU		631
-#define SRST_H_SECURE_S_BIU		632
-#define SRST_P_SECURE_S_BIU		633
-#define SRST_CRYPTO_CORE		634
-
-#define SRST_CRYPTO_PKA			635
-#define SRST_CRYPTO_RNG			636
-#define SRST_A_CRYPTO			637
-#define SRST_H_CRYPTO			638
-#define SRST_KEYLADDER_CORE		639
-#define SRST_KEYLADDER_RNG		640
-#define SRST_A_KEYLADDER		641
-#define SRST_H_KEYLADDER		642
-#define SRST_P_OTPC_S			643
-#define SRST_OTPC_S			644
-#define SRST_WDT_S			645
-
-#define SRST_T_WDT_S			646
-#define SRST_H_BOOTROM			647
-#define SRST_A_DCF			648
-#define SRST_P_DCF			649
-#define SRST_H_BOOTROM_NS		650
-#define SRST_P_KEYLADDER		651
-#define SRST_H_TRNG_S			652
-
-#define SRST_H_TRNG_NS			653
-#define SRST_D_SDMMC_BUFFER		654
-#define SRST_H_SDMMC			655
-#define SRST_H_SDMMC_BUFFER		656
-#define SRST_SDMMC			657
-#define SRST_P_TRNG_CHK			658
-#define SRST_TRNG_S			659
+#define SRST_A_SECURE_NS_BIU		10
+#define SRST_H_SECURE_NS_BIU		11
+#define SRST_A_SECURE_S_BIU		12
+#define SRST_H_SECURE_S_BIU		13
+#define SRST_P_SECURE_S_BIU		14
+#define SRST_CRYPTO_CORE		15
+
+#define SRST_CRYPTO_PKA			16
+#define SRST_CRYPTO_RNG			17
+#define SRST_A_CRYPTO			18
+#define SRST_H_CRYPTO			19
+#define SRST_KEYLADDER_CORE		25
+#define SRST_KEYLADDER_RNG		26
+#define SRST_A_KEYLADDER		27
+#define SRST_H_KEYLADDER		28
+#define SRST_P_OTPC_S			29
+#define SRST_OTPC_S			30
+#define SRST_WDT_S			31
+
+#define SRST_T_WDT_S			32
+#define SRST_H_BOOTROM			33
+#define SRST_A_DCF			34
+#define SRST_P_DCF			35
+#define SRST_H_BOOTROM_NS		37
+#define SRST_P_KEYLADDER		46
+#define SRST_H_TRNG_S			47
+
+#define SRST_H_TRNG_NS			48
+#define SRST_D_SDMMC_BUFFER		49
+#define SRST_H_SDMMC			50
+#define SRST_H_SDMMC_BUFFER		51
+#define SRST_SDMMC			52
+#define SRST_P_TRNG_CHK			53
+#define SRST_TRNG_S			54
 
 #endif
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
