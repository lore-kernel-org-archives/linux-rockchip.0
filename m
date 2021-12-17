Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A160C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 13:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1E+KnKhPbGphATQ3Fp01VTUvq9ZuBRl8iGzQpf9Sak=; b=OelpMfRnyHZbOt
	mJuoUn/9W1gYebqWzFPdCL4ZAtFRbIW7Lt8c2kX1upW2txktmbx8qsrCoVIAuKyxZ6Koq7MPQ7uSd
	YPUS210eCr9Q1ssnK0Ba+XZBGqZReKdGPZPkNIQSBU9cH+V3brTmX1M3Yp8OoTkRmi2e+yP3JD2NQ
	wbbunimS+hI0fLZ/ESlOHTyl7c9ZXwvsL7E8HGatZ0IPM6opY7ZOYWjEMh1awXJQtvLlKt04mjzPy
	z6kgNCAfc8ncekBi0uWxabQBDYpoJDao48Vmd+OIDdXD/O55EdAOe4b/L7Tk8Y5g28HoCNmW/OjX/
	OhAuz0VpULkNbDX/oKKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCzy-00AJ97-En; Fri, 17 Dec 2021 13:10:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCzO-00AIoh-NK
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 13:09:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzF-0004Up-9K; Fri, 17 Dec 2021 14:09:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzD-00Cjq0-Vg; Fri, 17 Dec 2021 14:09:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/4] soc: rockchip: power-domain: register device for each
 domain
Date: Fri, 17 Dec 2021 14:09:16 +0100
Message-Id: <20211217130919.3035788-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217130919.3035788-1-s.hauer@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050935_131768_DECDCC01 
X-CRM114-Status: GOOD (  31.08  )
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

This patch prepares the rockchip power domain driver for regulator
support. When a switchable regulator supplies a power domain the logical
place to put the regulator is into the device node of that domain. In
Linux we can get a regulator from a device node only when a device is
attached to it. With this patch we register a device for each domain.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/rockchip/pm_domains.c | 275 ++++++++++++++----------------
 1 file changed, 127 insertions(+), 148 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 0868b7d406fba..d2f71437c73a9 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -29,6 +29,8 @@
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/power/rk3568-power.h>
 
+struct rockchip_pmu;
+
 struct rockchip_domain_info {
 	const char *name;
 	int pwr_mask;
@@ -39,6 +41,10 @@ struct rockchip_domain_info {
 	bool active_wakeup;
 	int pwr_w_mask;
 	int req_w_mask;
+
+	struct rockchip_pmu *pmu;
+	struct generic_pm_domain *parent_domain;
+	int id;
 };
 
 struct rockchip_pmu_info {
@@ -81,6 +87,7 @@ struct rockchip_pmu {
 	struct regmap *regmap;
 	const struct rockchip_pmu_info *info;
 	struct mutex mutex; /* mutex lock for pmu */
+	atomic_t missing;
 	struct genpd_onecell_data genpd_data;
 	struct generic_pm_domain *domains[];
 };
@@ -387,12 +394,11 @@ static void rockchip_pd_detach_dev(struct generic_pm_domain *genpd,
 }
 
 static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
-				      struct device_node *node)
+				      struct device_node *node,
+				      struct generic_pm_domain *parent_domain)
 {
-	const struct rockchip_domain_info *pd_info;
-	struct rockchip_pm_domain *pd;
-	struct device_node *qos_node;
-	int i, j;
+	struct platform_device *pd_pdev;
+	struct rockchip_domain_info *domain_info;
 	u32 id;
 	int error;
 
@@ -410,28 +416,98 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		return -EINVAL;
 	}
 
