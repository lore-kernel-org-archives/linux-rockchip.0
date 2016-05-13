From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH v2 0/5] support rockchip dwc3 driver
Date: Fri, 13 May 2016 17:24:56 +0800
Message-ID: <1463131501-22551-1-git-send-email-william.wu@rock-chips.com>
References: <1462794377-6528-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1462794377-6528-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, balbi@kernel.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This series add support for rockchip dwc3 driver,
and add additional optional properties for specific
platforms (e.g., rockchip platform).

William Wu (5):
  usb: dwc3: of-simple: add compatible for rockchip
  usb: dwc3: add dis_u2_freeclk_exists_quirk
  usb: dwc3: add phyif_utmi_quirk
  usb: dwc3: add dis_del_phy_power_chg_quirk
  usb: dwc3: rockchip: add devicetree bindings documentation

 Documentation/devicetree/bindings/usb/dwc3.txt     |  9 +++++
 .../devicetree/bindings/usb/rockchip,dwc3.txt      | 45 ++++++++++++++++++++++
 drivers/usb/dwc3/core.c                            | 39 ++++++++++++++++++-
 drivers/usb/dwc3/core.h                            | 20 ++++++++++
 drivers/usb/dwc3/dwc3-of-simple.c                  |  1 +
 drivers/usb/dwc3/platform_data.h                   |  4 ++
 6 files changed, 117 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt

-- 
1.9.1
