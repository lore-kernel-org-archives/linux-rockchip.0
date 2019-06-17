From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 48/99] ram: rk3399: debug: Add sdram_print_stride
Date: Mon, 17 Jun 2019 13:02:01 +0530
Message-ID: <20190617073252.27810-49-jagan@amarulasolutions.com>
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

Add code to print the channel stride, this would help to
print the stride of associated channel.

Here is sample print on LPDDR4, 50MHz.
256B stride

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  5 ++++
 drivers/ram/rockchip/sdram_debug.c            | 29 +++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 7d1372f033..8027b53636 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -133,10 +133,15 @@ inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 				 struct sdram_base_params *base)
 {
 }
+
+inline void sdram_print_stride(unsigned int stride)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
 void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 			  struct sdram_base_params *base);
+void sdram_print_stride(unsigned int stride);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index 19e9225c12..9cf662675b 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -116,3 +116,32 @@ void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
 	printdec(cap >> 20);
 	printascii("MB\n");
 }
+
+void sdram_print_stride(unsigned int stride)
+{
+	switch (stride) {
+	case 0xc:
+		printf("128B stride\n");
+		break;
+	case 5:
+	case 9:
+	case 0xd:
+	case 0x11:
+	case 0x19:
+		printf("256B stride\n");
+		break;
+	case 0xa:
+	case 0xe:
+	case 0x12:
+		printf("512B stride\n");
+		break;
+	case 0xf:
+		printf("4K stride\n");
+		break;
+	case 0x1f:
+		printf("32MB + 256B stride\n");
+		break;
+	default:
+		printf("no stride\n");
+	}
+}
-- 
2.18.0.321.gffc6fa0e3
