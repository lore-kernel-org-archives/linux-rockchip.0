From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v12 10/11] media: staging: rkisp1: add TODO file for staging
Date: Fri, 27 Dec 2019 17:01:15 -0300
Message-ID: <20191227200116.2612137-11-helen.koike@collabora.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191227200116.2612137-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, mchehab@kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org, andrey.konovalov@linaro.org, linux-kernel@vger.kernel.org, tfiga@chromium.org, robh+dt@kernel.org, hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com, joacim.zetterling@gmail.com, kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org, jacob-chen@iotwrt.com, linux-arm-kernel@lists.infradead.org, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Add TODO file with requirements to move this driver out of staging.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

Changes in v12: None
Changes in v11: None
Changes in v10: None
Changes in v9: None
Changes in v8: None
Changes in v7: None

 drivers/staging/media/rkisp1/TODO | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 drivers/staging/media/rkisp1/TODO

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
new file mode 100644
index 000000000000..03cd9a4e70f7
--- /dev/null
+++ b/drivers/staging/media/rkisp1/TODO
@@ -0,0 +1,23 @@
+* Fix serialization on subdev ops.
+* Don't use v4l2_async_notifier_parse_fwnode_endpoints_by_port().
+e.g. isp_parse_of_endpoints in drivers/media/platform/omap3isp/isp.c
+cio2_parse_firmware in drivers/media/pci/intel/ipu3/ipu3-cio2.c.
+* Fix pad format size for statistics and parameters entities.
+* Use threaded interrupt for rkisp1_stats_isr(), remove work queue.
+* Fix checkpatch errors.
+* Make sure uapi structs have the same size and layout in 32 and 62 bits,
+and that there are no holes in the structures (pahole is a utility that
+can be used to test this).
+* Review and comment every lock
+* Handle quantization
+* Document rkisp1-common.h
+* streaming paths (mainpath and selfpath) check if the other path is streaming
+in several places of the code, review this, specially that it doesn't seem it
+supports streaming from both paths at the same time.
+
+NOTES:
+* All v4l2-compliance test must pass.
+* Stats and params can be tested with libcamera and ChromiumOS stack.
+
+Please CC patches to Linux Media <linux-media@vger.kernel.org> and
+Helen Koike <helen.koike@collabora.com>.
-- 
2.24.0
