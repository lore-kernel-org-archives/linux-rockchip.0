From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 1/3] rkisp1: Get rid of unused variable warning
Date: Thu,  2 Apr 2020 16:45:02 -0300
Message-ID: <20200402194504.5331-2-ezequiel@collabora.com>
References: <20200402194504.5331-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200402194504.5331-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Helen Koike <helen.koike@collabora.com>, Robin Murphy <robin.murphy@arm.com>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

If CONFIG_OF is not selected, the compiler will complain:

drivers/staging/media/rkisp1/rkisp1-dev.c: In function ‘rkisp1_probe’:
drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: warning: unused variable ‘node’ [-Wunused-variable]
  457 |  struct device_node *node = pdev->dev.of_node;

Rework the code slightly and make the compiler happy.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b1b3c058e957..3f6285709352 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -454,16 +454,17 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
 	const struct rkisp1_match_data *clk_data;
-	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
 	struct rkisp1_device *rkisp1;
 	struct v4l2_device *v4l2_dev;
 	unsigned int i;
 	int ret, irq;
 
-	match = of_match_node(rkisp1_of_match, node);
+	clk_data = of_device_get_match_data(&pdev->dev);
+	if (!clk_data)
+		return -ENODEV;
+
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
 	if (!rkisp1)
 		return -ENOMEM;
@@ -487,7 +488,6 @@ static int rkisp1_probe(struct platform_device *pdev)
 	}
 
 	rkisp1->irq = irq;
-	clk_data = match->data;
 
 	for (i = 0; i < clk_data->size; i++)
 		rkisp1->clks[i].id = clk_data->clks[i];
-- 
2.26.0.rc2
