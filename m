From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 2/4] mfd: rk808: Always register syscore ops
Date: Tue, 10 Dec 2019 13:24:31 +0000
Message-ID: <b59f9861afd658008fbc4f58b75a995bfe00d6ae.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, smoch@web.de, linux.amoon@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Registering the syscore shutdown notifier even when it's a
no-op for the given RK8xx variant should be harmless, and
saves a lot of bother in handling unregistering on probe
failure or module removal, which has been woefully lacking.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index f2f2f98552a0..387105830736 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -623,7 +623,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -667,6 +666,7 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	rk808_i2c_client = client;
+	register_syscore_ops(&rk808_syscore_ops);
 
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
@@ -684,6 +684,7 @@ static int rk808_probe(struct i2c_client *client,
 	return 0;
 
 err_irq:
+	unregister_syscore_ops(&rk808_syscore_ops);
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 	return ret;
 }
@@ -694,6 +695,8 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
+	unregister_syscore_ops(&rk808_syscore_ops);
+
 	/**
 	 * pm_power_off may points to a function from another module.
 	 * Check if the pointer is set by us and only then overwrite it.
-- 
2.17.1
