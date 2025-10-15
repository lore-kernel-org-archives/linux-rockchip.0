Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A48CCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 12:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RgDqDZs8Q/L5SZVFLYOv7GmAIr2qx+g5hLoJJBcNiQ=; b=a1XT9IgKFlrBMC
	y4ysiL0/YwKorlWso4lYke0bFxNPSB+BliSXJAktM56Bdqzges8rF/so1UCsmwQnVKpx4nodicJl3
	97yWAQEEhETbpJeFQY7aF18cmtSoJ/54/+7EWVGw07SvXhiDbdqIPJnuxaJyfkJQxxMnu/kc9LwV1
	vP4jxSpjvxkEOO4jbt7ih7r+vbpjD5juZb904REo3G6S9F0sBLTayHyMuGdspK7DE5jUjcyvf7cPV
	ylOSzM4c95xnsQ9PnB/48g5LQKMXdjxUrxXAfJPpG3TBWL/awApXHBpc2J70UWYZvmxaCT2IZKQQp
	CzqhxJiM+Ys0F+vmYQ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90Rs-00000001Wws-1d1U;
	Wed, 15 Oct 2025 12:17:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90Rp-00000001WwA-3Oax
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 12:17:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F39C8442D7;
	Wed, 15 Oct 2025 12:17:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902FFC4CEF8;
	Wed, 15 Oct 2025 12:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760530660;
	bh=4dj1pZ6/tkmCuLONgrISudEw+q6AJznQjWAEkKNElIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f8lDNOc0OeNbG8ocnB2PZFMo+hN3z3hiUHGZJeLH+9i5EhN4BjlN8aIGqIYngwYAK
	 on22xFQLC/JMXXiJLl/ZO4w9+oqmPCV7cNkNGsr9Pk6pG+xi89Dda/PlxPqK3G5MqJ
	 l4EEt13MCuosPRziMtwFQjNUPJUYbWKlkoUuFqMvLPXDw88epRZbAR+HmQfDtHBfR2
	 ThJFdtm5vXp7qB0GIiWHw9XqyVF+cqBLUeLLnz8neI7Pd/TX/kzSVaJKodYYC5sq1z
	 0UmDGPCqzXLw/vAVozyj2/W0dSDdcSas0OR1ppDnjimXzokF+WCMyiyz9arjYpHIVG
	 D5qcV+MxguYAg==
Date: Wed, 15 Oct 2025 14:17:33 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	manivannan.sadhasivam@oss.qualcomm.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <aO-Q3QsxPBXbFieG@ryzen>
References: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com>
 <20251014184905.GA896847@bhelgaas>
 <5ivvb3wctn65obgqvnajpxzifhndza65rsoiqgracfxl7iiimt@oym345d723o2>
 <823262AB21C8D981+8c1b9d50-5897-432b-972e-b7bb25746ba5@radxa.com>
 <7ugvxl3g5szxhc5ebxnlfllp46lhprjvcg5xp75mobsa44c6jv@h2j3dvm5a4lq>
 <a9ca7843-b780-45aa-9f62-3f443ae06eee@rock-chips.com>
 <aO9tWjgHnkATroNa@ryzen>
 <ud72uxkobylkwy5q5gtgoyzf24ewm7mveszfxr3o7tortwrvw5@kc3pfjr3dtaj>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ud72uxkobylkwy5q5gtgoyzf24ewm7mveszfxr3o7tortwrvw5@kc3pfjr3dtaj>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_051741_886559_BB65EB3F 
X-CRM114-Status: GOOD (  29.03  )
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

