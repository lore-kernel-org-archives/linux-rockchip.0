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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28026C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 07:29:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58ED461028
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 07:29:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58ED461028
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3niKx78k3JzCpvUpntmMpKwarwjv8gclw7CoWieJYnU=; b=s6g9BeOuT991aP
	1r7N1lCNvfYF3BAhveBon3QiCd8J2vdfuApsUxrcxCYh4VGBtE5+4ynRIW5mwPPQGVBz8yDRMR6g0
	Vrqr4J/g4HQ+1Lx/im+PDqNlejUEeD6ZVSovTmr0TrsbOQK1RTLFb6F5i2JHa8Juu6kOhZuRI43Su
	QKBpFCfDgLwLluTZbGpLGYUYx3WnNHjiHPq4Dlzkp79SYP2WvZIHMGsiFBUlHNRCcGdHyf2CNUIXR
	IraLvLlyBsaR77JYq6TSYHkf+QSsVW3B6gusnOcQR4Z5gRW0ctTymnfEyWSakRw+V2cU6X31e7DGK
	n1sZvPkdGiQvCC8e+Lcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmASP-003MoN-OU; Thu, 27 May 2021 07:29:29 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmASJ-003Mja-G7
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 07:29:25 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 32853AC981;
 Thu, 27 May 2021 15:29:21 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31748T140095032067840S1622100559925996_; 
 Thu, 27 May 2021 15:29:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <caf6f74c157f03762f4a204704629f11>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	lee.jones@linaro.org,
	ulf.hansson@linaro.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] soc: rockchip: io-domain: add rk3568 support
Date: Thu, 27 May 2021 15:29:17 +0800
Message-Id: <20210527072917.1425321-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_002923_899461_5B92A61B 
X-CRM114-Status: GOOD (  18.91  )
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
 drivers/soc/rockchip/io-domain.c | 75 +++++++++++++++++++++++++++++++-
 1 file changed, 73 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index cf8182fc3642..32b3bd645d56 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -51,6 +51,10 @@
 #define RK3399_PMUGRF_CON0_VSEL		BIT(8)
 #define RK3399_PMUGRF_VSEL_SUPPLY_NUM	9
 
+#define RK3568_PMU_GRF_IO_VSEL0		(0x0140)
+#define RK3568_PMU_GRF_IO_VSEL1		(0x0144)
+#define RK3568_PMU_GRF_IO_VSEL2		(0x0148)
+
 struct rockchip_iodomain;
 
 struct rockchip_iodomain_soc_data {
@@ -71,8 +75,51 @@ struct rockchip_iodomain {
 	struct regmap *grf;
 	const struct rockchip_iodomain_soc_data *soc_data;
 	struct rockchip_iodomain_supply supplies[MAX_SUPPLIES];
+	int (*write)(struct rockchip_iodomain_supply *supply, int uV);
 };
 
+static int rk3568_pmu_iodomain_write(struct rockchip_iodomain_supply *supply,
+				     int uV)
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
 
@@ -398,6 +445,21 @@ static const struct rockchip_iodomain_soc_data soc_data_rk3399_pmu = {
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
+};
+
 static const struct rockchip_iodomain_soc_data soc_data_rv1108 = {
 	.grf_offset = 0x404,
 	.supply_names = {
@@ -469,6 +531,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
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
@@ -502,6 +568,11 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
 	match = of_match_node(rockchip_iodomain_match, np);
 	iod->soc_data = match->data;
 
+	if (match->data == &soc_data_rk3568_pmu)
+		iod->write = rk3568_pmu_iodomain_write;
+	else
+		iod->write = rockchip_iodomain_write;
+
 	parent = pdev->dev.parent;
 	if (parent && parent->of_node) {
 		iod->grf = syscon_node_to_regmap(parent->of_node);
@@ -562,7 +633,7 @@ static int rockchip_iodomain_probe(struct platform_device *pdev)
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
