From: Randy Li <randy.li@rock-chips.com>
Subject: [PATCH v2 4/6] staging: video: rockchip: add video codec
Date: Thu,  7 Mar 2019 18:03:14 +0800
Message-ID: <20190307100316.925-5-randy.li@rock-chips.com>
References: <20190307100316.925-1-randy.li@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190307100316.925-1-randy.li@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-media@vger.kernel.org
Cc: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com, joro@8bytes.org, Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, posciak@chromium.org, thomas.petazzoni@bootlin.com, groeck@chromium.org, mchehab@kernel.org, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy Li <ayaka@soulik.info>

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 drivers/staging/Kconfig  | 2 ++
 drivers/staging/Makefile | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index c0901b96cfe4..5f84035e2a89 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -124,4 +124,6 @@ source "drivers/staging/axis-fifo/Kconfig"
 
 source "drivers/staging/erofs/Kconfig"
 
+source "drivers/staging/rockchip-mpp/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 57c6bce13ff4..fc3ed97a0eab 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -52,3 +52,4 @@ obj-$(CONFIG_SOC_MT7621)	+= mt7621-dts/
 obj-$(CONFIG_STAGING_GASKET_FRAMEWORK)	+= gasket/
 obj-$(CONFIG_XIL_AXIS_FIFO)	+= axis-fifo/
 obj-$(CONFIG_EROFS_FS)		+= erofs/
+obj-$(CONFIG_ROCKCHIP_MPP_SERVICE)	+= rockchip-mpp/
-- 
2.20.1
