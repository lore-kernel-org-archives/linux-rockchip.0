Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED507CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kg9hjVBr12v9Io8HqQCGvRVmRM1O7uBd3qn/KzV4x2g=; b=4xsla8QQOf6oAl
	IMLo6MAkA5kC/qjQQPQlvV6yzLrLC/G3ggSJi+esS3izdZbY0y/iM8tVu2T/x969aa/F8fwzOAlS1
	/6o3oVFMSnLGeEAa3tt1DWd+YGqNmuBOTyNB5eWL79Uxb+DgXETl9hbEdA8bE60D9wGT2YAR5KKsg
	uv7XO7QAhL7zApiPoKFX2ii0CK4QYG+VyS5ZDDZolnl3T05xMPUm7aq+SbMQw5wvesg0cq9IKTLfM
	xKtDJXd4r6XIDt33K0dlUE7P3BracbHEfoKxPqnqfkYeY22gqSELrf90R9EGnxFijkRayB2GQ3AtJ
	EMvgt6HHKXmLwBx9uaeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6FO-00000008LtR-1ZRM;
	Wed, 12 Nov 2025 08:30:34 +0000
Received: from out-178.mta0.migadu.com ([2001:41d0:1004:224b::b2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6FK-00000008LqR-0x73
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 08:30:33 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762936223;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g5x08jGt52UM8WSsG9ya+V4RgsZN+VKoptwBF5ItOqA=;
	b=R3lDZxN7sT6NE/Y5oVWLcfzs0503DA2ed4Jc0iohPyN+1aH3pcIqAC3kJUsjoomKtgi40u
	/CnJ3pRC1UlI9ViRoh5UhzQ1gIcaxQQoY/pDDeB2U56h0Y8hXonrwJQmSw9Xryn48245i2
	EUdyuSWN7FgwmD6HvyL3u/IsnlyxebpTtkRNfIlg7Szj7IflSNLjv3Ohitz0beKBhjp/NE
	QzRwavsPrhuFpy9JkVkBd3Tsyfq22XmGxSVjwlDclG9LPzTiw1BuZAC04sYeKfdp0DVaBC
	L0fG6rnOZfI3Qsl8qwBzBRotjPq03L5bEuiU7vgcNSVQdzXLyHbJ85RXNLFBnQ==
Date: Wed, 12 Nov 2025 09:30:19 +0100
Message-Id: <DE6KQEJ3S9R8.F3LC0FHN4GJ2@cknow-tech.com>
Cc: "Manivannan Sadhasivam" <mani@kernel.org>, "Lorenzo Pieralisi"
 <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>, "Heiko Stuebner"
 <heiko@sntech.de>, "Kever Yang" <kever.yang@rock-chips.com>, "Simon Xue"
 <xxm@rock-chips.com>, "Damien Le Moal" <dlemoal@kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>, "FUKAUMI Naoki" <naoki@radxa.com>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Richard Zhu" <hongxing.zhu@nxp.com>, "Frank Li"
 <Frank.li@nxp.com>, "Lucas Stach" <l.stach@pengutronix.de>, "Shawn Guo"
 <shawnguo@kernel.org>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Fabio
 Estevam" <festevam@gmail.com>, "Conor Dooley" <conor@kernel.org>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, "Thierry Reding"
 <thierry.reding@gmail.com>, "Jonathan Hunter" <jonathanh@nvidia.com>, "Hans
 Zhang" <hans.zhang@cixtech.com>, <linux-tegra@vger.kernel.org>,
 <linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <kernel@pengutronix.de>, "Bjorn
 Helgaas" <bhelgaas@google.com>
Subject: Re: [PATCH 3/4] PCI: dw-rockchip: Configure L1sub support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>, "Niklas Cassel"
 <cassel@kernel.org>, "Shawn Lin" <shawn.lin@rock-chips.com>
References: <20251111221621.2208606-1-helgaas@kernel.org>
 <20251111221621.2208606-4-helgaas@kernel.org>
In-Reply-To: <20251111221621.2208606-4-helgaas@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_003031_660239_8D301E4E 
X-CRM114-Status: GOOD (  23.03  )
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

On Tue Nov 11, 2025 at 11:16 PM CET, Bjorn Helgaas wrote:
> From: Shawn Lin <shawn.lin@rock-chips.com>
>
> L1 PM Substates for RC mode require support in the dw-rockchip driver
> including proper handling of the CLKREQ# sideband signal. It is mostly
> handled by hardware, but software still needs to set the clkreq fields
> in the PCIE_CLIENT_POWER_CON register to match the hardware implementation.
>
> For more details, see section '18.6.6.4 L1 Substate' in the RK3658 TRM 1.1

s/RK3658/RK3568/

Sorry,
  Diederik

> Part 2, or section '11.6.6.4 L1 Substate' in the RK3588 TRM 1.0 Part2.
>
> Meanwhile, for the EP mode, we haven't prepared enough to actually support
> L1 PM Substates yet. So disable it now until proper support is added later.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> [bhelgaas: set pci->l1ss_support so DWC core preserves L1SS Capability bits;
> drop corresponding code here]
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Link: https://patch.msgid.link/1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 3e2752c7dd09..62a095752833 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -62,6 +62,12 @@
>  /* Interrupt Mask Register Related to Miscellaneous Operation */
>  #define PCIE_CLIENT_INTR_MASK_MISC	0x24
>  
> +/* Power Management Control Register */
> +#define PCIE_CLIENT_POWER_CON		0x2c
> +#define  PCIE_CLKREQ_READY		FIELD_PREP_WM16(BIT(0), 1)
> +#define  PCIE_CLKREQ_NOT_READY		FIELD_PREP_WM16(BIT(0), 0)
> +#define  PCIE_CLKREQ_PULL_DOWN		FIELD_PREP_WM16(GENMASK(13, 12), 1)
> +
>  /* Hot Reset Control Register */
>  #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
>  #define  PCIE_LTSSM_APP_DLY2_EN		BIT(1)
> @@ -85,6 +91,7 @@ struct rockchip_pcie {
>  	struct regulator *vpcie3v3;
>  	struct irq_domain *irq_domain;
>  	const struct rockchip_pcie_of_data *data;
> +	bool supports_clkreq;
>  };
>  
>  struct rockchip_pcie_of_data {
> @@ -200,6 +207,32 @@ static bool rockchip_pcie_link_up(struct dw_pcie *pci)
>  	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
>  }
>  
> +/*
> + * See e.g. section '11.6.6.4 L1 Substate' in the RK3588 TRM V1.0 for the steps
> + * needed to support L1 substates. Currently, just enable L1 substates for RC
> + * mode if CLKREQ# is properly connected and supports-clkreq is present in DT.
> + * For EP mode, there are more things should be done to actually save power in
> + * L1 substates, so disable L1 substates until there is proper support.
> + */
> +static void rockchip_pcie_configure_l1sub(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +
> +	/* Enable L1 substates if CLKREQ# is properly connected */
> +	if (rockchip->supports_clkreq &&
> +	    rockchip->data->mode == DW_PCIE_RC_TYPE ) {
> +		rockchip_pcie_writel_apb(rockchip, PCIE_CLKREQ_READY,
> +					 PCIE_CLIENT_POWER_CON);
> +		pci->l1ss_support = true;
> +		return;
> +	}
> +
> +	/* Otherwise, pull down CLKREQ# */
> +	rockchip_pcie_writel_apb(rockchip,
> +				 PCIE_CLKREQ_PULL_DOWN | PCIE_CLKREQ_NOT_READY,
> +				 PCIE_CLIENT_POWER_CON);
> +}
> +
>  static void rockchip_pcie_enable_l0s(struct dw_pcie *pci)
>  {
>  	u32 cap, lnkcap;
> @@ -264,6 +297,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
>  	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
>  					 rockchip);
>  
> +	rockchip_pcie_configure_l1sub(pci);
>  	rockchip_pcie_enable_l0s(pci);
>  
>  	return 0;
> @@ -301,6 +335,7 @@ static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	enum pci_barno bar;
>  
> +	rockchip_pcie_configure_l1sub(pci);
>  	rockchip_pcie_enable_l0s(pci);
>  	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
>  
> @@ -412,6 +447,9 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
>  		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
>  				     "failed to get reset lines\n");
>  
> +	rockchip->supports_clkreq = of_property_read_bool(pdev->dev.of_node,
> +							  "supports-clkreq");
> +
>  	return 0;
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
