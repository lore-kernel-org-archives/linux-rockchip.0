From: Philippe Cornu <philippe.cornu@st.com>
Subject: [PATCH v2] drm/bridge/synopsys: dsi: Adopt SPDX identifiers
Date: Thu, 8 Feb 2018 15:58:05 +0100
Message-ID: <20180208145805.24762-1-philippe.cornu@st.com>
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
To: Archit Taneja <architt@codeaurora.org>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Philippe Cornu <philippe.cornu@st.com>, Brian Norris <briannorris@chromium.org>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Bhumika Goyal <bhumirks@gmail.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Heiko Stubner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Yannick Fertre <yannick.fertre@st.com>, Vincent Abriou <vincent.abriou@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, Philippe Ombredanne <pombredanne@nexb.com>
List-Id: linux-rockchip.vger.kernel.org

Add SPDX identifiers to the Synopsys DesignWare MIPI DSI
host controller driver.

Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
---
Changes in v2: Update to "GPL-2.0+" following comments from Laurent
Pinchart, Benjamin Gaignard & Philippe Ombredanne.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 7bac101c285c..99f0e4f51716 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -1,12 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
  * Copyright (C) STMicroelectronics SA 2017
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
  * Modified by Philippe Cornu <philippe.cornu@st.com>
  * This generic Synopsys DesignWare MIPI DSI host driver is based on the
  * Rockchip version from rockchip/dw-mipi-dsi.c with phy & bridge APIs.
-- 
2.15.1
