From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [v9 PATCH 1/6] extcon: Add EXTCON_DISP_DP and the property for USB
 Type-C
Date: Tue,  2 Aug 2016 20:45:08 +0800
Message-ID: <1470141913-1082-2-git-send-email-zyw@rock-chips.com>
References: <1470141913-1082-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1470141913-1082-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, yzq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org, marcheu-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Add EXTCON_DISP_DP for the Display external connector. For Type-C
connector the DisplayPort can work as an Alternate Mode(VESA DisplayPort
Alt Mode on USB Type-C Standard). The Type-C support both normal
and flipped orientation, so add a property to extcon.

Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Reviewed-by: Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---

Changes in v9: None
Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None
Changes in v1: None

 drivers/extcon/extcon.c | 5 +++++
 include/linux/extcon.h  | 8 +++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
index 68890bb..6c7488a 100644
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
diff --git a/include/linux/extcon.h b/include/linux/extcon.h
index f686204..9670d3f 100644
--- a/include/linux/extcon.h
+++ b/include/linux/extcon.h
@@ -69,6 +69,7 @@
 #define EXTCON_DISP_MHL		41	/* Mobile High-Definition Link */
 #define EXTCON_DISP_DVI		42	/* Digital Visual Interface */
 #define EXTCON_DISP_VGA		43	/* Video Graphics Array */
+#define EXTCON_DISP_DP		44	/* Display Port */
 
 /* Miscellaneous external connector */
 #define EXTCON_DOCK		60
@@ -106,12 +107,17 @@
  * @type:	integer (intval)
  * @value:	0 (low) or 1 (high)
  * @default:	0 (low)
+ * - EXTCON_PROP_USB_TYPEC_POLARITY
+ * @type:	integer (intval)
+ * @value:	0 (normal) or 1 (flip)
+ * @default:	0 (normal)
  */
 #define EXTCON_PROP_USB_ID		0
 #define EXTCON_PROP_USB_VBUS		1
+#define EXTCON_PROP_USB_TYPEC_POLARITY	2
 
 #define EXTCON_PROP_USB_MIN		0
-#define EXTCON_PROP_USB_MAX		1
+#define EXTCON_PROP_USB_MAX		2
 #define EXTCON_PROP_USB_CNT	(EXTCON_PROP_USB_MAX - EXTCON_PROP_USB_MIN + 1)
 
 /* Properties of EXTCON_TYPE_CHG. */
-- 
2.6.3
