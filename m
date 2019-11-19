From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 10/10] rock960: Enable USB Gadget
Date: Tue, 19 Nov 2019 13:56:23 +0530
Message-ID: <20191119082623.6165-11-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191119082623.6165-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Enable DWC3 core, gadget for rock960 board.

This would help to use fastboot by default.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 configs/rock960-rk3399_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 979ca0f93b..d0ad6865cf 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -57,6 +57,8 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_DWC3=y
 CONFIG_USE_TINY_PRINTF=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3
