From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 4/6] PCI: dwc: Fix kerneldoc
Date: Wed, 29 Jul 2020 22:12:22 +0200
Message-ID: <20200729201224.26799-5-krzk@kernel.org>
References: <20200729201224.26799-1-krzk@kernel.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200729201224.26799-1-krzk@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Fix W=1 compile warnings (invalid kerneldoc):

    drivers/pci/controller/dwc/pcie-designware-ep.c:16: warning: Function parameter or member 'ep' not described in 'dw_pcie_ep_linkup'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 5e5b8821bed8..305bfec2424d 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/**
+/*
  * Synopsys DesignWare PCIe Endpoint controller driver
  *
  * Copyright (C) 2017 Texas Instruments
-- 
2.17.1
