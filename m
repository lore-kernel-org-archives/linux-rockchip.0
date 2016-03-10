From: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/3 v3] dmaengine: pl330: cleanup quirk pass code
Date: Thu, 10 Mar 2016 14:02:42 +0300
Message-ID: <1457607764-30495-2-git-send-email-al.kochet@gmail.com>
References: <1455798674-10186-1-git-send-email-al.kochet@gmail.com>
 <1457607764-30495-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1457607764-30495-1-git-send-email-al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The patch partially revert changes introduced by 271e1b86e691
"dmaengine: pl330: add quirk for broken no flushp"

The patch add 'quirk' member to 'struct _xfer_spec' and
remove 'struct pl330_dmac *pl330' parameter from
many intermediate functions. The patch is intended to
hide 'struct pl330_dmac' implementation from Microcode
generation functions.

The patch is here to allow easy backporting following
patches to longterm linux 4.1.x.

Signed-off-by: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Reviewed-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/dma/pl330.c |   59 ++++++++++++++++++++++++---------------------------
 1 file changed, 28 insertions(+), 31 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 372b435..4abbc71 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -534,6 +534,7 @@ struct dma_pl330_desc {
 struct _xfer_spec {
 	u32 ccr;
 	struct dma_pl330_desc *desc;
+	int quirks;
 };
 
 static inline bool _queue_empty(struct pl330_thread *thrd)
@@ -1151,14 +1152,13 @@ static inline int _ldst_memtomem(unsigned dry_run, u8 buf[],
 	return off;
 }
 
-static inline int _ldst_devtomem(struct pl330_dmac *pl330, unsigned dry_run,
-				 u8 buf[], const struct _xfer_spec *pxs,
-				 int cyc)
+static inline int _ldst_devtomem(unsigned dry_run, u8 buf[],
+		const struct _xfer_spec *pxs, int cyc)
 {
 	int off = 0;
 	enum pl330_cond cond;
 
-	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
+	if (pxs->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
 		cond = BURST;
 	else
 		cond = SINGLE;
@@ -1168,7 +1168,7 @@ static inline int _ldst_devtomem(struct pl330_dmac *pl330, unsigned dry_run,
 		off += _emit_LDP(dry_run, &buf[off], cond, pxs->desc->peri);
 		off += _emit_ST(dry_run, &buf[off], ALWAYS);
 
-		if (!(pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP))
+		if (!(pxs->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP))
 			off += _emit_FLUSHP(dry_run, &buf[off],
 					    pxs->desc->peri);
 	}
@@ -1176,14 +1176,13 @@ static inline int _ldst_devtomem(struct pl330_dmac *pl330, unsigned dry_run,
 	return off;
 }
 
-static inline int _ldst_memtodev(struct pl330_dmac *pl330,
-				 unsigned dry_run, u8 buf[],
-				 const struct _xfer_spec *pxs, int cyc)
+static inline int _ldst_memtodev(unsigned dry_run, u8 buf[],
+		const struct _xfer_spec *pxs, int cyc)
 {
 	int off = 0;
 	enum pl330_cond cond;
 
-	if (pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
+	if (pxs->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP)
 		cond = BURST;
 	else
 		cond = SINGLE;
@@ -1193,7 +1192,7 @@ static inline int _ldst_memtodev(struct pl330_dmac *pl330,
 		off += _emit_LD(dry_run, &buf[off], ALWAYS);
 		off += _emit_STP(dry_run, &buf[off], cond, pxs->desc->peri);
 
-		if (!(pl330->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP))
+		if (!(pxs->quirks & PL330_QUIRK_BROKEN_NO_FLUSHP))
 			off += _emit_FLUSHP(dry_run, &buf[off],
 					    pxs->desc->peri);
 	}
@@ -1201,17 +1200,17 @@ static inline int _ldst_memtodev(struct pl330_dmac *pl330,
 	return off;
 }
 
-static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
+static int _bursts(unsigned dry_run, u8 buf[],
 		const struct _xfer_spec *pxs, int cyc)
 {
 	int off = 0;
 
 	switch (pxs->desc->rqtype) {
 	case DMA_MEM_TO_DEV:
-		off += _ldst_memtodev(pl330, dry_run, &buf[off], pxs, cyc);
+		off += _ldst_memtodev(dry_run, &buf[off], pxs, cyc);
 		break;
 	case DMA_DEV_TO_MEM:
-		off += _ldst_devtomem(pl330, dry_run, &buf[off], pxs, cyc);
+		off += _ldst_devtomem(dry_run, &buf[off], pxs, cyc);
 		break;
 	case DMA_MEM_TO_MEM:
 		off += _ldst_memtomem(dry_run, &buf[off], pxs, cyc);
@@ -1225,7 +1224,7 @@ static int _bursts(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 }
 
 /* Returns bytes consumed and updates bursts */
-static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
+static inline int _loop(unsigned dry_run, u8 buf[],
 		unsigned long *bursts, const struct _xfer_spec *pxs)
 {
 	int cyc, cycmax, szlp, szlpend, szbrst, off;
@@ -1233,7 +1232,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	struct _arg_LPEND lpend;
 
 	if (*bursts == 1)
-		return _bursts(pl330, dry_run, buf, pxs, 1);
+		return _bursts(dry_run, buf, pxs, 1);
 
 	/* Max iterations possible in DMALP is 256 */
 	if (*bursts >= 256*256) {
@@ -1251,7 +1250,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	}
 
 	szlp = _emit_LP(1, buf, 0, 0);
-	szbrst = _bursts(pl330, 1, buf, pxs, 1);
+	szbrst = _bursts(1, buf, pxs, 1);
 
 	lpend.cond = ALWAYS;
 	lpend.forever = false;
@@ -1283,7 +1282,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	off += _emit_LP(dry_run, &buf[off], 1, lcnt1);
 	ljmp1 = off;
 
-	off += _bursts(pl330, dry_run, &buf[off], pxs, cyc);
+	off += _bursts(dry_run, &buf[off], pxs, cyc);
 
 	lpend.cond = ALWAYS;
 	lpend.forever = false;
@@ -1306,9 +1305,8 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	return off;
 }
 
-static inline int _setup_loops(struct pl330_dmac *pl330,
-			       unsigned dry_run, u8 buf[],
-			       const struct _xfer_spec *pxs)
+static inline int _setup_loops(unsigned dry_run, u8 buf[],
+		const struct _xfer_spec *pxs)
 {
 	struct pl330_xfer *x = &pxs->desc->px;
 	u32 ccr = pxs->ccr;
@@ -1317,16 +1315,15 @@ static inline int _setup_loops(struct pl330_dmac *pl330,
 
 	while (bursts) {
 		c = bursts;
-		off += _loop(pl330, dry_run, &buf[off], &c, pxs);
+		off += _loop(dry_run, &buf[off], &c, pxs);
 		bursts -= c;
 	}
 
 	return off;
 }
 
-static inline int _setup_xfer(struct pl330_dmac *pl330,
-			      unsigned dry_run, u8 buf[],
-			      const struct _xfer_spec *pxs)
+static inline int _setup_xfer(unsigned dry_run, u8 buf[],
+		const struct _xfer_spec *pxs)
 {
 	struct pl330_xfer *x = &pxs->desc->px;
 	int off = 0;
@@ -1337,7 +1334,7 @@ static inline int _setup_xfer(struct pl330_dmac *pl330,
 	off += _emit_MOV(dry_run, &buf[off], DAR, x->dst_addr);
 
 	/* Setup Loop(s) */
-	off += _setup_loops(pl330, dry_run, &buf[off], pxs);
+	off += _setup_loops(dry_run, &buf[off], pxs);
 
 	return off;
 }
@@ -1346,9 +1343,8 @@ static inline int _setup_xfer(struct pl330_dmac *pl330,
  * A req is a sequence of one or more xfer units.
  * Returns the number of bytes taken to setup the MC for the req.
  */
-static int _setup_req(struct pl330_dmac *pl330, unsigned dry_run,
-		      struct pl330_thread *thrd, unsigned index,
-		      struct _xfer_spec *pxs)
+static int _setup_req(unsigned dry_run, struct pl330_thread *thrd,
+		unsigned index, struct _xfer_spec *pxs)
 {
 	struct _pl330_req *req = &thrd->req[index];
 	struct pl330_xfer *x;
@@ -1365,7 +1361,7 @@ static int _setup_req(struct pl330_dmac *pl330, unsigned dry_run,
 	if (x->bytes % (BRST_SIZE(pxs->ccr) * BRST_LEN(pxs->ccr)))
 		return -EINVAL;
 
-	off += _setup_xfer(pl330, dry_run, &buf[off], pxs);
+	off += _setup_xfer(dry_run, &buf[off], pxs);
 
 	/* DMASEV peripheral/event */
 	off += _emit_SEV(dry_run, &buf[off], thrd->ev);
@@ -1457,9 +1453,10 @@ static int pl330_submit_req(struct pl330_thread *thrd,
 
 	xs.ccr = ccr;
 	xs.desc = desc;
+	xs.quirks = pl330->quirks;
 
 	/* First dry run to check if req is acceptable */
-	ret = _setup_req(pl330, 1, thrd, idx, &xs);
+	ret = _setup_req(1, thrd, idx, &xs);
 	if (ret < 0)
 		goto xfer_exit;
 
@@ -1473,7 +1470,7 @@ static int pl330_submit_req(struct pl330_thread *thrd,
 	/* Hook the request */
 	thrd->lstenq = idx;
 	thrd->req[idx].desc = desc;
-	_setup_req(pl330, 0, thrd, idx, &xs);
+	_setup_req(0, thrd, idx, &xs);
 
 	ret = 0;
 
-- 
1.7.9.5
