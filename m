From: Rob Herring <robh@kernel.org>
Subject: [PATCH v2 01/25] resource: Add a resource_list_get_entry_of_type
 helper
Date: Wed, 16 Oct 2019 15:06:23 -0500
Message-ID: <20191016200647.32050-2-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
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
Cc: Heiko Stuebner <heiko@sntech.de>, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com, Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>, Srinath Mannam <srinath.mannam@b>
List-Id: linux-rockchip.vger.kernel.org

A common pattern is looping over a resource_list just to get a matching
entry with a specific type. Add resource_list_get_entry_of_type() helper
which implements this.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 include/linux/resource_ext.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/resource_ext.h b/include/linux/resource_ext.h
index 06da59b23b79..9f52183fab8b 100644
--- a/include/linux/resource_ext.h
+++ b/include/linux/resource_ext.h
@@ -66,4 +66,16 @@ resource_list_destroy_entry(struct resource_entry *entry)
 #define resource_list_for_each_entry_safe(entry, tmp, list)	\
 	list_for_each_entry_safe((entry), (tmp), (list), node)

+static inline struct resource_entry *resource_list_get_entry_of_type(struct list_head *list,
+							      unsigned long type)
+{
+	struct resource_entry *entry;
+
+	resource_list_for_each_entry(entry, list) {
+		if (resource_type(entry->res) == type)
+			return entry;
+	}
+	return NULL;
+}
+
 #endif /* _LINUX_RESOURCE_EXT_H */
--
2.20.1
