From: Chris Zhong <zyw@rock-chips.com>
Subject: [v6 PATCH 1/6] extcon: Add Type-C and DP support
Date: Thu, 21 Jul 2016 21:13:23 +0800
Message-ID: <1469106808-28297-2-git-send-email-zyw@rock-chips.com>
References: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1469106808-28297-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, wulf@rock-chips.com, marcheu@chromium.org
Cc: linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add EXTCON_DISP_DP for the Display external connector. For Type-C
connector the DisplayPort can work as an Alternate Mode(VESA DisplayPort
Alt Mode on USB Type-C Standard). The Type-C support both normal and
flipped orientation, so add a property to extcon.

Signe-off-by: Chris Zhong <zyw@rock-chips.com>

Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---

Changes in v6:
- move the EXTCON_PROP_TYPEC_POLARITY to EXTCON_TYPE_USB in _supported
Series-changes: 5
- support get property

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None
Changes in v1: None

 drivers/extcon/extcon.c | 26 ++++++++++++++++++++++++++
 include/linux/extcon.h  | 13 +++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
index a1117db..f79b510 100644
--- a/drivers/extcon/extcon.c
+++ b/drivers/extcon/extcon.c
@@ -157,6 +157,11 @@ struct __extcon_info {
 		.id = EXTCON_DISP_VGA,
 		.name = "VGA",
 	},
+	[EXTCON_DISP_DP] = {
+		.type = EXTCON_TYPE_DISP | EXTCON_TYPE_USB,
+		.id = EXTCON_DISP_DP,
+		.name = "DP",
+	},
 
 	/* Miscellaneous external connector */
 	[EXTCON_DOCK] = {
@@ -270,6 +275,7 @@ static bool is_extcon_property_supported(unsigned int id,
 		switch (prop) {
 		case EXTCON_PROP_USB_ID:
 		case EXTCON_PROP_USB_VBUS:
+		case EXTCON_PROP_TYPEC_POLARITY:
 			return true;
 		default:
 			break;
@@ -547,6 +553,26 @@ int extcon_get_cable_property(struct extcon_dev *edev, unsigned int id,
 				enum extcon_property prop,
 				union extcon_property_value *val)
 {
+	struct extcon_cable *cable;
+	int index;
+
+	if (!edev)
+		return -EINVAL;
+
+	/* Check the property whether is supported or not */
+	if (!is_extcon_property_supported(id, prop))
+		return -EINVAL;
+
+	/* Find the cable index of external connector by using id */
+	index = find_cable_index_by_id(edev, id);
+	if (index < 0)
+		return index;
+
+	/* Store the property value */
+	cable = &edev->cables[index];
+
+	val->intval = cable->propval[prop].intval;
+
 	return 0;
 }
 
diff --git a/include/linux/extcon.h b/include/linux/extcon.h
index f6f0a8d..50ef87f 100644
--- a/include/linux/extcon.h
+++ b/include/linux/extcon.h
@@ -77,6 +77,7 @@ enum extcon_type {
 #define EXTCON_DISP_MHL		41	/* Mobile High-Definition Link */
 #define EXTCON_DISP_DVI		42	/* Digital Visual Interface */
 #define EXTCON_DISP_VGA		43	/* Video Graphics Array */
+#define EXTCON_DISP_DP		44	/* DisplayPort */
 
 /* Miscellaneous external connector */
 #define EXTCON_DOCK		60
@@ -108,9 +109,13 @@ enum extcon_property {
 	 * - EXTCON_PROP_USB_USB
 	 * @type:	integer (int value)
 	 * @value:	0 (low) or 1 (high)
+	 * - EXTCON_PROP_TYPEC_POLARITY,
+	 * @type:	integer (int value)
+	 * @value:	0 (normal) or 1 (flip)
 	 */
 	EXTCON_PROP_USB_ID = 0,
 	EXTCON_PROP_USB_VBUS,
+	EXTCON_PROP_TYPEC_POLARITY,
 
 	/* Properties of EXTCON_TYPE_CHG. */
 	/* Properties of EXTCON_TYPE_JACK. */
@@ -225,6 +230,14 @@ extern int extcon_get_cable_state_(struct extcon_dev *edev, unsigned int id);
 extern int extcon_set_cable_state_(struct extcon_dev *edev, unsigned int id,
 				   bool cable_state);
 
+extern int extcon_get_cable_property(struct extcon_dev *edev, unsigned int id,
+				     enum extcon_property prop,
+				     union extcon_property_value *val);
+
+extern int extcon_set_cable_property(struct extcon_dev *edev, unsigned int id,
+				     enum extcon_property prop,
+				     union extcon_property_value val);
+
 /*
  * Following APIs are to monitor every action of a notifier.
  * Registrar gets notified for every external port of a connection device.
-- 
2.6.3
