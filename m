Return-Path: <SRS0=jnQU=DB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F790C4363D
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 20:58:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2509022208
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2020 20:58:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OR+mYBXI"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2509022208
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HswS0zo0qfK2ZprThL+OZV9tKbALd+i1TKmvXD6mca8=; b=OR+mYBXI/jq7nzO2PJbcdS0nK
	P8PYQykf2jlcE3UXyJlAyyWrSnsIePjB4WPmtif5tGs/HOnV3Mu8BfADZ/Xe+3s3RBII7TbV9Kdc8
	EszKjVFhfy8Fnp3bHFzI+Ver0NzQZZvJmnabSbyAFY4D0LL8kRHjG2ue3Bd+5VlBsVkPh67AeygKP
	x1x2dV/SbQUI3YSHTW4FgzqoZzwae+MW34mSFu/WfAM74lJfigzNd7zorIaz9h83WGH9+fvfKR9DD
	uT+eZIEp80QkUpNuX6lGHurGrcoYtWw2aCtZE1rmMJePv/FybZ+Exuh+0hnZqbbbfLOZlM9vx+Tf6
	WpljK6DeQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLYJa-00042R-5u; Thu, 24 Sep 2020 20:58:06 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLYJX-00040Q-2P; Thu, 24 Sep 2020 20:58:04 +0000
Received: by mail-lj1-f195.google.com with SMTP id u21so597002ljl.6;
 Thu, 24 Sep 2020 13:58:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oUQcKqiDOwUz2zTMzeEjHzQX74O2oCYNXMsTTzrVXDo=;
 b=KonbIQ1lAeXbB4eCeC5l5a2aUIhD1A9iSrT/6V5vmWYiGhrCWmP0uBLBIvri+NVltU
 nC8Q7V2CeFbAy5wImHWCWcy7zNvHyX4OguxVBWW1P/g+p66v6S+PWhe9Px8AvtUgo4ZY
 IjuzN/gEegFqI4tHvC8MbW23GBezIgXCiORnmvtr4bidq4LgDeU2Cc/9/ipFSMt2SrSe
 5OWJPB3sulUxIdViXgRMRrcMedduJ4nfLPeR04/4tnkujB9lGrUnuMvkjmv5jAYu+Ud3
 4dXjyNu/5VFSSvf985MpswwQ/EZgWqbS8zcHcaP7SYzTnB3HeCuyXbcv/Z2Hck8D/N0D
 PLKg==
X-Gm-Message-State: AOAM530t0b8Rw65GopXmKU3XqIBqg8+5DtJN8l6ND7/yCNEucH3FnUpJ
 VSMwsol+Mb+TUYFPc+O3B/A=
X-Google-Smtp-Source: ABdhPJyPv1OzmL5UmmLc4orwZcGXXCcypokxlluPnk2TiFBzY6pW7DfYUR7MlVqBVMoC61eGvfUf1w==
X-Received: by 2002:a2e:80d2:: with SMTP id r18mr295790ljg.98.1600981079714;
 Thu, 24 Sep 2020 13:57:59 -0700 (PDT)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id 193sm338255lfb.212.2020.09.24.13.57.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Sep 2020 13:57:57 -0700 (PDT)
Date: Thu, 24 Sep 2020 22:57:56 +0200
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20200924205756.GA56768@rocinante>
References: <20200905204416.GA83847@rocinante>
 <20200922232715.GA2238688@bjorn-Precision-5520>
 <CAL_JsqKs2m_echD97C+Q_NFS=yJif0LcgLMdDLnywjz35mboKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKs2m_echD97C+Q_NFS=yJif0LcgLMdDLnywjz35mboKQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200924_165803_163234_794FDB9A 
