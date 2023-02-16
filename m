Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F703C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 10:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lj1/UMFClBpLkL6gviiSgV4NiKPjjHvSb1j+aNoYtZE=; b=SfU5PCQm7i7iLw
	eEXvO/zIZJyn4X/SmUjeiKLAADI4xWI3UtqFzxGxCvlnDlwPlrreXI6/AZg7OmI3zgqnG1kOV/q4C
	F4nVonq3RzniK4MgEaP1Ryiw6dx5GcbV3N/HY1l6a+EgHkdU7WJiHVDZzJJr6SgDwiEG3wooGb3ip
	Rfrc2nBXCj2yTRVCY5mdR0Lj93Ylp9/uSc4vBvswpFlHfFTUGBvDbrjy1vRUESEwsH3B8R+GcwM0m
	CR2XuGMQyeygJ5sRRLUkwiof4kxo26pNdM7CTzlHS66aJZCCW7eudSumcJty9JISh4rF2qRU3wWIF
	6/+fsy07fzBXFBBO/qdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbev-009cCZ-BV; Thu, 16 Feb 2023 10:38:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSbd1-009b2Z-LC
	for linux-rockchip@lists.infradead.org; Thu, 16 Feb 2023 10:36:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcs-0003dn-1s; Thu, 16 Feb 2023 11:36:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbcq-005KnE-2q; Thu, 16 Feb 2023 11:36:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pSbco-002Wie-4H; Thu, 16 Feb 2023 11:36:26 +0100
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
Subject: [PATCH v3 14/19] PM / devfreq: rockchip-dfi: Prepare for multiple users
Date: Thu, 16 Feb 2023 11:36:19 +0100
Message-Id: <20230216103624.591901-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230216103624.591901-1-s.hauer@pengutronix.de>
References: <20230216103624.591901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_023639_740649_5EFA6777 
X-CRM114-Status: GOOD (  20.48  )
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

When adding perf support later the DFI must be enabled when
either of devfreq-event or perf is active. Prepare for that
by adding a usage counter for the DFI. Also move enabling
and disabling of the clock away from the devfreq-event specific
functions to which the perf specific part won't have access.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/devfreq/event/rockchip-dfi.c | 57 +++++++++++++++++++---------
 1 file changed, 40 insertions(+), 17 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index c0b7b1e9805e9..eae010644935a 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -69,13 +69,28 @@ struct rockchip_dfi {
 	void __iomem *regs;
 	struct regmap *regmap_pmu;
 	struct clk *clk;
+	int usecount;
+	struct mutex mutex;
 	u32 ddr_type;
 	unsigned int channel_mask;
 };
 
-static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
+static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
+	int ret = 0;
+
+	mutex_lock(&dfi->mutex);
+
+	dfi->usecount++;
+	if (dfi->usecount > 1)
+		goto out;
+
+	ret = clk_prepare_enable(dfi->clk);
+	if (ret) {
+		dev_err(&dfi->edev->dev, "failed to enable dfi clk: %d\n", ret);
+		goto out;
+	}
 
 	/* clear DDRMON_CTRL setting */
 	writel_relaxed(HIWORD_UPDATE(0, 0xffff), dfi_regs + DDRMON_CTRL);
@@ -99,14 +114,30 @@ static void rockchip_dfi_start_hardware_counter(struct rockchip_dfi *dfi)
 	/* enable count, use software mode */
 	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN, DDRMON_CTRL_SOFTWARE_EN),
 		       dfi_regs + DDRMON_CTRL);
+out:
+	mutex_unlock(&dfi->mutex);
+
+	return ret;
 }
 
-static void rockchip_dfi_stop_hardware_counter(struct rockchip_dfi *dfi)
+static void rockchip_dfi_disable(struct rockchip_dfi *dfi)
 {
 	void __iomem *dfi_regs = dfi->regs;
 
+	mutex_lock(&dfi->mutex);
+
+	dfi->usecount--;
+
+	WARN_ON_ONCE(dfi->usecount < 0);
+
+	if (dfi->usecount > 0)
+		goto out;
+
 	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_SOFTWARE_EN),
 		       dfi_regs + DDRMON_CTRL);
+	clk_disable_unprepare(dfi->clk);
+out:
+	mutex_unlock(&dfi->mutex);
 }
 
 static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_count *count)
@@ -124,29 +155,20 @@ static void rockchip_dfi_read_counters(struct rockchip_dfi *dfi, struct dmc_coun
 	}
 }
 
-static int rockchip_dfi_disable(struct devfreq_event_dev *edev)
+static int rockchip_dfi_event_disable(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 
-	rockchip_dfi_stop_hardware_counter(dfi);
-	clk_disable_unprepare(dfi->clk);
+	rockchip_dfi_disable(dfi);
 
 	return 0;
 }
 
-static int rockchip_dfi_enable(struct devfreq_event_dev *edev)
+static int rockchip_dfi_event_enable(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
-	int ret;
-
-	ret = clk_prepare_enable(dfi->clk);
-	if (ret) {
-		dev_err(&edev->dev, "failed to enable dfi clk: %d\n", ret);
-		return ret;
-	}
 
-	rockchip_dfi_start_hardware_counter(dfi);
-	return 0;
+	return rockchip_dfi_enable(dfi);
 }
 
 static int rockchip_dfi_set_event(struct devfreq_event_dev *edev)
@@ -190,8 +212,8 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
 }
 
 static const struct devfreq_event_ops rockchip_dfi_ops = {
-	.disable = rockchip_dfi_disable,
-	.enable = rockchip_dfi_enable,
+	.disable = rockchip_dfi_event_disable,
+	.enable = rockchip_dfi_event_enable,
 	.get_event = rockchip_dfi_get_event,
 	.set_event = rockchip_dfi_set_event,
 };
@@ -285,6 +307,7 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 		return PTR_ERR(dfi->regmap_pmu);
 
 	dfi->dev = dev;
+	mutex_init(&dfi->mutex);
 
 	desc = &dfi->desc;
 	desc->ops = &rockchip_dfi_ops;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
