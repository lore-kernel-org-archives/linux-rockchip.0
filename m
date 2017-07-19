From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v5 0/7] Reconstruct rockchip's PCIe and PCIe-PHY driver for
 per-lane PHY model
Date: Wed, 19 Jul 2017 17:55:11 +0800
Message-ID: <1500458118-139042-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


This patchset is trying to reconstruct PCIe and PCIe-PHY driver
for rockchip platform in order to support per-lane PHY mode. And
we could idle the inactive lane(s) finally.

We deprecate the legacy PHY mode but the code could still
support it in order not to break backware compatibility of DTB. And I
organize the patches carefully so that we don't introduce git-bisect
issue.

Patchset was reviewed by Brian and fully tested by Jeffy. Rob acked
patch 6 & 7. Kishon acked patch 1, 2 and 4, and will ack patch 3 once
this patch 3 of v5 looks good.

Patch 5 for DTS changes for Rockchip part still need ack from Heiko, and
it would be fine for Heiko to pick it up after pcie and pcie-phy changes
got merged.

It would be fine for Bjorn to pick all these patches up to narrow down
the timing gap for testing linux-next. :)


Changes in v5:
- don't create more number of phys if it's legacy PHY model

Changes in v4:
- use err variable to check return value of
  rockchip_pcie_get_phys
- add Brian's tag
- move rockchip_pcie_get_phys to where it stands in
  patch 1.
- print PHY index in err output log
- return u8 for rockchip_pcie_lane_map

Changes in v3:
- kill rockchip_pcie_manipulate_phys and related stuff
- use phys array
- improve the commit msg
- remove unnecessary forward declaration
- keep mutex inside struct rockchip_pcie_phy
- fix wrong check of args number
- move de-idle lanes after deasserting the reset
- use cached lanes_map to avoid powering off inactive
  lanes twice
- rename the commit tile

Changes in v2:
- deprecate legacy PHY model
- improve rockchip_pcie_phy_of_xlate
- fix wrong calculation of pwr_cnt and add new init_cnt
- add internal locking
- introduce per-lane data to simply the code

Shawn Lin (7):
  PCI: rockchip: split out rockchip_pcie_get_phys
  PCI: rockchip: introduce per-lanes PHYs support
  phy: rockcip-pcie: reconstruct driver to support per-lane PHYs
  PCI: rockchip: idle the inactive PHY(s)
  arm64: dts: rockchip: convert PCIe to use per-lane PHYs for rk3339
  dt-bindings: PCI: rockchip: convert to use per-lane PHY model
  dt-bindings: phy: convert to use per-lane Rockchip PCIe PHY

 .../devicetree/bindings/pci/rockchip-pcie.txt      |  25 +++-
 .../devicetree/bindings/phy/rockchip-pcie-phy.txt  |   7 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   8 +-
 drivers/pci/host/pcie-rockchip.c                   | 122 +++++++++++++++----
 drivers/phy/rockchip/phy-rockchip-pcie.c           | 132 ++++++++++++++++++---
 5 files changed, 253 insertions(+), 41 deletions(-)

-- 
1.9.1