-	pd_info = &pmu->info->domain_info[id];
-	if (!pd_info) {
-		dev_err(pmu->dev, "%pOFn: undefined domain id %d\n",
-			node, id);
-		return -EINVAL;
+	pd_pdev = platform_device_alloc("rk-power-domain", id);
+	if (!pd_pdev) {
+		dev_err(pmu->dev, "Failed to allocate platform device\n");
+		return -ENOMEM;
 	}
 
-	pd = devm_kzalloc(pmu->dev, sizeof(*pd), GFP_KERNEL);
+	error = platform_device_add_data(pd_pdev,
+				         &pmu->info->domain_info[id],
+				         sizeof(pmu->info->domain_info[id]));
+	if (error)
+		goto err_put;
+
+	domain_info = pd_pdev->dev.platform_data;
+	domain_info->parent_domain = parent_domain;
+	domain_info->pmu = pmu;
+	domain_info->id = id;
+
+	pd_pdev->dev.parent = pmu->dev;
+	pd_pdev->dev.of_node = node;
+
+	atomic_inc(&pmu->missing);
+
+	error = platform_device_add(pd_pdev);
+	if (error)
+		goto err_put;
+
+	return 0;
+
+err_put:
+	platform_device_put(pd_pdev);
+
+	return error;
+}
+
+static void rockchip_pm_add_domains(struct rockchip_pmu *pmu,
+				    struct device_node *parent,
+				    struct generic_pm_domain *parent_domain)
+{
+	struct device_node *np;
+	int error;
+
+	/*
+	 * We may only register the genpd provider when we have registered all
+	 * domains that are specified in the device tree. We count the missing
+	 * domains in rockchip_pmu::missing.
+	 * The rockchip pm_domains may have subdomains which means we can be
+	 * called here recursively. Give it one extra count here to prevent
+	 * the counter dropping to zero when we are called recursively.
+	 */
+	atomic_inc(&pmu->missing);
+
+	for_each_child_of_node(parent, np) {
+		error = rockchip_pm_add_one_domain(pmu, np, parent_domain);
+		if (error)
+			dev_err(pmu->dev, "failed to handle node %pOFn: %d\n",
+				np, error);
+	}
+
+	if (!atomic_dec_and_test(&pmu->missing))
+		return;
+
+	error = of_genpd_add_provider_onecell(pmu->dev->of_node, &pmu->genpd_data);
+	if (error)
+		dev_err(pmu->dev, "failed to add provider: %d\n", error);
+}
+
+static int rockchip_domain_probe(struct platform_device *pdev)
+{
+	struct rockchip_domain_info *pd_info = pdev->dev.platform_data;
+	struct rockchip_pm_domain *pd;
+	struct device_node *node = pdev->dev.of_node;
+	struct device_node *qos_node;
+	struct rockchip_pmu *pmu = pd_info->pmu;
+	struct generic_pm_domain *parent_domain;
+	int i, j;
+	int error;
+
+	pd = devm_kzalloc(&pdev->dev, sizeof(*pd), GFP_KERNEL);
 	if (!pd)
 		return -ENOMEM;
 
 	pd->info = pd_info;
-	pd->pmu = pmu;
+	pd->pmu = pd_info->pmu;
 
 	pd->num_clks = of_clk_get_parent_count(node);
 	if (pd->num_clks > 0) {
-		pd->clks = devm_kcalloc(pmu->dev, pd->num_clks,
+		pd->clks = devm_kcalloc(&pdev->dev, pd->num_clks,
 					sizeof(*pd->clks), GFP_KERNEL);
 		if (!pd->clks)
 			return -ENOMEM;
 	} else {
-		dev_dbg(pmu->dev, "%pOFn: doesn't have clocks: %d\n",
+		dev_dbg(&pdev->dev, "%pOFn: doesn't have clocks: %d\n",
 			node, pd->num_clks);
 		pd->num_clks = 0;
 	}
@@ -440,7 +516,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		pd->clks[i].clk = of_clk_get(node, i);
 		if (IS_ERR(pd->clks[i].clk)) {
 			error = PTR_ERR(pd->clks[i].clk);
-			dev_err(pmu->dev,
+			dev_err(&pdev->dev,
 				"%pOFn: failed to get clk at index %d: %d\n",
 				node, i, error);
 			return error;
@@ -455,7 +531,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 						 NULL);
 
 	if (pd->num_qos > 0) {
-		pd->qos_regmap = devm_kcalloc(pmu->dev, pd->num_qos,
+		pd->qos_regmap = devm_kcalloc(&pdev->dev, pd->num_qos,
 					      sizeof(*pd->qos_regmap),
 					      GFP_KERNEL);
 		if (!pd->qos_regmap) {
@@ -464,7 +540,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		}
 
 		for (j = 0; j < MAX_QOS_REGS_NUM; j++) {
-			pd->qos_save_regs[j] = devm_kcalloc(pmu->dev,
+			pd->qos_save_regs[j] = devm_kcalloc(&pdev->dev,
 							    pd->num_qos,
 							    sizeof(u32),
 							    GFP_KERNEL);
@@ -490,7 +566,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		}
 	}
 
-	error = rockchip_pd_power(pd, true);
+	error = rockchip_pd_power_on(&pd->genpd);
 	if (error) {
 		dev_err(pmu->dev,
 			"failed to power on domain '%pOFn': %d\n",
@@ -507,13 +583,33 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 	pd->genpd.attach_dev = rockchip_pd_attach_dev;
 	pd->genpd.detach_dev = rockchip_pd_detach_dev;
 	pd->genpd.flags = GENPD_FLAG_PM_CLK;
-	if (pd_info->active_wakeup)
+	if (pd->info->active_wakeup)
 		pd->genpd.flags |= GENPD_FLAG_ACTIVE_WAKEUP;
 	pm_genpd_init(&pd->genpd, NULL, false);
 
-	pmu->genpd_data.domains[id] = &pd->genpd;
+	parent_domain = pd_info->parent_domain;
+	if (parent_domain) {
+		error = pm_genpd_add_subdomain(parent_domain, &pd->genpd);
+		if (error) {
+			dev_err(pmu->dev, "%s failed to add subdomain %s: %d\n",
+				parent_domain->name, pd->genpd.name, error);
+			goto out_genpd_remove;
+		} else {
+			dev_dbg(pmu->dev, "%s add subdomain: %s\n",
+				parent_domain->name, pd->genpd.name);
+		}
+	}
+
+	pmu->genpd_data.domains[pd->info->id] = &pd->genpd;
+
+	atomic_dec(&pmu->missing);
+
+	rockchip_pm_add_domains(pmu, node, &pd->genpd);
+
 	return 0;
 
+out_genpd_remove:
+	pm_genpd_remove(&pd->genpd);
 err_unprepare_clocks:
 	clk_bulk_unprepare(pd->num_clks, pd->clks);
 err_put_clocks:
@@ -521,46 +617,19 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 	return error;
 }
 
-static void rockchip_pm_remove_one_domain(struct rockchip_pm_domain *pd)
+static int rockchip_domain_remove(struct platform_device *pdev)
 {
-	int ret;
-
-	/*
-	 * We're in the error cleanup already, so we only complain,
-	 * but won't emit another error on top of the original one.
-	 */
-	ret = pm_genpd_remove(&pd->genpd);
-	if (ret < 0)
-		dev_err(pd->pmu->dev, "failed to remove domain '%s' : %d - state may be inconsistent\n",
-			pd->genpd.name, ret);
-
-	clk_bulk_unprepare(pd->num_clks, pd->clks);
-	clk_bulk_put(pd->num_clks, pd->clks);
-
-	/* protect the zeroing of pm->num_clks */
-	mutex_lock(&pd->pmu->mutex);
-	pd->num_clks = 0;
-	mutex_unlock(&pd->pmu->mutex);
-
-	/* devm will free our memory */
+	return 0;
 }
 
-static void rockchip_pm_domain_cleanup(struct rockchip_pmu *pmu)
-{
-	struct generic_pm_domain *genpd;
-	struct rockchip_pm_domain *pd;
-	int i;
-
-	for (i = 0; i < pmu->genpd_data.num_domains; i++) {
-		genpd = pmu->genpd_data.domains[i];
-		if (genpd) {
-			pd = to_rockchip_pd(genpd);
-			rockchip_pm_remove_one_domain(pd);
-		}
-	}
-
-	/* devm will free our memory */
-}
+static struct platform_driver rockchip_domain_driver = {
+	.driver = {
+		.name = "rk-power-domain",
+	},
+	.probe    = rockchip_domain_probe,
+	.remove   = rockchip_domain_remove,
+};
+builtin_platform_driver(rockchip_domain_driver)
 
 static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 				      u32 domain_reg_offset,
@@ -572,71 +641,14 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 	regmap_write(pmu->regmap, domain_reg_offset + 4, count);
 }
 
-static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
-				     struct device_node *parent)
-{
-	struct device_node *np;
-	struct generic_pm_domain *child_domain, *parent_domain;
-	int error;
-
-	for_each_child_of_node(parent, np) {
-		u32 idx;
-
-		error = of_property_read_u32(parent, "reg", &idx);
-		if (error) {
-			dev_err(pmu->dev,
-				"%pOFn: failed to retrieve domain id (reg): %d\n",
-				parent, error);
-			goto err_out;
-		}
-		parent_domain = pmu->genpd_data.domains[idx];
-
-		error = rockchip_pm_add_one_domain(pmu, np);
-		if (error) {
-			dev_err(pmu->dev, "failed to handle node %pOFn: %d\n",
-				np, error);
-			goto err_out;
-		}
-
-		error = of_property_read_u32(np, "reg", &idx);
-		if (error) {
-			dev_err(pmu->dev,
-				"%pOFn: failed to retrieve domain id (reg): %d\n",
-				np, error);
-			goto err_out;
-		}
-		child_domain = pmu->genpd_data.domains[idx];
-
-		error = pm_genpd_add_subdomain(parent_domain, child_domain);
-		if (error) {
-			dev_err(pmu->dev, "%s failed to add subdomain %s: %d\n",
-				parent_domain->name, child_domain->name, error);
-			goto err_out;
-		} else {
-			dev_dbg(pmu->dev, "%s add subdomain: %s\n",
-				parent_domain->name, child_domain->name);
-		}
-
-		rockchip_pm_add_subdomain(pmu, np);
-	}
-
-	return 0;
-
-err_out:
-	of_node_put(np);
-	return error;
-}
-
 static int rockchip_pm_domain_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *node;
 	struct device *parent;
 	struct rockchip_pmu *pmu;
 	const struct of_device_id *match;
 	const struct rockchip_pmu_info *pmu_info;
-	int error;
 
 	if (!np) {
 		dev_err(dev, "device tree node not found\n");
@@ -688,42 +700,9 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 		rockchip_configure_pd_cnt(pmu, pmu_info->gpu_pwrcnt_offset,
 					pmu_info->gpu_power_transition_time);
 
-	error = -ENODEV;
-
-	for_each_available_child_of_node(np, node) {
-		error = rockchip_pm_add_one_domain(pmu, node);
-		if (error) {
-			dev_err(dev, "failed to handle node %pOFn: %d\n",
-				node, error);
-			of_node_put(node);
-			goto err_out;
-		}
-
-		error = rockchip_pm_add_subdomain(pmu, node);
-		if (error < 0) {
-			dev_err(dev, "failed to handle subdomain node %pOFn: %d\n",
-				node, error);
-			of_node_put(node);
-			goto err_out;
-		}
-	}
-
-	if (error) {
-		dev_dbg(dev, "no power domains defined\n");
-		goto err_out;
-	}
-
-	error = of_genpd_add_provider_onecell(np, &pmu->genpd_data);
-	if (error) {
-		dev_err(dev, "failed to add provider: %d\n", error);
-		goto err_out;
-	}
+	rockchip_pm_add_domains(pmu, np, NULL);
 
 	return 0;
-
-err_out:
-	rockchip_pm_domain_cleanup(pmu);
-	return error;
 }
 
 static const struct rockchip_domain_info px30_pm_domains[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
