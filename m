From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 48/92] ram: rk3399: Compute stride for 2 channels
Date: Tue, 11 Jun 2019 20:20:51 +0530
Message-ID: <20190611145135.21399-49-jagan@amarulasolutions.com>
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

stride value from sdram timings can be computed dynamically
based on the determined capacity for the given channel.

Right now these stride values are taken as part of sdram timings
via dtsi, but it possible to use same timings dtsi for given
frequency even though the configured board sdram do support
single channel with different size by dynamically detect the
stride value.

Example, NanoPi NEO4 do have DDR3-1866, but with single channel
and 1GB size with dynamic stride detection it is possible to
use existing rk3399-sdram-ddr3-1866.dtsi whose stride,
number of channels and capacity it support is d efferent.

So, add initial support to calculate the stride value for
2 channels sdram, which is available by default on existing
boards.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/ram/rockchip/sdram_rk3399.c | 72 ++++++++++++++++++++++++++++-
 1 file changed, 71 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1acf9efe9c..5985c37f08 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1185,8 +1185,76 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
+static unsigned char calculate_stride(struct rk3399_sdram_params *sdram_params)
+{
+	unsigned int stride = sdram_params->base.stride;
+	unsigned int channel, chinfo = 0;
+	unsigned int ch_cap[2] = {0, 0};
+	u64 cap;
+
+	for (channel = 0; channel < 2; channel++) {
+		unsigned int cs0_cap = 0;
+		unsigned int cs1_cap = 0;
+		struct sdram_cap_info *cap_info =
+			&sdram_params->ch[channel].cap_info;
+
+		if (cap_info->col == 0)
+			continue;
+
+		cs0_cap = (1 << (cap_info->cs0_row + cap_info->col +
+				 cap_info->bk + cap_info->bw - 20));
+		if (cap_info->rank > 1)
+			cs1_cap = cs0_cap >> (cap_info->cs0_row
+					      - cap_info->cs1_row);
+		if (cap_info->row_3_4) {
+			cs0_cap = cs0_cap * 3 / 4;
+			cs1_cap = cs1_cap * 3 / 4;
+		}
+		ch_cap[channel] = cs0_cap + cs1_cap;
+		chinfo |= 1 << channel;
+	}
+
+	/* stride calculation for 2 channels, default gstride type is 256B */
+	if (ch_cap[0] == ch_cap[1]) {
+		cap = ch_cap[0] + ch_cap[1];
+		switch (cap) {
+		/* 512MB */
+		case 512:
+			stride = 0;
+			break;
+		/* 1GB */
+		case 1024:
+			stride = 0x5;
+			break;
+		/*
+		 * 768MB + 768MB same as total 2GB memory
+		 * useful space: 0-768MB 1GB-1792MB
+		 */
+		case 1536:
+		/* 2GB */
+		case 2048:
+			stride = 0x9;
+			break;
+		/* 1536MB + 1536MB */
+		case 3072:
+			stride = 0x11;
+			break;
+		/* 4GB */
+		case 4096:
+			stride = 0xD;
+			break;
+		default:
+			printf("%s: Unable to calculate stride for ", __func__);
+			print_size((cap * (1 << 20)), " capacity\n");
+			break;
+		}
+	}
+
+	return stride;
+}
+
 static int sdram_init(struct dram_info *dram,
-		      const struct rk3399_sdram_params *sdram_params)
+		      struct rk3399_sdram_params *sdram_params)
 {
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
@@ -1235,6 +1303,8 @@ static int sdram_init(struct dram_info *dram,
 		set_ddrconfig(chan, sdram_params, channel,
 			      sdram_params->ch[channel].cap_info.ddrconfig);
 	}
+
+	sdram_params->base.stride = calculate_stride(sdram_params);
 	dram_all_config(dram, sdram_params);
 	switch_to_phy_index1(dram, sdram_params);
 
-- 
2.18.0.321.gffc6fa0e3
