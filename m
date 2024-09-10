Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 947CFEDE9AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kRROU9iEa5pJU4CMtyP9U6z9NePdZnZgSzFPhN4fpk=; b=SyGOrEB5KlazW2
	Zvz0ouZluhVUxgxfEdGjj2XRajAormf+dhUAJOFc9i72kHU8ldLCloE0RP/teQe/hRirnePRDUTmS
	mJgvCon8q4B315FjY1gQ/1bsEXii7s4Ld83EAtB9USou0v2sHXKgOrtQJZNipnyTgjqcF02TP0o9T
	fzqepFaVu0qMF61QDHyb9HKH8vEyR7HjBsQka3h8LtYYX2103wZGXckzIsViXJTN2vLgK597vgHyU
	oQUbCAYRqdMDIj/gbLiIjrh6lP4SC8rMvokhLBOqsLxFMZlLWGz4Y9DanoB/XiIFrzoFWSKkrXzqF
	qoYXqHL+aWhmUXNkIcfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5FH-00000006hAn-0557;
	Tue, 10 Sep 2024 18:05:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5FB-00000006h7d-1j5E
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725991532;
	bh=TfEQ0e/TZzz/N5j2kw3vCDQnPXPvuDJwAkPceMp2rKY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M8XpCSe1QYXBmMA+yRiI0tCENnO5kMj9oO+2oSh70RevifXgsqdu/L57bUZt44VNe
	 /eDJ4Vvf8Qoel4QfS5jStA6STSTu98WRjOatvaLp9Su50yrKFlsJLgZrT4EoYrIWK4
	 y96/xgB/lXz4fzhE9XAVfwQ95EPEq8mQ3UPB+rDcctN2QiTS5e0B0V0HQEroroCNoc
	 6OlyBb+7dOqH/2EPbM7uzLebC3FbdmF283KnxFnEefFbftPR/M7R/CQ2AsPEOjbk4x
	 Pup7Sc4WprQ8DvyMcp55a7Nw+Oto4cPW2cYpiKgC5IkJmG3g+aMogxD5RBZpSoH3L6
	 ydeoSozA5TvNA==
Received: from jupiter.universe (dyndsl-091-248-215-127.ewe-ip-backbone.de [91.248.215.127])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 15A1317E3600;
	Tue, 10 Sep 2024 20:05:32 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 939474800FF; Tue, 10 Sep 2024 20:05:31 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 5/6] pmdomain: rockchip: add regulator support
Date: Tue, 10 Sep 2024 19:57:14 +0200
Message-ID: <20240910180530.47194-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240910180530.47194-1-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_110537_651894_756959E4 
X-CRM114-Status: GOOD (  19.67  )
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

Some power domains require extra voltages to be applied. For example
trying to enable the GPU domain on RK3588 fails when the SoC does not
have VDD GPU enabled.

The solution to temporarily change the device's device tree node has
been taken over from the Mediatek power domain driver.

The regulator is not acquired at probe time, since that creates circular
dependencies. The power domain driver must be probed early, since SoC
peripherals need it. Regulators on the other hand depend on SoC
peripherals like SPI, I2C or GPIO.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 57 +++++++++++++++++++++++++-
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 663d390faaeb..ae6990897928 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -18,6 +18,7 @@
 #include <linux/of_clk.h>
 #include <linux/clk.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 #include <linux/mfd/syscon.h>
 #include <soc/rockchip/pm_domains.h>
 #include <dt-bindings/power/px30-power.h>
@@ -89,6 +90,8 @@ struct rockchip_pm_domain {
 	u32 *qos_save_regs[MAX_QOS_REGS_NUM];
 	int num_clks;
 	struct clk_bulk_data *clks;
+	struct device_node *node;
+	struct regulator *supply;
 };
 
 struct rockchip_pmu {
@@ -571,18 +574,67 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 	return 0;
 }
 
+static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
+{
+	return pd->supply ? regulator_disable(pd->supply) : 0;
+}
+
+
+static int rockchip_pd_regulator_enable(struct rockchip_pm_domain *pd)
+{
+	struct rockchip_pmu *pmu = pd->pmu;
+	struct device_node *main_node;
+
+	if (!pd->supply) {
+		/*
+		 * Find regulator in current power domain node.
+		 * devm_regulator_get() finds regulator in a node and its child
+		 * node, so set of_node to current power domain node then change
+		 * back to original node after regulator is found for current
+		 * power domain node.
+		 */
+		main_node = pmu->dev->of_node;
+		pmu->dev->of_node = pd->node;
+		pd->supply = devm_regulator_get(pmu->dev, "domain");
+		pmu->dev->of_node = main_node;
+		if (IS_ERR(pd->supply)) {
+			pd->supply = NULL;
+			return 0;
+		}
+	}
+
+	return regulator_enable(pd->supply);
+}
+
 static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
+	int ret;
+
+	ret = rockchip_pd_regulator_enable(pd);
+	if (ret) {
+		dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
+		return ret;
+	}
 
-	return rockchip_pd_power(pd, true);
+	ret = rockchip_pd_power(pd, true);
+	if (ret)
+		rockchip_pd_regulator_disable(pd);
+
+	return ret;
 }
 
 static int rockchip_pd_power_off(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
+	int ret;
 
-	return rockchip_pd_power(pd, false);
+	ret = rockchip_pd_power(pd, false);
+	if (ret)
+		return ret;
+
+	rockchip_pd_regulator_disable(pd);
+	return ret;
 }
 
 static int rockchip_pd_attach_dev(struct generic_pm_domain *genpd,
@@ -663,6 +715,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 
 	pd->info = pd_info;
 	pd->pmu = pmu;
+	pd->node = node;
 
 	pd->num_clks = of_clk_get_parent_count(node);
 	if (pd->num_clks > 0) {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
