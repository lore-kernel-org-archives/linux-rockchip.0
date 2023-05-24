Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E8D4C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jpO2LrA5sZMHIRKLMc0HkVIPAVasZ9d0re/RtY/8cg=; b=C0sozTJsviHQRw
	lXQs6W6IIimg8p/+xZUUDpGyuZPyFML/bCEuboG8yRXnAuQJysSl86mMIiH9J9YETh/kfehdIjYz5
	ZduJD+CeT/WLAUZ13HAcwjtYv2IwuRLWq0lfFDfaaxxjPN6NwNR8VxLics9zREfgCNZbcHWN4cNYg
	xKjxZqWYd5ipvLazoVDYuNgQsOjj3OkTgn7h31bmsBhhVgFvi7kVr9A2bKI7NlagM03clQ3Q7/sLy
	e+j8i+1f1AuxifBXn3t4+6e9fiD6t6yjWUsTyExDVfhn4tlKltzbmUE1Kp6SyBWPbqo12fnqtvgbW
	O2bUOUxPz++GpdNL6vqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGb-00Cr7E-0Z;
	Wed, 24 May 2023 08:54:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGT-00Cr2Z-0b
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6HKbEduCN/PrA+GeOKj2Lt1H5akBPVUh5G56pzbk9y8=; b=HdwDEhPit4GdY+PPIZsCrfoAT0
	If/WI1yZ/lZgWhpIzbpIN2jWOBNYy3DEAhMQY/184Tav6gJfVfcx3TNrpoA6hNRF0d0W8kaObmuPO
	jhABiKXklPJsZn72O4xFJBDx2kExpN9fipXG7ux+gKiKGfwIqrsgDJTP79mm3z1aAX78a/O0Tou8H
	5PSYGa2QL5r/cehaL2PoX8IXvxZH6uodHq+MEzuQ7hUDP3d4/PK8cEOJmESMrSIJKVbJQAavOPfxv
	QlFm/IksRB5elirMlX1tzYxwiT6w9FwO0iw05TlFCvqhcyY0ZjPuR1WCgelAfg7igatvA9TzaXM9J
	oJZ/Mgag==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1q1juk-00B18F-6x
	for linux-rockchip@lists.infradead.org; Wed, 24 May 2023 08:32:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juc-0002su-6B; Wed, 24 May 2023 10:32:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jub-002Ram-4N; Wed, 24 May 2023 10:32:01 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juX-009jEs-13; Wed, 24 May 2023 10:31:57 +0200
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
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 15/25] PM / devfreq: rockchip-dfi: give variable a better name
Date: Wed, 24 May 2023 10:31:43 +0200
Message-Id: <20230524083153.2046084-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093210_345854_4E854D26 
X-CRM114-Status: GOOD (  16.67  )
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

struct dmc_count_channel::total counts the clock cycles of the DDR
controller. Rename it accordingly to give the reader a better idea
what this is about. While at it, at some documentation to struct
dmc_count_channel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 8a7af7c32ae0d..50e497455dc69 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -46,9 +46,14 @@
 #define DDRMON_CH1_COUNT_NUM		0x3c
 #define DDRMON_CH1_DFI_ACCESS_NUM	0x40
 
+/**
+ * struct dmc_count_channel - structure to hold counter values from the DDR controller
+ * @access:       Number of read and write accesses
+ * @clock_cycles: DDR clock cycles
+ */
 struct dmc_count_channel {
 	u32 access;
-	u32 total;
+	u32 clock_cycles;
 };
 
 struct dmc_count {
@@ -150,7 +155,7 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 			continue;
 		count->c[i].access = readl_relaxed(dfi_regs +
 				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
-		count->c[i].total = readl_relaxed(dfi_regs +
+		count->c[i].clock_cycles = readl_relaxed(dfi_regs +
 				DDRMON_CH0_COUNT_NUM + i * 20);
 	}
 }
@@ -182,29 +187,29 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	struct dmc_count count;
 	struct dmc_count *last = &dfi->last_event_count;
-	u32 access = 0, total = 0;
+	u32 access = 0, clock_cycles = 0;
 	int i;
 
 	rockchip_dfi_read_counters(dfi, &count);
 
 	/* We can only report one channel, so find the busiest one */
 	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
-		u32 a, t;
+		u32 a, c;
 
 		if (!(dfi->channel_mask & BIT(i)))
 			continue;
 
 		a = count.c[i].access - last->c[i].access;
-		t = count.c[i].total - last->c[i].total;
+		c = count.c[i].clock_cycles - last->c[i].clock_cycles;
 
 		if (a > access) {
 			access = a;
-			total = t;
+			clock_cycles = c;
 		}
 	}
 
 	edata->load_count = access * 4;
-	edata->total_count = total;
+	edata->total_count = clock_cycles;
 
 	dfi->last_event_count = count;
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
