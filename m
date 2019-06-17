From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 47/99] ram: rockchip: debug: Get the cs capacity
Date: Mon, 17 Jun 2019 13:02:00 +0530
Message-ID: <20190617073252.27810-48-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190617073252.27810-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add code to get the channel capacity, this would help to
print the capacity of specific channel.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16 Size=2048MB

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_debug.c | 46 +++++++++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 69a6f94a73..19e9225c12 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -33,10 +33,46 @@ void sdram_print_dram_type(unsigned char dramtype)
 	}
 }
 
+/**
+ * cs  = 0, cs0
+ * cs  = 1, cs1
+ * cs => 2, cs0+cs1
+ * note: it didn't consider about row_3_4
+ */
+u64 sdram_get_cs_cap(struct sdram_cap_info *cap_info, u32 cs, u32 dram_type)
+{
+	u32 bg;
+	u64 cap[2];
+
+	if (dram_type == DDR4)
+		/* DDR4 8bit dram BG = 2(4bank groups),
+		 * 16bit dram BG = 1 (2 bank groups)
+		 */
+		bg = (cap_info->dbw == 0) ? 2 : 1;
+	else
+		bg = 0;
+
+	cap[0] = 1llu << (cap_info->bw + cap_info->col +
+		 bg + cap_info->bk + cap_info->cs0_row);
+
+	if (cap_info->rank == 2)
+		cap[1] = 1llu << (cap_info->bw + cap_info->col +
+			 bg + cap_info->bk + cap_info->cs1_row);
+	else
+		cap[1] = 0;
+
+	if (cs == 0)
+		return cap[0];
+	else if (cs == 1)
+		return cap[1];
+	else
+		return (cap[0] + cap[1]);
+}
+
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base)
 {
-	u32 bg;
+	u32 bg, cap;
 
 	bg = (cap_info->dbw == 0) ? 2 : 1;
 
@@ -71,4 +107,12 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 
 	printascii(" Die BW=");
 	printdec(8 << cap_info->dbw);
+
+	cap = sdram_get_cs_cap(cap_info, 3, base->dramtype);
+	if (cap_info->row_3_4)
+		cap = cap * 3 / 4;
+
+	printascii(" Size=");
+	printdec(cap >> 20);
+	printascii("MB\n");
 }
-- 
2.18.0.321.gffc6fa0e3
