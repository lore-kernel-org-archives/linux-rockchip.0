From: Christoph Muellner <christoph.muellner@theobroma-systems.com>
Subject: [PATCH] phy: rk-inno-usb2: Decrease verbosity of repeating log.
Date: Thu, 19 Mar 2020 15:08:52 +0100
Message-ID: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, heiko.stuebner@theobroma-systems.com, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Christoph Muellner <christoph.muellner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

phy-rockchip-inno-usb2 logs the message

  "phy-ff2c0000.syscon:usb2-phy@100.2: charger = INVALID_CHARGER"

constantly with a frequency of about 1 Hz and a verbosity level
of INFO. As this is clearly annoying, this patch decreases
the log level to DEBUG.

Signed-off-by: Christoph Muellner <christoph.muellner@theobroma-systems.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c8825c..a84e9f027fc4 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -763,7 +763,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 		/* put the controller in normal mode */
 		property_enable(base, &rphy->phy_cfg->chg_det.opmode, true);
 		rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);
-		dev_info(&rport->phy->dev, "charger = %s\n",
+		dev_dbg(&rport->phy->dev, "charger = %s\n",
 			 chg_to_string(rphy->chg_type));
 		return;
 	default:
-- 
2.20.1
