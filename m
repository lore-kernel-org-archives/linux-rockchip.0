Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA2E5C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 09:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN0v6ceBPwJ/Yx3n/EdqncZjuGTkxOd+32IYuYMq28I=; b=KM84nO0IXpU4XD
	W+QGPhozs4ClD9dBMzNyqaCheBFVofWcYcaMnGaHVMYf+kJHz6ANMIVIwxqO3c/ET3FrxKphp7lsz
	AH5IKqq5vDSqGndAqwmrN87LAh/2QgzQY3yGhmr68HPnbABnTAdIt+kKS/oPIlgBx5Zjl+9k3EFu+
	frTIWv1cxMsZqcqqLekQcq3KEh/EAs6Jj/X7GhBQ0l/7/3WitT5EwbmNCE/r8ABXU7YeJ4KlS4Esf
	iU5DNLu/465QrGRlsoobXRN9CaHaRwv522ArAKumH9M6m5xCqB8WqW6E5sQoy7ggurISXOegj9+Y9
	JHNyPNNmFsB2HWdwPyng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgwk-00Ew1w-0W; Wed, 08 Feb 2023 09:40:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPguW-00Ev1Y-K8
	for linux-rockchip@lists.infradead.org; Wed, 08 Feb 2023 09:38:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguU-00039c-Ig; Wed, 08 Feb 2023 10:38:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguS-003UAe-HL; Wed, 08 Feb 2023 10:38:37 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPguQ-000s8d-Kz; Wed, 08 Feb 2023 10:38:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 08/19] PM / devfreq: rk3399_dmc,dfi: generalize DDRTYPE defines
Date: Wed,  8 Feb 2023 10:38:19 +0100
Message-Id: <20230208093830.143284-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230208093830.143284-1-s.hauer@pengutronix.de>
References: <20230208093830.143284-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_013840_837265_1628F552 
X-CRM114-Status: GOOD (  22.67  )
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

The DDRTYPE defines are named to be RK3399 specific, but they can be
used for other Rockchip SoCs as well, so replace the RK3399_PMUGRF_
prefix with ROCKCHIP_. They are defined in a SoC specific header
file, so when generalizing the prefix also move the new defines to
a SoC agnostic header file. While at it use GENMASK to define the
DDRTYPE bitfield and give it a name including the full register name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 10 ++++++----
 drivers/devfreq/rk3399_dmc.c         | 10 +++++-----
 include/soc/rockchip/rk3399_grf.h    |  7 +------
 include/soc/rockchip/rockchip_grf.h  | 15 +++++++++++++++
 4 files changed, 27 insertions(+), 15 deletions(-)
 create mode 100644 include/soc/rockchip/rockchip_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 18d578730fd0c..7896cd8beb143 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -18,7 +18,10 @@
 #include <linux/list.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/bitfield.h>
+#include <linux/bits.h>
 
+#include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 
 #define DMC_MAX_CHANNELS	2
@@ -74,9 +77,9 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
 
 	/* set ddr type to dfi */
-	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
+	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
 		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
-	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
+	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
 		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
 
 	/* enable count, use software mode */
@@ -191,8 +194,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 
 	/* get ddr type */
 	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
-	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
-			RK3399_PMUGRF_DDRTYPE_MASK;
+	dfi->ddr_type = FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
 
 	dfi->channel_mask = 3;
 
diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index daff407026157..fd2c5ffedf41e 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -22,6 +22,7 @@
 #include <linux/suspend.h>
 
 #include <soc/rockchip/pm_domains.h>
+#include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
@@ -381,17 +382,16 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	}
 
 	regmap_read(data->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
-	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
-		    RK3399_PMUGRF_DDRTYPE_MASK;
+	ddr_type = FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
 
 	switch (ddr_type) {
-	case RK3399_PMUGRF_DDRTYPE_DDR3:
+	case ROCKCHIP_DDRTYPE_DDR3:
 		data->odt_dis_freq = data->ddr3_odt_dis_freq;
 		break;
-	case RK3399_PMUGRF_DDRTYPE_LPDDR3:
+	case ROCKCHIP_DDRTYPE_LPDDR3:
 		data->odt_dis_freq = data->lpddr3_odt_dis_freq;
 		break;
-	case RK3399_PMUGRF_DDRTYPE_LPDDR4:
+	case ROCKCHIP_DDRTYPE_LPDDR4:
 		data->odt_dis_freq = data->lpddr4_odt_dis_freq;
 		break;
 	default:
diff --git a/include/soc/rockchip/rk3399_grf.h b/include/soc/rockchip/rk3399_grf.h
index 3eebabcb28123..775f8444bea8d 100644
--- a/include/soc/rockchip/rk3399_grf.h
+++ b/include/soc/rockchip/rk3399_grf.h
@@ -11,11 +11,6 @@
 
 /* PMU GRF Registers */
 #define RK3399_PMUGRF_OS_REG2		0x308
-#define RK3399_PMUGRF_DDRTYPE_SHIFT	13
-#define RK3399_PMUGRF_DDRTYPE_MASK	7
-#define RK3399_PMUGRF_DDRTYPE_DDR3	3
-#define RK3399_PMUGRF_DDRTYPE_LPDDR2	5
-#define RK3399_PMUGRF_DDRTYPE_LPDDR3	6
-#define RK3399_PMUGRF_DDRTYPE_LPDDR4	7
+#define RK3399_PMUGRF_OS_REG2_DDRTYPE		GENMASK(15, 13)
 
 #endif
diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
new file mode 100644
index 0000000000000..dc77bb762a05a
--- /dev/null
+++ b/include/soc/rockchip/rockchip_grf.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Rockchip General Register Files definitions
+ */
+
+#ifndef __SOC_ROCKCHIP_GRF_H
+#define __SOC_ROCKCHIP_GRF_H
+
+/* Rockchip DDRTYPE defines */
+#define ROCKCHIP_DDRTYPE_DDR3	3
+#define ROCKCHIP_DDRTYPE_LPDDR2	5
+#define ROCKCHIP_DDRTYPE_LPDDR3	6
+#define ROCKCHIP_DDRTYPE_LPDDR4	7
+
+#endif /* __SOC_ROCKCHIP_GRF_H */
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
