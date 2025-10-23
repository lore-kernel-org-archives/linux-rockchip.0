Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1B6ECCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 18:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYATPFCP6R/HR+GqiXQ9/bIjFBe1o0TBaK3IyMA4GbI=; b=Cw/HUeZdmHEB7d
	YmyAjs1F5/WiUZt3wSCHk8+d5SmZIGYpQ81SZQq4qJZ5T7ArkijIeAs1Oxy8tYWMmqGj37SGpwxH9
	QaNDCUtRUQoff+nVo6RhXMxsaFSq4I0G0mwkh8IwkvF9alL+D/ct+kHa90mFOfIziX7ckCJ78Hn/B
	rutIks6CfRfTyLmFgYy3BB7HynFMD/tVDsRo0e6iemm4oz83qPQ/eoJ16n3iEM5gLLa/ylKCjkB0p
	7GcmQqP6Q74uuvbcFH/afiU9RsMmd31Gi6HiEJySjJ8JnN2LMrPCVaRHgxv6etQ1bBBieW13eP7az
	0HluSNV7paBT6H31Itjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC02F-00000007DvS-2CoL;
	Thu, 23 Oct 2025 18:27:39 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC02C-00000007Dum-3EoK
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 18:27:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 58F2D40D25;
	Thu, 23 Oct 2025 20:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1761244050; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=wMO+SCV0l5dh/TBWZh1mnrGafB3FTHbpefBDO3evOwI=;
	b=x3vT1EJfPxqfvf6DDV90OVcHLztgqacXNaWxXyOwo0jNBDwyLCyeJv+Ph7niMcJnYDzjBG
	J2UzZzAjq5i3/7WU/eAXEAMb6jgGRiRpLoww3MWmxhS+RtWLCXhJxmEuov4NulcMgpz5PG
	w1GIi7xYmiBEH/4rLkLz+Fe4Xp6LKm4+7n2zwSIFFAGAZeOBEX3Cd0uhcrFSJYSM+4Dg7y
	Y+p5mV9ipeAg9wQd8MQGJbqePWEDXiYtY+pdnPNA4lvoTUJyj/LwwX19qiQuaHv70L7Gi9
	Y+LjMR4vDEkJcmcKkKSsFfSUNcozLPKt+1hwz1nu9t0VQ0cUmKUG331JrfXwew==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251023180645.1304701-1-helgaas@kernel.org>
References: <20251023180645.1304701-1-helgaas@kernel.org>
Date: Thu, 23 Oct 2025 20:27:25 +0200
Cc: linux-pci@vger.kernel.org, "Manivannan Sadhasivam" <manivannan.sadhasivam@oss.qualcomm.com>, "Christian Zigotzky" <chzigotzky@xenosoft.de>, "FUKAUMI Naoki" <naoki@radxa.com>, "Herve Codina" <herve.codina@bootlin.com>, "Diederik de Haas" <diederik@cknow-tech.com>, linuxppc-dev@lists.ozlabs.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Bjorn Helgaas" <bhelgaas@google.com>, "Shawn Lin" <shawn.lin@rock-chips.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>
MIME-Version: 1.0
Message-ID: <da79f38f-fdb9-0101-67cc-144ef8d6e1d1@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?PCI/ASPM=3A?= Enable only L0s and L1 
 for devicetree platforms
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_112737_194439_CB01F9C4 
X-CRM114-Status: GOOD (  23.77  )
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

Hello Bjorn,

On Thursday, October 23, 2025 20:06 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
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

I'm more than happy with the way ASPM patches for DT platforms and
Rockchip SoCs in particular are unfolding!  Admittedly, we've had
a rough start with the blanket enabling of ASPM, which followed the
theory, but the theory often differs from practice, so the combined
state of this and associated patches from Shawn should be fine.

Thank you very much for all the effort that included quite a lot
of back and forth, and please feel free to include

Acked-by: Dragan Simic <dsimic@manjaro.org>

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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
