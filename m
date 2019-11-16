From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Sat, 16 Nov 2019 12:54:20 +0000
Message-ID: <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: shawn.lin@rock-chips.com, lorenzo.pieralisi@arm.com, andrew.murray@arm.com
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Null checks are both cheaper and more readable than having !IS_ERR()
splattered everywhere.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 68525f8ac4d9..a61819efc0c1 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -262,7 +262,7 @@ static void rockchip_pcie_set_power_limit(struct rockchip_pcie *rockchip)
 	int curr;
 	u32 status, scale, power;
 
-	if (IS_ERR(rockchip->vpcie3v3))
+	if (!rockchip->vpcie3v3)
 		return;
 
 	/*
@@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
 			return PTR_ERR(rockchip->vpcie12v);
 		dev_info(dev, "no vpcie12v regulator found\n");
+		rockchip->vpcie12v = NULL;
 	}
 
 	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
@@ -618,6 +619,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
 			return PTR_ERR(rockchip->vpcie3v3);
 		dev_info(dev, "no vpcie3v3 regulator found\n");
+		rockchip->vpcie3v3 = NULL;
 	}
 
 	rockchip->vpcie1v8 = devm_regulator_get(dev, "vpcie1v8");
@@ -636,7 +638,7 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 
-	if (!IS_ERR(rockchip->vpcie12v)) {
+	if (rockchip->vpcie12v) {
 		err = regulator_enable(rockchip->vpcie12v);
 		if (err) {
 			dev_err(dev, "fail to enable vpcie12v regulator\n");
@@ -644,7 +646,7 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	if (!IS_ERR(rockchip->vpcie3v3)) {
+	if (rockchip->vpcie3v3) {
 		err = regulator_enable(rockchip->vpcie3v3);
 		if (err) {
 			dev_err(dev, "fail to enable vpcie3v3 regulator\n");
@@ -669,10 +671,10 @@ static int rockchip_pcie_set_vpcie(struct rockchip_pcie *rockchip)
 err_disable_1v8:
 	regulator_disable(rockchip->vpcie1v8);
 err_disable_3v3:
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 err_disable_12v:
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
 err_out:
 	return err;
@@ -1062,9 +1064,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 err_deinit_port:
 	rockchip_pcie_deinit_phys(rockchip);
 err_vpcie:
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 	regulator_disable(rockchip->vpcie1v8);
 	regulator_disable(rockchip->vpcie0v9);
@@ -1087,9 +1089,9 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 
 	rockchip_pcie_disable_clocks(rockchip);
 
-	if (!IS_ERR(rockchip->vpcie12v))
+	if (rockchip->vpcie12v)
 		regulator_disable(rockchip->vpcie12v);
-	if (!IS_ERR(rockchip->vpcie3v3))
+	if (rockchip->vpcie3v3)
 		regulator_disable(rockchip->vpcie3v3);
 	regulator_disable(rockchip->vpcie1v8);
 	regulator_disable(rockchip->vpcie0v9);
-- 
2.17.1
