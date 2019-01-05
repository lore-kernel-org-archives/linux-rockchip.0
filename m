From: Randy Li <ayaka@soulik.info>
Subject: [PATCH 3/4] staging: video: rockchip: add video codec
Date: Sun,  6 Jan 2019 02:31:49 +0800
Message-ID: <20190105183150.20266-4-ayaka@soulik.info>
References: <20190105183150.20266-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190105183150.20266-1-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Randy Li <ayaka@soulik.info>, nicolas.dufresne@collabora.com, myy@miouyouyou.fr, paul.kocialkowski@bootlin.com, mchehab@kernel.org, linux-media@vger.kernel.org, hverkuil@xs4all.nl, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 drivers/staging/Kconfig  | 2 ++
 drivers/staging/Makefile | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index e4f608815c05..81634dd0a283 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -122,4 +122,6 @@ source "drivers/staging/axis-fifo/Kconfig"
 
 source "drivers/staging/erofs/Kconfig"
 
+source "drivers/staging/rockchip-mpp/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 5868631e8f1b..22499c68c21e 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -51,3 +51,4 @@ obj-$(CONFIG_SOC_MT7621)	+= mt7621-dts/
 obj-$(CONFIG_STAGING_GASKET_FRAMEWORK)	+= gasket/
 obj-$(CONFIG_XIL_AXIS_FIFO)	+= axis-fifo/
 obj-$(CONFIG_EROFS_FS)		+= erofs/
+obj-$(CONFIG_ROCKCHIP_MPP_SERVICE)	+= rockchip-mpp/
-- 
2.20.1
