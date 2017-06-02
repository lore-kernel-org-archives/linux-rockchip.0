From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] MAINTAINERS: update maintainer for rockchip PCIe driver
Date: Fri,  2 Jun 2017 15:42:13 +0800
Message-ID: <1496389333-234834-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Wenrui Li changed his employer and is no longer able to
maintain this driver. So remove his email address from this
file.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 MAINTAINERS | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9609ca6..5066ebe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10005,7 +10005,6 @@ F:	drivers/pci/dwc/pcie-hisi.c
 
 PCIE DRIVER FOR ROCKCHIP
 M:	Shawn Lin <shawn.lin@rock-chips.com>
-M:	Wenrui Li <wenrui.li@rock-chips.com>
 L:	linux-pci@vger.kernel.org
 L:	linux-rockchip@lists.infradead.org
 S:	Maintained
-- 
1.9.1
