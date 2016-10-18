From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 3/4] PCI: rockchip: add COMPILE_TEST for Kconfig
Date: Tue, 18 Oct 2016 09:41:28 +0800
Message-ID: <1476754889-21804-3-git-send-email-shawn.lin@rock-chips.com>
References: <1476754889-21804-1-git-send-email-shawn.lin@rock-chips.com>
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1476754889-21804-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Wenrui Li <wenrui.li@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Add this could help build the driver if we enable
CONFIG_COMPILE_TEST.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/pci/host/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/host/Kconfig b/drivers/pci/host/Kconfig
index d7e7c0a..096440e 100644
--- a/drivers/pci/host/Kconfig
+++ b/drivers/pci/host/Kconfig
@@ -276,7 +276,7 @@ config PCIE_ARTPEC6
 
 config PCIE_ROCKCHIP
 	bool "Rockchip PCIe controller"
-	depends on ARCH_ROCKCHIP
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on OF
 	depends on PCI_MSI_IRQ_DOMAIN
 	select MFD_SYSCON
-- 
2.3.7
