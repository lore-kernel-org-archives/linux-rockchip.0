From: Colin Ian King <colin.king@canonical.com>
Subject: Potential issue setting vid_regs in Rockchip AXI PCIe endpoint
 controller driver
Date: Wed, 9 Oct 2019 11:18:56 +0100
Message-ID: <cd70cd13-5b0e-ea14-f7b1-fb8866c4dbbf@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Static analysis with Coverity has detected a potential issue in the
Rockchip AXI PCIe endpoint controller driver.  The issue is in
drivers/pci/controller/pcie-rockchip-ep.c, function
rockchip_pcie_ep_write_header:

The coverity report is as follows:

124 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn,
125                                         struct pci_epf_header *hdr)
126 {
127        struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
128        struct rockchip_pcie *rockchip = &ep->rockchip;
129
130        /* All functions share the same vendor ID with function 0 */
131        if (fn == 0) {
132                u32 vid_regs = (hdr->vendorid & GENMASK(15, 0)) |

   CID 12883 (#1 of 1): Operands don't affect result

(CONSTANT_EXPRESSION_RESULT) result_independent_of_operands:

hdr->subsys_vendor_id & (4294901760UL /* ~0UL - (1UL << 16) + 1 & (~0UL
>> 64 - 1 - 31) */) is always 0 regardless of the values of its
operands. This occurs as a value.

133                               (hdr->subsys_vendor_id & GENMASK(31,
16)) << 16;

The expression (hdr->subsys_vendor_id & GENMASK(31, 16)) << 16 always
results in zero. Since the GENMASK gets the top 16 bits of
hdr->subsys_vendor_id then it looks like the 16 bit left shift is not
required, but I don't know if that is a correct assumption or not.

Colin
