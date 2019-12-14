From: Yangtao Li <tiny.windzz@gmail.com>
Subject: [PATCH 2/2] PM / devfreq: rk3399_dmc: add missing of_node_put()
Date: Sat, 14 Dec 2019 18:11:30 +0000
Message-ID: <20191214181130.25808-2-tiny.windzz@gmail.com>
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191214181130.25808-1-tiny.windzz@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: cw00.choi@samsung.com, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, heiko@sntech.de
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

of_node_put() needs to be called when the device node which is got
from of_parse_phandle has finished using.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/devfreq/rk3399_dmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 2e65d7279d79..2f1027c5b647 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -372,6 +372,7 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (node) {
 		data->regmap_pmu = syscon_node_to_regmap(node);
+		of_node_put(node);
 		if (IS_ERR(data->regmap_pmu))
 			return PTR_ERR(data->regmap_pmu);
 	}
-- 
2.17.1
