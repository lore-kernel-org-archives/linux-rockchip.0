Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81434D68BDA
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Nov 2024 22:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HFSFajlVBnLmi767GNct1zLbiiLtFM8vr+fk0AOdOQA=; b=NIwDCes+M6WX6k
	57LbQjTwJugrxasRTJEAVWur06qsHTLyQY6Xbc4R+i7t+R4rqac7jHyOZDVIFLYAkMZFkh1A5LOB2
	FHQcbYLbX8kE12pjNwPW8SPhMS8QrvunmCrj4JDuB8KWYv+tMRWOmu3qi3C3Oq66AbmlFLDT29Vfk
	W4hsMoWK35dTyv9oZIxgPa+Ka8B+2hzO7v7GRkjLS2Dk6KmdA8d3L8FGKcAe3VNpvbmjeeQrsDjgk
	sR8FfbZ/jxFR+H/jDeNEZHP6yMYSZrJglc0JDtae7mvou8HXquDwLYfBXPpeFEbNGjAu3qofMzCXF
	S8W6Ppn9R9jOJgZyeHKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC50g-00000004SD9-3y6T;
	Fri, 15 Nov 2024 22:41:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC50e-00000004SCm-2Yy4
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Nov 2024 22:41:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3BD4CA416A2;
	Fri, 15 Nov 2024 22:39:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D058C4CECF;
	Fri, 15 Nov 2024 22:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731710506;
	bh=+AxGr/1U2IvvFPkDwc0N57/0Jp2aSz7/kC4Mqk6/nU0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DeQivT9ynPqlUSaHfUbXALEovjRxW2mnt+Ywy17LGXFjaU+4ootsO9RWVcbaacMDN
	 5VI2qNdCnfx2Wkty97wYBjMCCsB1Z9/jRAcv+R6f4SbcUfklNDahQ3TEA6eNq6h8rT
	 C8z6Yse53VIlplZNTDhSN0AYdBlmQrG/TyNqVeT/jZmqO22FytNko7f50GltRy+UWx
	 nf5jqWrmctHpWtT5HiK9F1Y+/wImuL+9LM9aK775K7xASWH782BPvZmuVbjmuIeQ7F
	 CCd+3LxV7CI9y2niwzfv0Vur45P5mMJ4x2Ibtj8olsrv/pmju1pMW5vZMuyWuVxmZM
	 a3dZBDzks9AUg==
Date: Fri, 15 Nov 2024 16:41:45 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 01/14] PCI: rockchip-ep: Fix address translation unit
 programming
Message-ID: <20241115224145.GA2064331@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_144148_776375_6BBE04A2 
X-CRM114-Status: GOOD (  27.56  )
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

On Thu, Oct 17, 2024 at 10:58:36AM +0900, Damien Le Moal wrote:
> The rockchip PCIe endpoint controller handles PCIe transfers addresses
> by masking the lower bits of the programmed PCI address and using the
> same number of lower bits masked from the CPU address space used for the
> mapping. For a PCI mapping of <size> bytes starting from <pci_addr>,
> the number of bits masked is the number of address bits changing in the
> address range [pci_addr..pci_addr + size - 1].
> 
> However, rockchip_pcie_prog_ep_ob_atu() calculates num_pass_bits only
> using the size of the mapping, resulting in an incorrect number of mask
> bits depending on the value of the PCI address to map.
> 
> Fix this by introducing the helper function
> rockchip_pcie_ep_ob_atu_num_bits() to correctly calculate the number of
> mask bits to use to program the address translation unit. The number of
> mask bits is calculated depending on both the PCI address and size of
> the mapping, and clamped between 8 and 20 using the macros
> ROCKCHIP_PCIE_AT_MIN_NUM_BITS and ROCKCHIP_PCIE_AT_MAX_NUM_BITS. As
> defined in the Rockchip RK3399 TRM V1.3 Part2, Sections 17.5.5.1.1 and
> 17.6.8.2.1, this clamping is necessary because:
> 1) The lower 8 bits of the PCI address to be mapped by the outbound
>    region are ignored. So a minimum of 8 address bits are needed and
>    imply that the PCI address must be aligned to 256.
> 2) The outbound memory regions are 1MB in size. So while we can specify
>    up to 63-bits for the PCI address (num_bits filed uses bits 0 to 5 of
>    the outbound address region 0 register), we must limit the number of
>    valid address bits to 20 to match the memory window maximum size (1
>    << 20 = 1MB).
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 15 +++++++++++----
>  drivers/pci/controller/pcie-rockchip.h    |  4 ++++
>  2 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 136274533656..27a7febb74e0 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -63,16 +63,23 @@ static void rockchip_pcie_clear_ep_ob_atu(struct rockchip_pcie *rockchip,
>  			    ROCKCHIP_PCIE_AT_OB_REGION_DESC1(region));
>  }
>  
> +static int rockchip_pcie_ep_ob_atu_num_bits(struct rockchip_pcie *rockchip,
> +					    u64 pci_addr, size_t size)
> +{
> +	int num_pass_bits = fls64(pci_addr ^ (pci_addr + size - 1));
> +
> +	return clamp(num_pass_bits, ROCKCHIP_PCIE_AT_MIN_NUM_BITS,
> +		     ROCKCHIP_PCIE_AT_MAX_NUM_BITS);
> +}
> +
>  static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
>  					 u32 r, u64 cpu_addr, u64 pci_addr,
>  					 size_t size)
>  {
> -	int num_pass_bits = fls64(size - 1);
> +	int num_pass_bits =
> +		rockchip_pcie_ep_ob_atu_num_bits(rockchip, pci_addr, size);
>  	u32 addr0, addr1, desc0;
>  
> -	if (num_pass_bits < 8)
> -		num_pass_bits = 8;
> -
>  	addr0 = ((num_pass_bits - 1) & PCIE_CORE_OB_REGION_ADDR0_NUM_BITS) |
>  		(lower_32_bits(pci_addr) & PCIE_CORE_OB_REGION_ADDR0_LO_ADDR);

PCIE_CORE_OB_REGION_ADDR0_NUM_BITS is 0x3f and
rockchip_pcie_ep_ob_atu_num_bits() returns something between 8 and
0x14, inclusive?  So masking with PCIE_CORE_OB_REGION_ADDR0_NUM_BITS
doesn't do anything, does it?

Also, "..._NUM_BITS" is kind of a weird name for a mask.

rockchip_pcie_prog_ob_atu() in pcie-rockchip-host.c is similar but
different; it looks like all callers supply num_pass_bits=19.  I
assume it doesn't need a similar change?

>  	addr1 = upper_32_bits(pci_addr);
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 6111de35f84c..15ee949f2485 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -245,6 +245,10 @@
>  	(PCIE_EP_PF_CONFIG_REGS_BASE + (((fn) << 12) & GENMASK(19, 12)))
>  #define ROCKCHIP_PCIE_EP_VIRT_FUNC_BASE(fn) \
>  	(PCIE_EP_PF_CONFIG_REGS_BASE + 0x10000 + (((fn) << 12) & GENMASK(19, 12)))
> +
> +#define ROCKCHIP_PCIE_AT_MIN_NUM_BITS  8
> +#define ROCKCHIP_PCIE_AT_MAX_NUM_BITS  20
> +
>  #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
>  	(PCIE_CORE_AXI_CONF_BASE + 0x0828 + (fn) * 0x0040 + (bar) * 0x0008)
>  #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar) \
> -- 
> 2.47.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
