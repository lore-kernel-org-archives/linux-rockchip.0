Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E5C3C25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=dJV88N6LV/SDxnR1u74CuSIOK221Y6QY6ybbtPhtPS8=; b=udnpilIhBmtTQ/
	Dw9x+Y7rGQNI+lEoIICI60d2e0zuQw6PFXBXCmPg6JRhtmtSlf9c85Sqb4cu07Vm+lgNfIvyIWZuu
	/bYl2y+ZT1OZW3MVr7zK6Up2rcTdBXckjEYYBAbHiTPPosXp3jXltVMObtRrpmCipEhZalToezjNG
	rZyP6wiVdYiKyvglGAl1HGXur6LQAvutp5UAR3WR7eD5FclVtc71f9PF8Yn2uedxqTS2qN+o3mjRU
	wJvHtxXXIVK0W088HbBBaPrE9LTVw/r4TA89e/987IxH/JzkJzKyyJVPjF64POzcozzplvZO0vOj7
	yIQ97wDp934+FCJhKYow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lwi-00000002svK-1Gj4;
	Wed, 15 May 2024 21:13:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Lwe-00000002sss-3h67;
	Wed, 15 May 2024 21:13:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 33D3F615D5;
	Wed, 15 May 2024 21:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 990FAC32781;
	Wed, 15 May 2024 21:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715807631;
	bh=92Bg9W1jfudPogCMHlnwGwZOFXqjwzrhqg+gfddCvgc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=S8BA31QH7LK+QVdeB6Mu1tL7+oDDrVuB4pRkhH06CYUtwMegzUFlB095Sb4Zwbpxw
	 VCTDALqX31X7kPYjnVtfuNvBOfAMqp4H+tFZ51c8ck9ZLD/PZJon2wzFZUaVnmgwPf
	 VymrE+aaYcnRQ18OYFpYbHeRsJvbpYkdkY0+nSbVdVAXVDHlPcV27HTs0JBMc1e9lE
	 Kmnw5ArBPlB1/loKB0GII383RGiB5aqWOZEhmn0bP2SaYXt6Jobj78xGr5ImNgYquk
	 tWoxD5bSzr/EzVgKknGN1ep3dhmHUtvGcD+NiTrtSTfBHHnmmCL3IrgrobAWP4w3yG
	 ZWxO6cM77OF/g==
Date: Wed, 15 May 2024 16:13:50 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
Message-ID: <20240515211350.GA2139074@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240515205547.GA2137633@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_141353_001735_5CCEC8CC 
X-CRM114-Status: GOOD (  23.63  )
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

On Wed, May 15, 2024 at 03:55:49PM -0500, Bjorn Helgaas wrote:
> On Wed, Apr 03, 2024 at 04:45:08PM +0200, Rick Wertenbroek wrote:
> > Remove wrong mask on subsys_vendor_id. Both the Vendor ID and Subsystem
> > Vendor ID are u16 variables and are written to a u32 register of the
> > controller. The Subsystem Vendor ID was always 0 because the u16 value
> > was masked incorrectly with GENMASK(31,16) resulting in all lower 16
> > bits being set to 0 prior to the shift.
> > 
> > Remove both masks as they are unnecessary and set the register correctly
> > i.e., the lower 16-bits are the Vendor ID and the upper 16-bits are the
> > Subsystem Vendor ID.
> > 
> > This is documented in the RK3399 TRM section 17.6.7.1.17
> > 
> > Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> > Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> > Cc: stable@vger.kernel.org
> 
> Applied to pci/controller/rockchip by Krzysztof, but his outgoing mail
> queue got stuck.  I added Damien's Reviewed-by.  Trying to squeeze
> into v6.9.

Sorry, I meant v6.10.  v6.9 is already done.

> > ---
> >  drivers/pci/controller/pcie-rockchip-ep.c | 7 +++----
> >  1 file changed, 3 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > index c9046e97a1d2..37d4bcb8bd5b 100644
> > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > @@ -98,10 +98,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
> >  
> >  	/* All functions share the same vendor ID with function 0 */
> >  	if (fn == 0) {
> > -		u32 vid_regs = (hdr->vendorid & GENMASK(15, 0)) |
> > -			       (hdr->subsys_vendor_id & GENMASK(31, 16)) << 16;
> > -
> > -		rockchip_pcie_write(rockchip, vid_regs,
> > +		rockchip_pcie_write(rockchip,
> > +				    hdr->vendorid |
> > +				    hdr->subsys_vendor_id << 16,
> >  				    PCIE_CORE_CONFIG_VENDOR);
> >  	}
> >  
> > -- 
> > 2.25.1
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
