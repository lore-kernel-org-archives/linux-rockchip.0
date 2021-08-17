Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B32C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 15:39:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51ED660EE4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 15:39:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 51ED660EE4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zZi5F7psbIjaO+D6JD25KunOHDIqQAr4nl7cqTf9yzI=; b=Z1AyLhuciuHWLj
	mj+zNGAR2ac0+XkYllWQLQ+b98FJvYCbqqOVNWH4Sjd1F4gE/RlNY5iJQ/unaxKD0bN9frR4eeH2J
	BPZCa69rZWoOi41FihypXmI/hbj2l/TwgJfo/DjW8OPmZ+g6MTO2ngpUg/TwsPp709oxKmEJJEdPq
	3LdZannMuhS1gH10Y24/M15xQNlVyeqbhtWsEei91gPFxznHNrY9fMc/Yx8T4s7a4SKfw6YjI1BWJ
	4QTFqoHAWlzLQwyYkUkzomqATsNcAdpqOfW/AiRwttz4IsBdjh/QRy4ZSxafntDHAV/fPoM4pvnIH
	zbjv971fzqUtziVU6Idg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG1BD-002pBi-Qh; Tue, 17 Aug 2021 15:39:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG1B0-002p93-Cp; Tue, 17 Aug 2021 15:38:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B27D060EE4;
 Tue, 17 Aug 2021 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629214734;
 bh=8Dn8xwRrAwdeTSpGsm45Gr/0PhlYpnmOGmb5P59Ujc0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=lTx8o0We4f58KEp0jwZ20xH892smeI6EYqQ0JCAe47jsJc+77ZMSWhHVaDgcnS1FI
 e6RSb5qChsTyNXEU581LeNR1y8yFqYPBnIhpwuFbjhghHMP8MV+7vWXPAcFxIeLLu0
 JIu1yjFm2Ry/fgPsV8feHKX+cjHurBsJjxdPONGDamDxMKUJ38alVKbTMzSFWFoTdo
 nV8EoTBLt44kDCWy+MVrF6p64uCsPSq5MEHO8Fk9KQNe+EEgiGN3NraHXnARaLp6B6
 zkqg9KvU9Lm6x//sl9Qm7iC72pfFxKcUSFgo0D+9OJpLsKbTMXkRqjE4UvogrJl61F
 NHNFS25VACPhg==
Date: Tue, 17 Aug 2021 10:38:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 6/8] PCI: cadence: Add support to configure virtual
 functions
Message-ID: <20210817153852.GA3016660@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210811064656.15399-7-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_083854_514848_B5ADF00F 
X-CRM114-Status: GOOD (  17.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Aug 11, 2021 at 12:16:54PM +0530, Kishon Vijay Abraham I wrote:
> Now that support for SR-IOV is added in PCIe endpoint core, add support
> to configure virtual functions in the Cadence PCIe EP driver.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 136 +++++++++++++++---
>  drivers/pci/controller/cadence/pcie-cadence.h |   9 ++
>  2 files changed, 125 insertions(+), 20 deletions(-)

> @@ -92,21 +118,29 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>  
>  	addr0 = lower_32_bits(bar_phys);
>  	addr1 = upper_32_bits(bar_phys);
> -	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar),
> -			 addr0);
> -	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
> -			 addr1);
>  
>  	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
> +	if (vfn == 1)
> +		reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn);

Seems sort of weird to compute "reg", then sometimes overwrite it, as
opposed to:

  if (vfn == 1)
    reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn);
  else
    reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);

Also slightly weird that "vfn" is basically used as a boolean, but
it's actually a u8 virtual function number.  I guess VF 1 is special
and not like the other VFs?

>  	b = (bar < BAR_4) ? bar : bar - BAR_4;
>  
> -	cfg = cdns_pcie_readl(pcie, reg);
> -	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
> -		 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
> -	cfg |= (CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, aperture) |
> -		CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
> -	cdns_pcie_writel(pcie, reg, cfg);
> +	if (vfn == 0 || vfn == 1) {
> +		cfg = cdns_pcie_readl(pcie, reg);
> +		cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
> +			 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
> +		cfg |= (CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE(b, aperture) |
> +			CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl));
> +		cdns_pcie_writel(pcie, reg, cfg);
> +	}
>  
> +	fn = cdns_pcie_get_fn_from_vfn(pcie, fn, vfn);
> +	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar),
> +			 addr0);
> +	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
> +			 addr1);
> +
> +	if (vfn > 0)
> +		epf = &epf->epf[vfn - 1];
>  	epf->epf_bar[bar] = epf_bar;
>  
>  	return 0;
> @@ -122,18 +156,25 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>  	u32 reg, cfg, b, ctrl;
>  
>  	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
> +	if (vfn == 1)
> +		reg = CDNS_PCIE_LM_EP_VFUNC_BAR_CFG(bar, fn);

Similar recomputation of "reg".

>  	b = (bar < BAR_4) ? bar : bar - BAR_4;
>  
> -	ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
> -	cfg = cdns_pcie_readl(pcie, reg);
> -	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
> -		 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
> -	cfg |= CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl);
> -	cdns_pcie_writel(pcie, reg, cfg);
> +	if (vfn == 0 || vfn == 1) {
> +		ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
> +		cfg = cdns_pcie_readl(pcie, reg);
> +		cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
> +			 CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b));
> +		cfg |= CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_CTRL(b, ctrl);
> +		cdns_pcie_writel(pcie, reg, cfg);
> +	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
