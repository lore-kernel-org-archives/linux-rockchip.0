Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57B1C63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 15:43:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C5FE20706
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 15:43:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FgBK4RAl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C5FE20706
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aNUXpnuamJtfMWEg98Koz+pFFogQGmoel+BVTn1lA6g=; b=FgBK4RAl4MBE5V+FWjsYvQHHy
	c5w5bbN6Yh13nDSxneju0WAJSF8AhushSAGs+wkIVu1Z/QgPi5g5xvKeqRuxQ8RW4pZRHk2rJR5H7
	adab/K5WDAR3IUE2UikvkaccZinZvQ0jPaNpI9xSLag0TQtDv14f7e5BKWZa6AW5xILWJiU9byQNc
	4UAQpzR93F2RmulzE6PvmG1sDuq6BcxH59ohXKI0ADHeFD+dou06oyYyA49urH0ujupudvEft/a+L
	iBsBl7VBhXO7nAW+Sp/lL9XmNGZKNxzk1N2UPYBgI+7pzzKW6p+0rOKo5leDeYDosxbAXE0SVGwY5
	fhx6Xr5Zg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjlLC-0002hA-RB; Mon, 30 Nov 2020 15:43:50 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjlL6-0002f0-RI; Mon, 30 Nov 2020 15:43:45 +0000
Received: by mail-wm1-f66.google.com with SMTP id a6so5383093wmc.2;
 Mon, 30 Nov 2020 07:43:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wrXxUQ92cZjqbtsEEoadFbidu9p7SlbrPzlM2q7qXbQ=;
 b=MdEn12v4i8qHAUBIaIXk97YVxzfHB5Bn2oup2eeSqJE++9irODB+Soujtw6IpX5Piu
 DQoiD6TKEpej9/LOBFSHYwdMoQTstOl2Zt8tljUWCuSvOEoX0bYCmUBRlGyp6l92HH6J
 B5MgSxWUbX2xEogXhRe7qEo6TjGukpxJSdgH9t/rt7OoAv8xUkCJv097kNjGsoFLxPhr
 aKgo+Ft0GIvLRocrCZSMRDNLaR42BRpw0O+SXU2Xj2CX56XqdoXV5axrCMcub8uf5x8A
 zHxEe3WF/GG7cKJ8TXsBAvwaBr5B4PxzokcXO155gSVT6BIA0MxeZGiOi1TX4PZmhqDa
 OtSw==
X-Gm-Message-State: AOAM532TgedRchDa1h4OpMkW/36VTX65ATeOJLcBf/DcxApfbxGml3nt
 OCw1Rs3Inoxr+VIXE882/8U=
X-Google-Smtp-Source: ABdhPJwrrDJzMhj73fjDkT0ADgqZ22ISWQCdbgUESE4glj3y9mWsdL0QCouWmsg3hBrKTtQdmgQ/Kw==
X-Received: by 2002:a1c:1d85:: with SMTP id d127mr7724937wmd.39.1606751023484; 
 Mon, 30 Nov 2020 07:43:43 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id x5sm29038317wrm.96.2020.11.30.07.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Nov 2020 07:43:42 -0800 (PST)
Date: Mon, 30 Nov 2020 16:43:41 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v5] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <X8UTLQTXVX2iPCOn@rocinante>
References: <20201127104626.3979165-1-kw@linux.com>
 <20201128183516.GA897329@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201128183516.GA897329@bjorn-Precision-5520>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_104344_924206_5E12F94A 
X-CRM114-Status: GOOD (  29.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, David Laight <david.laight@aculab.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Jonathan Derrick <jonathan.derrick@intel.com>,
 Scott Branden <sbranden@broadcom.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

[+CC David for visibility]

Hi Bjorn,

Thank you for the review!

On 20-11-28 12:35:16, Bjorn Helgaas wrote:
[...]
> It's ironic that we don't use PCIE_ECAM_OFFSET in drivers/pci/ecam.c.
> We could do something like this, which would also let us drop
> .bus_shift completely in all the conforming implementations.  It also
> closes the hole that we didn't limit "where" to 4K for
> pci_ecam_map_bus() users.
> 
>   if (per_bus_mapping) {
>     base = cfg->winp[busn];
>     busn = 0;
>   } else {
>     base = cfg->win;
>   }
> 
>   if (cfg->ops->bus_shift) {
>     u32 bus_offset = (busn & 0xff) << cfg->ops->bus_shift;
>     u32 devfn_offset = (devfn & 0xff) << (cfg->ops->bus_shift - 8);
> 
>     where &= 0xfff;
> 
>     return base + (bus_offset | devfn_offset | where);
>   }
> 
>   return base + PCIE_ECAM_OFFSET(busn, devfn, where);
[...]

Thank you for suggesting this!  I sent v6 recently that includes this.

> >  static void __iomem *ppc4xx_pciex_get_config_base(struct ppc4xx_pciex_port *port,
> >  						  struct pci_bus *bus,
> > -						  unsigned int devfn)
> > +						  unsigned int devfn,
> > +						  int offset)
> 
> The interface change (to add "offset") could be a preparatory patch by
> itself.
> 
> But I'm actually not sure it's worth even touching this file.  This is
> the only place outside drivers/pci that includes linux/pci-ecam.h.  I
> think I might rather put PCIE_ECAM_OFFSET() and related things in
> drivers/pci/pci.h and keep it all inside drivers/pci.

Makes sense to drop it.  We can always introduce chances on PPC 4xx
platform in the future if we ever want it to leverage all the new macros
and constants.

These changes are not included in v6.

> >  static const struct pci_ecam_ops pci_thunder_pem_ops = {
> > -	.bus_shift	= 24,
> > +	.bus_shift	= THUNDER_PCIE_ECAM_BUS_SHIFT,
> >  	.init		= thunder_pem_platform_init,
> >  	.pci_ops	= {
> >  		.map_bus	= pci_ecam_map_bus,
> 
> This could be split to its own patch, no big deal either way.

Done.  v6 is now a series that includes this as a separate patch.

> >  const struct pci_ecam_ops xgene_v2_pcie_ecam_ops = {
> > -	.bus_shift	= 16,
> >  	.init		= xgene_v2_pcie_ecam_init,
> >  	.pci_ops	= {
> >  		.map_bus	= xgene_pcie_map_bus,
> 
> Thanks for mentioning this change in the cover letter.  It could also
> be split off to a preparatory patch, since it's not related to
> PCIE_ECAM_OFFSET(), which is the main point of this patch.

Done.
 
> >  static void __iomem *iproc_pcie_map_ep_cfg_reg(struct iproc_pcie *pcie,
> >  					       unsigned int busno,
> > -					       unsigned int slot,
> > -					       unsigned int fn,
> > +					       unsigned int devfn,
> 
> This interface change *could* be a separate preparatory patch, too,
> but I'm starting to feel even more OCD than usual :)

Done.  It's a separate patch in v6, although I kept it together with the
change to introduce the PCIE_ECAM_OFFSET() macro since I was retiring the
use of PCI_SLOT() and PCI_FUNC() macros.

> > @@ -94,7 +95,7 @@ struct vmd_dev {
> >  	struct pci_dev		*dev;
> >  
> >  	spinlock_t		cfg_lock;
> > -	char __iomem		*cfgbar;
> > +	void __iomem		*cfgbar;
> 
> This type change might be worth pushing to a separate patch since the
> casting issues are not completely trivial.

Done.

The patch included in the series as part of v6 already got a review from
David Laight (thank you!) who suggests that this might not be a good
idea to do, and keeping existing type would be better.

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
