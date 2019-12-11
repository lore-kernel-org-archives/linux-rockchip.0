From: Soeren Moch <smoch@web.de>
Subject: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Thu, 12 Dec 2019 00:52:44 +0100
Message-ID: <20191211235253.2539-1-smoch@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <netdev-owner@vger.kernel.org>
Sender: netdev-owner@vger.kernel.org
To: Kalle Valo <kvalo@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Soeren Moch <smoch@web.de>, linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add support for the BCM4359 chipset with SDIO interface and RSDB support
to the brcmfmac wireless network driver in patches 1-7.

Enhance devicetree of the RockPro64 arm64/rockchip board to use an
AP6359SA based wifi/bt combo module with this chipset in patches 8-9.


Chung-Hsien Hsu (1):
  brcmfmac: set F2 blocksize and watermark for 4359

Soeren Moch (5):
  brcmfmac: fix rambase for 4359/9
  brcmfmac: make errors when setting roaming parameters non-fatal
  brcmfmac: add support for BCM4359 SDIO chipset
  arm64: dts: rockchip: RockPro64: enable wifi module at sdio0
  arm64: dts: rockchip: RockPro64: hook up bluetooth at uart0

Wright Feng (3):
  brcmfmac: reset two D11 cores if chip has two D11 cores
  brcmfmac: add RSDB condition when setting interface combinations
  brcmfmac: not set mbss in vif if firmware does not support MBSS

 .../boot/dts/rockchip/rk3399-rockpro64.dts    | 50 +++++++++++---
 .../broadcom/brcm80211/brcmfmac/bcmsdh.c      |  8 ++-
 .../broadcom/brcm80211/brcmfmac/cfg80211.c    | 68 +++++++++++++++----
 .../broadcom/brcm80211/brcmfmac/chip.c        | 54 ++++++++++++++-
 .../broadcom/brcm80211/brcmfmac/chip.h        |  1 +
 .../broadcom/brcm80211/brcmfmac/pcie.c        |  2 +-
 .../broadcom/brcm80211/brcmfmac/sdio.c        | 17 +++++
 include/linux/mmc/sdio_ids.h                  |  2 +
 8 files changed, 176 insertions(+), 26 deletions(-)

=2D--
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

=2D-
2.17.1
