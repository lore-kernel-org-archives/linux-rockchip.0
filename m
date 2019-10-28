From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 25/25] PCI: Make devm_of_pci_get_host_bridge_resources()
 static
Date: Mon, 28 Oct 2019 11:32:56 -0500
Message-ID: <20191028163256.8004-26-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence>
List-Id: linux-rockchip.vger.kernel.org

Now that all the PCI host drivers are using pci_parse_request_of_pci_ranges(),
make devm_of_pci_get_host_bridge_resources() static.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/of.c  |  5 +----
 drivers/pci/pci.h | 17 -----------------
 2 files changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 0b1e4623dfcf..00e4b9fcb41d 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -236,7 +236,6 @@ void of_pci_check_probe_only(void)
 }
 EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
 
-#if defined(CONFIG_OF_ADDRESS)
 /**
  * devm_of_pci_get_host_bridge_resources() - Resource-managed parsing of PCI
  *                                           host bridge resources from DT
@@ -255,7 +254,7 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
  * It returns zero if the range parsing has been successful or a standard error
  * value if it failed.
  */
-int devm_of_pci_get_host_bridge_resources(struct device *dev,
+static int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
 			struct list_head *resources,
 			struct list_head *ib_resources,
@@ -384,8 +383,6 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
 	pci_free_resource_list(resources);
 	return err;
 }
-EXPORT_SYMBOL_GPL(devm_of_pci_get_host_bridge_resources);
-#endif /* CONFIG_OF_ADDRESS */
 
 #if IS_ENABLED(CONFIG_OF_IRQ)
 /**
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 6692c4fe4290..118a4974537b 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -630,23 +630,6 @@ static inline void pci_set_bus_of_node(struct pci_bus *bus) { }
 static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
 #endif /* CONFIG_OF */
 
-#if defined(CONFIG_OF_ADDRESS)
-int devm_of_pci_get_host_bridge_resources(struct device *dev,
-			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources,
-			struct list_head *ib_resources,
-			resource_size_t *io_base);
-#else
-static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
-			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources,
-			struct list_head *ib_resources,
-			resource_size_t *io_base)
-{
-	return -EINVAL;
-}
-#endif
-
 #ifdef CONFIG_PCIEAER
 void pci_no_aer(void);
 void pci_aer_init(struct pci_dev *dev);
-- 
2.20.1