X-CRM114-Status: GOOD (  19.19  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Jonathan Chocron <jonnyc@amazon.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Bjorn Helgaas <helgaas@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Bjorn and Rob,

[...]
> > > #define PCIE_ECAM_BUS(x)      (((x) & 0xff) << 20)
> > > #define PCIE_ECAM_DEV(x)      (((x) & 0x1f) << 15)
> > > #define PCIE_ECAM_FUNC(x)     (((x) & 0x7) << 12)
> > >
> > > drivers/pci/controller/dwc/pcie-al.c:
> > >
> > > #define PCIE_ECAM_DEVFN(x)    (((x) & 0xff) << 12)
> > >
> > > I can move PCIE_ECAM_BUS, PCIE_ECAM_DEV and PCIE_ECAM_FUNC (as
> > > PCIE_ECAM_FUN) to the linux/pci-ecam.h file, as these seem useful, but
> > > without the masks, and then update other files to use these.  We could
> > > then leverage these, for example:
> > >
> > >       pci_base_addr = (void __iomem *)((uintptr_t)pp->va_cfg0_base +
> > > -                                      (busnr_ecam << 20) +
> > > -                                      PCIE_ECAM_DEVFN(devfn));
> > > +                                      PCIE_ECAM_BUS(busnr_ecam) +
> > > +                                      PCIE_ECAM_FUN(devfn));
> > >
> > > What do you think?  Bjorn, would that be acceptable?
> >
> > It would be nice to use the same style and same macros for all of
> > the following, which are all really doing the same thing:
> >
> >   al_pcie_conf_addr_map()
> >     pci_base_addr = (void __iomem *)((uintptr_t)pp->va_cfg0_base +
> >                                      (busnr_ecam << 20) +
> >                                      PCIE_ECAM_DEVFN(devfn));
> >
> >   rockchip_pcie_rd_other_conf()
> >     busdev = PCIE_ECAM_ADDR(bus->number, PCI_SLOT(devfn),
> >                             PCI_FUNC(devfn), where);
> >
> >   nwl_pcie_map_bus()
> >     relbus = (bus->number << ECAM_BUS_LOC_SHIFT) |
> >                     (devfn << ECAM_DEV_LOC_SHIFT);
> >
> >     return pcie->ecam_base + relbus + where;
> >
> >   xilinx_pcie_map_bus()
> >     relbus = (bus->number << ECAM_BUS_NUM_SHIFT) |
> >              (devfn << ECAM_DEV_NUM_SHIFT);
> >
> >     return port->reg_base + relbus + where;
> >
> > Maybe that's something like using PCIE_ECAM_ADDR() everywhere?  I'm
> > not sure there's value in having the caller do the PCI_SLOT() and
> > PCI_FUNC() decomposition, though, i.e., maybe it's something like
> > this?
> >
> >   #define PCIE_ECAM_REG(x)  ((x) & 0xfff)
> >
> >   #define PCI_ECAM_OFFSET(bus, devfn, where) \
> >     PCIE_ECAM_BUS(bus->number) | \
> >     PCIE_ECAM_DEVFN(devfn) | \
> >     PCIE_ECAM_REG(where)
[...]
> LGTM. This was on my radar, but not something I've looked at.
> 
> There's also aardvark which isn't ECAM, but does the same calculation.
> Call it indirect ECAM:
> 
> drivers/pci/controller/pci-aardvark.c:#define PCIE_CONF_BUS(bus)
>                  (((bus) & 0xff) << 20)
> drivers/pci/controller/pci-aardvark.c-#define PCIE_CONF_DEV(dev)
>                  (((dev) & 0x1f) << 15)
> drivers/pci/controller/pci-aardvark.c-#define PCIE_CONF_FUNC(fun)
>                  (((fun) & 0x7)  << 12)
> drivers/pci/controller/pci-aardvark.c-#define PCIE_CONF_REG(reg)
>                  ((reg) & 0xffc)
> drivers/pci/controller/pci-aardvark.c-#define PCIE_CONF_ADDR(bus,
> devfn, where) \
> drivers/pci/controller/pci-aardvark.c-  (PCIE_CONF_BUS(bus) |
> PCIE_CONF_DEV(PCI_SLOT(devfn))    | \
> drivers/pci/controller/pci-aardvark.c-
> PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
> 
> And VMD:
> drivers/pci/controller/vmd.c-   char __iomem *addr = vmd->cfgbar +
> drivers/pci/controller/vmd.c:                        ((bus->number -
> vmd->busn_start) << 20) +
> drivers/pci/controller/vmd.c-                        (devfn << 12) + reg;
> drivers/pci/controller/vmd.c-
> 
> 
> And brcm_pcie_cfg_index().

Thank you both for good feedback!

I will send a v2 later incorporating the feedback and suggestions.

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
