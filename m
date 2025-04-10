Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1974EC369A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oetmHM3DFTqsk9baZPfzH7ub2CEthKJ7oYByyDJU3bQ=; b=nG5D2MCsJXbKWj
	q7V/+8YaC4ulcI1Ye5tUeOwc6WJa+/QSHAJVMaOXYeTde+qH2NqFYtGDOJsYgAYfWBBCrM4fQWOIP
	1AQqbMMAptMl8B/bHnpYMY/oDkTnSYBR5A22B3cMaoKDv7+bgDKsXY7dmAu6VqDpBnuAmfJQlsmVE
	FrgUBIXfIyRNDQpoWRcZKXwsyt4Da/GydzR5/CSrQUuY9l1qMfjnXx7x52pma3NKiMRermS0R8Oz2
	wfpqpVW4hy0yRrXgp4I5odb3bEv24UhRsmIjuElC5lKUmhv3PZ8IlXnVmN5ZGRQxNZaROEa1lm1Va
	3PS82Ym7klMaVypCGvhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nou-00000009rPI-2oOh;
	Thu, 10 Apr 2025 09:03:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nVo-00000009nL7-2ZKq
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 08:43:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0945F5C26ED;
	Thu, 10 Apr 2025 08:41:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43759C4CEDD;
	Thu, 10 Apr 2025 08:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744274631;
	bh=fS1P8QNmkZJhIWxyz4aVqeR3Vhp5Mv+hh6arbQyM+zw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SZoAZGzUN76NnWts/wDa2IuAFRp1jgkkMR2fsJnO+5sRUYTr2QacXdICJcbFq3PJy
	 FpZ1GEobDEF8uDaQvOrM9GKX30XCXJ9wxG5kbtM1tRpYt0GGJ8uwXyYzHmEdpW/V5q
	 TFgAeu25hRxeg8fxGxgZMgLDsYQDPhOA26Si0so24zXfvsW1abULCII/q2mkx9tqZT
	 rL6EWuOiyd6MMuJImR9XqCXY9lBZZu+wlueJTD0+8NrBi9coMOwQY8lX8TUsil8WjM
	 FhTgaejYEwZ154B39kgJ4gQA+5tXOlKOjtBVV6CHEAP6iNaYcUuFcMJILYyxqI+hlz
	 pDHqB6Af6ENnA==
Date: Thu, 10 Apr 2025 10:43:47 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enable L0S capability
Message-ID: <Z_eEw-l6SG-lF_7R@ryzen>
References: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_014352_694418_99A3A025 
X-CRM114-Status: GOOD (  21.92  )
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

Hello Shawn,

On Thu, Apr 10, 2025 at 09:36:21AM +0800, Shawn Lin wrote:
> L0S capability isn't enabled on all SoCs by default, so enabling it
> in order to make ASPM L0S work on Rockchip platforms. We have been
> testing it for quite a long time and the default FTS number provided
> by DWC core is broken since it fits only for DWC PHY IP but not for
> other types of PHY IP from other vendors.

If we take the rk3588 SoC for example,
some PCIe controllers use PHY:
drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
some PCIe controllers use PHY:
drivers/phy/rockchip/phy-rockchip-snps-pcie3.c

This second PHY is obviously a Synopsys PHY.

So, I think the commit message is a bit confusing/misleading,
since IMO the second PHY driver is for a DWC PHY IP.

Is this N_FTS value correct for both of these PHYs?


Having this code in ->start_link() looks incorrect.

rockchip_pcie_configure_rc(), calls dw_pcie_host_init().

dw_pcie_host_init() first calls dw_pcie_setup_rc(), which calls dw_pcie_setup().
dw_pcie_setup() will write pci->n_fts[0] / pci->n_fts[1].

dw_pcie_host_init() then calls dw_pcie_start_link()
(which calls ->start_link()).

So, setting pci->n_fts[0] / pci->n_fts[1] in ->start_link() is thus too late.


Kind regards,
Niklas


> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 21dc99c..56acfea 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -185,6 +185,20 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
>  static int rockchip_pcie_start_link(struct dw_pcie *pci)
>  {
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	u32 cap, lnkcap;
> +
> +	/* Enable L0S capability for all SoCs */
> +	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	if (cap) {
> +		/* Default fts number(210) is broken, override it */
> +		pci->n_fts[0] = 255; /* Gen1 */
> +		pci->n_fts[1] = 255; /* Gen2+ */
> +		lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +		lnkcap |= PCI_EXP_LNKCAP_ASPM_L0S;
> +		dw_pcie_dbi_ro_wr_en(pci);
> +		dw_pcie_writel_dbi(pci, cap + PCI_EXP_LNKCAP, lnkcap);
> +		dw_pcie_dbi_ro_wr_dis(pci);
> +	}
>  
>  	/* Reset device */
>  	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> -- 
> 2.7.4
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
