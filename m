From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 00/11] Add PX30 LVDS support
Date: Tue, 24 Dec 2019 15:38:49 +0100
Message-ID: <20191224143900.23567-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Hello,

This series aims at supporting LVDS on PX30.

A first couple of patches update the documentation with the new
compatible and the presence of a PHY. Then, the existing Rockchip
driver is cleaned and extended to support PX30 specificities. Finally,
the PX30 DTSI is updated with CRTC routes, the DSI DPHY and the LVDS
IP itself.

Cheers,
Miquèl

Changes since v1:
* Added Rob's Ack.
* Used "must" instead of "should" in the bindings.
* Precised that phy-names is an optional property in the case of
  PX30.
* Renamed the WRITE_EN macro into HIWORD_UPDATE to be aligned with
  other files.
* Removed extra configuration, not needed for generic panels (see
  Sandy Huang answer).
* Dropped the display-subsystem routes (useless).
* Merged two patches to avoid phandle interdependencies in graphs and
  intermediate build errors.

Miquel Raynal (11):
  dt-bindings: display: rockchip-lvds: Declare PX30 compatible
  dt-bindings: display: rockchip-lvds: Document PX30 PHY
  drm/rockchip: lvds: Fix indentation of a #define
  drm/rockchip: lvds: Harmonize function names
  drm/rockchip: lvds: Change platform data
  drm/rockchip: lvds: Create an RK3288 specific probe function
  drm/rockchip: lvds: Helpers should return decent values
  drm/rockchip: lvds: Pack functions together
  drm/rockchip: lvds: Add PX30 support
  arm64: dts: rockchip: Add PX30 DSI DPHY
  arm64: dts: rockchip: Add PX30 LVDS

 .../display/rockchip/rockchip-lvds.txt        |   4 +
 arch/arm64/boot/dts/rockchip/px30.dtsi        |  48 ++
 drivers/gpu/drm/rockchip/rockchip_lvds.c      | 486 ++++++++++++------
 drivers/gpu/drm/rockchip/rockchip_lvds.h      |  19 +-
 4 files changed, 401 insertions(+), 156 deletions(-)

-- 
2.20.1
