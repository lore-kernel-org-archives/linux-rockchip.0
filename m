Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F635606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QM798q8d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Vgd1LF4t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FtbdM+rI5i2YM1eIDJDWQYClD0c6YhV9lO3yCR10bT4=; b=QM798q8dke2cv5sdTH13wNcq4M
	JevY9Us6CYy2LkHlHj5MOotvsjoi0GDxCFAjxDryxJLI/00ir5u+SeWj9kmzXWKldw5X/yyefEBgq
	by07vnRr7siZP2T1xvjx1aO6Iqz0mcfxAE0AKw0kad71P22r9354zIsjFa18BtAoWuFYwNs0Gxc/4
	bZVHuGBwODe4/D5FxR7RxV2hkvrDB9NqU2GaNwzQ+Jcj6NAk3+VQ6orLK2H3vDW3NE8PZmvKCmHjI
	6mgu8IwC88OPAB7eFD2AA43EGxty0dQ7qLaK9kjo00aL+LQ/Tv0oljxP0oekwSi0Rwk3phu0lhevY
	T3XVqwrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSyl-00000003KTF-1fns;
	Mon, 23 Nov 2026 12:17:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVSyj-00000003KSn-2VLt
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:17:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0FE63620C7;
	Mon, 23 Nov 2026 12:17:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C22EA1F00AD4;
	Mon, 23 Nov 2026 12:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795436220;
	bh=vX3zBoRNARD0Gl99vnuHTVMd+tETbTFWuyPCBwZcjO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vgd1LF4takPqfxx4U68jv8QjknfUqvjwGsjhVPaYZZym1/DJ6g/ht3Oe3EzcAre1H
	 MbMFQvCL5Tax/PIWXzZIfY22R+ETGMLzxxWCtYLPsshdyzbTZmNbhYxKD+uM6/RX8j
	 dyIx3mcbinnNx0vaUmmFfYFW7DDl5casGK+REiocR94VQuV0C0ZZjkmJFTF0KsH/vd
	 iqomwLeSoWl7OZ7YT7OAT2WeIvC6Txl38VS+I7QrY2iVEIROWkvC/rC8oDqlt/QFop
	 ZvTW7Yc5tqtDEkAljaYCQyPickj9YR+iStKLs7PSExVNnY6u6AI9RcKWArbJIc9ZvX
	 bHmsw6qgL29xA==
Date: Mon, 23 Nov 2026 13:16:56 +0100
From: Niklas Cassel <cassel@kernel.org>
To: James Le Cuirot <chewi@gentoo.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
Message-ID: <awQuuC-4nRpHj3wK@ryzen>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
 <av7Vvw5CpQo0gt1d@ryzen>
 <39bd808037e8eed09e40f7731a41e71e58d10070.camel@gentoo.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39bd808037e8eed09e40f7731a41e71e58d10070.camel@gentoo.org>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 10:47:03AM +0000, James Le Cuirot wrote:
> On Thu, 2026-11-19 at 11:55 +0100, Niklas Cassel wrote:
> 
> > I guess we could also try to clear the interrupt just before unmasking it,
> > to see if this is a spurious interrupt, something like:
> > 
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -692,7 +692,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
> >         struct device *dev = &pdev->dev;
> >         struct dw_pcie_rp *pp;
> >         int irq, ret;
> > -       u32 val;
> > +       u32 reg, val;
> > 
> >         if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
> >                 return -ENODEV;
> > @@ -739,6 +739,9 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
> >                 return ret;
> >         }
> > 
> > +       reg = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS_MISC);
> > +       rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_MISC);
> > +
> >         /* unmask hot reset/link-down reset */
> >         val = FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
> >         rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
> 
> The good news is that this worked! :) Please go ahead and commit it if you
> believe it makes sense.

I sent a patch here:
https://lore.kernel.org/linux-pci/20261123121217.1107902-2-cassel@kernel.org/

Sending your Tested-by: tag might improve the chances that the maintainers
pick up the patch.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
