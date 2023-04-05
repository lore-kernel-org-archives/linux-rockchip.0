Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C9E0C761A6
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 14:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOp0aOPOm56i93kMXtA9s71BV4Fw6pJvDeUoHic4lHE=; b=BcYetHS5F+OxtI
	ge1nrtHDPqo/JZZC5UnsZdgvVeg8VDMoTCVvbgFCtF18H4Tzawe7rrIQ9wnoSv59wJcukud7gnjUA
	P9OMAXwHNguUMJ/d71dfJDKeRJeWqswjpLwp+6ij0MU0/dH1oTX8erqdkfpHggpw4tp64p4/+gw2P
	NWT+TYqtBuWeD7pgs25WPtNvbNmSC7w6a+c3AcbV8/dmvUGsgGL9SPclj2T1VzLlMRXsHNAjjr1co
	jjkoZ5JLS/xvH0RAZRvYu/GVGWKFsPwkMedtxXN/FoNu5wKmiIoeh6UyCf+L4MeI9dXyES1F7VhIa
	wnmv5OOgU3ZrxrhUVX3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk4Xe-004jja-0G;
	Wed, 05 Apr 2023 14:55:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk4Xb-004jih-0x
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Apr 2023 14:55:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3AB1062720;
	Wed,  5 Apr 2023 14:55:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7053FC433D2;
	Wed,  5 Apr 2023 14:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680706513;
	bh=w7V8m3dZ8kFEvH+QHnOHcq5f9tAoo3EHbxGxTlA7Iwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LjM6cVAC+/IhN0nhX7VRkxYB/y2p8sDbIYwwrplzgTJ28OiJquHvXB9e4VozT+Bm9
	 UH8ZK6f7EHcVANQPFfaPHnNLXG3EQprlGZQF1tZZLhvoEqKGpquY2J1XLhZJhigQIn
	 kYe4dxYWNUuiD/6Y3ToyxpIbhPJeXRviOG2MrK6VihFxhtKcLayRSLd7n/bb5pS9Hc
	 vvs1WKDJd2LNL6mmj6MtBcxQC6S8yoNiqxmb3Qx0I0vXPBaBNaDofdNwau8Q0CatMZ
	 QnrD8Ax1zKxKHLVmmpRnvN0qmOEebp1gUOxluj6vepmUzzdTeGljOf9KF7OnPMa1Qs
	 T9n9rMg+GJLgQ==
Date: Wed, 5 Apr 2023 16:55:08 +0200
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Han Jingoo <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v2] PCI: dwc: Round up num_ctrls if num_vectors is
 less than MAX_MSI_IRQS_PER_CTRL
Message-ID: <ZC2LzJ/WOqdz2bE0@lpieralisi>
References: <1669080013-225314-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPOBaE6KNXn56Gs8DCUg9nMqDPF494OaM58JYHsaKVsFRbvt5A@mail.gmail.com>
 <8b40a27b-8480-dd74-3fd1-6f6493dc0ce1@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b40a27b-8480-dd74-3fd1-6f6493dc0ce1@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_075515_436868_5EFFDB46 
X-CRM114-Status: GOOD (  28.27  )
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

On Fri, Feb 03, 2023 at 04:23:53PM +0800, Shawn Lin wrote:
> On 2022/11/23 6:04, Han Jingoo wrote:
> > On Mon, Nov 21, 2022 Shawn Lin <shawn.lin@rock-chips.com> wrote:
> > > 
> > > Some SoCs may only support 1 RC with a few MSIs support that the total number of MSIs is
> > > less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
> > > up MSI support. Fix it by rounding up num_ctrls to at least one.
> > > 
> > > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > 
> > Acked-by: Jingoo Han <jingoohan1@gmail.com>
> 
> Thanks, Jingoo!
> 
> Hi Lorenzo,
> 
> Is there any chance this patch be applied? :)
> 
> > 
> > Best regards,
> > Jingoo Han
> > 
> > > ---
> > > 
> > > Changes in v2:
> > > - set num_ctrls to 1 if it's less than one
> > > 
> > >   drivers/pci/controller/dwc/pcie-designware-host.c | 6 ++++++
> > >   1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > index 39f3b37..cfce1e0 100644
> > > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > @@ -62,6 +62,8 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
> > >          struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> > > 
> > >          num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;

I assume that if pp->num_vectors > MAX_MSI_IRQS_PER_CTRL but not
an exact multiple we would have the same problem right ?

Best to fix it for both cases.

Lorenzo

> > > +       if (num_ctrls < 1)
> > > +               num_ctrls = 1;
> > > 
> > >          for (i = 0; i < num_ctrls; i++) {
> > >                  status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
> > > @@ -343,6 +345,8 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
> > >          if (!pp->num_vectors)
> > >                  pp->num_vectors = MSI_DEF_NUM_VECTORS;
> > >          num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> > > +       if (num_ctrls < 1)
> > > +               num_ctrls = 1;
> > > 
> > >          if (!pp->msi_irq[0]) {
> > >                  pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
> > > @@ -707,6 +711,8 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
> > > 
> > >          if (pp->has_msi_ctrl) {
> > >                  num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> > > +               if (num_ctrls < 1)
> > > +                       num_ctrls = 1;
> > > 
> > >                  /* Initialize IRQ Status array */
> > >                  for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
> > > --
> > > 2.7.4
> > > 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
