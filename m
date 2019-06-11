From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 45/92] ram: rockchip: debug: Add sdram_print_ddr_info
Date: Tue, 11 Jun 2019 20:20:48 +0530
Message-ID: <20190611145135.21399-46-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190611145135.21399-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add sdram ddr info print support, this would help to
observe the sdram base parameters.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  7 ++++
 drivers/ram/rockchip/sdram_debug.c            | 40 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index ebf4148b4d..3935733871 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -127,8 +127,15 @@ int dram_init(void);
 inline void sdram_print_dram_type(unsigned char dramtype)
 {
 }
+
+inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+				 struct sdram_base_params *base)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index c13e140fa5..69a6f94a73 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -32,3 +32,43 @@ void sdram_print_dram_type(unsigned char dramtype)
 		break;
 	}
 }
+
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base)
+{
+	u32 bg;
+
+	bg = (cap_info->dbw == 0) ? 2 : 1;
+
+	sdram_print_dram_type(base->dramtype);
+
+	printascii(", ");
+	printdec(base->ddr_freq);
+	printascii("MHz\n");
+
+	printascii("BW=");
+	printdec(8 << cap_info->bw);
+
+	printascii(" Col=");
+	printdec(cap_info->col);
+
+	printascii(" Bk=");
+	printdec(0x1 << cap_info->bk);
+	if (base->dramtype == DDR4) {
+		printascii(" BG=");
+		printdec(1 << bg);
+	}
+
+	printascii(" CS0 Row=");
+	printdec(cap_info->cs0_row);
+	if (cap_info->rank > 1) {
+		printascii(" CS1 Row=");
+		printdec(cap_info->cs1_row);
+	}
+
+	printascii(" CS=");
+	printdec(cap_info->rank);
+
+	printascii(" Die BW=");
+	printdec(8 << cap_info->dbw);
+}
-- 
2.18.0.321.gffc6fa0e3
