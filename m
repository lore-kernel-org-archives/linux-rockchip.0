From: Randy Li <ayaka@soulik.info>
Subject: [PATCH 3/3] soc: rockchip: power-domain: export idle request
Date: Sun,  6 Jan 2019 01:48:37 +0800
Message-ID: <20190105174837.19378-4-ayaka@soulik.info>
References: <20190105174837.19378-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190105174837.19378-1-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Randy Li <ayaka@soulik.info>, mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, zhangqing@rock-chips.com, geert+renesas@glider.be, Caesar Wang <wxt@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

We need to put the power status of HEVC IP into IDLE unless
we can't reset that IP or the SoC would crash down.
rockchip_pmu_idle_request(dev, true)---> enter idle
rockchip_pmu_idle_request(dev, false)---> exit idle

Signed-off-by: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Signed-off-by: Randy Li <ayaka@soulik.info>
---
 drivers/soc/rockchip/pm_domains.c | 23 +++++++++++++++++++++++
 include/soc/rockchip/pm_domains.h | 18 ++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 include/soc/rockchip/pm_domains.h

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 847c7c482b26..3e2e252cb64b 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -199,6 +199,29 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 	return 0;
 }
 
+int rockchip_pmu_idle_request(struct device *dev, bool idle)
+{
+	struct generic_pm_domain *genpd;
+	struct rockchip_pm_domain *pd;
+	int ret;
+
+	if (IS_ERR_OR_NULL(dev))
+		return -EINVAL;
+
+	if (IS_ERR_OR_NULL(dev->pm_domain))
+		return -EINVAL;
+
+	genpd = pd_to_genpd(dev->pm_domain);
+	pd = to_rockchip_pd(genpd);
+
+	mutex_lock(&pd->pmu->mutex);
+	ret = rockchip_pmu_set_idle_request(pd, idle);
+	mutex_unlock(&pd->pmu->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL(rockchip_pmu_idle_request);
+
 static int rockchip_pmu_save_qos(struct rockchip_pm_domain *pd)
 {
 	int i;
diff --git a/include/soc/rockchip/pm_domains.h b/include/soc/rockchip/pm_domains.h
new file mode 100644
index 000000000000..690db6118636
--- /dev/null
+++ b/include/soc/rockchip/pm_domains.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __SOC_ROCKCHIP_PM_DOMAINS_H
+#define __SOC_ROCKCHIP_PM_DOMAINS_H
+
+#include <linux/errno.h>
+
+struct device;
+
+#ifdef CONFIG_ROCKCHIP_PM_DOMAINS
+int rockchip_pmu_idle_request(struct device *dev, bool idle);
+#else
+static inline int rockchip_pmu_idle_request(struct device *dev, bool idle)
+{
+	return -ENOTSUPP;
+}
+#endif
+
+#endif
-- 
2.20.1
