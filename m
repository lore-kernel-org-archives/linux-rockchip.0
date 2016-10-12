From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: [bug report] PCI: rockchip: Add Rockchip PCIe controller support
Date: Wed, 12 Oct 2016 13:54:34 +0300
Message-ID: <20161012105434.GA21452@mwanda>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello Shawn Lin,

The patch e77f847df54c: "PCI: rockchip: Add Rockchip PCIe controller
support" from Sep 3, 2016, leads to the following static checker
warning:

	drivers/pci/host/pcie-rockchip.c:552 rockchip_pcie_init_port()
	warn: mask and shift to zero

drivers/pci/host/pcie-rockchip.c
   549  
   550          /* Check the final link width from negotiated lane counter from MGMT */
   551          status = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
   552          status =  0x1 << ((status & PCIE_CORE_PL_CONF_LANE_MASK) >>
   553                            PCIE_CORE_PL_CONF_LANE_MASK);

Presumably we should be shifting by PCIE_CORE_PL_CONF_LANE_SHIFT but
this still looks all kind of jumbled up.

   554          dev_dbg(dev, "current link width is x%d\n", status);
   555  

regards,
dan carpenter
