From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 3/6] rockchip: power-domain: add support for sub-power
 domains
Date: Thu, 18 Feb 2016 11:07:15 +0800
Message-ID: <1455764838-12928-4-git-send-email-zhangqing@rock-chips.com>
References: <1455764838-12928-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1455764838-12928-1-git-send-email-zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds support for making one power domain a sub-domain of
other domain. This is useful for modeling power dependences,
which needs to have more than one power domain enabled to be operational.

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/soc/rockchip/pm_domains.c | 54 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 350527b..8cdf1b2 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -372,6 +372,54 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 	regmap_write(pmu->regmap, domain_reg_offset + 4, count);
 }
 
+static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
+				     struct device_node *parent)
+{
+	struct device_node *np;
+	int error;
+
+	for_each_child_of_node(parent, np) {
+		struct generic_pm_domain *child_domain, *parent_domain;
+		u32 idx = ~0;
+
+		if (of_property_read_u32(parent, "reg", &idx)) {
+			dev_err(pmu->dev,
+				"%s: failed to retrieve domain id (reg)\n",
+				parent->name);
+			of_node_put(parent);
+			return -EINVAL;
+		}
+		parent_domain = pmu->genpd_data.domains[idx];
+
+		error = rockchip_pm_add_one_domain(pmu, np);
+		if (error) {
+			dev_err(pmu->dev, "failed to handle node %s: %d\n",
+				np->name, error);
+			of_node_put(np);
+			return -ENODEV;
+		}
+
+		if (of_property_read_u32(np, "reg", &idx)) {
+			dev_err(pmu->dev,
+				"%s: failed to retrieve domain id (reg)\n",
+				np->name);
+			of_node_put(np);
+			return -EINVAL;
+		}
+		child_domain = pmu->genpd_data.domains[idx];
+
+		if (pm_genpd_add_subdomain(parent_domain, child_domain))
+			pr_warn("%s failed to add subdomain: %s\n",
+				parent_domain->name, child_domain->name);
+		else
+			pr_warn("%s add subdomain: %s\n",
+				parent_domain->name, child_domain->name);
+
+		rockchip_pm_add_subdomain(pmu, np);
+	}
+	return 0;
+}
+
 static int rockchip_pm_domain_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -437,6 +485,12 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 				node->name, error);
 			goto err_out;
 		}
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
