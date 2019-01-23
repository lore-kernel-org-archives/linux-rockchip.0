From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH] drm/rockchip: rgb: update SPDX license identifier
Date: Wed, 23 Jan 2019 18:14:39 +0800
Message-ID: <1548238479-171491-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: hjc@rock-chips.com, tglx@linutronix.de, heiko@sntech.de, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

update SPDX License Identifier from GPL-2.0+ to GPL-2.0
and drop some GPL text.

Signed-off-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 11 +----------
 drivers/gpu/drm/rockchip/rockchip_rgb.h | 11 +----------
 2 files changed, 2 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 96ac145..ad9358f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -1,17 +1,8 @@
-//SPDX-License-Identifier: GPL-2.0+
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
  * Author:
  *      Sandy Huang <hjc@rock-chips.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <drm/drmP.h>
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.h b/drivers/gpu/drm/rockchip/rockchip_rgb.h
index 38b52e6..27b9635 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.h
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.h
@@ -1,17 +1,8 @@
-//SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
  * Author:
  *      Sandy Huang <hjc@rock-chips.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #ifdef CONFIG_ROCKCHIP_RGB
-- 
2.7.4
