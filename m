From: Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH] dt-bindings: Correct paths in Rockchip power domains binding
 document
Date: Fri, 16 Oct 2015 16:11:41 +0200
Message-ID: <1445004701-17544-1-git-send-email-geert+renesas@glider.be>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Geert Uytterhoeven <geert+renesas-gXvu3+zWzMSzQB+pC5nmwQ@public.gmane.org>
---
 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
index 4be34188afe41029..112756e11802c7cc 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
+++ b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
@@ -13,7 +13,7 @@ Required properties for power domain controller:
 
 Required properties for power domain sub nodes:
 - reg: index of the power domain, should use macros in:
-	"include/dt-bindings/power-domain/rk3288.h" - for RK3288 type power domain.
+	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power domain.
 - clocks (optional): phandles to clocks which need to be enabled while power domain
 	switches state.
 
@@ -35,7 +35,7 @@ Node of a device using power domains must have a power-domains property,
 containing a phandle to the power device node and an index specifying which
 power domain to use.
 The index should use macros in:
-	"include/dt-bindings/power-domain/rk3288.h" - for rk3288 type power domain.
+	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power domain.
 
 Example of the node using power domain:
 
-- 
1.9.1
