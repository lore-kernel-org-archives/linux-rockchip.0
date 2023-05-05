Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 617AFC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xrio8WUV9PiEqGJqs5kTTn3WW5ts5Uu35IPPreH+eYY=; b=KEkT60+jSZIxVX
	HxjBB9TYoiczbTzLAfxMzZu5z04R6gSPGjLYTFK1IUz4zZMB3tK7j2Db7ejImo/y6xNVY4oNGRe5O
	/5v6pfTMT7ETb384AIYfSAzu7mQSgx6LDkjRg1AzHhaDSB5sFJ+bPR6X5J7Wx63OlgIBqYPwOwmTL
	7ryG6hi31s8dn7DIsCwWC8Q404epe7v9XXRcIAY9v0UVXiGCxN1GQcjVwdBWCn0GabIyXeuk7QCwO
	1agKQVyJRHIKCw4Z/L6bI/j75xOaYhO1WaVO9O/Bwc/WGNeWlyfF6eAj9RlKnbkbzBYoo+ATCknjo
	/caTSy4aszmNheirae5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1putni-00AkAD-0p;
	Fri, 05 May 2023 11:40:38 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmc-00AjCW-34
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 May 2023 11:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mvuMAJZqI1bMj1bbzKdlJN0DrRVwBHP7ZgE4JW2U2z8=; b=Ubs+YCZpoR4Xg9JFvZLprEUBIE
	VbaJ0ftnsQRk8f9szl4yo6HOiiox6SSmcb0q6+Yz5Y+vm4jJjJI2QK5/cr0q4Pm8qwZmzT9YBpitX
	5xizMvVxBn2cXipdK3/+6ZjtiJpdF5D1Y4nJ5ULcTxFqL4NQmxZVJSOwoe/dAJj6gdKmMWfnfC37B
	oCr1muoEHG8eaQOlwMkTVTHPGp4zqwSsSnL2uIppXguuiUV/auaP+OSTE6GmPgmocF2wrtn/YsSXp
	PI4b+jUeXJauj0IniDJ6c34FnJfMIhMYQaJJitDMEbOQgg5VCtGvtK6SzcR1+MgEknpCHVdvQpxpG
	gCTr5thA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmP-003ETz-0l
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-0001Vk-Vy; Fri, 05 May 2023 13:39:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-001Hbr-5C; Fri, 05 May 2023 13:39:03 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003RnY-3s; Fri, 05 May 2023 13:39:00 +0200
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
Subject: [PATCH v4 06/21] PM / devfreq: rockchip-dfi: Use free running counter
Date: Fri,  5 May 2023 13:38:41 +0200
Message-Id: <20230505113856.463650-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_123918_068546_A32275DE 
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

The DDR_MON counters are free running counters. These are resetted to 0
when starting them over like currently done when reading the current
counter values.

Resetting the counters becomes a problem with perf support we want to
add later, because perf needs a monotonicly increasing counter.

This patch removes resetting the counters and keeps them running
instead. Counter overflows are handled with modular arithmetics. Not
stopping the counters also has the impact that they are running while
we are reading them. We cannot read multiple timers atomically, so
the values do not exactly fit together. The effect should be negligible
though as the time between two measurements is some orders of magnitude
bigger than the time we need to read multiple registers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 53 ++++++++++++++++------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 383fe8a17a512..25d64d9166a9a 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -38,11 +38,15 @@
 #define DDRMON_CH1_COUNT_NUM		0x3c
 #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
 
-struct dmc_usage {
+struct dmc_count_channel {
 	u32 access;
 	u32 total;
 };
 
+struct dmc_count {
+	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
+};
+
 /*
  * The dfi controller can monitor DDR load. It has an upper and lower threshold
  * for the operating points. Whenever the usage leaves these bounds an event is
@@ -51,7 +55,8 @@ struct dmc_usage {
 struct rockchip_dfi {
 	struct devfreq_event_dev *edev;
 	struct devfreq_event_desc desc;
-	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
+	struct dmc_count count;
+	struct dmc_count last_event_count;
 	struct device *dev;
 	void __iomem *regs;
 	struct regmap *regmap_pmu;
@@ -85,30 +90,18 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
 	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
 }
 
-static int rockchip_dfi_get_busier_ch(struct devfreq_event_dev *edev)
+static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
-	u32 tmp, max = 0;
-	u32 i, busier_ch = 0;
+	u32 i;
 	void __iomem *dfi_regs = dfi->regs;
 
-	rockchip_dfi_stop_hardware_counter(edev);
-
-	/* Find out which channel is busier */
 	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
-		dfi->ch_usage[i].access = readl_relaxed(dfi_regs +
+		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
-		dfi->ch_usage[i].total = readl_relaxed(dfi_regs +
+		count->c[i].total = readl_relaxed(dfi_regs +
 				DDRMON_CH0_COUNT_NUM + i * 20);
-		tmp = dfi->ch_usage[i].access;
-		if (tmp > max) {
-			busier_ch = i;
-			max = tmp;
-		}
 	}
-	rockchip_dfi_start_hardware_counter(edev);
-
-	return busier_ch;
 }
 
 static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
@@ -145,12 +138,28 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 				  struct devfreq_event_data *edata)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
-	int busier_ch;
+	struct dmc_count count;
+	struct dmc_count *last = &dfi->last_event_count;
+	u32 access = 0, total = 0;
+	int i;
+
+	rockchip_dfi_read_counters(edev, &count);
+
+	/* We can only report one channel, so find the busiest one */
+	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
+		u32 a = count.c[i].access - last->c[i].access;
+		u32 t = count.c[i].total - last->c[i].total;
+
+		if (a > access) {
+			access = a;
+			total = t;
+		}
+	}
 
-	busier_ch = rockchip_dfi_get_busier_ch(edev);
+	edata->load_count = access * 4;
+	edata->total_count = total;
 
-	edata->load_count = dfi->ch_usage[busier_ch].access * 4;
-	edata->total_count = dfi->ch_usage[busier_ch].total;
+	dfi->last_event_count = count;
 
 	return 0;
 }
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
