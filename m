Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC857C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tY/8zZ8IyVZJ2hQEdnDPOzkY/14fbRKBhinJO+s/KnQ=; b=QeyKysrdVls4Ff
	jBCTZwM5YQpzXrIFxRRqFeFAbVjKdkPbJD7dww5FcCcPTBKOPthvDHoEUyZeMS/uSUVsFWWOso9jG
	oTLhXe2DNdroCpROrwELv8ji1FKrDmLmkm45FDKmADRKQoRpdCLY/HEHOzNUgLel2N+mhAcCNNa3D
	ysnSI5nAN8CdeGK5IKe/nXFxZPUDM6c5tGogVqqIVRDbialUOhmUQSBFTc5S83DjOy8SEaq7sy7dv
	2rCkNm9aoOdiQKzvzXJKWLMYn7XU/KBXlk0giFQnmBRg/qDTH5gYfB04/tqfNyt8VTsyF/mkrIGCv
	mYhOPabYVFfW8bPchLwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jvR-00CnEC-02;
	Wed, 24 May 2023 08:32:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1juo-00Cmrj-11
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 08:32:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juY-0002lB-Tq; Wed, 24 May 2023 10:31:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juX-002RZa-UZ; Wed, 24 May 2023 10:31:57 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juW-009j4L-43; Wed, 24 May 2023 10:31:56 +0200
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
Subject: [PATCH v5 04/25] PM / devfreq: rockchip-dfi: Add SoC specific init function
Date: Wed, 24 May 2023 10:31:32 +0200
Message-Id: <20230524083153.2046084-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_013214_404462_5A4A04C7 
X-CRM114-Status: GOOD (  21.42  )
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

Move the RK3399 specifics to a SoC specific init function to make
the way free for supporting other SoCs later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v4:
    - use of_device_get_match_data()
    - use a callback rather than a struct type as driver data

 drivers/devfreq/event/rockchip-dfi.c | 48 +++++++++++++++++++---------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index e19e5acaa362c..6b1ef29df7048 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -17,6 +17,7 @@
 #include <linux/slab.h>
 #include <linux/list.h>
 #include <linux/of.h>
+#include <linux/of_device.h>
 
 #include <soc/rockchip/rk3399_grf.h>
 
@@ -55,27 +56,21 @@ struct rockchip_dfi {
 	void __iomem *regs;
 	struct regmap *regmap_pmu;
 	struct clk *clk;
+	u32 ddr_type;
 };
 
 static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 {
 	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
 	void __iomem *dfi_regs = dfi->regs;
-	u32 val;
-	u32 ddr_type;
-
-	/* get ddr type */
-	regmap_read(dfi->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
-	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
-		    RK3399_PMUGRF_DDRTYPE_MASK;
 
 	/* clear DDRMON_CTRL setting */
 	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
 
 	/* set ddr type to dfi */
-	if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
+	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
 		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
-	else if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
+	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
 		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
 
 	/* enable count, use software mode */
@@ -167,8 +162,26 @@ static const struct devfreq_event_ops rockchip_dfi_ops = {
 	.set_event = rockchip_dfi_set_event,
 };
 
+static int rk3399_dfi_init(struct rockchip_dfi *dfi)
+{
+	struct regmap *regmap_pmu = dfi->regmap_pmu;
+	u32 val;
+
+	dfi->clk = devm_clk_get(dfi->dev, "pclk_ddr_mon");
+	if (IS_ERR(dfi->clk))
+		return dev_err_probe(dfi->dev, PTR_ERR(dfi->clk),
+				     "Cannot get the clk pclk_ddr_mon\n");
+
+	/* get ddr type */
+	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
+	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
+			RK3399_PMUGRF_DDRTYPE_MASK;
+
+	return 0;
+};
+
 static const struct of_device_id rockchip_dfi_id_match[] = {
-	{ .compatible = "rockchip,rk3399-dfi" },
+	{ .compatible = "rockchip,rk3399-dfi", .data = rk3399_dfi_init },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
@@ -179,6 +192,12 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 	struct rockchip_dfi *dfi;
 	struct devfreq_event_desc *desc;
 	struct device_node *np = pdev->dev.of_node, *node;
+	int (*soc_init)(struct rockchip_dfi *dfi);
+	int ret;
+
+	soc_init = of_device_get_match_data(&pdev->dev);
+	if (!soc_init)
+		return -EINVAL;
 
 	dfi = devm_kzalloc(dev, sizeof(*dfi), GFP_KERNEL);
 	if (!dfi)
@@ -188,11 +207,6 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 	if (IS_ERR(dfi->regs))
 		return PTR_ERR(dfi->regs);
 
-	dfi->clk = devm_clk_get(dev, "pclk_ddr_mon");
-	if (IS_ERR(dfi->clk))
-		return dev_err_probe(dev, PTR_ERR(dfi->clk),
-				     "Cannot get the clk pclk_ddr_mon\n");
-
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (!node)
 		return dev_err_probe(&pdev->dev, -ENODEV, "Can't find pmu_grf registers\n");
@@ -209,6 +223,10 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 	desc->driver_data = dfi;
 	desc->name = np->name;
 
+	ret = soc_init(dfi);
+	if (ret)
+		return ret;
+
 	dfi->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
 	if (IS_ERR(dfi->edev)) {
 		dev_err(&pdev->dev,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
