From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 3/6] rockchip: power-domain: add support for sub-power
 domains
Date: Thu, 25 Feb 2016 10:12:14 +0800
Message-ID: <1456366337-10808-4-git-send-email-zhangqing@rock-chips.com>
References: <1456366337-10808-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1456366337-10808-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, khilman-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds support for making one power domain a sub-domain of
other domain. This is useful for modeling power dependences,
which needs to have more than one power domain enabled to be operational.

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/soc/rockchip/pm_domains.c | 63 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index d0990a3..264cbfe 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -370,6 +370,62 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 	regmap_write(pmu->regmap, domain_reg_offset + 4, count);
 }
 
+static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
+				     struct device_node *parent)
+{
+	struct device_node *np;
+	struct generic_pm_domain *child_domain, *parent_domain;
+	int error;
+
+	for_each_child_of_node(parent, np) {
+		u32 idx = ~0;
+
+		if (of_property_read_u32(parent, "reg", &idx)) {
+			dev_err(pmu->dev,
+				"%s: failed to retrieve domain id (reg)\n",
+				parent->name);
+			goto err_out;
+		}
+		parent_domain = pmu->genpd_data.domains[idx];
+
+		error = rockchip_pm_add_one_domain(pmu, np);
+		if (error) {
+			dev_err(pmu->dev, "failed to handle node %s: %d\n",
+				np->name, error);
+			goto err_out;
+		}
+
+		if (of_property_read_u32(np, "reg", &idx)) {
+			dev_err(pmu->dev,
+				"%s: failed to retrieve domain id (reg)\n",
+				np->name);
+			goto err_out;
+		}
+		child_domain = pmu->genpd_data.domains[idx];
+
+		if (pm_genpd_add_subdomain(parent_domain, child_domain)) {
+			dev_err(pmu->dev, "%s failed to add subdomain: %s\n",
+				parent_domain->name, child_domain->name);
+			goto err_out;
+		} else
+			dev_info(pmu->dev, "%s add subdomain: %s\n",
+				parent_domain->name, child_domain->name);
+
+		error = rockchip_pm_add_subdomain(pmu, np);
+		if (error < 0)
+			goto rm_sub_domain;
+	}
+	return 0;
+
+err_out:
+	of_node_put(parent);
+	of_node_put(np);
+	return -EINVAL;
+rm_sub_domain:
+	pm_genpd_remove_subdomain(parent_domain, child_domain);
+	return error;
+}
+
 static int rockchip_pm_domain_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -440,6 +496,13 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 			of_node_put(node);
 			goto err_out;
 		}
+
+		error = rockchip_pm_add_subdomain(pmu, node);
+		if (error < 0) {
+			dev_err(dev, "failed to handle subdomain node %s: %d\n",
+				node->name, error);
+			goto err_out;
+		}
 	}
 
 	if (error) {
-- 
1.9.1
