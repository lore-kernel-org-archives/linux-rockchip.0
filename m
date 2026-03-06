Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70795F01801
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9EPUnUMWJJJ0/L5o83H8+7D8k+oIh85nBeAttUZdn8=; b=S42/JdPqQxHWuT
	8np8GrcazCYAIcLNum4UNHyl9woOnl+f7H+Vlu498pdXjZ48Ri/ialpZ7Rg8i2zLfVl9NRucUufFZ
	OAsv4f1UN38pvglaw9kXff/8qopg8whRfvMse3Z/AxNeETHexmGxCIrGjUWb6Utf+VhFqLFfPRL2J
	ZBCcr1PBUMsWE9QPgx2Lq4W9lEU8sQ04lcamIAR6GGrVhOU8RkVWWBg7nE+e/EgmmxhPkEicxLAfs
	sceZwWWvhscuV45pMLU0Vd8BKEtp4WGNgw3cCkV0TbROohfJONmMiUJqEc2w6rx6UrOH81NdocfsJ
	pjsxTrU5fAd73zD9oxmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPo3-00000003ASI-2rR1;
	Fri, 06 Mar 2026 07:41:07 +0000
Received: from mail-m15579.qiye.163.com ([101.71.155.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyPnz-00000003AQS-3qMj
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 07:41:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35fcf41f3;
	Fri, 6 Mar 2026 15:40:57 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/3] pmdomain: rockchip: Add pm_shaping support
Date: Fri,  6 Mar 2026 15:40:31 +0800
Message-Id: <1772782832-216867-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772782832-216867-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cc217ab7f09cckunm7894a4e01405be4
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgZGFYfTxlKHU9MTk1DQ05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hPDrhj2kW51e/5PoNL1s4sOjXgys/bx1LXWmjgTa2cswiRdWrvT06OyHoHm4UgvmaIo6RYUVgxOJ3sf8Z3xs11vygCCc0uSpIXEJVlWqXEVrMoFg51k50QAln3d8JwOBHtLaOBpz7gE7VNfzokWNrTsNQXA9VkVNbZ5f/R0P0vw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HjuQ2QVWKDJpfXRvBsSPxPCbwHfU5/qVFwxvjt/vakg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_234104_225143_2CDA264D 
X-CRM114-Status: GOOD (  18.80  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

pm_shaping is introduced for some platforms to throttle the outstanding
burst requests of each IP to prevent bus monopolization. In general, they
should be set in firmware but given that powering off pm domain will lose
the configurations, so add it support in pmdomain code.

They are defined and used the same way of pm_qos in DT but service with
different purposes.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pmdomain/rockchip/pm-domains.c | 97 ++++++++++++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 490bbb1..56699aa 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -89,14 +89,18 @@ struct rockchip_pmu_info {
 #define QOS_BANDWIDTH		0x10
 #define QOS_SATURATION		0x14
 #define QOS_EXTCONTROL		0x18
+#define SHAPING_NBPKTMAX0	0x0
 
 struct rockchip_pm_domain {
 	struct generic_pm_domain genpd;
 	const struct rockchip_domain_info *info;
 	struct rockchip_pmu *pmu;
 	int num_qos;
+	int num_shaping;
 	struct regmap **qos_regmap;
+	struct regmap **shaping_regmap;
 	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
+	u32 *shaping_save_regs;
 	int num_clks;
 	struct clk_bulk_data *clks;
 	struct device_node *node;
@@ -488,6 +492,28 @@ static int rockchip_pmu_restore_qos(struct rockchip_pm_domain *pd)
 	return 0;
 }
 
+static int rockchip_pmu_save_shaping(struct rockchip_pm_domain *pd)
+{
+	int i;
+
+	for (i = 0; i < pd->num_shaping; i++)
+		regmap_read(pd->shaping_regmap[i], SHAPING_NBPKTMAX0,
+			    &pd->shaping_save_regs[i]);
+
+	return 0;
+}
+
+static int rockchip_pmu_restore_shaping(struct rockchip_pm_domain *pd)
+{
+	int i;
+
+	for (i = 0; i < pd->num_shaping; i++)
+		regmap_write(pd->shaping_regmap[i], SHAPING_NBPKTMAX0,
+			     pd->shaping_save_regs[i]);
+
+	return 0;
+}
+
 static bool rockchip_pmu_domain_is_on(struct rockchip_pm_domain *pd)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
@@ -650,6 +676,7 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 
 	if (!power_on) {
 		rockchip_pmu_save_qos(pd);
+		rockchip_pmu_save_shaping(pd);
 
 		/* if powering down, idle request to NIU first */
 		ret = rockchip_pmu_set_idle_request(pd, true);
@@ -668,6 +695,7 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 			goto out;
 
 		rockchip_pmu_restore_qos(pd);
+		rockchip_pmu_restore_shaping(pd);
 	}
 
 out:
@@ -767,6 +795,71 @@ static void rockchip_pd_detach_dev(struct generic_pm_domain *genpd,
 	pm_clk_destroy(dev);
 }
 
+static int rockchip_pd_of_get_shaping(struct rockchip_pm_domain *pd,
+				      struct device_node *node)
+{
+	struct rockchip_pmu *pmu = pd->pmu;
+	struct device_node *shaping_node;
+	int num_shaping = 0, num_shaping_reg = 0;
+	int error, i;
+
+	num_shaping = of_count_phandle_with_args(node, "pm_shaping", NULL);
+
+	/* Count the real available pm_shaping nodes */
+	for (i = 0; i < num_shaping; i++) {
+		shaping_node = of_parse_phandle(node, "pm_shaping", i);
+		if (shaping_node && of_device_is_available(shaping_node))
+			pd->num_shaping++;
+		of_node_put(shaping_node);
+	}
+
+	if (!pd->num_shaping)
+		return 0;
+
+	/* Allocate memory for them */
+	pd->shaping_regmap = devm_kcalloc(pmu->dev, pd->num_shaping,
+					  sizeof(*pd->shaping_regmap),
+					  GFP_KERNEL);
+	if (!pd->shaping_regmap)
+		return -ENOMEM;
+
+	pd->shaping_save_regs = devm_kmalloc(pmu->dev, sizeof(u32) *
+					     pd->num_shaping,
+					     GFP_KERNEL);
+	if (!pd->shaping_save_regs)
+		return -ENOMEM;
+
+	/* Record the real available pm_shaping nodes */
+	for (i = 0; i < num_shaping; i++) {
+		shaping_node = of_parse_phandle(node, "pm_shaping", i);
+		if (!shaping_node)
+			return -ENODEV;
+
+		if (of_device_is_available(shaping_node)) {
+			if (num_shaping_reg >= pd->num_shaping) {
+				error = -EINVAL;
+				goto err_put_node;
+			}
+
+			pd->shaping_regmap[num_shaping_reg] =
+				syscon_node_to_regmap(shaping_node);
+			if (IS_ERR(pd->shaping_regmap[num_shaping_reg])) {
+				error = -ENODEV;
+				goto err_put_node;
+			}
+
+			num_shaping_reg++;
+		}
+		of_node_put(shaping_node);
+	}
+
+	return 0;
+
+err_put_node:
+	of_node_put(shaping_node);
+	return error;
+}
+
 static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 				      struct device_node *node)
 {
@@ -874,6 +967,10 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		}
 	}
 
+	error = rockchip_pd_of_get_shaping(pd, node);
+	if (error)
+		dev_warn(pmu->dev, "%pOFn: failed to get shaping\n", node);
+
 	if (pd->info->name)
 		pd->genpd.name = pd->info->name;
 	else
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
