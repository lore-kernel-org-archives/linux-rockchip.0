Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7881DC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 22:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=LxRChErjGlSCEXN1zegPM9WmdR0g/663FGItLJBQONA=; b=xwb7s4If6T/yh4
	Ds9WUCQImf0/jZGW1EJK+O1gKN4OdofGG7CcGrS2DIrC0a60zZH+ocjD00Tq0sviYHANcqiVrwAAR
	dTcIJ6nnFBor1m32BK5RKtJrcxZJ7WzvH5KWLhQNQh/EfAx40htE7IxaI9segUYcZ1GigZw1dQt3W
	SblrHOIofyZjz/T1edGVF7C2PVVyCQKz7rIRZKlyJrXRakmZkb+dM7ehTy4hCXZXexX3kdLzDkHfF
	3aZ7Bp/5pST24caJ2XOZxUydyoy6vR4xRnauVcwWWIv1jKmU1ErZ+wv1TmUS6vBWPrcOn9qkrsuuG
	QhkKtjB8lZQso7yFHUwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvP7o-00000001VCO-3OUk;
	Fri, 12 Apr 2024 22:12:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvP7l-00000001VAj-0DJV;
	Fri, 12 Apr 2024 22:11:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E6266199F;
	Fri, 12 Apr 2024 22:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC87CC113CC;
	Fri, 12 Apr 2024 22:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712959916;
	bh=OZwvmDGS/9jos0oXpEDMyV23RH68O16X3jDCFlPoCk8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=dmmFPxsJme3/18nT2Jf5IaGpKomI0Fqtbt/SUgyXNo4D1GL55MMr3ql9Rzdj4DF0k
	 Q5YLRzs9USvoprkiSvwVYuXyby+lJpSAGTurkXDdqvphHQb+Cs/AORZY734W9lL0kG
	 OfPgUWai58nLqqTvo3wAErCUMzbK6DmBKeCNMZhQK2w/UTCZVJHg9aZC0XIj2fSV5R
	 R/jPtRhr+pcAmWGoZv+rgDtLEqMD6A1zYzi6L/EyInHLY0croqnJg+TSHJdVJ6Eywt
	 e9Pft9/vUaZ1dIiHFTXMnK9Lm40qNn3B7UVEWIMGU7QGDVFQbID68K3WwK3bsHXy26
	 8dNR4yatlFsrA==
Date: Fri, 12 Apr 2024 17:11:53 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 8/9] PCI: rockchip-ep: Set a 64-bit BAR if requested
Message-ID: <20240412221153.GA21914@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZhmvZJg7A11tyh5Q@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_151157_165641_ED23156D 
X-CRM114-Status: GOOD (  17.04  )
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

On Sat, Apr 13, 2024 at 12:02:12AM +0200, Niklas Cassel wrote:
> On Fri, Apr 12, 2024 at 01:59:01PM -0500, Bjorn Helgaas wrote:
> > On Wed, Mar 13, 2024 at 11:58:00AM +0100, Niklas Cassel wrote:
> > > ...
> > 
> > > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > > @@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
> > >  		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
> > >  	} else {
> > >  		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
> > > -		bool is_64bits = sz > SZ_2G;
> > > +		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
> > >  
> > >  		if (is_64bits && (bar & 1))
> > >  			return -EINVAL;
> > 
> > Completely unrelated to *these* patches, but the BAR_CFG_CTRL
> > definitions in both cadence and rockchip lead to some awkward case
> > analysis:
> > 
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS              0x4
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS     0x5
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS              0x6
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS     0x7
> > 
> >   if (is_64bits && is_prefetch)
> >           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS;
> >   else if (is_prefetch)
> >           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS;
> >   else if (is_64bits)
> >           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS;
> >   else
> >           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS;
> > 
> > that *could* be just something like this:
> > 
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM           0x4
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS        0x2
> >   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH      0x1
> > 
> >   ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM;
> >   if (is_64bits)
> >     ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS;
> >   if (is_prefetch)
> >     ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH;
> 
> If you send the cleanup patches, I will send the Reviewed-by tags ;)

Fair enough :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
