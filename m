Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FC8C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVibfHxX8OP3O3REXupd6aoZCs4N3inpVNC47Bjegkw=; b=p9A2Z6Qd3C4QHp
	wgP7BInRyIHLh2CCcHcsaE4X/NWIjRKBgfFISWwC4YDqidvK6N++Yu2TeE2DFlJss0Ap8oZZ7r/rO
	myVb5UGiCzEA3YE8XCF39wZUtz2ghPUb5zlsXYq4BJ/gWYm5sSoVSB62xXS+vQ/NverXFq5CBnjAV
	VLry+3rx7E4P/2Cm7RpeIssKwwar+GTHAGH2zclKHB8/LJc6AL+V2x+l8Dt6nUiL/VezEvWn5s0bD
	P2hbXZCd9l/auG/xb36P2GthSu47P+tIENbD5/QHuNVoHhTE3jzHzqpq4+6uZJ4lb8mnsRHmOZVmS
	k+U+HdIBrPE+I/FunOcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbiY-009egb-Ek; Thu, 16 Feb 2023 10:42:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbdH-009bAm-Ir
	for linux-rockchip@lists.infradead.org; Thu, 16 Feb 2023 10:36:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcs-0003dh-1w; Thu, 16 Feb 2023 11:36:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcp-005Kn4-Kv; Thu, 16 Feb 2023 11:36:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbco-002WiP-0c; Thu, 16 Feb 2023 11:36:26 +0100
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
Subject: [PATCH v3 09/19] PM / devfreq: rockchip-dfi: Clean up DDR type register defines
Date: Thu, 16 Feb 2023 11:36:14 +0100
Message-Id: <20230216103624.591901-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230216103624.591901-1-s.hauer@pengutronix.de>
References: <20230216103624.591901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_023655_667664_7C4DCA22 
X-CRM114-Status: GOOD (  14.67  )
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

Use the HIWORD_UPDATE() define known from other rockchip drivers to
make the defines look less odd to the readers who've seen other
rockchip drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 32 +++++++++++++++++-----------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 7896cd8beb143..035984d3c7b01 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -26,15 +26,19 @@
 
 #define DMC_MAX_CHANNELS	2
 
+#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
+
 /* DDRMON_CTRL */
 #define DDRMON_CTRL	0x04
-#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
-#define LPDDR4_EN	(0x10001 << 4)
-#define HARDWARE_EN	(0x10001 << 3)
-#define LPDDR3_EN	(0x10001 << 2)
-#define SOFTWARE_EN	(0x10001 << 1)
-#define SOFTWARE_DIS	(0x10000 << 1)
-#define TIME_CNT_EN	(0x10001 << 0)
+#define DDRMON_CTRL_DDR4		BIT(5)
+#define DDRMON_CTRL_LPDDR4		BIT(4)
+#define DDRMON_CTRL_HARDWARE_EN		BIT(3)
+#define DDRMON_CTRL_LPDDR23		BIT(2)
+#define DDRMON_CTRL_SOFTWARE_EN		BIT(1)
+#define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
+#define DDRMON_CTRL_DDR_TYPE_MASK	(DDRMON_CTRL_DDR4 | \
+					 DDRMON_CTRL_LPDDR4 | \
+					 DDRMON_CTRL_LPDDR23)
 
 #define DDRMON_CH0_COUNT_NUM		0x28
 #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
@@ -74,16 +78,19 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 	void __iomem *dfi_regs = dfi->regs;
 
 	/* clear DDRMON_CTRL setting */
-	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
+	writel_relaxed(HIWORD_UPDATE(0, 0xffff), dfi_regs + DDRMON_CTRL);
 
 	/* set ddr type to dfi */
 	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
-		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
+		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
+			       dfi_regs + DDRMON_CTRL);
 	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
-		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
+		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
+			       dfi_regs + DDRMON_CTRL);
 
 	/* enable count, use software mode */
-	writel_relaxed(SOFTWARE_EN, dfi_regs + DDRMON_CTRL);
+	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
+		       dfi_regs + DDRMON_CTRL);
 }
 
 static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
@@ -91,7 +98,8 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	void __iomem *dfi_regs = dfi->regs;
 
-	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
+	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
+		       dfi_regs + DDRMON_CTRL);
 }
 
 static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
