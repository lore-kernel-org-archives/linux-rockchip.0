Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9133EEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8mmzzapjMXchmX/NLacI5IK80XSgUqF7BnmHV1hByw=; b=CzF23IPYC3HGgW
	1ShklTWPURyGWRsa1Z0X32NHa95ZW32aygSmBcydREPuOEekghZyc95P3ISU+wnrUWNagYfKlcZ9C
	l0sentttU9LvoeMWSyZCYbp3D8TCtKgLk/PxUZG4JU6iYeZWRSqvzRHC+2hc3gCCwD4vqLxMM2asB
	Xbnz18JNk9BGrdkmx/+rbQhzdoERF07Aw8rBfIDpB87PnBtHOqGXb4NEEGeAcoJJ+n5flstalxV5n
	SC11ljdDJXeWcRRQDj78VqgLwRBmGmjxA/22gWTRYnPlXkOuW9HQD09g3HeuttfvOstwjgB+2dC2s
	YhqZyUpCRUsvecWowqtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcQ0-00Cjwp-0L;
	Tue, 04 Jul 2023 09:33:56 +0000
Received: from casper.infradead.org ([90.155.50.34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPH-00Cj92-2Q
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Jul 2023 09:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dPxkvAbFshHBUP1gvm3mXMrH6dgJqJQhV0rg6XszgV8=; b=MG+BVUcjxy9cf43VqPjzZUp3t4
	Pbn8F2X2x3zblOEojxG6jfJqc5o2j8Lgc4ksBAkcUES/PSvm6B38h9geOznIiXgD+LYgykvKtioXm
	R+C/NPAIPuL9N8ixrxbd2nXuuE4HjJX9Q9GIeKh5jkSfJylp03/IVtOAUezaWelTE8Jd4envcPfKY
	94rkGtdx1b3hq6I4HEj7ZTJ0+eQQixmaJ1fch8+cKj24wGdSI2K0d6fi8cdYuYYkRroZR6jWjXIjB
	BFSmFvpTMpYJqpY644knnBla3qGfP3leIKePgsaCb5Vlop7zOuh24LBIP/Wjh5nvBaObD5UjW/vBE
	didkNbgw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qGcP9-0091JP-0B
	for linux-rockchip@lists.infradead.org; Tue, 04 Jul 2023 09:33:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOx-0006xx-8Y; Tue, 04 Jul 2023 11:32:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOw-00C0Ap-HA; Tue, 04 Jul 2023 11:32:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002Ty3-4E; Tue, 04 Jul 2023 11:32:45 +0200
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
Subject: [PATCH v7 09/26] PM / devfreq: rockchip-dfi: Clean up DDR type register defines
Date: Tue,  4 Jul 2023 11:32:25 +0200
Message-Id: <20230704093242.583575-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_103303_049506_E8FD560C 
X-CRM114-Status: GOOD (  15.56  )
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

The HIWORD registers have their functional bits in the lower 16 bits
whereas the upper 16 bits contain a mask. Only the functional bits that
have the corresponding mask bit set are modified during a write. Although
the register writes look different, the end result should be the same,
at least there's no functional change intended with this patch.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 6bccb6fbcfc0c..6b3ef97b3be09 100644
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
@@ -73,16 +77,20 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 	void __iomem *dfi_regs = dfi->regs;
 
 	/* clear DDRMON_CTRL setting */
-	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
+	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
+		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
 
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
@@ -90,7 +98,8 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	void __iomem *dfi_regs = dfi->regs;
 
-	writel_relaxed(SOFTWARE_DIS, dfi_regs + DDRMON_CTRL);
+	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
+		       dfi_regs + DDRMON_CTRL);
 }
 
 static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dmc_count *count)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
