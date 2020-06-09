From: Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 02/13] dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
Date: Tue,  9 Jun 2020 09:14:16 +0800
Message-ID: <1591665267-37713-3-git-send-email-sugar.zhang@rock-chips.com>
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Sugar Zhang <sugar.zhang@rock-chips.com>, Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

This patch adds the qurik to use busrt transfers only
for pl330 controller, even for request with a length of 1.

Although, the correct way should be: if the peripheral request
length is 1, the peripheral should use SINGLE request, and then
notify the dmac using SINGLE mode by src/dst_maxburst with 1.

For example, on the Rockchip SoCs, all the peripherals can use
SINGLE or BURST request by setting GRF registers. it is possible
that if these peripheral drivers are used only for Rockchip SoCs.
Unfortunately, it's not, such as dw uart, which is used so widely,
and we can't set src/dst_maxburst according to the SoCs' specific
to compatible with all the other SoCs.

So, for convenience, all the peripherals are set as BURST request
by default on the Rockchip SoCs. even for request with a length of 1.
the current pl330 driver will perform SINGLE transfer if the client's
maxburst is 1, which still should be working according to chapter 2.6.6
of datasheet which describe how DMAC performs SINGLE transfers for
a BURST request. unfortunately, it's broken on the Rockchip SoCs,
which support only matching transfers, such as BURST transfer for
BURST request, SINGLE transfer for SINGLE request.

Finaly, we add the quirk to specify pl330 to use burst transfers only.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 drivers/dma/pl330.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index ff0a91f..1941ec6 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -33,7 +33,8 @@
 #define PL330_MAX_PERI		32
 #define PL330_MAX_BURST         16
 
-#define PL330_QUIRK_BROKEN_NO_FLUSHP BIT(0)
+#define PL330_QUIRK_BROKEN_NO_FLUSHP	BIT(0)
+#define PL330_QUIRK_PERIPH_BURST	BIT(1)
 
 enum pl330_cachectrl {
 	CCTRL0,		/* Noncacheable and nonbufferable */
@@ -509,6 +510,10 @@ static struct pl330_of_quirks {
 	{
 		.quirk = "arm,pl330-broken-no-flushp",
 		.id = PL330_QUIRK_BROKEN_NO_FLUSHP,
+	},
+	{
+		.quirk = "arm,pl330-periph-burst",
+		.id = PL330_QUIRK_PERIPH_BURST,
 	}
 };
 
@@ -1206,6 +1211,9 @@ static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	int off = 0;
 	enum pl330_cond cond = BRST_LEN(pxs->ccr) > 1 ? BURST : SINGLE;
 
+	if (pl330->quirks & PL330_QUIRK_PERIPH_BURST)
+		cond = BURST;
+
 	switch (pxs->desc->rqtype) {
 	case DMA_MEM_TO_DEV:
 		/* fall through */
-- 
2.7.4
