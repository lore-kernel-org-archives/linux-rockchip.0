From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH] usb: host: xhci: plat: check hcc_params after add hcd
Date: Fri, 13 Jan 2017 11:18:53 +0800
Message-ID: <1484277533-30273-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, groeck@google.com, william.wu@rock-chips.com, rogerq@ti.com, stern@rowland.harvard.edu
List-Id: linux-rockchip.vger.kernel.org

From: William wu <william.wu@rock-chips.com>

The commit 4ac53087d6d4 ("usb: xhci: plat: Create both
HCDs before adding them") move add hcd to the end of
probe, this cause hcc_params uninitiated, because xHCI
driver sets hcc_params in xhci_gen_setup() called from
usb_add_hcd().

This patch checks the Maximum Primary Stream Array Size
in the hcc_params register after add hcd.

Signed-off-by: William wu <william.wu@rock-chips.com>
---
 drivers/usb/host/xhci-plat.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index ddfab30..52ce697 100644
--- a/drivers/usb/host/xhci-plat.c
+++ b/drivers/usb/host/xhci-plat.c
@@ -232,9 +232,6 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	if (device_property_read_bool(&pdev->dev, "usb3-lpm-capable"))
 		xhci->quirks |= XHCI_LPM_SUPPORT;
 
-	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
-		xhci->shared_hcd->can_do_streams = 1;
-
 	hcd->usb_phy = devm_usb_get_phy_by_phandle(&pdev->dev, "usb-phy", 0);
 	if (IS_ERR(hcd->usb_phy)) {
 		ret = PTR_ERR(hcd->usb_phy);
@@ -255,6 +252,9 @@ static int xhci_plat_probe(struct platform_device *pdev)
 	if (ret)
 		goto dealloc_usb2_hcd;
 
+	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
+		xhci->shared_hcd->can_do_streams = 1;
+
 	return 0;
 
 
-- 
2.7.4
