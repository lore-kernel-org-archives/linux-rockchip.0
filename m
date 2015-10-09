From: Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] soc/rockchip: Restrict to ARCH_ROCKCHIP
Date: Fri,  9 Oct 2015 15:46:18 +0200
Message-ID: <1444398378-24974-1-git-send-email-thierry.reding@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>

By definition this directory contains drivers that are specific to the
Rockchip architecture. All Kconfig options should therefore depend on
ARCH_ROCKCHIP to avoid exposing these symbols on other architectures.
For example, this options currently shows up as new when doing an
incremental build on PowerPC.

Signed-off-by: Thierry Reding <treding-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
---
 drivers/soc/rockchip/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index 6ee03994801c..d09b5ede7deb 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -1,3 +1,5 @@
+if ARCH_ROCKCHIP
+
 #
 # Rockchip Soc drivers
 #
@@ -12,3 +14,5 @@ config ROCKCHIP_PM_DOMAINS
           mode. The RK3288 PMU is dedicated for managing the power of the whole chip.
 
           If unsure, say N.
+
+endif
-- 
2.5.0
