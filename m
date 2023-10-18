Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A28FCCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 06:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DTqX/8Y3wMFh7U4NnQYXsslScCco9BGUSsyzmgLThQ=; b=W7X6ANmz/ZCAaB
	socDcytRPkm7EcLg7rR16OSyVr54SYbUq8qb3CDY4bv+/IPJtdOa8FhPn3CMRnGvvDHWlbjbvI1/O
	nZ6tqTn6X29RfYG8drPgXnsdJngLgqtvqZmt6EdkZK0ZMQrSLDsAootG0jewv0deBsEXZqPIYiKO9
	H8uqy0HzKuarGdK2ByKAs7haDp/cU3wqG/ZOVPH5IYo0ssSeW5JU9P2IMW6k5a3Ums3iiRRNG8XXV
	6iu6lGspSYLGiEjDzPyzbtnKWggpRNk2oh3pP7DUfaR0X4bemMDuc7ctW6EyAiwCEWNZQWRMokBSn
	udRy3ScBdw8AD+N/kadw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsztT-00DueP-37;
	Wed, 18 Oct 2023 06:18:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qszsI-00DtQ6-09
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 06:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrs-0001Zq-JW; Wed, 18 Oct 2023 08:17:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-002UY8-Rp; Wed, 18 Oct 2023 08:17:18 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qszrq-00EviU-2U;
	Wed, 18 Oct 2023 08:17:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chanwoo Choi <chanwoo@kernel.org>,
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
	Sascha Hauer <s.hauer@pengutronix.de>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v8 09/26] PM / devfreq: rockchip-dfi: Clean up DDR type register defines
Date: Wed, 18 Oct 2023 08:16:57 +0200
Message-Id: <20231018061714.3553817-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_231746_099486_356F1653 
X-CRM114-Status: GOOD (  15.46  )
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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 82d18c60538a5..12f9096879235 100644
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
@@ -74,16 +78,20 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
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
@@ -91,7 +99,8 @@ static void rockchip_dfi_stop_hardware_counter(struct devfreq_event_dev *edev)
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
