From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH v3 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Date: Thu, 30 Apr 2020 18:42:41 +0200
Message-ID: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA driver.
It also contains a fix for the YUV2YUV case that was not properly handled.

Changes since v2:
- Used RK3288 compatible in PX30 dts, removed PX30 compatible from driver;
- Added cleanup patch with format macros;
- Added comment about CSC mode fix.

Changes since v1:
- Rebased on media tree master (changed dt binding to yaml);
- Removed spurious line removal.

Cheers,

Paul

Paul Kocialkowski (4):
  dt-bindings: rockchip-rga: Add PX30 compatible
  arm64: dts: rockchip: Add RGA support to the PX30
  media: rockchip: rga: Introduce color fmt macros and refactor CSC mode
    logic
  media: rockchip: rga: Only set output CSC mode for RGB input

 .../bindings/media/rockchip-rga.yaml          |  3 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        | 11 +++++++
 drivers/media/platform/rockchip/rga/rga-hw.c  | 29 ++++++++++---------
 drivers/media/platform/rockchip/rga/rga-hw.h  |  5 ++++
 4 files changed, 35 insertions(+), 13 deletions(-)

-- 
2.26.0
