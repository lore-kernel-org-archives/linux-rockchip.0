From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v3 5/6] dt-bindings: add the rockchip,dual-channel for dw-mipi-dsi
Date: Wed, 25 Oct 2017 11:51:02 +0800
Message-ID: <1508903463-7254-5-git-send-email-nickey.yang@rock-chips.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.comg, xbl@rock-chips.com, nickey.yang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Configure dsi slave channel when driving a panel
which needs 2 DSI links.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
---
 .../devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt       | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 6bb59ab..a2bea22 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -19,6 +19,8 @@ Optional properties:
 - power-domains: a phandle to mipi dsi power domain node.
 - resets: list of phandle + reset specifier pairs, as described in [3].
 - reset-names: string reset name, must be "apb".
+- rockchip,dual-channel: phandle to a 2nd DSI channel, useful as a slave
+channel when driving a panel which needs 2 DSI links.
 
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
 [2] Documentation/devicetree/bindings/media/video-interfaces.txt
-- 
1.9.1