On Wed, Oct 15, 2025 at 04:03:53PM +0530, Manivannan Sadhasivam wrote:
> On Wed, Oct 15, 2025 at 11:46:02AM +0200, Niklas Cassel wrote:
> > Hello Shawn,
> > 
> > On Wed, Oct 15, 2025 at 05:11:39PM +0800, Shawn Lin wrote:
> > > > 
> > > > Thanks! Could you please try the below diff with f3ac2ff14834 applied?
> > > > 
> > > > diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> > > > index 214ed060ca1b..0069d06c282d 100644
> > > > --- a/drivers/pci/quirks.c
> > > > +++ b/drivers/pci/quirks.c
> > > > @@ -2525,6 +2525,15 @@ static void quirk_disable_aspm_l0s_l1(struct pci_dev *dev)
> > > >    */
> > > >   DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_ASMEDIA, 0x1080, quirk_disable_aspm_l0s_l1);
> > > > 
> > > > +
> > > > +static void quirk_disable_aspm_all(struct pci_dev *dev)
> > > > +{
> > > > +       pci_info(dev, "Disabling ASPM\n");
> > > > +       pci_disable_link_state(dev, PCIE_LINK_STATE_ALL);
> > > > +}
> > > > +
> > > > +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_ROCKCHIP, 0x3588, quirk_disable_aspm_all);
> > > 
> > > That's not true from my POV. Rockchip platform supports all ASPM policy
> > > after mass production verification. I also verified current upstream
> > > code this morning with RK3588-EVB and can check L0s/L1/L1ss work fine.
> > > 
> > > The log and lspci output could be found here:
> > > https://pastebin.com/qizeYED7
> > > 
> > > Moreover, I disscussed this issue with FUKAUMI today off-list and his
> > > board seems to work when only disable L1ss by patching:
> > > 
> > > --- a/drivers/pci/pcie/aspm.c
> > > +++ b/drivers/pci/pcie/aspm.c
> > > @@ -813,7 +813,7 @@ static void pcie_aspm_override_default_link_state(struct
> > > pcie_link_state *link)
> > > 
> > >         /* For devicetree platforms, enable all ASPM states by default */
> > >         if (of_have_populated_dt()) {
> > > -               link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
> > > +               link->aspm_default = PCIE_LINK_STATE_L0S |
> > > PCIE_LINK_STATE_L1;
> > >                 override = link->aspm_default & ~link->aspm_enabled;
> > >                 if (override)
> > >                         pci_info(pdev, "ASPM: DT platform,
> > > 
> > > 
> > > So, is there a proper way to just disable this feature for spec boards
> > > instead of this Soc?
> > 
> > This fix seems do the trick, without needing to patch common code (aspm.c):
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > index 3e2752c7dd09..f5e1aaa97719 100644
> > --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> > @@ -200,6 +200,19 @@ static bool rockchip_pcie_link_up(struct dw_pcie *pci)
> >  	return FIELD_GET(PCIE_LINKUP_MASK, val) == PCIE_LINKUP;
> >  }
> >  
> > +static void rockchip_pcie_disable_l1sub(struct dw_pcie *pci)
> > +{
> > +	u32 cap, l1subcap;
> > +
> > +	cap = dw_pcie_find_ext_capability(pci, PCI_EXT_CAP_ID_L1SS);
> > +	if (cap) {
> > +		l1subcap = dw_pcie_readl_dbi(pci, cap + PCI_L1SS_CAP);
> > +		l1subcap &= ~(PCI_L1SS_CAP_ASPM_L1_1 | PCI_L1SS_CAP_ASPM_L1_2 | PCI_L1SS_CAP_L1_PM_SS);
> > +		dw_pcie_writel_dbi(pci, cap + PCI_L1SS_CAP, l1subcap);
> > +		l1subcap = dw_pcie_readl_dbi(pci, cap + PCI_L1SS_CAP);
> > +	}
> > +}
> > +
> >  static void rockchip_pcie_enable_l0s(struct dw_pcie *pci)
> >  {
> >  	u32 cap, lnkcap;
> > @@ -264,6 +277,7 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
> >  	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
> >  					rockchip);
> >  
> > +	rockchip_pcie_disable_l1sub(pci);
> >  	rockchip_pcie_enable_l0s(pci);
> >  
> >  	return 0;
> > @@ -301,6 +315,7 @@ static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
> >  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> >  	enum pci_barno bar;
> >  
> > +	rockchip_pcie_disable_l1sub(pci);
> >  	rockchip_pcie_enable_l0s(pci);
> >  	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
> > 
> 
> But this patch removes the L1SS CAP for all boards, isn't it?

Yes, all boards supported by pcie-dw-rockchip.c, which matches what their
downstream driver does.

(Their downstream driver disables L1 substates for all boards that have
not defined 'supports-clkreq', and a grep through their downstream tree,
for all their all their different branches, shows that not a since rockchip
DTS has this property specified.)

So, let me submit a real patch with the above.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
