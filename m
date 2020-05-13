From: Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v5 10/16] usb: dwc3: Enable AutoRetry feature in the controller
Date: Wed, 13 May 2020 15:17:04 +0800
Message-ID: <20200513071710.5651-1-frank.wang@rock-chips.com>
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200513071344.5430-1-frank.wang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: heiko@sntech.de, marex@denx.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Jagan Teki <jagan@amarulasolutions.com>

By default when core sees any transaction error (CRC or overflow) it
replies with terminating retry ACK (Retry=1 and Nump == 0).

Enabling this Auto Retry feature in controller will make the core send
a non-terminanting ACK upon such transaction errors. That is, ACK TP
with Retry=1 and Nump != 0.

Doing so will give controller a chance to recover from transient error
conditions.

Reference from below Linux commit,

commit <b138e23d3dff> ("usb: dwc3: core: Enable AutoRetry feature
in the controller")

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/usb/dwc3/core.c | 9 +++++++++
 drivers/usb/dwc3/core.h | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index dc92f471c1..aab6c34c2d 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -995,6 +995,15 @@ int dwc3_init(struct dwc3 *dwc)
 		dwc3_writel(dwc->regs, DWC3_GUCTL1, reg);
 	}
 
+	if (dwc->dr_mode == USB_DR_MODE_HOST ||
+	    dwc->dr_mode == USB_DR_MODE_OTG) {
+		reg = dwc3_readl(dwc->regs, DWC3_GUCTL);
+
+		reg |= DWC3_GUCTL_HSTINAUTORETRY;
+
+		dwc3_writel(dwc->regs, DWC3_GUCTL, reg);
+	}
+
 	ret = dwc3_core_init_mode(dwc);
 	if (ret)
 		goto mode_fail;
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index b510d8a983..2adcaf0029 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -160,6 +160,9 @@
 #define DWC3_GCTL_GBLHIBERNATIONEN	(1 << 1)
 #define DWC3_GCTL_DSBLCLKGTNG		(1 << 0)
 
+/* Global User Control Register */
+#define DWC3_GUCTL_HSTINAUTORETRY	BIT(14)
+
 /* Global User Control 1 Register */
 #define DWC3_GUCTL1_TX_IPGAP_LINECHECK_DIS	BIT(28)
 #define DWC3_GUCTL1_DEV_L1_EXIT_BY_HW	BIT(24)
-- 
2.17.1
