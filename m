From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 6/6] MAINTAINERS: Update PCIe drivers for Rockchip
Date: Thu, 13 Feb 2020 14:10:48 +0800
Message-ID: <1581574248-241030-2-git-send-email-shawn.lin@rock-chips.com>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574248-241030-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1581574248-241030-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Lorenzo Pieralisi <lorenzo.pieralisi-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Jingoo Han <jingoohan1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2: None

 MAINTAINERS | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index ad462f6..31682ae 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13025,11 +13025,13 @@ F:	drivers/pci/controller/dwc/*qcom*
 
 PCIE DRIVER FOR ROCKCHIP
 M:	Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
+M:	Simon Xue <xxm-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 L:	linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
 L:	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/pci/rockchip-pcie*
+F:	Documentation/devicetree/bindings/pci/*rockchip*
 F:	drivers/pci/controller/pcie-rockchip*
+F:	drivers/pci/controller/dwc/*rockchip*
 
 PCI DRIVER FOR V3 SEMICONDUCTOR V360EPC
 M:	Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
-- 
1.9.1
