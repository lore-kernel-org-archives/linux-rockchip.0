Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BDF5EB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCgr10xy8nnX7XTfWCzrodgMgeLJ5SRCfESc+DLnl3U=; b=iwz3atqfTEVRFu
	SHX02CydwmFwANPxcpwtGyEsXruBC8Q9+S0MiMDiaEujzGm+afqUFC7jqDMVU/g1SGaV1baDMMAP2
	IDqN4oOCQRqwiI21B3vFD8WOxrlfndsB7KtCEJtunjEACr55OIUTqgEduP05UDto9C2vq+PhFXrO4
	y1oIWUMLos6DG+avIm5wWopIrvukJ/LFyxUuu30lPLRv0K5S6OT1cE+z+J+0XyjjXx15WC+gfw8ga
	gtQdSz5a4VZqkcNz8q6k9Zywf88etD0jlL5B5iVrnkePO9N8BQe03ekhqUCCn9k5+xj6ZZw9Z98vA
	681s7NdmNDSr4XBFIeRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qT-00GziH-1p;
	Fri, 16 Jun 2023 06:22:05 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qL-00Gzag-0H
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Jun 2023 06:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=aK2rRoAsWQO0E4Dp3Uex2ooJ+AUzel4T+iw16z6RTQY=; b=r0zW4dMb6WY6xqn0kIO1S/nFsb
	E49tbbi/eDVXQlBxCy1BX0dAnI87h15efUKvuKHE43oZ0kNnMqqFS2n6XbezIp3SBPfkddyV9wqGV
	4/P29IKEJ1DVRZCJucF9IpmdWgwHETxz/1NRp83JURHbCN9giBI0AfVjujhrTGKyqbKNcsl6fWOhs
	Y7Fy3IxeZMpx4mI7YtMPOJ7327SkzAbDJlj10+20eYqGnxNb6+O9RYxdO3Whw79I/7Jc7O0uNJC30
	mAmf+iin9lPp06h1rgkBzrw8ndWb0gsvk4AIJ30CpWZCbSb51P+hVEzPlk5FombgrZhO/eiuUWR0c
	pEHMYcJQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qA2qE-008WTz-Mb
	for linux-rockchip@lists.infradead.org; Fri, 16 Jun 2023 06:21:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2qA-0006ss-4I; Fri, 16 Jun 2023 08:21:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q9-007kyk-Ab; Fri, 16 Jun 2023 08:21:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q4-003FUW-O9; Fri, 16 Jun 2023 08:21:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 08/26] PM / devfreq: rk3399_dmc,dfi: generalize DDRTYPE defines
Date: Fri, 16 Jun 2023 08:20:43 +0200
Message-Id: <20230616062101.601837-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616062101.601837-1-s.hauer@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_072150_767191_A8F11140 
X-CRM114-Status: GOOD (  20.18  )
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

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Link: https://lore.kernel.org/r/20230524083153.2046084-9-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c |  9 +++++----
 drivers/devfreq/rk3399_dmc.c         | 10 +++++-----
 include/soc/rockchip/rk3399_grf.h    |  7 +------
 include/soc/rockchip/rockchip_grf.h  | 17 +++++++++++++++++
 4 files changed, 28 insertions(+), 15 deletions(-)
 create mode 100644 include/soc/rockchip/rockchip_grf.h

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 82de24a027579..6bccb6fbcfc0c 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -18,8 +18,10 @@
 #include <linux/list.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/bitfield.h>
 #include <linux/bits.h>
 
+#include <soc/rockchip/rockchip_grf.h>
 #include <soc/rockchip/rk3399_grf.h>
 
 #define DMC_MAX_CHANNELS	2
@@ -74,9 +76,9 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
 
 	/* set ddr type to dfi */
-	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
+	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
 		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
-	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
+	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
 		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
 
 	/* enable count, use software mode */
@@ -191,8 +193,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 
 	/* get ddr type */
 	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
-	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
-			RK3399_PMUGRF_DDRTYPE_MASK;
+	dfi->ddr_type = FIELD_GET(RK3399_PMUGRF_OS_REG2_DDRTYPE, val);
 
 	dfi->channel_mask = GENMASK(1, 0);
 
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
index 0000000000000..dde1a9796ccb5
--- /dev/null
+++ b/include/soc/rockchip/rockchip_grf.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Rockchip General Register Files definitions
+ */
+
+#ifndef __SOC_ROCKCHIP_GRF_H
+#define __SOC_ROCKCHIP_GRF_H
+
+/* Rockchip DDRTYPE defines */
+enum {
+	ROCKCHIP_DDRTYPE_DDR3	= 3,
+	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
+	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
+	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
+};
+
+#endif /* __SOC_ROCKCHIP_GRF_H */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
