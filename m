From: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 2/3 v2] dmaengine: pl330: don't emit code for one iteration
 loop
Date: Thu, 10 Mar 2016 13:57:35 +0300
Message-ID: <1457607456-30458-2-git-send-email-al.kochet@gmail.com>
References: <1455798674-10186-1-git-send-email-al.kochet@gmail.com>
 <1457607456-30458-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1457607456-30458-1-git-send-email-al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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

The patch remove one iteration outer loop in the _loop().
Removing loop saves 4 bytes of MicroCode buffer.

    DMALP_0 0
    ...
    DMALPENDA_0 bjmpto_9

Signed-off-by: Alexander Kochetkov <al.kochet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Reviewed-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/dma/pl330.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/pl330.c b/drivers/dma/pl330.c
index 4abbc71..b080d70 100644
--- a/drivers/dma/pl330.c
+++ b/drivers/dma/pl330.c
@@ -1258,7 +1258,7 @@ static inline int _loop(unsigned dry_run, u8 buf[],
 	lpend.bjump = 0;
 	szlpend = _emit_LPEND(1, buf, &lpend);
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		szlp *= 2;
 		szlpend *= 2;
 	}
@@ -1274,7 +1274,7 @@ static inline int _loop(unsigned dry_run, u8 buf[],
 
 	off = 0;
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		off += _emit_LP(dry_run, &buf[off], 0, lcnt0);
 		ljmp0 = off;
 	}
@@ -1290,7 +1290,7 @@ static inline int _loop(unsigned dry_run, u8 buf[],
 	lpend.bjump = off - ljmp1;
 	off += _emit_LPEND(dry_run, &buf[off], &lpend);
 
-	if (lcnt0) {
+	if (lcnt0 > 1) {
 		lpend.cond = ALWAYS;
 		lpend.forever = false;
 		lpend.loop = 0;
@@ -1299,7 +1299,7 @@ static inline int _loop(unsigned dry_run, u8 buf[],
 	}
 
 	*bursts = lcnt1 * cyc;
-	if (lcnt0)
+	if (lcnt0 > 1)
 		*bursts *= lcnt0;
 
 	return off;
-- 
1.7.9.5
