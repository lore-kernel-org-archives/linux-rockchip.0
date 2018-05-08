From: "Marty E. Plummer" <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
Subject: Re: [U-Boot] [PATCH 3/3] rockchip: fix incorrect detection of ram size
Date: Mon, 7 May 2018 19:52:16 -0500
Message-ID: <20180508005215.s3uivl43jfaryv7j@proprietary-killer>
References: <20180506142513.19911-1-hanetzer@startmail.com>
 <20180506142513.19911-4-hanetzer@startmail.com>
 <6a0116f8-fd8a-dd53-2759-0014c7ab2700@rock-chips.com>
 <20180507023413.mil4wj7xtjy6gnuw@proprietary-killer>
 <791299C0-EEC0-4DB1-97C4-A8DAD3B1A481@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <791299C0-EEC0-4DB1-97C4-A8DAD3B1A481-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "Dr. Philipp Tomsich" <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: vagrant-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, May 07, 2018 at 11:16:28AM +0200, Dr. Philipp Tomsich wrote:
> 
> > On 7 May 2018, at 04:34, Marty E. Plummer <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org> wrote:
> > 
> > On Mon, May 07, 2018 at 10:20:55AM +0800, Kever Yang wrote:
> >> Hi Marty,
> >> 
> >> 
> >> On 05/06/2018 10:25 PM, Marty E. Plummer wrote:
> >>> Taken from coreboot's src/soc/rockchip/rk3288/sdram.c
> >>> 
> >>> Without this change, my u-boot build for the asus c201 chromebook (4GiB)
> >>> is incorrectly detected as 0 Bytes of ram.
> >> 
> >> I know the root cause for this issue, and I have a local patch for it.
> >> The rk3288 is 32bit, and 4GB size is just out of range, so we need to before
> >> the max size before return with '<<20'. Sorry for forgot to send it out.
> >> 
> >>> 
> >>> Signed-off-by: Marty E. Plummer <hanetzer-zVALfsKDk1AS+FvcfC7Uqw@public.gmane.org>
> >>> ---
> >>> arch/arm/mach-rockchip/sdram_common.c | 62 ++++++++++++++++-----------
> >>> 1 file changed, 37 insertions(+), 25 deletions(-)
> >>> 
> >>> diff --git a/arch/arm/mach-rockchip/sdram_common.c b/arch/arm/mach-rockchip/sdram_common.c
> >>> index 76dbdc8715..a9c9f970a4 100644
> >>> --- a/arch/arm/mach-rockchip/sdram_common.c
> >>> +++ b/arch/arm/mach-rockchip/sdram_common.c
> >>> @@ -10,6 +10,8 @@
> >>> #include <asm/io.h>
> >>> #include <asm/arch/sdram_common.h>
> >>> #include <dm/uclass-internal.h>
> >>> +#include <linux/kernel.h>
> >>> +#include <linux/sizes.h>
> >>> 
> >>> DECLARE_GLOBAL_DATA_PTR;
> >>> size_t rockchip_sdram_size(phys_addr_t reg)
> >>> @@ -19,34 +21,44 @@ size_t rockchip_sdram_size(phys_addr_t reg)
> >>> 	size_t size_mb = 0;
> >>> 	u32 ch;
> >>> 
> >>> -	u32 sys_reg = readl(reg);
> >>> -	u32 ch_num = 1 + ((sys_reg >> SYS_REG_NUM_CH_SHIFT)
> >>> -		       & SYS_REG_NUM_CH_MASK);
> >>> +	if (!size_mb) {
> >> 
> >> I don't understand this and follow up changes, we don't really need it,
> >> isn't it?
> >> I think don't need the changes before here.
> > Yeah, that was just another level of indentation for the if (!size_mb)
> > guard, but I've reworked the patch to not do that as it was pointed out
> > that since size_mb is initialized to 0 prior.
> >>> +		/*
> >>> +		 * we use the 0x00000000~0xfeffffff space
> >>> +		 * since 0xff000000~0xffffffff is soc register space
> >>> +		 * so we reserve it
> >>> +		 */
> >>> +		size_mb = min(size_mb, 0xff000000/SZ_1M);
> >> 
> >> This is what we really need, as Klaus point out, we need to use
> >> SDRAM_MAX_SIZE
> >> instead of hard code.
> > Yeah, I've got a rework on that which uses SDRAM_MAX_SIZE as instructed,
> > build and boot tested on my hardware.
> 
> In that case you just masked the problem but didn???t solve it: assuming size_mb
> is size_t (I???ll assume this is 64bit, but did not check), then your 4GB is 0x1_0000_0000 )
> which overflows to 0x0 when converted to a u32.
> 
> In other words: we need to figure out where the truncation occurs (image what
> happens if a new 32bit processor with LPAE comes out???).
> 
A very valid point. With the following patch to sdram_common.c and
sdram_rk3288.c applied I get the debug output that follows it:
diff --git a/arch/arm/mach-rockchip/sdram_common.c b/arch/arm/mach-rockchip/sdram_common.c
index 232a7fa655..0fe69bf558 100644
--- a/arch/arm/mach-rockchip/sdram_common.c
+++ b/arch/arm/mach-rockchip/sdram_common.c
@@ -4,6 +4,7 @@
  * SPDX-License-Identifier:     GPL-2.0+
  */
 
