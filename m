Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA4DC7115A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zENzy3rIxhlf9mM/RcLf64ljau0S6vF+zyziTpttAZ8=; b=eDXOO40zgcc7by
	WbWsUELtle9b0DbvwccbLled9eaOCgGJb7kPSCddToVDq2rE+7VDi0ICSNd1zSV6VsEpTrtIQBq6/
	Qe6LlK1yrK+RbpJ+H96uk9HrWi1MDCe/F6la0Aul/rr3omh7Q2m0HR2da9UalgNlAcj6wcRHlM42a
	lIqeGOM2efAdpvPYrRnk47VRG/KDWdPXKGegBPH/rXRpf940jvZL25Ktpp4v7K3LDQGfx000rGNL3
	8R0nZeEHKsr+y5Eeh6EbrdBPVIUIkeXoWbTWuJKr1jzmolwHHWm/ZdmQ3nXL66/OkY86h7aW5S/Jf
	d2prVvcQoCRBtzdZQQZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRyuJ-0000000BHSn-2x03;
	Wed, 18 Jun 2025 19:57:15 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRys5-0000000BHE9-1R2S;
	Wed, 18 Jun 2025 19:54:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6AA23A51DAA;
	Wed, 18 Jun 2025 19:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DABD5C4CEE7;
	Wed, 18 Jun 2025 19:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750276496;
	bh=lrTsaG0xF5dU+UzUYyY/pQ26jjJEFCDApXnKHIP4M34=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=YXfY0GqY7ZR4pyE6q/gKqP0YVYPvcq7HxVcPuEhFQeFBotBsq99Id2pnVd11/HgG2
	 U7iL10QLe8J0Q7E3+Axu8o0P1tXSqakokMHJ/gVthwOsSQqG8seU+3JVHNUlKWLtem
	 JgW1/ww/Z5dkcj/JmEMZmWdHQ3CwHVG/l3E3Jn5eOroJPxIESS7b/a7gM6WoF3NyMB
	 dti2UxhjE3JNodUHk4fdLopEIEhIwAK+Tg33KH+gZprwuE/TexRsnp3Fg39hkKRdM5
	 lgsmB9DSe/m+HKbVn8YtZDWoZCdkpjkThaYj+HPDxROFU2BH0anrYQkFlxW4wVS/UB
	 OmoIUWxJgTxCw==
Date: Wed, 18 Jun 2025 14:54:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Delay link training after hot reset
 in EP mode
Message-ID: <20250618195454.GA1219998@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aFLPyxZD5lkAtw6b@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_125457_509567_280C8E61 
X-CRM114-Status: GOOD (  23.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jun 18, 2025 at 04:40:11PM +0200, Niklas Cassel wrote:
> On Wed, Jun 18, 2025 at 04:23:19PM +0200, Niklas Cassel wrote:
> > On Tue, Jun 17, 2025 at 05:05:23PM -0500, Bjorn Helgaas wrote:
> > > On Tue, Jun 17, 2025 at 05:01:16PM -0500, Bjorn Helgaas wrote:
> > > > On Fri, Jun 13, 2025 at 12:19:09PM +0200, Niklas Cassel wrote:
> > > 
> > > Oh, and this sets PCIE_LTSSM_ENABLE_ENHANCE | PCIE_LTSSM_APP_DLY2_EN
> > > once at probe-time, but what about after a link-down/link-up cycle?
> > > 
> > > Don't we need to set PCIE_LTSSM_ENABLE_ENHANCE |
> > > PCIE_LTSSM_APP_DLY2_EN again when the link comes up so we don't have
> > > the same race when the link goes down again?
> > 
> > Nope, we don't.
> > 
> > To verify I used this patch:
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index be239254aacd..e79add5412b8 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -506,6 +506,8 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
> >         if (reg & PCIE_LINK_REQ_RST_NOT_INT) {
> >                 dev_dbg(dev, "hot reset or link-down reset\n");
> >                 dw_pcie_ep_linkdown(&pci->ep);
> > +               pr_info("PCIE_CLIENT_HOT_RESET_CTRL after reset: %#x\n",
> > +                       rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_HOT_RESET_CTRL));
> >                 /* Stop delaying link training. */
> >                 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_APP_DLY2_DONE);
> >                 rockchip_pcie_writel_apb(rockchip, val,
> > 
> > 
> > 
> > 
> > [   85.979567] rockchip-dw-pcie a40000000.pcie-ep: hot reset or link-down reset
> > [   85.980210] PCIE_CLIENT_HOT_RESET_CTRL after reset: 0x12
> > [   93.720413] rockchip-dw-pcie a40000000.pcie-ep: hot reset or link-down reset
> > [   93.721074] PCIE_CLIENT_HOT_RESET_CTRL after reset: 0x12
> > 
> > 0x12 == bit 1 and bit 4 are set.
> > 
> > bit 1: app_dly2_en
> > bit 4: app_ltssm_enable_enhance
> 
> Oh, and just to verify that the hardware does not clear the app_dly2_en bit
> when we write the app_dly2_done bit, I ran the same test, but with the
> prints in rockchip_pcie_ep_sys_irq_thread(), just after calling
> dw_pcie_ep_linkup(&pci->ep); and got the same result:
> 
> [   57.176862] rockchip-dw-pcie a40000000.pcie-ep: link up
> [   57.177338] PCIE_CLIENT_HOT_RESET_CTRL after linkup: 0x12
> [   72.448052] rockchip-dw-pcie a40000000.pcie-ep: link up
> [   72.448527] PCIE_CLIENT_HOT_RESET_CTRL after linkup: 0x12

Thanks, I had missed the difference between PCIE_LTSSM_APP_DLY2_EN and
PCIE_LTSSM_APP_DLY2_DONE.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
