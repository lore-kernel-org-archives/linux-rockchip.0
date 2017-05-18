From: Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 0/4] fix some issues for Rockchip usb2-phy and add rk322x SoCs' support
Date: Thu, 18 May 2017 11:42:58 +0800
Message-ID: <1495078982-2555-1-git-send-email-frank.wang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, kishon@ti.com, william.wu@rock-chips.com
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, charles.chen@rock-chips.com, cody.xie@rock-chips.com, kevan.lan@rock-chips.com, huangtao@rock-chips.com, wmc@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

These series of patches fix some issues for rockchip usb2-phy and amend
usb2-phy framework to support one phy which comprises with two host-ports.

In addition, this change also add rk322x usb2-phy support.

Frank Wang (1):
  phy: rockchip-inno-usb2: add support of usb2-phy for rk322x SoCs

William Wu (3):
  phy: rockchip-inno-usb2: add a delay after phy resume
  phy: rockchip-inno-usb2: increase otg sm work first schedule time
  phy: rockchip-inno-usb2: add one phy comprises with two host-ports    
    support

 .../bindings/phy/phy-rockchip-inno-usb2.txt        |  1 +
 drivers/phy/phy-rockchip-inno-usb2.c               | 74 ++++++++++++++++++++--
 2 files changed, 71 insertions(+), 4 deletions(-)

-- 
2.0.0
