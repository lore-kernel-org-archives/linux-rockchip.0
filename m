Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF1AEB64D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcBkyAs1PzRgMim5kSl+wAzNhWquu4ENp7r+iXuBsT8=; b=hGz2SezjlDvuyI
	D+r8NHdtCSDOLO7RMW6h7qeLsnsGAkBKlUovc91TPm6KyMeiT8g5YzJz1e1k/UNrfOhMOIOCd2wJV
	gn45m1qu78WsLdNV2bsIC9Xlc/XiKDuOi45y7V1Z4otg62S1wSmtJmWSwlgS4RM/M9aUwB+ErsgG4
	J9frdXo2XsQzCfb0OP5HPUbxHZPRD5ysGwIo2MDzvp2GuewbaBWU8VvjKjFH04zVwUuOY05ycJVEC
	AKhDn8wVivX+dChB+H562n+IqvFJoTY8JrfNdqdiDBl3CqF7LDkT2ZqwPjaDcXkPHka5Xspf4AHqi
	AYUSL3IjOoog9djIM+fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2rC-00H0NX-0A;
	Fri, 16 Jun 2023 06:22:50 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qS-00Gzh4-1i
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Jun 2023 06:22:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hts8fygQZvo/IIrnHADMxUpDivtmtEzWp7R4YbAGJFo=; b=Sr2otq1NOEor6aD2ke1IjUtI08
	44sbJkwoS10UBY98CjrlnNoyuEGRu2vqk8xf2X+pwLi85i/W0QefmZDgYQF30eWYI79Lz0Io2tCEe
	sH0+e3D4pBWSZVyLAbTZXYPZL78pfRnscAn5RT86pFdTuHip11mCnlW05BGNOp7YTPROCa2HsXF6N
	OYaf+PpTeCvtBu0kbXj30Dpb9YIda0LRby2KnZHfhVGXjMU3HkK+83x/IFU8v7CqEnGGqAyStG991
	5uvH+CTerHP3KOMk6kGfZpqgd8OnNTL6yo46mq6Hlill8agn2XQ1poUdpprydkS+DzCTt6vkIXQWh
	RXaV5LOQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qA2qH-008WWE-Dq
	for linux-rockchip@lists.infradead.org; Fri, 16 Jun 2023 06:22:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q7-0006na-VS; Fri, 16 Jun 2023 08:21:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q5-007kxR-Ii; Fri, 16 Jun 2023 08:21:41 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q4-003FUK-K9; Fri, 16 Jun 2023 08:21:40 +0200
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
Subject: [PATCH v6 06/26] PM / devfreq: rockchip-dfi: Use free running counter
Date: Fri, 16 Jun 2023 08:20:41 +0200
Message-Id: <20230616062101.601837-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616062101.601837-1-s.hauer@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_072153_732756_B83AF824 
X-CRM114-Status: GOOD (  19.05  )
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
add later, because perf needs counters that are not modified elsewhere.

This patch removes resetting the counters and keeps them running
instead. That means we no longer use the absolute counter values but
instead compare them with the counter values we read last time. Not
stopping the counters also has the impact that they are running while
we are reading them. We cannot read multiple timers atomically, so
the values do not exactly fit together. The effect should be negligible
though as the time between two measurements is some orders of magnitude
bigger than the time we need to read multiple registers.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Link: https://lore.kernel.org/r/20230524083153.2046084-7-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v4:
    - rephrase commit message
    - Drop unused variable

 drivers/devfreq/event/rockchip-dfi.c | 52 ++++++++++++++++------------
 1 file changed, 30 insertions(+), 22 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 680f629da64fc..126bb744645b6 100644
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
@@ -51,7 +55,7 @@ struct dmc_usage {
 struct rockchip_dfi {
 	struct devfreq_event_dev *edev;
 	struct devfreq_event_desc desc;
-	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
+	struct dmc_count last_event_count;
 	struct device *dev;
 	void __iomem *regs;
 	struct regmap *regmap_pmu;
@@ -85,30 +89,18 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
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
@@ -145,12 +137,28 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
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
