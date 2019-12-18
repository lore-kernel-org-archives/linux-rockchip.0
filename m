From: Soeren Moch <smoch@web.de>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: RockPro64: enable wifi/bt
Date: Wed, 18 Dec 2019 23:35:21 +0100
Message-ID: <20191218223523.30154-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Enhance devicetree of the RockPro64 arm64/rockchip board to use an
AP6359SA based wifi/bt combo module.

Patches 1-7 of version 2 of this patch series (to add support for the
BCM4359 chipset with SDIO interface to the brcmfmac wireless network
driver) are already picked up for wireless-drivers-next. So this
version 3 only contains the patches 8-9 from v2.


Soeren Moch (2):
  arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
  arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0

 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 ++++++++++++++++---
 1 file changed, 42 insertions(+), 8 deletions(-)

=2D--
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
=2D-
2.17.1
