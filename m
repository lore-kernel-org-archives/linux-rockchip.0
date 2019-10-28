From: Rob Herring <robh@kernel.org>
Subject: [PATCH v3 02/25] PCI: Export pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:33 -0500
Message-ID: <20191028163256.8004-3-robh@kernel.org>
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

pci_parse_request_of_pci_ranges() is missing a module export, so add it.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/of.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index 36891e7deee3..f3da49a31db4 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -530,6 +530,7 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
 	pci_free_resource_list(resources);
 	return err;
 }
+EXPORT_SYMBOL_GPL(pci_parse_request_of_pci_ranges);
 
 #endif /* CONFIG_PCI */
 
-- 
2.20.1
