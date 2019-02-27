From: Yue Haibing <yuehaibing@huawei.com>
Subject: [PATCH -next] media: rockchip-vpu: Remove duplicated include from rockchip_vpu_drv.c
Date: Wed, 27 Feb 2019 13:57:23 +0800
Message-ID: <20190227055723.27488-1-yuehaibing@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: mchehab@kernel.org, gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org, linux-media@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>
List-Id: linux-rockchip.vger.kernel.org

From: YueHaibing <yuehaibing@huawei.com>

Remove duplicated include.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 962412c..5761146 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -22,7 +22,6 @@
 #include <media/v4l2-event.h>
 #include <media/v4l2-mem2mem.h>
 #include <media/videobuf2-core.h>
-#include <media/videobuf2-core.h>
 #include <media/videobuf2-vmalloc.h>
 
 #include "rockchip_vpu_common.h"
-- 
2.7.0
