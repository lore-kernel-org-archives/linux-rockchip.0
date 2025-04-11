Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48ABCC369A9
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 08:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkYYDf6lwWqi8iTophSwcO9JfDeDP249GBG+J0I/TuE=; b=pqUhml+M5e1U5B
	GxGBZReDIsnn3oHXmNe4dcC7ubwtWEC5S9VTuYbQngQdcYq0A+b5VZnat3p0wS6BIdcShPhr7bFGD
	xHm+yGLd5Q0s1nS+ePkPX/tdq6hOvXWcMzqAk/X+nBb3tqBJZoQ/f/b2dlFjD9EQbgaCnGHL+pnMt
	LaLd3VY9KvxOeVTenI3fXENPWNoinEJJcJpMTMqqZnscQeT4b3bJK7TkDj6lEE/RYT1mSJSWILIjr
	WIWzRz3cC43Bnv6vXW7NpwDpud6ksXmaxJ2T4jvsyJ26BEVTyooHM8kF9yMzVrjFBdaqagkYx3dHF
	TDTjLOsN25kqEbNi7HnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3ADR-0000000D6i7-3HVr;
	Fri, 11 Apr 2025 08:58:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3A77-0000000D5lJ-3M0B
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 08:51:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 90BCB61135;
	Fri, 11 Apr 2025 08:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D113DC4CEE2;
	Fri, 11 Apr 2025 08:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744361512;
	bh=qHj51DT4gaDYfC3Nzo5S6OJxmFzJOSStKKxG0u5ZzLw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xn+xnlktmHWVRACGKgFBHDDhK8HOW1gkoU+BTTARXvf0DJPW0CPeP/U6HlQ4VzLj8
	 P+aK6zcgjwR6MBjk1mY8G8+SAZq85oho3JcsbpxphErE32v5lN1l5oNwpVgQwCjgPo
	 U9E5h0e7hZlecnSxTvdpjaxLzDZLWkznxFQDfTWeNvmctmtoktlrMBiev651dxLIPx
	 3wT7ev4Vx5tKaW3K7HtSnnAsVCzdd1lC1ZtWEa/IyQLifp2wbAEeZ9BZa99yIG+Vgl
	 dlIDGAeKJbOCD1KDi4Peut3CEN7IQL1NBlXyl0nUst72/dkyCyuAtlnzIqCngcvWWP
	 6qrvMPuX9PrJg==
Date: Fri, 11 Apr 2025 10:51:48 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable L0S capability
Message-ID: <Z_jYJKL9rOGMR0xg@ryzen>
References: <1744332481-143011-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744332481-143011-1-git-send-email-shawn.lin@rock-chips.com>
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

On Fri, Apr 11, 2025 at 08:48:01AM +0800, Shawn Lin wrote:
> L0S capability isn't enabled on all SoCs by default, so enabling it
> in order to make ASPM L0S work on Rockchip platforms. We have been
> testing it for quite a long time and found the default FTS number
> provided by DWC core doesn't work stable and make LTSSM switch between
> L0S and Recovery, leading to long exit latency, even fail to link sometimes.
> So override it to the max 255 which seems work fine under test for both PHYs
> used by Rockchip platforms.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v2:
> - Move n_fts to probe function
> - rewrite the commit message
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 21dc99c..c397f3a 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -185,6 +185,17 @@ static int rockchip_pcie_link_up(struct dw_pcie *pci)
>  static int rockchip_pcie_start_link(struct dw_pcie *pci)
>  {
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	u32 cap, lnkcap;
> +
> +	/* Enable L0S capability for all SoCs */
> +	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	if (cap) {
> +		lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +		lnkcap |= PCI_EXP_LNKCAP_ASPM_L0S;
> +		dw_pcie_dbi_ro_wr_en(pci);
> +		dw_pcie_writel_dbi(pci, cap + PCI_EXP_LNKCAP, lnkcap);
> +		dw_pcie_dbi_ro_wr_dis(pci);
> +	}

I think it looks wrong to have this in _start_link().
Why not put this code in a new "_enable_l0s() function, and call it from:
rockchip_pcie_ep_init() and rockchip_pcie_host_init().

When looking at this, we probably should also move the
rockchip_pcie_ep_hide_broken_ats_cap_rk3588() call from _pre_init() to _init(),
because if there is a core reset, _init() is called again, but _pre_init() is
not.


>  
>  	/* Reset device */
>  	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> @@ -598,6 +609,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  	rockchip->pci.dev = dev;
>  	rockchip->pci.ops = &dw_pcie_ops;
>  	rockchip->data = data;

Perhaps add a newline here.

> +	/* Default fts number(210) is broken, override it to 255 */

Perhaps add a space between "number" and "(".
Perhaps write it as N_FTS instead of fts.
Perhaps use "value" instead of "number".

ie.

/* Default N_FTS value (210) is broken, ... */



Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
