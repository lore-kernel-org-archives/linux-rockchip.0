From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 1/5] Makefile: Add rockchip image type
Date: Fri, 18 Oct 2019 00:37:06 +0530
Message-ID: <20191017190710.29985-2-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191017190710.29985-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, "Matwey V . Kornilov" <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add rockchip image type support. right now the image
type marked with rksd, So create image type variable
with required image type like rksd or rkspi.

Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Matwey V. Kornilov <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 6fda3268e7..ec55e0f6a4 100644
--- a/Makefile
+++ b/Makefile
@@ -1334,7 +1334,14 @@ u-boot-with-spl.bin: $(SPL_IMAGE) $(SPL_PAYLOAD) FORCE
 	$(call if_changed,pad_cat)
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP),y)
-MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T rksd
+
+ifeq ($(CONFIG_SPI_FLASH_SUPPORT),y)
+ROCKCHIP_IMG_TYPE := rkspi
+else
+ROCKCHIP_IMG_TYPE := rksd
+endif
+
+MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
-- 
2.18.0.321.gffc6fa0e3
