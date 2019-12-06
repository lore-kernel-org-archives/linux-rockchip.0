From: Anand Moon <linux.amoon@gmail.com>
Subject: [RFCv1 6/8] mfd: rk808: use common syscore for all PMCI for clean shutdown
Date: Fri,  6 Dec 2019 18:45:34 +0000
Message-ID: <20191206184536.2507-7-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Move the register_syscore_ops to common location for all PMIC.
Add missing unregister_syscore_ops in rk808_remove function.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 9a7be379946a..54f3999e4948 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -590,7 +590,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -644,6 +643,8 @@ static int rk808_probe(struct i2c_client *client,
 	if (!rk808_i2c_client)
 		rk808_i2c_client = client;
 
+	register_syscore_ops(&rk808_syscore_ops);
+
 	return 0;
 
 err_irq:
@@ -657,6 +658,8 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
+	unregister_syscore_ops(&rk808_syscore_ops);
+
 	return 0;
 }
 
-- 
2.24.0
