From: William Wu <william.wu@rock-chips.com>
Subject: [PATCH v3 1/5] usb: dwc3: of-simple: add compatible for rockchip
Date: Fri, 27 May 2016 19:28:04 +0800
Message-ID: <1464348488-20760-2-git-send-email-william.wu@rock-chips.com>
References: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1464348488-20760-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: gregkh@linuxfoundation.org, balbi@kernel.org, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, briannorris@google.com, dianders@google.com, kever.yang@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com, eddie.cai@rock-chips.com, John.Youn@synopsys.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, William Wu <william.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip platform merely enable usb3 clocks and
populate its children. So we can use this generic
glue layer to support Rockchip dwc3.

Signed-off-by: William Wu <william.wu@rock-chips.com>
---
Changes in v3:
- None

Changes in v2:
- sort the list of_dwc3_simple_match (Doug)

 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 9743353..6da9656 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -161,6 +161,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 
 static const struct of_device_id of_dwc3_simple_match[] = {
 	{ .compatible = "qcom,dwc3" },
+	{ .compatible = "rockchip,dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ /* Sentinel */ }
 };
-- 
1.9.1
