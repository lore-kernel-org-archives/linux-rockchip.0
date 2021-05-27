Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5691C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:27:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B9436113E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 08:27:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B9436113E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrIGY/zBpgp2R3C2nnqjaTQqc+mbLXkC5jOXceoHQ7U=; b=c6uSlITncGbRb8
	hd1hvh9sGbx2ZASbKFyPV54nZYypAQyeqE26j/nwSaKlwZLgXITJeOeOsywxbNvoeXfSXWVvPdz8S
	C72J7C35X3+POlkTARoSgCb03oWh2yB4/K8vt0PoMYch1urK5mVbItTwxPYzR/mMsEllTKTtPjrfg
	SutpZHYy+mn92YRzP6kX1ffTusLGE/Rsk3laHBD6nj500ZUpiDlFpysuynQY8TjuHdiLKTE78uvIj
	KRVedIXZAPWiq60ZdlRLrLIE6BT2bYPpzYvPxeW0q3aLzEvDqAuQ7XYh8VFX8xU2IuX+VZYWc9ofk
	cyQIcizyj9wT5yW8YF1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBMW-003rgf-OQ; Thu, 27 May 2021 08:27:28 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBKF-003qax-6P
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 08:25:10 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 03B1AF49BE;
 Thu, 27 May 2021 16:25:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32529T140357225019136S1622103895766083_; 
 Thu, 27 May 2021 16:25:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <67ffc877b5968b12e1a96d82a855ba90>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de, lee.jones@linaro.org, ulf.hansson@linaro.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, jbx6244@gmail.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/3] soc: rockchip: io-domain: add rk3568 support
Date: Thu, 27 May 2021 16:24:52 +0800
Message-Id: <20210527082453.1447484-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210527082453.1447484-1-jay.xu@rock-chips.com>
References: <20210527082453.1447484-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_012507_612615_63119F2A 
X-CRM114-Status: GOOD (  19.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The io-domain registers on RK3568 SoCs have three separated bits to
enable/disable the 1.8v/2.5v/3.3v power.

This patch make the write to be a operation, allow rk3568 uses a private
register set function.

Since the 2.5v is not used on RK3568, so the driver only set
1.8v [enable] + 3.3v [disable] for 1.8v mode
1.8v [disable] + 3.3v [enable] for 3.3v mode

There is not register order requirement which has been cleared by our IC
team.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
v2:
- none
 drivers/soc/rockchip/io-domain.c | 88 +++++++++++++++++++++++++++++---
 1 file changed, 80 insertions(+), 8 deletions(-)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index cf8182fc3642..13c446fd33a9 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -51,13 +51,11 @@
 #define RK3399_PMUGRF_CON0_VSEL		BIT(8)
 #define RK3399_PMUGRF_VSEL_SUPPLY_NUM	9
 
-struct rockchip_iodomain;
+#define RK3568_PMU_GRF_IO_VSEL0		(0x0140)
+#define RK3568_PMU_GRF_IO_VSEL1		(0x0144)
+#define RK3568_PMU_GRF_IO_VSEL2		(0x0148)
 
-struct rockchip_iodomain_soc_data {
-	int grf_offset;
-	const char *supply_names[MAX_SUPPLIES];
-	void (*init)(struct rockchip_iodomain *iod);
-};
+struct rockchip_iodomain;
 
 struct rockchip_iodomain_supply {
 	struct rockchip_iodomain *iod;
@@ -66,13 +64,62 @@ struct rockchip_iodomain_supply {
 	int idx;
 };
 
+struct rockchip_iodomain_soc_data {
+	int grf_offset;
+	const char *supply_names[MAX_SUPPLIES];
+	void (*init)(struct rockchip_iodomain *iod);
+	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
+};
+
 struct rockchip_iodomain {
 	struct device *dev;
 	struct regmap *grf;
 	const struct rockchip_iodomain_soc_data *soc_data;
 	struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
+	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
 };
 
+static int rk3568_iodomain_write(struct rockchip_iodomain_supply *supply, int uV)
+{
+	struct rockchip_iodomain *iod = supply->iod;
+	u32 is_3v3 = uV > MAX_VOLTAGE_1_8;
+	u32 val0, val1;
+	int b;
+
+	switch (supply->idx) {
+	case 0: /* pmuio1 */
+		break;
+	case 1: /* pmuio2 */
+		b = supply->idx;
+		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
+		b = supply->idx + 4;
+		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
+
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val0);
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL2, val1);
+		break;
+	case 3: /* vccio2 */
+		break;
+	case 2: /* vccio1 */
+	case 4: /* vccio3 */
+	case 5: /* vccio4 */
+	case 6: /* vccio5 */
+	case 7: /* vccio6 */
+	case 8: /* vccio7 */
+		b = supply->idx - 1;
+		val0 = BIT(16 + b) | (is_3v3 ? 0 : BIT(b));
+		val1 = BIT(16 + b) | (is_3v3 ? BIT(b) : 0);
+
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL0, val0);
+		regmap_write(iod->grf, RK3568_PMU_GRF_IO_VSEL1, val1);
+		break;
+	default:
+		return -EINVAL;
+	};
+
+	return 0;
+}
+
 static int rockchip_iodomain_write(struct rockchip_iodomain_supply *supply,
 				   int uV)
 {
@@ -136,7 +183,7 @@ static int rockchip_iodomain_notify(struct notifier_block *nb,
 			return NOTIFY_BAD;
 	}
 
-	ret = rockchip_iodomain_write(supply, uV);
+	ret = supply->iod->write(supply, uV);
 	if (ret && event == REGULATOR_EVENT_PRE_VOLTAGE_CHANGE)
 		return NOTIFY_BAD;
 
@@ -398,6 +445,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rk3399_pmu = {
 	.init = rk3399_pmu_iodomain_init,
 };
 
+static const struct rockchip_iodomain_soc_data soc_data_rk3568_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		"pmuio1",
+		"pmuio2",
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+	},
+	.write = rk3568_iodomain_write,
+};
+
 static const struct rockchip_iodomain_soc_data soc_data_rv1108 = {
 	.grf_offset = 0x404,
 	.supply_names = {
@@ -469,6 +532,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 		.compatible = "rockchip,rk3399-pmu-io-voltage-domain",
 		.data = &soc_data_rk3399_pmu
 	},
+	{
+		.compatible = "rockchip,rk3568-pmu-io-voltage-domain",
+		.data = &soc_data_rk3568_pmu
+	},
 	{
 		.compatible = "rockchip,rv1108-io-voltage-domain",
 		.data = &soc_data_rv1108
@@ -502,6 +569,11 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
 	match = of_match_node(rockchip_iodomain_match, np);
 	iod->soc_data = match->data;
 
+	if (iod->soc_data->write)
+		iod->write = iod->soc_data->write;
+	else
+		iod->write = rockchip_iodomain_write;
+
 	parent = pdev->dev.parent;
 	if (parent && parent->of_node) {
 		iod->grf = syscon_node_to_regmap(parent->of_node);
@@ -562,7 +634,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
 		supply->reg = reg;
 		supply->nb.notifier_call = rockchip_iodomain_notify;
 
-		ret = rockchip_iodomain_write(supply, uV);
+		ret = iod->write(supply, uV);
 		if (ret) {
 			supply->reg = NULL;
 			goto unreg_notify;
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
