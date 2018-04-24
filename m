From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH 0/2] usb: dwc2: fix isoc split in transfer issue
Date: Tue, 24 Apr 2018 10:43:42 +0800
Message-ID: <1524537824-22010-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: hminas@synopsys.com, felipe.balbi@linux.intel.com, gregkh@linuxfoundation.org
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, william.wu@rock-chips.com, wzz@rock-chips.com, zsq@rock-chips.com, Allen.Hsu@quantatw.com, StanTsui@AOPEN.com
List-Id: linux-rockchip.vger.kernel.org

This patch fix dma unaligned problem and data lost problem for
isoc split in transfer.

Test on rk3288 platform, use an usb hs Hub (GL852G-12) and an usb
fs audio device (Plantronics headset) to capture and playback.

William Wu (2):
  usb: dwc2: alloc dma aligned buffer for isoc split in
  usb: dwc2: fix isoc split in transfer with no data

 drivers/usb/dwc2/hcd.c       | 63 +++++++++++++++++++++++++++++++++++++++++---
 drivers/usb/dwc2/hcd.h       | 10 +++++++
 drivers/usb/dwc2/hcd_intr.c  | 10 ++++++-
 drivers/usb/dwc2/hcd_queue.c |  8 +++++-
 4 files changed, 86 insertions(+), 5 deletions(-)

-- 
2.0.0
