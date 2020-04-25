From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 1/8] iopoll: Add dealy to read poll
Date: Sat, 25 Apr 2020 16:33:47 +0530
Message-ID: <20200425110354.12381-2-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200425110354.12381-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, patrick-Er2xLVyhcs+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Some drivers and other bsp code not only poll the
register with timeout but also required to delay
on each transaction.

This patch add that requirement by adding sleep_us
variable so-that read_poll_timeout now support
delay as well.

Cc: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 include/linux/iopoll.h | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index ab0ae1969a..0bbd757939 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -16,6 +16,7 @@
  * @addr: Address to poll
  * @val: Variable to read the value into
  * @cond: Break condition (usually involving @val)
+ * @sleep_us: Maximum time to sleep in us
  * @timeout_us: Timeout in us, 0 means never timeout
  *
  * Returns 0 on success and -ETIMEDOUT upon a timeout. In either
@@ -24,7 +25,7 @@
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  */
-#define readx_poll_timeout(op, addr, val, cond, timeout_us)	\
+#define readx_poll_timeout(op, addr, val, cond, sleep_us, timeout_us)	\
 ({ \
 	unsigned long timeout = timer_get_us() + timeout_us; \
 	for (;;) { \
@@ -35,33 +36,34 @@
 			(val) = op(addr); \
 			break; \
 		} \
+		if (sleep_us) \
+			udelay(sleep_us); \
 	} \
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
-
 #define readb_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readb, addr, val, cond, timeout_us)
+	readx_poll_timeout(readb, addr, val, cond, false, timeout_us)
 
 #define readw_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readw, addr, val, cond, timeout_us)
+	readx_poll_timeout(readw, addr, val, cond, false, timeout_us)
 
 #define readl_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readl, addr, val, cond, timeout_us)
+	readx_poll_timeout(readl, addr, val, cond, false, timeout_us)
 
 #define readq_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readq, addr, val, cond, timeout_us)
+	readx_poll_timeout(readq, addr, val, cond, false, timeout_us)
 
 #define readb_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readb_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readb_relaxed, addr, val, cond, false, timeout_us)
 
 #define readw_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readw_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readw_relaxed, addr, val, cond, false, timeout_us)
 
 #define readl_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readl_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readl_relaxed, addr, val, cond, false, timeout_us)
 
 #define readq_relaxed_poll_timeout(addr, val, cond, timeout_us) \
-	readx_poll_timeout(readq_relaxed, addr, val, cond, timeout_us)
+	readx_poll_timeout(readq_relaxed, addr, val, cond, false, timeout_us)
 
 #endif /* _LINUX_IOPOLL_H */
-- 
2.17.1
