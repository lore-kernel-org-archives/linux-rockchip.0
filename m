From: "Marty E. Plummer" <hanetzer@startmail.com>
Subject: [PATCH] drm/rockchip: typo: selet->select
Date: Sun, 23 Sep 2018 09:20:05 -0500
Message-ID: <20180923142005.23915-1-hanetzer@startmail.com>
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
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: "Marty E. Plummer" <hanetzer@startmail.com>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 0ccc76217ee4..7d1ccc9efc76 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -23,7 +23,7 @@ config ROCKCHIP_ANALOGIX_DP
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Analogix Core DP driver. If you want to enable DP
-	  on RK3288 based SoC, you should selet this option.
+	  on RK3288 based SoC, you should select this option.
 
 config ROCKCHIP_CDN_DP
         bool "Rockchip cdn DP"
@@ -39,7 +39,7 @@ config ROCKCHIP_DW_HDMI
         help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Synopsys DesignWare HDMI driver. If you want to
-	  enable HDMI on RK3288 based SoC, you should selet this
+	  enable HDMI on RK3288 based SoC, you should select this
 	  option.
 
 config ROCKCHIP_DW_MIPI_DSI
@@ -47,7 +47,7 @@ config ROCKCHIP_DW_MIPI_DSI
 	help
 	 This selects support for Rockchip SoC specific extensions
 	 for the Synopsys DesignWare HDMI driver. If you want to
-	 enable MIPI DSI on RK3288 based SoC, you should selet this
+	 enable MIPI DSI on RK3288 based SoC, you should select this
 	 option.
 
 config ROCKCHIP_INNO_HDMI
-- 
2.19.0
