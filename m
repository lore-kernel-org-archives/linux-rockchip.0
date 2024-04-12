Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A97C0C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 17:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+l3BaI7pmGeCxf09qV/+EQMOhfdychg4wOo2rmn29LU=; b=ZM9WLWTABKwGw0
	YAD4B/ygYS05CX8c+jOCt0iiZ2wv1ZwODbAEyHNjR4Us5r3k1qA/6vqY4DxG7ggKp+EegK+TD0DVI
	wooLx0wLlvNiQ5mnKQu3GnlTvvHxEXtOWraIZQsNNTpH97emM6Hv19sZpLCP0zV5fmdfBA5/8kf6D
	ZMlXVw0jOhtXRLnpp91i/AK/s1bXRz331VhUzO8/bG+XB9PFSdUy+a6OSk4i1j4wAruZWoniFMyVc
	XPJ7N/BFniHGO/ncvY2WAQawBCHDa6DMYHEXUBuwsYBD+thCBy+lj9hJUuHNyzmZnIQBET8o6Bq5M
	AU5U4f9FWIDnx5tvFLbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvL3o-00000000kAj-3O2d;
	Fri, 12 Apr 2024 17:51:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvL3l-00000000k9O-0yBs;
	Fri, 12 Apr 2024 17:51:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5F306CE393D;
	Fri, 12 Apr 2024 17:51:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59851C113CC;
	Fri, 12 Apr 2024 17:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712944289;
	bh=B4SDpNiM6OJj6RA1ZnrFX2EgwahSw1RpMCPDTL5Nv+Y=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=aQjZA5q6Qh0W9oWz3dVtullRDOpFKrgq9zOOq3Ta5ItJF0PLUQSZpC7H/6knlI8ol
	 DpD1Y2iho9K41AVL+wOkBBL7iLevPIoJy23roX4DC6P9hBItDUt4e4Qolx9p5zExDS
	 h1/v4KsIWPrBLlr/VK+9TlTqxbZS9NQaJRyTZwV+9zd+9sNVs+blFzmygs38cAfIyw
	 xktCioMFLFBMulyc5EwPPTetdX25Nc4IsOygdoGZUBx17JqOcDO9/JtAeNlQCKmGUZ
	 k5fVtGpCC9VK/eF76wkTuzuhsb6INbzAQP+S2s2cXn06EF05m7/r86VrzTl9TskV12
	 fzGtNmy+pIykw==
Date: Fri, 12 Apr 2024 12:51:27 -0500
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
Message-ID: <20240412175127.GA8613@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240313105804.100168-9-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_105133_474588_64C0C6CC 
X-CRM114-Status: GOOD (  21.12  )
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

On Wed, Mar 13, 2024 at 11:58:00AM +0100, Niklas Cassel wrote:
> Ever since commit f25b5fae29d4 ("PCI: endpoint: Setting a BAR size > 4 GB
> is invalid if 64-bit flag is not set") it has been impossible to get the
> .set_bar() callback with a BAR size > 4 GB, if the BAR was also not
> requested to be configured as a 64-bit BAR.
> 
> It is however possible that an EPF driver configures a BAR as 64-bit,
> even if the requested size is < 4 GB.
> 
> Respect the requested BAR configuration, just like how it is already
> repected with regards to the prefetchable bit.

Does this (and the similar cadence patch) need a Fixes: tag for
f25b5fae29d4?

> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index c9046e97a1d2..57472cf48997 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>  		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
>  	} else {
>  		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
> -		bool is_64bits = sz > SZ_2G;
> +		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
>  
>  		if (is_64bits && (bar & 1))
>  			return -EINVAL;
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
