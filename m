Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0439C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 18:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=YlXTvzAEWyK6JKlituAoak6pqCYazqv3R/Oba0HIlVE=; b=BxUJJb/JXJkLJQ
	f5rXbs+MpGTqgnE0nN0Iee0j9f7nCxixCcmhzYZchbIRJwbnIdGp8ZrPzfIv4Dk7g1gpNgegdgqgK
	oemJoJXPFpckznWsIF4TRRf4rJapHBTegPoGhxHP+Qs/45v1KbezuDH8k413E/wOOBX+xSw0qD44k
	TGduuTavuIryEW0RV6h7DjL71C1H7sABBq8JVjf8rTc09gxThKWMHSFY5or7bZDzYycjri6DFpKjM
	O24AtmCC8YW6+TB3vN3izexyddpHBB1pOYGMj4vDwcFnDBUO3xoOmPrXCZ7L/8ENgjFKfNHwp+uxL
	LDRpEa6nmVuDemnxud1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvM7D-00000000xqb-1qll;
	Fri, 12 Apr 2024 18:59:11 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvM79-00000000xpB-20Z0;
	Fri, 12 Apr 2024 18:59:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E91BFCE3A94;
	Fri, 12 Apr 2024 18:59:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D41C7C113CC;
	Fri, 12 Apr 2024 18:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712948344;
	bh=37C1C4f8sh6Sv4UkKghlBLhlizZj4K22kLsB/RNSa/4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=puZdoiB5ez8mf1zOE1eKGW0ybXjGY8UCbYIvmw1QK8unfZ/zbjpFsW7+9mCOUSdTA
	 ErrK2jr87zTzNDEiMBaj/N/EeSCn/s9KpC1tEQdG+VIh8dEdhU5D8Ca5k/HBMDKVZK
	 pAAwc+lWKPioH9X2Q+mjpj+8sMwa6XtJNDItbGJ+z8EEmwKvZm0jH1kqDsC3KO3Mjm
	 PMtsD6X3n4HTNCI33XBqA2YGYb2/jlJmEHXOkINO26ZyqrtXXWEKJclW5rHYMOcFrc
	 i+D86AF3JVbnL819BisrI3vPRKSjgYyqhtbP/PpYItS//WzNfIu8fd8390zrYEuuiw
	 IVYwFBIL8I0JA==
Date: Fri, 12 Apr 2024 13:59:01 -0500
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
Message-ID: <20240412185901.GA10301@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240313105804.100168-9-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_115907_722912_7BE7E024 
X-CRM114-Status: GOOD (  11.06  )
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
> ...

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

Completely unrelated to *these* patches, but the BAR_CFG_CTRL
definitions in both cadence and rockchip lead to some awkward case
analysis:

  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS              0x4
  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS     0x5
  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS              0x6
  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS     0x7

  if (is_64bits && is_prefetch)
          ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_64BITS;
  else if (is_prefetch)
          ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH_MEM_32BITS;
  else if (is_64bits)
          ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_64BITS;
  else
          ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM_32BITS;

that *could* be just something like this:

  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM           0x4
  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS        0x2
  #define ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH      0x1

  ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_MEM;
  if (is_64bits)
    ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_64BITS;
  if (is_prefetch)
    ctrl |= ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_PREFETCH;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
