Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA0AEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0wxXZG0VOY4sF3oq3OlL0YOJgnaUp0kAOxADLTI640=; b=YHnKnxHfIlKUFf
	BFVPydeGaiw1KyHHWLhgPMhrkU3XvOtNdGr38DO/K6YPhxS8jgafWT9E3dm+MNBwU+owOo88vBsI4
	V10sm3cGIx9HjRR7LlQqGc65Ti3a69YFC4qtz0IMY2lU7EDJaZsmxj8XPim7wUOsypjNIfMeHT72d
	+01z0Uwvo0QY6lXZMrceQMOO/avUGycgAlMlHbTDtQai2KAl61t7PQ2VhYT+p2SegYyTwiSmUa3I0
	3VEwmlni0+pBB4ICbEcS1+k52TtiRgkMqEQUudpIkRGVFmo2cM8qws76ZFnO1L4ORKontMB7elQJ9
	OeydFkWmHAQCgbH18bYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcP9-00Cj1s-2j;
	Tue, 04 Jul 2023 09:33:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcP2-00CiwF-0d
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jul 2023 09:32:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcP0-0006tx-Bd; Tue, 04 Jul 2023 11:32:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOu-00C09u-DX; Tue, 04 Jul 2023 11:32:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002Tyk-Bx; Tue, 04 Jul 2023 11:32:45 +0200
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
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v7 18/26] PM / devfreq: rockchip-dfi: account for multiple DDRMON_CTRL registers
Date: Tue,  4 Jul 2023 11:32:34 +0200
Message-Id: <20230704093242.583575-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_023256_237421_4A819D0A 
X-CRM114-Status: GOOD (  19.36  )
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

The currently supported RK3399 has a set of registers per channel, but
it has only a single DDRMON_CTRL register. With upcoming RK3588 this
will be different, the RK3588 has a DDRMON_CTRL register per channel.

Instead of expecting a single DDRMON_CTRL register, loop over the
channels and write the channel specific DDRMON_CTRL register. Break
out early out of the loop when there is only a single DDRMON_CTRL
register like on the RK3399.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 72 ++++++++++++++++++----------
 1 file changed, 48 insertions(+), 24 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 85ec93fd41858..2362d3953ba40 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -113,12 +113,13 @@ struct rockchip_dfi {
 	int burst_len;
 	int buswidth[DMC_MAX_CHANNELS];
 	int ddrmon_stride;
+	bool ddrmon_ctrl_single;
 };
 
 static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
-	int ret = 0;
+	int i, ret = 0;
 
 	mutex_lock(&dfi->mutex);
 
@@ -132,29 +133,41 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 		goto out;
 	}
 
-	/* clear DDRMON_CTRL setting */
-	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
-		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
+	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
+		u32 ctrl = 0;
 
-	/* set ddr type to dfi */
-	switch (dfi->ddr_type) {
-	case ROCKCHIP_DDRTYPE_LPDDR2:
-	case ROCKCHIP_DDRTYPE_LPDDR3:
-		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
-			       dfi_regs + DDRMON_CTRL);
-		break;
-	case ROCKCHIP_DDRTYPE_LPDDR4:
-	case ROCKCHIP_DDRTYPE_LPDDR4X:
-		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
-			       dfi_regs + DDRMON_CTRL);
-		break;
-	default:
-		break;
-	}
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
 
-	/* enable count, use software mode */
-	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
-		       dfi_regs + DDRMON_CTRL);
+		/* clear DDRMON_CTRL setting */
+		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN |
+			       DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN),
+			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
+
+		/* set ddr type to dfi */
+		switch (dfi->ddr_type) {
+		case ROCKCHIP_DDRTYPE_LPDDR2:
+		case ROCKCHIP_DDRTYPE_LPDDR3:
+			ctrl = DDRMON_CTRL_LPDDR23;
+			break;
+		case ROCKCHIP_DDRTYPE_LPDDR4:
+		case ROCKCHIP_DDRTYPE_LPDDR4X:
+			ctrl = DDRMON_CTRL_LPDDR4;
+			break;
+		default:
+			break;
+		}
+
+		writel_relaxed(HIWORD_UPDATE(ctrl, DDRMON_CTRL_DDR_TYPE_MASK),
+			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
+
+		/* enable count, use software mode */
+		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
+			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
+
+		if (dfi->ddrmon_ctrl_single)
+			break;
+	}
 out:
 	mutex_unlock(&dfi->mutex);
 
@@ -164,6 +177,7 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
+	int i;
 
 	mutex_lock(&dfi->mutex);
 
@@ -174,8 +188,17 @@ static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
 	if (dfi->usecount > 0)
 		goto out;
 
-	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
-		       dfi_regs + DDRMON_CTRL);
+	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
+		if (!(dfi->channel_mask & BIT(i)))
+			continue;
+
+		writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
+			      dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
+
+		if (dfi->ddrmon_ctrl_single)
+			break;
+	}
+
 	clk_disable_unprepare(dfi->clk);
 out:
 	mutex_unlock(&dfi->mutex);
@@ -666,6 +689,7 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
 	dfi->buswidth[1] = FIELD_GET(RK3399_PMUGRF_OS_REG2_BW_CH1, val) == 0 ? 4 : 2;
 
 	dfi->ddrmon_stride = 0x14;
+	dfi->ddrmon_ctrl_single = true;
 
 	return 0;
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
