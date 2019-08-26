From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 13/16] watchdog: Handle TPL build with watchdog disabled
Date: Mon, 26 Aug 2019 23:51:08 +0530
Message-ID: <20190826182111.30999-14-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190826182111.30999-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch handle a checks to not enable watchdog in TPL,
if TPL won't require to enable that.

This is useful, in rockchip platforms where watchdog would
require in SPL and U-Boot proper and optional to have it
in TPL. So, without this check, the TPL build failed to get
the watchdog_reset function even though the watchdog is not
enable for it.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 include/watchdog.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/watchdog.h b/include/watchdog.h
index a4a4e8e614..f04e3e7c4d 100644
--- a/include/watchdog.h
+++ b/include/watchdog.h
@@ -51,9 +51,10 @@ int init_func_watchdog_reset(void);
 		#if defined(__ASSEMBLY__)
 			#define WATCHDOG_RESET bl watchdog_reset
 		#else
-			/* Don't require the watchdog to be enabled in SPL */
-			#if defined(CONFIG_SPL_BUILD) &&		\
-				!defined(CONFIG_SPL_WATCHDOG_SUPPORT)
+			/* Don't require the watchdog to be enabled in TPL/SPL */
+			#if ((defined(CONFIG_TPL_BUILD) || defined(CONFIG_TPL_BUILD)) && \
+			      (!defined(CONFIG_TPL_WATCHDOG_SUPPORT) || \
+			       !defined(CONFIG_SPL_WATCHDOG_SUPPORT)))
 				#define WATCHDOG_RESET() {}
 			#else
 				extern void watchdog_reset(void);
-- 
2.18.0.321.gffc6fa0e3