+#define DEBUG 1
 #include <common.h>
 #include <dm.h>
 #include <ram.h>
@@ -39,16 +40,19 @@ size_t rockchip_sdram_size(phys_addr_t reg)
 			SYS_REG_ROW_3_4_MASK;
 
 		chipsize_mb = (1 << (cs0_row + col + bk + bw - 20));
+		debug("%s: %d: chipsize_mb %x\n", __func__, __LINE__, chipsize_mb);
 
 		if (rank > 1)
 			chipsize_mb += chipsize_mb >> (cs0_row - cs1_row);
 		if (row_3_4)
 			chipsize_mb = chipsize_mb * 3 / 4;
 		size_mb += chipsize_mb;
+		debug("%s: %d: size_mb %x\n", __func__, __LINE__, size_mb);
 		debug("rank %d col %d bk %d cs0_row %d bw %d row_3_4 %d\n",
 		      rank, col, bk, cs0_row, bw, row_3_4);
 	}
 
+	debug("%s: %d: size_mb %x\n", __func__, __LINE__, size_mb);
 	size_mb = min(size_mb, SDRAM_MAX_SIZE/SZ_1M);
 
 	return (size_t)size_mb << 20;
diff --git a/drivers/ram/rockchip/sdram_rk3288.c b/drivers/ram/rockchip/sdram_rk3288.c
index d99bf12476..9738eb088f 100644
--- a/drivers/ram/rockchip/sdram_rk3288.c
+++ b/drivers/ram/rockchip/sdram_rk3288.c
@@ -7,6 +7,7 @@
  * Adapted from coreboot.
  */
 
+#define DEBUG 1
 #include <common.h>
 #include <clk.h>
 #include <dm.h>

---
U-Boot SPL 2018.05-rc3-02370-g309384e84b-dirty (May 07 2018 - 19:42:15 -0500)
Trying to boot from SPI


U-Boot 2018.05-rc3-02370-g309384e84b-dirty (May 07 2018 - 19:42:15 -0500)

Model: Google Speedy
DRAM:  rockchip_sdram_size ff73009c 3c50dc50
rockchip_sdram_size: 42: chipsize_mb 400
rockchip_sdram_size: 49: size_mb 800
rank 2 col 11 bk 3 cs0_row 14 bw 2 row_3_4 0
rockchip_sdram_size: 42: chipsize_mb 400
rockchip_sdram_size: 49: size_mb 1000
rank 2 col 11 bk 3 cs0_row 14 bw 2 row_3_4 0
rockchip_sdram_size: 54: size_mb 1000
SDRAM base=0, size=fe000000
4 GiB
MMC:   dwmmc@ff0c0000: 1, dwmmc@ff0d0000: 2, dwmmc@ff0f0000: 0
In:    cros-ec-keyb
Out:   vidconsole
Err:   vidconsole
Model: Google Speedy
rockchip_dnl_key_pressed: adc_channel_single_shot fail!
Net:   Net Initialization Skipped
No ethernet found.
Hit any key to stop autoboot:  0
I guess we need to change the size_t to something larger; unless I'm
mistaken, that's a 32 bit value, right? and 0x100000000 is at least 40
bits, unless I'm missing the issue here somewhere. However, that would
take a change to include/ram.h, and would impact far more than just
rk3288/rockchip devices across the board, so I'm unsure how to proceed.

Use the min macro here for now, and begin work migrating the ram_info
size member to a 64-bit container?
> >> 
> >> Thanks,
> >> - Kever
> >>> 	}
> >>> 
> >>> 	return (size_t)size_mb << 20;
> >> 
> >> 
> > _______________________________________________
> > U-Boot mailing list
> > U-Boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org <mailto:U-Boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>
> > https://lists.denx.de/listinfo/u-boot <https://lists.denx.de/listinfo/u-boot>
