From: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] usb: dwc3: add DWC3_GUCTL1 reg for debug
Date: Fri, 13 May 2016 18:05:26 +0800
Message-ID: <1463133926-7366-1-git-send-email-william.wu@rock-chips.com>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

GUCTL1 reg has some useful functions which can be
written by user. For rockchip platform, we set
GUCTL1.DEV_FORCE_20_CLK_FOR_30_CLK (bit26, applicable
for the core is programmed to operate in 2.0 device
only) to 1 in bootrom, and after start the kernel,
we want to check whether this bit can be reset to
default 0 after the core reset. Dump GUCTL1 reg from
debugfs is more convenient for us.

Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes in v2:
- add commit log

 drivers/usb/dwc3/core.h    | 1 +
 drivers/usb/dwc3/debugfs.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index abed84f..c4758d5 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -86,6 +86,7 @@
 #define DWC3_GCTL		0xc110
 #define DWC3_GEVTEN		0xc114
 #define DWC3_GSTS		0xc118
+#define DWC3_GUCTL1		0xc11c
 #define DWC3_GSNPSID		0xc120
 #define DWC3_GGPIO		0xc124
 #define DWC3_GUID		0xc128
diff --git a/drivers/usb/dwc3/debugfs.c b/drivers/usb/dwc3/debugfs.c
index b1dd3c6..f3c9f44 100644
--- a/drivers/usb/dwc3/debugfs.c
+++ b/drivers/usb/dwc3/debugfs.c
@@ -47,6 +47,7 @@ static const struct debugfs_reg32 dwc3_regs[] = {
 	dump_register(GCTL),
 	dump_register(GEVTEN),
 	dump_register(GSTS),
+	dump_register(GUCTL1),
 	dump_register(GSNPSID),
 	dump_register(GGPIO),
 	dump_register(GUID),
-- 
1.9.1


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
