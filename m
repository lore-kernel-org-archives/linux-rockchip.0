Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF5E4CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 18:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=EItReUn4uCEa4iW8tdjTb8OD7S8IqUvBESdKqw49D14=; b=HUGgpF+CcRAKCk
	5gFKTzBqjytvlC1Q/UfqpvLKgLfunF3/8R/gNxqAa85HsE02QiHeLSDpImVZoFnLPlKX47pJfSFkm
	5SxLZzwFgQnsvNPIBzQjtomL3c6V6eGUf0PtpvZKEz2LlgwZEML1N8cCX9Z3LZjUXd9JfLy7sgAyg
	pxR+oUKG0h9B+7XgxJXWLzEEdqdXFeK6WIb1mJZbXn7DfLIt2bSpdOE0bP3FOTZJTnoLOUiKIM3Pw
	js4V1kExSvXfZfyadalgtfE37AbxaPnrJa/9JdZgm8+46339/TpOPFhAO7++wlC+iebCawK08Tf9T
	qH6k4sQUbviWOePM8Z4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC009-00000007Di2-30m6;
	Thu, 23 Oct 2025 18:25:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC007-00000007Dgv-3LFT
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 18:25:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3C9EA61185;
	Thu, 23 Oct 2025 18:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C23F9C4CEE7;
	Thu, 23 Oct 2025 18:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761243926;
	bh=mOBvJWsTb0vY1iyFfVuyBlLeVYQAHWLsWjtUccN/ADA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=o3bQddqmlEUkUHxUG3lxTANhdQ3CzljYSwNiZ+aw9PrwVxuPEQ1VK1NjH6lSPvVgj
	 qYmBKwvUS0H/uIkSkZ/SxY1ue9eAEA+RHhnIhfII0JqwYt7whu4wIC0UAnoEvXkJmR
	 xYH77ZXgLn00Q+kGapHy5q1qyteK081AOWetYP5XE270E36LWDnEgRHAcyKV5ivYYz
	 10KMcwk98UI4QGwgIXVTzHtRQZI8BxHglr31GuDXx6XHYRNGzM4NnnAl1Rpunvg6gl
	 CSfbS5ZdJRzisTbKkDo8ORXc/RZjiUWxCpgYfKqPDscSeSsaBxrf72IDO2M+9o2+02
	 74WzG/ZfLnP/g==
Date: Thu, 23 Oct 2025 13:25:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <20251023182525.GA1306699@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251023180645.1304701-1-helgaas@kernel.org>
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

On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
> platforms") enabled Clock Power Management and L1 PM Substates, but those
> features depend on CLKREQ# and possibly other device-specific
> configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
> blindly enable Clock PM and L1 PM Substates.
> 
> Enable only ASPM L0s and L1, and only when both ends of the link advertise
> support for them.
> 
> Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
> Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
> Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
> Reported-by: Herve Codina <herve.codina@bootlin.com>
> Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
> Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Tested-by: FUKAUMI Naoki <naoki@radxa.com>

Provisionally applied to pci/for-linus, hoping to make v6.18-rc3.

Happy to add any testing reports or amend as needed.

> ---
> I intend this for v6.18-rc3.
> 
> I think it will fix the issues reported by Diederik and FUKAUMI Naoki (both
> on Rockchip).  I hope it will fix Christian's report on powerpc, but don't
> have confirmation.  I think the performance regression Herve reported is
> related, but this patch doesn't seem to fix it.
> 
> FUKAUMI Naoki's successful testing report:
> https://lore.kernel.org/r/4B275FBD7B747BE6+a3e5b367-9710-4b67-9d66-3ea34fc30866@radxa.com/
> ---
>  drivers/pci/pcie/aspm.c | 34 +++++++++-------------------------
>  1 file changed, 9 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
> index 7cc8281e7011..79b965158473 100644
> --- a/drivers/pci/pcie/aspm.c
> +++ b/drivers/pci/pcie/aspm.c
> @@ -243,8 +243,7 @@ struct pcie_link_state {
>  	/* Clock PM state */
>  	u32 clkpm_capable:1;		/* Clock PM capable? */
>  	u32 clkpm_enabled:1;		/* Current Clock PM state */
> -	u32 clkpm_default:1;		/* Default Clock PM state by BIOS or
> -					   override */
> +	u32 clkpm_default:1;		/* Default Clock PM state by BIOS */
>  	u32 clkpm_disable:1;		/* Clock PM disabled */
>  };
>  
> @@ -376,18 +375,6 @@ static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
>  	pcie_set_clkpm_nocheck(link, enable);
>  }
>  
> -static void pcie_clkpm_override_default_link_state(struct pcie_link_state *link,
> -						   int enabled)
> -{
> -	struct pci_dev *pdev = link->downstream;
> -
> -	/* For devicetree platforms, enable ClockPM by default */
> -	if (of_have_populated_dt() && !enabled) {
> -		link->clkpm_default = 1;
> -		pci_info(pdev, "ASPM: DT platform, enabling ClockPM\n");
> -	}
> -}
> -
>  static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>  {
>  	int capable = 1, enabled = 1;
> @@ -410,7 +397,6 @@ static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>  	}
>  	link->clkpm_enabled = enabled;
>  	link->clkpm_default = enabled;
> -	pcie_clkpm_override_default_link_state(link, enabled);
>  	link->clkpm_capable = capable;
>  	link->clkpm_disable = blacklist ? 1 : 0;
>  }
> @@ -811,19 +797,17 @@ static void pcie_aspm_override_default_link_state(struct pcie_link_state *link)
>  	struct pci_dev *pdev = link->downstream;
>  	u32 override;
>  
> -	/* For devicetree platforms, enable all ASPM states by default */
> +	/* For devicetree platforms, enable L0s and L1 by default */
>  	if (of_have_populated_dt()) {
> -		link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
> +		if (link->aspm_support & PCIE_LINK_STATE_L0S)
> +			link->aspm_default |= PCIE_LINK_STATE_L0S;
> +		if (link->aspm_support & PCIE_LINK_STATE_L1)
> +			link->aspm_default |= PCIE_LINK_STATE_L1;
>  		override = link->aspm_default & ~link->aspm_enabled;
>  		if (override)
> -			pci_info(pdev, "ASPM: DT platform, enabling%s%s%s%s%s%s%s\n",
> -				 FLAG(override, L0S_UP, " L0s-up"),
> -				 FLAG(override, L0S_DW, " L0s-dw"),
> -				 FLAG(override, L1, " L1"),
> -				 FLAG(override, L1_1, " ASPM-L1.1"),
> -				 FLAG(override, L1_2, " ASPM-L1.2"),
> -				 FLAG(override, L1_1_PCIPM, " PCI-PM-L1.1"),
> -				 FLAG(override, L1_2_PCIPM, " PCI-PM-L1.2"));
> +			pci_info(pdev, "ASPM: default states%s%s\n",
> +				 FLAG(override, L0S, " L0s"),
> +				 FLAG(override, L1, " L1"));
>  	}
>  }
>  
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
