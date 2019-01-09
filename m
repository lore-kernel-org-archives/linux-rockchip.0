From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2] phy: phy-rockchip-inno-usb2: drop reading the utmi-avalid property
Date: Wed,  9 Jan 2019 18:14:15 +0100
Message-ID: <20190109171415.9954-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, bleung@chromium.org, heiko@sntech.de, groeck@google.com, kieran.bingham@ideasonboard.com, Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

That property is no used in mainline and is not documented. The only
board using that property is the rk33-99-evb-rev1 and -rev2 in the
vendor kernel. The existence of a further -rev3 (which also looks way
better cared for compared rev1+2) indicates that the older ones are
probably some sort of preproduction models, where some wiring (on the soc
or board) may have gone wrong.

It is also not clear why this is a hardware-description or a DT
property, so, as noboby seems to care of this just drop reading that
property.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
Hi all,

This patch was send for the first time within these series [1], but
might have more sense sent alone as doesn't depedends on the rest of
the series, so, remove from these series and send a second version
that can be applied independently.

Best regards,
Enric

[1] https://lkml.org/lkml/2018/8/15/141

Changes in v2:
- Split from the first version and send as a separate patch.
- Include the research that Heiko did in the commit message.

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index a1f2253d60c1..ba07121c3eff 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -168,9 +168,6 @@ struct rockchip_usb2phy_cfg {
  * @phy: generic phy.
  * @port_id: flag for otg port or host port.
  * @suspended: phy suspended flag.
- * @utmi_avalid: utmi avalid status usage flag.
- *	true	- use avalid to get vbus status
- *	false	- use bvalid to get vbus status
  * @vbus_attached: otg device vbus status.
  * @bvalid_irq: IRQ number assigned for vbus valid rise detection.
  * @ls_irq: IRQ number assigned for linestate detection.
@@ -189,7 +186,6 @@ struct rockchip_usb2phy_port {
 	struct phy	*phy;
 	unsigned int	port_id;
 	bool		suspended;
-	bool		utmi_avalid;
 	bool		vbus_attached;
 	int		bvalid_irq;
 	int		ls_irq;
@@ -545,12 +541,8 @@ static void rockchip_usb2phy_otg_sm_work(struct work_struct *work)
 	unsigned long delay;
 	bool vbus_attach, sch_work, notify_charger;
 
-	if (rport->utmi_avalid)
-		vbus_attach = property_enabled(rphy->grf,
-					       &rport->port_cfg->utmi_avalid);
-	else
-		vbus_attach = property_enabled(rphy->grf,
-					       &rport->port_cfg->utmi_bvalid);
+	vbus_attach = property_enabled(rphy->grf,
+				       &rport->port_cfg->utmi_bvalid);
 
 	sch_work = false;
 	notify_charger = false;
@@ -1024,9 +1016,6 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	INIT_DELAYED_WORK(&rport->chg_work, rockchip_chg_detect_work);
 	INIT_DELAYED_WORK(&rport->otg_sm_work, rockchip_usb2phy_otg_sm_work);
 
-	rport->utmi_avalid =
-		of_property_read_bool(child_np, "rockchip,utmi-avalid");
-
 	/*
 	 * Some SoCs use one interrupt with otg-id/otg-bvalid/linestate
 	 * interrupts muxed together, so probe the otg-mux interrupt first,
-- 
2.20.1
