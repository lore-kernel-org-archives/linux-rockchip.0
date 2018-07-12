From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: [bug report] PCI: rockchip: Add EP driver for Rockchip PCIe controller
Date: Thu, 12 Jul 2018 15:33:53 +0300
Message-ID: <20180712123319.nr5jowaat6h3kr2m@kili.mountain>
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
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello Shawn Lin,

The patch cf590b078391: "PCI: rockchip: Add EP driver for Rockchip
PCIe controller" from May 9, 2018, leads to the following static
checker warning:

	drivers/pci/controller/pcie-rockchip-ep.c:380 rockchip_pcie_ep_assert_intx()
	warn: '(1 << (19))' 524288 can't fit into 65535 'status'

drivers/pci/controller/pcie-rockchip-ep.c
   347  static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
   348                                           u8 intx, bool is_asserted)
   349  {
   350          struct rockchip_pcie *rockchip = &ep->rockchip;
   351          u32 r = ep->max_regions - 1;
   352          u32 offset;
   353          u16 status;
   354          u8 msg_code;
   355  
   356          if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
   357                       ep->irq_pci_fn != fn)) {
   358                  rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
   359                                               AXI_WRAPPER_NOR_MSG,
   360                                               ep->irq_phys_addr, 0, 0);
   361                  ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;
   362                  ep->irq_pci_fn = fn;
   363          }
   364  
   365          intx &= 3;
   366          if (is_asserted) {
   367                  ep->irq_pending |= BIT(intx);
   368                  msg_code = ROCKCHIP_PCIE_MSG_CODE_ASSERT_INTA + intx;
   369          } else {
   370                  ep->irq_pending &= ~BIT(intx);
   371                  msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;
   372          }
   373  
   374          status = rockchip_pcie_read(rockchip,
   375                                      ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
   376                                      ROCKCHIP_PCIE_EP_CMD_STATUS);
   377          status &= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
   378  
   379          if ((status != 0) ^ (ep->irq_pending != 0)) {
   380                  status ^= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
status is a u16 but we're twiddling BIT(19).

   381                  rockchip_pcie_write(rockchip, status,
   382                                      ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
   383                                      ROCKCHIP_PCIE_EP_CMD_STATUS);
   384          }
   385  
   386          offset =
   387             ROCKCHIP_PCIE_MSG_ROUTING(ROCKCHIP_PCIE_MSG_ROUTING_LOCAL_INTX) |
   388             ROCKCHIP_PCIE_MSG_CODE(msg_code) | ROCKCHIP_PCIE_MSG_NO_DATA;
   389          writel(0, ep->irq_cpu_addr + offset);
   390  }

regards,
dan carpenter
