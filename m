From: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 2/2] dmaengine: pl330: don't emit code for one iteration loop
Date: Fri, 14 Apr 2017 17:35:30 +0300
Message-ID: <1492180531-1780-3-git-send-email-al.kochet@gmail.com>
References: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1492180531-1780-1-git-send-email-al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Vinod Koul <vinod.koul-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, hhb-TNX95d0MmH7DzftRWevZcw@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, ulysses.huang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The patch remove one iteration outer loop in the _loop().
Removing loop saves 4 bytes of MicroCode buffer. This
savings make sense for free-running cyclic transfer
implementation.

    DMALP_0 0
    ...
    DMALPENDA_0 bjmpto_9

Signed-off-by: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
 drivers/dma/pl330.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 56a2377..6126dde 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1268,7 +1268,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	lpend.bjump = 0;
 	szlpend = _emit_LPEND(1, buf, &lpend);
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		szlp *= 2;
 		szlpend *= 2;
 	}
@@ -1284,7 +1284,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 
 	off = 0;
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		off += _emit_LP(dry_run, &buf[off], 0, lcnt0);
 		ljmp0 = off;
 	}
@@ -1300,7 +1300,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	lpend.bjump = off - ljmp1;
 	off += _emit_LPEND(dry_run, &buf[off], &lpend);
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		lpend.cond = ALWAYS;
 		lpend.forever = false;
 		lpend.loop = 0;
@@ -1309,7 +1309,7 @@ static inline int _loop(struct pl330_dmac *pl330, unsigned dry_run, u8 buf[],
 	}
 
 	*bursts = lcnt1 * cyc;
-	if (lcnt0)
+	if (lcnt0 > 1)
 		*bursts *= lcnt0;
 
 	return off;
-- 
1.7.9.5
