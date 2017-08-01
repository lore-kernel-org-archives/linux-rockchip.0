From: Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 0/3] add some quirks for Rockchip usb2-phy and add rv1108 SoCs' support
Date: Tue,  1 Aug 2017 16:12:10 +0800
Message-ID: <1501575133-20953-1-git-send-email-frank.wang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, kishon@ti.com, gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, william.wu@rock-chips.com, daniel.meng@rock-chips.com, kever.yang@rock-chips.com, andy.yan@rock-chips.com, wmc@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

These series of patches add companion_grf_quirk and otg_mux_irq_quirk for
rockchip usb2-phy. In addition, this change also add rv1108 usb2-phy support.

Frank Wang (3):
  phy: rockchip-inno-usb2: add companion grf quirk
  phy: rockchip-inno-usb2: add otg mux irq quirk
  phy: rockchip-inno-usb2: add support of usb2-phy for rv1108 SoCs

 .../bindings/phy/phy-rockchip-inno-usb2.txt        |  10 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      | 223 ++++++++++++++++-----
 2 files changed, 182 insertions(+), 51 deletions(-)

-- 
2.0.0
