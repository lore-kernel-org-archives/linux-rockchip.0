Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3C5C00A94
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 22:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjNGWLwdmAuBFp/CZvA7/4UXeS3EQBDY7ajsyuun2Ec=; b=lfPbWI9JAUOReK
	xPKmwg7gXfFUPbnU5YutJUdbZ23JweYBaNNl4lNnCAqDtFMbN3ry/BCxQQRoEn+A6O0bsYkYAZvyp
	jVLifgxkjX1HN9eiy+7nCY94NGaunxmNC6179jg5ZwgmQlCXWhc9+13AKwNV3rS4aUKNgaGFB+YuJ
	wIzkUti9o8FeRf5PhYnm3vSw1VX9dGPGANCjHIZnyvNaY9+fuc3RhZ8Nu+oB1lyeQKV4BAK7npHFU
	u8ReqvsLjPAjheYCLVOwIui+8EdzkKcQdgivCQvXVtuN1BIf/DrUgxnsvyJTrXb/386IOuDrAmo8W
	AFALnECqjDUbWrtfXLXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOyY-00000001TvA-2JUQ;
	Fri, 12 Apr 2024 22:02:26 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvOyU-00000001Ttb-2Fhs;
	Fri, 12 Apr 2024 22:02:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 872C7CE01C5;
	Fri, 12 Apr 2024 22:02:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07372C113CC;
	Fri, 12 Apr 2024 22:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712959339;
	bh=ocjkvdjpN1yOh232yqtZ4lw0AkNcIVCsY2DeR3aycgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GBvZNMhcZIFVHE1FvgsTOo8/KoF2PbI5Aki6vEaTW6jqxSZVMZOFomYRxTA16Ocv8
	 7xzsL6lgwIewwpijdj3VKUstih/3F8aNXxlKsaBSM532YpTxUmZSIUq+vNBc1hMHJr
	 3gd73wHBEQ6vqqSe9HmxDvDS5ki+BSOnshgLompHsEzQYoTEUsdxZ0XL2ovZ/QLkE9
	 3CtOUJMTPR1EWTJXHRz2g3EuPrQJZUjwaPBxX8gWnepy4IYBBKE46hwH86yMBvl9Zp
	 ZES6+VbB8GxF/fHQvR1GJBvbbgtdUrnFr3WmuffCx7PMWiz7WyGUjhtr+JJ8dm5nxQ
	 kp8hcwDsCZnrA==
Date: Sat, 13 Apr 2024 00:02:12 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
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
Message-ID: <ZhmvZJg7A11tyh5Q@ryzen>
References: <20240313105804.100168-9-cassel@kernel.org>
 <20240412185901.GA10301@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240412185901.GA10301@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_150222_883757_1DEA28EA 
X-CRM114-Status: GOOD (  15.16  )
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

On Fri, Apr 12, 2024 at 01:59:01PM -0500, Bjorn Helgaas wrote:
> On Wed, Mar 13, 2024 at 11:58:00AM +0100, Niklas Cassel wrote:
> > ...
> 
> > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > @@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
> >  		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
> >  	} else {
> >  		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
> > -		bool is_64bits = sz > SZ_2G;
> > +		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
> >  
> >  		if (is_64bits && (bar & 1))
> >  			return -EINVAL;
> 
> Completely unrelated to *these* patches, but the BAR_CFG_CTRL
> definitions in both cadence and rockchip lead to some awkward case
> analysis:
> 
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS              0x4
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS     0x5
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS              0x6
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS     0x7
> 
>   if (is_64bits && is_prefetch)
>           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS;
>   else if (is_prefetch)
>           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS;
>   else if (is_64bits)
>           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS;
>   else
>           ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS;
> 
> that *could* be just something like this:
> 
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM           0x4
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS        0x2
>   #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH      0x1
> 
>   ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM;
>   if (is_64bits)
>     ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS;
>   if (is_prefetch)
>     ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH;


If you send the cleanup patches, I will send the Reviewed-by tags ;)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
