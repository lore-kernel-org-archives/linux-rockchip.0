From: Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v1] soc: rockchip: power-domain: Fix clang warning about
 negative shift count
Date: Fri, 10 Mar 2017 18:21:53 -0800
Message-ID: <20170311022153.139362-1-mka@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, Caesar Wang <wxt@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Grant Grundler <grundler@chromium.org>
Cc: linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The following warning is generated when building with clang:

drivers/soc/rockchip/pm_domains.c:726:22: error: shift count is negative [-Werror,-Wshift-count-negative]
        [RK3399_PD_TCPD0]       = DOMAIN_RK3399(8, 8, -1, false),
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/soc/rockchip/pm_domains.c:101:2: note: expanded from macro 'DOMAIN_RK3399'
        DOMAIN(pwr, status, req, req, req, wakeup)
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/soc/rockchip/pm_domains.c:88:27: note: expanded from macro 'DOMAIN'
        .req_mask = (req >= 0) ? BIT(req) : 0,          \
                                 ^~~~~~~~
include/linux/bitops.h:6:24: note: expanded from macro 'BIT'

The BIT macro is evaluated with the negative value -1, even though the
resulting value would not be assigned. To fix this we only pass values
between 0 and 63 to BIT(). Unfortunately this means that we lose the
benefit of the compiler checking for out of bounds errors.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 drivers/soc/rockchip/pm_domains.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 1c78c42416c6..6f2bb1222992 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -77,13 +77,15 @@ struct rockchip_pmu {
 
 #define to_rockchip_pd(gpd) container_of(gpd, struct rockchip_pm_domain, genpd)
 
+#define RK_MASK(bit) ((bit >= 0) ? BIT(bit & 0x3f) : 0)
+
 #define DOMAIN(pwr, status, req, idle, ack, wakeup)	\
-{						\
-	.pwr_mask = (pwr >= 0) ? BIT(pwr) : 0,		\
-	.status_mask = (status >= 0) ? BIT(status) : 0,	\
-	.req_mask = (req >= 0) ? BIT(req) : 0,		\
-	.idle_mask = (idle >= 0) ? BIT(idle) : 0,	\
-	.ack_mask = (ack >= 0) ? BIT(ack) : 0,		\
+{							\
+	.pwr_mask = RK_MASK(pwr),			\
+	.status_mask = RK_MASK(status),			\
+	.req_mask = RK_MASK(req),			\
+	.idle_mask = RK_MASK(idle),			\
+	.ack_mask = RK_MASK(ack),			\
 	.active_wakeup = wakeup,			\
 }
 
-- 
2.12.0.246.ga2ecc84866-goog
