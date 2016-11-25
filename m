From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: [patch] phy: rockchip-inno-usb2: remove an unneeded check
Date: Fri, 25 Nov 2016 14:18:52 +0300
Message-ID: <20161125111852.GF5938@mwanda>
References: <81fc5933-7bee-2d83-f8ef-a951355c4248@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <81fc5933-7bee-2d83-f8ef-a951355c4248-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, wlf <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

"rphy->edev" can't be an error pointer so we can remove the check and
pull the code in an indent level.

Signed-off-by: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

diff --git a/drivers/phy/phy-rockchip-inno-usb2.c b/drivers/phy/phy-rockchip-inno-usb2.c
index 2f99ec9..7494210 100644
--- a/drivers/phy/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/phy-rockchip-inno-usb2.c
@@ -995,14 +995,11 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 		goto out;
 	}
 
-	if (!IS_ERR(rphy->edev)) {
-		rport->event_nb.notifier_call = rockchip_otg_event;
-
-		ret = extcon_register_notifier(rphy->edev, EXTCON_USB_HOST,
-					       &rport->event_nb);
-		if (ret)
-			dev_err(rphy->dev, "register USB HOST notifier failed\n");
-	}
+	rport->event_nb.notifier_call = rockchip_otg_event;
+	ret = extcon_register_notifier(rphy->edev, EXTCON_USB_HOST,
+				       &rport->event_nb);
+	if (ret)
+		dev_err(rphy->dev, "register USB HOST notifier failed\n");
 
 out:
 	return ret;
