Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D84C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V77EmWsEavsFmsV8W7duBrd4+gO/6kPhlHWRH9qDZeI=; b=kKk5nkv/Rqbuzv
	TgDjjBXONd+E9DUOqfHrCMChp9k8Y9cjwcD9CAa1oa/pHaYLlY+QlEb37SE59MUwvuHkS1ZKRH+GZ
	X7GFtFQbWb+Dl8gtAAPyCN0zAUu8bT4RPHUmruuJRN2uk07cN7AR5DnfTV08MKI4F6Fuj8GB2ehUn
	eVA/wsxkLNd0acG7jf+Lh+JGhy83oIuQUSh8Qb7uVUVtOuCDceqaSF/j4k/bwDI/SGPtXrL6f64KT
	LrCRPF7x43sF9LwOHHCWYwV0F3FIActlOnz4BF7APOma24O5dtTentXi8wgBkarWCrvY6vIdTdg6C
	ZBV/BtMO8NiuoYqZ7+mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putmT-00Aj75-2l;
	Fri, 05 May 2023 11:39:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmL-00Aj13-0P
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-0001Va-Lp; Fri, 05 May 2023 13:39:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm9-001HbN-Rr; Fri, 05 May 2023 13:39:01 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003Rno-4v; Fri, 05 May 2023 13:39:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 07/21] PM / devfreq: rockchip-dfi: introduce channel mask
Date: Fri,  5 May 2023 13:38:42 +0200
Message-Id: <20230505113856.463650-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
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

Different Rockchip SoC variants have a different number of channels.
Introduce a channel mask to make the number of channels configurable
from SoC initialization code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 25d64d9166a9a..18d578730fd0c 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -21,7 +21,7 @@
 
 #include <soc/rockchip/rk3399_grf.h>
 
-#define RK3399_DMC_NUM_CH	2
+#define DMC_MAX_CHANNELS	2
 
 /* DDRMON_CTRL */
 #define DDRMON_CTRL	0x04
@@ -44,7 +44,7 @@ struct dmc_count_channel {
 };
 
 struct dmc_count {
-	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
+	struct dmc_count_channel c[DMC_MAX_CHANNELS];
 };
 
 /*
@@ -62,6 +62,7 @@ struct rockchip_dfi {
 	struct regmap *regmap_pmu;
 	struct clk *clk;
 	u32 ddr_type;
+	unsigned int channel_mask;
 };
 
 static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
@@ -96,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
 	u32 i;
 	void __iomem *dfi_regs = dfi->regs;
 
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
+	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
 		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
 		count->c[i].total = readl_relaxed(dfi_regs +
@@ -146,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	rockchip_dfi_read_counters(edev, &count);
 
 	/* We can only report one channel, so find the busiest one */
-	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
-		u32 a = count.c[i].access - last->c[i].access;
-		u32 t = count.c[i].total - last->c[i].total;
+	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
+		u32 a, t;
+
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
+
+		a = count.c[i].access - last->c[i].access;
+		t = count.c[i].total - last->c[i].total;
 
 		if (a > access) {
 			access = a;
@@ -186,6 +194,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
 			RK3399_PMUGRF_DDRTYPE_MASK;
 
+	dfi->channel_mask = 3;
+
 	return 0;
 };
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
