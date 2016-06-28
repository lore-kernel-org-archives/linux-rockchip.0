From: Chris Zhong <zyw@rock-chips.com>
Subject: [v4 PATCH 1/5] extcon: Add Type-C and DP support
Date: Tue, 28 Jun 2016 20:24:37 +0800
Message-ID: <1467116681-9330-2-git-send-email-zyw@rock-chips.com>
References: <1467116681-9330-1-git-send-email-zyw@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1467116681-9330-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, wulf@rock-chips.com
Cc: linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add EXTCON_DISP_DP for the Display external connector. For Type-C
connector the DisplayPort can work as an Alternate Mode(VESA
DisplayPort Alt Mode on USB Type-C Standard). At this mode, there
is some information need to be supplied by PowerDelivery or other
mode detecter: port orientation and pin assignments, so add these
2 virtual cable: EXTCON_TYPEC_POLARITY and EXTCON_TYPEC_PIN_ASSIGN.
If EXTCON_TYPEC_POLARITY is attached, the Type-C get flip orientation.
IF EXTCON_TYPEC_PIN_ASSIGN is attached, Type-C get Pin_Assignment_C(for
DP only mode) or Pin_Assignment_D(for DP + USB3 mode), the default
Assignment is A(for DP only mode) or B(for DP + USB3 mode).

Signed-off-by: Chris Zhong <zyw@rock-chips.com>

---

Changes in v4:
- remove DP alt mode

Changes in v3: None
Changes in v2: None
Changes in v1: None

 drivers/extcon/extcon.c | 5 +++++
 include/linux/extcon.h  | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
index 21a123c..44a575c 100644
--- a/drivers/extcon/extcon.c
+++ b/drivers/extcon/extcon.c
@@ -53,6 +53,10 @@ static const char *extcon_name[] =  {
 	[EXTCON_CHG_USB_FAST]		= "FAST-CHARGER",
 	[EXTCON_CHG_USB_SLOW]		= "SLOW-CHARGER",
 
+	/* Type-c connector */
+	[EXTCON_TYPEC_POLARITY]		= "TYPE-C-POLARITY",
+	[EXTCON_TYPEC_PIN_ASSIGN]	= "TYPE-C-PIN-ASSIGN",
+
 	/* Jack external connector */
 	[EXTCON_JACK_MICROPHONE]	= "MICROPHONE",
 	[EXTCON_JACK_HEADPHONE]		= "HEADPHONE",
@@ -68,6 +72,7 @@ static const char *extcon_name[] =  {
 	[EXTCON_DISP_MHL]		= "MHL",
 	[EXTCON_DISP_DVI]		= "DVI",
 	[EXTCON_DISP_VGA]		= "VGA",
+	[EXTCON_DISP_DP]		= "DP",
 
 	/* Miscellaneous external connector */
 	[EXTCON_DOCK]			= "DOCK",
diff --git a/include/linux/extcon.h b/include/linux/extcon.h
index 7abf674..38a5640 100644
--- a/include/linux/extcon.h
+++ b/include/linux/extcon.h
@@ -45,6 +45,10 @@
 #define EXTCON_CHG_USB_FAST	9
 #define EXTCON_CHG_USB_SLOW	10
 
+/* Type-c connector */
+#define EXTCON_TYPEC_POLARITY	11	/* Typec-C plug orientation */
+#define EXTCON_TYPEC_PIN_ASSIGN	12	/* Typec-C pin Assignment */
+
 /* Jack external connector */
 #define EXTCON_JACK_MICROPHONE	20
 #define EXTCON_JACK_HEADPHONE	21
@@ -60,6 +64,7 @@
 #define EXTCON_DISP_MHL		41	/* Mobile High-Definition Link */
 #define EXTCON_DISP_DVI		42	/* Digital Visual Interface */
 #define EXTCON_DISP_VGA		43	/* Video Graphics Array */
+#define EXTCON_DISP_DP		44	/* Display Port */
 
 /* Miscellaneous external connector */
 #define EXTCON_DOCK		60
-- 
2.6.3
