From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 2/4] power: pmic: rk8xx: bind rk808 RTC
Date: Fri, 10 Jul 2020 21:20:55 +0530
Message-ID: <20200710155057.310168-3-jagan@amarulasolutions.com>
References: <20200710155057.310168-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200710155057.310168-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

From: Suniel Mahesh <sunil@amarulasolutions.com>

RK808 PMIC is a multi functional device with an RTC. In order to access
RTC, bind to its parent device i.e. RK808 PMIC.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Change for v4:
- none

 drivers/power/pmic/rk8xx.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/power/pmic/rk8xx.c b/drivers/power/pmic/rk8xx.c
index 195884bde9..aea9272f8a 100644
--- a/drivers/power/pmic/rk8xx.c
+++ b/drivers/power/pmic/rk8xx.c
@@ -25,6 +25,11 @@ static const struct pmic_child_info pmic_children_info[] = {
 	{ },
 };
 
+static const struct pmic_child_info rtc_info[] = {
+	{ .prefix = "rk808-rtc", .driver = "rk808_rtc"},
+	{ },
+};
+
 static int rk8xx_reg_count(struct udevice *dev)
 {
 	return RK808_NUM_OF_REGS;
@@ -60,7 +65,7 @@ static int rk8xx_read(struct udevice *dev, uint reg, uint8_t *buff, int len)
 #if CONFIG_IS_ENABLED(PMIC_CHILDREN)
 static int rk8xx_bind(struct udevice *dev)
 {
-	ofnode regulators_node;
+	ofnode regulators_node, rtc_node;
 	int children;
 
 	regulators_node = dev_read_subnode(dev, "regulators");
@@ -76,6 +81,18 @@ static int rk8xx_bind(struct udevice *dev)
 	if (!children)
 		debug("%s: %s - no child found\n", __func__, dev->name);
 
+	rtc_node = dev_read_subnode(dev, "rtc");
+	if (!ofnode_valid(rtc_node)) {
+		debug("%s: %s rtc subnode not found!\n", __func__, dev->name);
+		return -ENXIO;
+	}
+
+	debug("%s: '%s' - found rtc subnode\n", __func__, dev->name);
+
+	children = pmic_bind_children(dev, rtc_node, rtc_info);
+	if (!children)
+		debug("%s: %s - no child found\n", __func__, dev->name);
+
 	/* Always return success for this device */
 	return 0;
 }
-- 
2.25.1
