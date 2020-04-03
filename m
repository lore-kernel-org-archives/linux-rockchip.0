From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 5/9] dt-bindings: phy: phy-rockchip-dphy-rx0: move rockchip dphy rx0 bindings out of staging
Date: Fri,  3 Apr 2020 13:15:34 -0300
Message-ID: <20200403161538.1375908-6-helen.koike@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403161538.1375908-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, kishon@ti.com
List-Id: linux-rockchip.vger.kernel.org

Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy

Verified with:
make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---

V2:
- no changes

 .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
similarity index 100%
rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
-- 
2.26.0
