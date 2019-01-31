From: ayaka <ayaka@soulik.info>
Subject: [PATCH 4/4] staging: video: rockchip: add video codec
Date: Thu, 31 Jan 2019 11:13:33 +0800
Message-ID: <20190131031333.11905-5-ayaka@soulik.info>
References: <20190131031333.11905-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190131031333.11905-1-ayaka@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: Randy Li <ayaka@soulik.info>, acourbot@chromium.org, nicolas@ndufresne.ca, paul.kocialkowski@bootlin.com, randy.li@rock-chips.com, jernej.skrabec@gmail.com, linux-kernel@vger.kernel.org, joro@8bytes.org, linux-arm-kernel@lists.infradead.org, mchehab@kernel.org, maxime.ripard@bootlin.com, hverkuil@xs4all.nl, ezequiel@collabora.com, thomas.petazzoni@bootlin.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy Li <ayaka@soulik.info>

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
