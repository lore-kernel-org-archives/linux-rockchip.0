From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
Date: Fri, 18 Oct 2019 00:37:07 +0530
Message-ID: <20191017190710.29985-3-jagan@amarulasolutions.com>
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

idbloader.img name is specific to rockchip, where it usually
created using rockchip tools. Since the image is created as
per U-Boot generic builds like SPL, better to follow the
generic U-Boot naming notation like other SoC's following.

Enable idbloader.img with u-boot-spl-rockchip.bin and create
the same in spl directory since it is SPL file and Makefile.spl
will clean it by default.

Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Matwey V. Kornilov <matwey.kornilov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index ec55e0f6a4..918b5d53e0 100644
--- a/Makefile
+++ b/Makefile
@@ -887,7 +887,7 @@ ALL-y += u-boot-with-dtb.bin
 endif
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
-ALL-y += idbloader.img
+ALL-y += spl/u-boot-spl-rockchip.bin
 endif
 
 LDFLAGS_u-boot += $(LDFLAGS_FINAL)
@@ -1344,7 +1344,7 @@ endif
 MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+spl/u-boot-spl-rockchip.bin: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3
