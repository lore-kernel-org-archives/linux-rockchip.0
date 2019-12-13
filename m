From: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Date: Fri, 13 Dec 2019 08:47:45 +0000
Message-ID: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191213084748.11210-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-pci@vger.kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Murray <andrew.murray@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>, Frank Rowand <frowand.list@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Simon Horman <horms@verge.net.au>, Shawn Lin <shawn.lin@rock-chips.com>, Tom Joseph <tjoseph@cadence.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, "Lad, Prabhakar" <prabhakar.mahade>
List-Id: linux-rockchip.vger.kernel.org

From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

this patch adds support to parse PCI outbound-ranges, the
outbound-regions are similar to pci ranges except it doesn't
have pci address, below is the format for bar-ranges:

outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
                   upper32_size lower32_size>;

Signed-off-by: Lad, Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/of/address.c       | 44 ++++++++++++++++++++++++++++++++++++++++----
 include/linux/of_address.h | 21 +++++++++++++++++++++
 2 files changed, 61 insertions(+), 4 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 978427a..ca4643c 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -233,9 +233,9 @@ int of_pci_address_to_resource(struct device_node *dev, int bar,
 EXPORT_SYMBOL_GPL(of_pci_address_to_resource);
 
 static int parser_init(struct of_pci_range_parser *parser,
-			struct device_node *node, const char *name)
+		       struct device_node *node, const char *name,
+		       const int na, const int ns)
 {
-	const int na = 3, ns = 2;
 	int rlen;
 
 	parser->node = node;
@@ -254,17 +254,30 @@ static int parser_init(struct of_pci_range_parser *parser,
 int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 				struct device_node *node)
 {
-	return parser_init(parser, node, "ranges");
+	const int na = 3, ns = 2;
+
+	return parser_init(parser, node, "ranges", na, ns);
 }
 EXPORT_SYMBOL_GPL(of_pci_range_parser_init);
 
 int of_pci_dma_range_parser_init(struct of_pci_range_parser *parser,
 				struct device_node *node)
 {
-	return parser_init(parser, node, "dma-ranges");
+	const int na = 3, ns = 2;
+
+	return parser_init(parser, node, "dma-ranges", na, ns);
 }
 EXPORT_SYMBOL_GPL(of_pci_dma_range_parser_init);
 
+int of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+				      struct device_node *node)
+{
+	const int na = 1, ns = 2;
+
+	return parser_init(parser, node, "outbound-ranges", na, ns);
+}
+EXPORT_SYMBOL_GPL(of_pci_outbound_range_parser_init);
+
 struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 						struct of_pci_range *range)
 {
@@ -310,6 +323,29 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 }
 EXPORT_SYMBOL_GPL(of_pci_range_parser_one);
 
+struct of_pci_outbound_range
+*of_pci_outbound_range_parser_one(struct of_pci_range_parser *parser,
+				  struct of_pci_outbound_range *range)
+{
+	const int na = 1, ns = 2;
+
+	if (!range)
+		return NULL;
+
+	if (!parser->range || parser->range + parser->np > parser->end)
+		return NULL;
+
+	range->flags = be32_to_cpup(parser->range);
+	range->cpu_addr = of_translate_address(parser->node,
+					       parser->range + na);
+	range->size = of_read_number(parser->range + parser->pna + na, ns);
+
+	parser->range += parser->np;
+
+	return range;
+}
+EXPORT_SYMBOL_GPL(of_pci_outbound_range_parser_one);
+
 /*
  * of_pci_range_to_resource - Create a resource from an of_pci_range
  * @range:	the PCI range that describes the resource
diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index 30e40fb..93b3be3 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -22,9 +22,18 @@ struct of_pci_range {
 	u32 flags;
 };
 
+struct of_pci_outbound_range {
+	u32 flags;
+	u64 cpu_addr;
+	u64 size;
+};
+
 #define for_each_of_pci_range(parser, range) \
 	for (; of_pci_range_parser_one(parser, range);)
 
+#define for_each_of_pci_outbound_range(parser, range) \
+	for (; of_pci_outbound_range_parser_one(parser, range);)
+
 /* Translate a DMA address from device space to CPU space */
 extern u64 of_translate_dma_address(struct device_node *dev,
 				    const __be32 *in_addr);
@@ -52,9 +61,14 @@ extern int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 			struct device_node *node);
 extern int of_pci_dma_range_parser_init(struct of_pci_range_parser *parser,
 			struct device_node *node);
+extern int of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+					     struct device_node *node);
 extern struct of_pci_range *of_pci_range_parser_one(
 					struct of_pci_range_parser *parser,
 					struct of_pci_range *range);
+extern struct of_pci_outbound_range
+*of_pci_outbound_range_parser_one(struct of_pci_range_parser *parser,
+				  struct of_pci_outbound_range *range);
 extern int of_dma_get_range(struct device_node *np, u64 *dma_addr,
 				u64 *paddr, u64 *size);
 extern bool of_dma_is_coherent(struct device_node *np);
@@ -97,6 +111,13 @@ static inline int of_pci_dma_range_parser_init(struct of_pci_range_parser *parse
 	return -ENOSYS;
 }
 
+static inline int
+of_pci_outbound_range_parser_init(struct of_pci_range_parser *parser,
+				  struct device_node *node)
+{
+	return -ENOSYS;
+}
+
 static inline struct of_pci_range *of_pci_range_parser_one(
 					struct of_pci_range_parser *parser,
 					struct of_pci_range *range)
-- 
2.7.4
