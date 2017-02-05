From: Frank Wang <frank.wang@rock-chips.com>
Subject: [RESEND PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Sun,  5 Feb 2017 10:51:00 +0800
Message-ID: <1486263061-10681-1-git-send-email-frank.wang@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: johnyoun@synopsys.com, gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, huangtao@rock-chips.com, kever.yang@rock-chips.com, william.wu@rock-chips.com, frank.wang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

The original posting on Jan 19th have not received any responses, so I resend them.

The Current default dwc2 just handle one clock named otg, however, it may have
two or more clock need to manage for some new SoCs(such as RK3328), so this
adds change clk to clk's array of dwc2_hsotg to handle more clocks operation.

Frank Wang (1):
  usb: dwc2: add multiple clock handling

 drivers/usb/dwc2/core.h     |  5 ++++-
 drivers/usb/dwc2/platform.c | 39 ++++++++++++++++++++++++++-------------
 2 files changed, 30 insertions(+), 14 deletions(-)

-- 
1.9.1
