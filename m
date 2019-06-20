From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 1/8] board: rk3399: Drop explicit uart enablement in
 spl_board_init
Date: Fri, 21 Jun 2019 00:24:59 +0530
Message-ID: <20190620185506.11449-2-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190620185506.11449-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

preloader_console_init is used for printing SPL boot banner that
usually called from spl_board_init.

The current spl_board_init in evb and rock960 is enabling explicit
pinctrl, debug uart prior to calling preloader_console_init which
eventually not required since board_init_f is already enabled
debug uart.

So, drop those explicit enablement calls from  spl_board_init of
evb, rock960.

Tested this by enabling CONFIG_SPL_BOARD_INIT and adding
u-boot,dm-pre-reloc property for uart node.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 board/rockchip/evb_rk3399/evb-rk3399.c      | 23 +------------------
 board/vamrs/rock960_rk3399/rock960-rk3399.c | 25 +--------------------
 2 files changed, 2 insertions(+), 46 deletions(-)

diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
index bf2ad98c47..769b5d146f 100644
--- a/board/rockchip/evb_rk3399/evb-rk3399.c
+++ b/board/rockchip/evb_rk3399/evb-rk3399.c
@@ -6,7 +6,6 @@
 #include <common.h>
 #include <dm.h>
 #include <dm/pinctrl.h>
-#include <dm/uclass-internal.h>
 #include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
 #include <spl.h>
@@ -68,27 +67,7 @@ out:
 
 void spl_board_init(void)
 {
-	struct udevice *pinctrl;
-	int ret;
-
-	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
-	if (ret) {
-		debug("%s: Cannot find pinctrl device\n", __func__);
-		goto err;
-	}
-
-	/* Enable debug UART */
-	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
-	if (ret) {
-		debug("%s: Failed to set up console UART\n", __func__);
-		goto err;
-	}
-
 	preloader_console_init();
-	return;
-err:
-	printf("%s: Error %d\n", __func__, ret);
 
-	/* No way to report error here */
-	hang();
+	return;
 }
diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
index 0f5ef3a09a..018e4b55b8 100644
--- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
+++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
@@ -5,9 +5,6 @@
 
 #include <common.h>
 #include <dm.h>
-#include <dm/pinctrl.h>
-#include <dm/uclass-internal.h>
-#include <asm/arch-rockchip/periph.h>
 #include <power/regulator.h>
 #include <spl.h>
 
@@ -24,27 +21,7 @@ int board_init(void)
 
 void spl_board_init(void)
 {
-	struct udevice *pinctrl;
-	int ret;
-
-	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
-	if (ret) {
-		debug("%s: Cannot find pinctrl device\n", __func__);
-		goto err;
-	}
-
-	/* Enable debug UART */
-	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
-	if (ret) {
-		debug("%s: Failed to set up console UART\n", __func__);
-		goto err;
-	}
-
 	preloader_console_init();
-	return;
-err:
-	printf("%s: Error %d\n", __func__, ret);
 
-	/* No way to report error here */
-	hang();
+	return;
 }
-- 
2.18.0.321.gffc6fa0e3
