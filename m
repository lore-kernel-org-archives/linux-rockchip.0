From: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH] phy: Add reset callback for not generic phy
Date: Tue, 25 Oct 2016 22:15:34 +0800
Message-ID: <1477404934-7425-1-git-send-email-ayaka@soulik.info>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

I forget to add a dummy function in case the CONFIG_GENERIC_PHY
is disabled.

Signed-off-by: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
---
 include/linux/phy/phy.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index ee1bed7..78bb0d7 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -253,6 +253,13 @@ static inline int phy_set_mode(struct phy *phy, enum phy_mode mode)
 	return -ENOSYS;
 }
 
+static inline int phy_reset(struct phy *phy)
+{
+	if (!phy)
+		return 0;
+	return -ENOSYS;
+}
+
 static inline int phy_get_bus_width(struct phy *phy)
 {
 	return -ENOSYS;
-- 
2.7.4

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
