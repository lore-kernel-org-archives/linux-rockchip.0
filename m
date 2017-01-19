From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 0/1] add multiple clock handling for dwc2 driver
Date: Thu, 19 Jan 2017 16:00:02 +0800
Message-ID: <1484812803-8444-1-git-send-email-frank.wang@rock-chips.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The Current default dwc2 just handle one clock named otg, however, it may have
two or more clock need to manage for some new SoCs(such as RK3328), so this
adds change clk to clk's array of dwc2_hsotg to handle more clocks operation.

Frank Wang (1):
  usb: dwc2: add multiple clock handling

 drivers/usb/dwc2/core.h     |  5 ++++-
 drivers/usb/dwc2/platform.c | 39 ++++++++++++++++++++++++++-------------
 2 files changed, 30 insertions(+), 14 deletions(-)

-- 
2.0.0


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
