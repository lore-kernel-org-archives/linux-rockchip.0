Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA7FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 21:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7zDahSaydH1MqAS1ZsmUmcEOzbhiEj30+J/QvMV6TU=; b=HF9olN48dJ5BWX
	/VeaifAEfUTW9gyc259eQvO6ApQZCo9nt/xck/I/UmWcetCWyrHirGxHhQfdCVWHvt1ykXg6Pv0pj
	zMYnhV6L8K7uy6eWdWPvHAEsnjoscHUaERmcchBOFfeIY5JhkpIuH3/VcStixzcwau/JPMI/x0WBE
	OL2QdCHPbaLRIn3mKldgwhdPVvwECIEpDcT3B9vABCjfu+25jq9anCHGSCRFxFD9mLbLpjvagAPD/
	3CRYYnNW71RauvN0tNfa4AnRSMaSn9oqV/h6B78XprurTY/BeLkDM4BW0SuDpAKlv+qs+Wn1E5tDG
	se2jsVx/GuwuJcLAn3wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noXCM-0044Kf-4z; Tue, 10 May 2022 21:15:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noXCJ-0044K0-O7; Tue, 10 May 2022 21:15:13 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1noXCC-0007Ms-0L; Tue, 10 May 2022 23:15:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Peter Geis <pgwipeout@gmail.com>
Cc: Marc Zyngier <maz@kernel.org>, PCI <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 0/5] Enable rk356x PCIe controller
Date: Tue, 10 May 2022 23:15:03 +0200
Message-ID: <2109328.Mh6RI2rZIc@diego>
In-Reply-To: <CAMdYzYrzq5C61T2NYmHr0g_P7Mm25TUfaDV3iz2LkV8-jpV4kA@mail.gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
 <CAMdYzYrzq5C61T2NYmHr0g_P7Mm25TUfaDV3iz2LkV8-jpV4kA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_141511_837995_8E321872 
X-CRM114-Status: GOOD (  27.81  )
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

Am Dienstag, 10. Mai 2022, 23:11:18 CEST schrieb Peter Geis:
> On Fri, Apr 29, 2022 at 8:38 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > This series enables the DesignWare based PCIe controller on the rk356x
> > series of chips. We drop the fallback to the core driver due to
> > compatibility issues. We reset the PCIe controller at driver probe to
> > prevent issues in the future when firmware / kexec leaves the controller
> > in an unknown state. We add support for legacy interrupts for cards that
> > lack MSI support (which is partially broken currently). We then add the
> > device tree nodes to enable PCIe on the Quartz64 Model A.
> 
> Good Evening,
> 
> Just a gentle ping to see if there's anything outstanding here.

From my side it looks good. I'll take patches 4+5 once the binding-change
from patch1 has been applied to some tree.


Heiko


> >
> > Patch 1 drops the snps,dw,pcie fallback from the dt-binding
> > Patch 2 resets the PCIe controller to prevent configuration bugs
> > Patch 3 adds legacy interrupt support to the driver
> > Patch 4 adds the device tree binding to the rk356x.dtsi
> > Patch 5 enables the PCIe controller on the Quartz64-A
> >
> > Changelog:
> > v9:
> > - move reset_control_assert out of rockchip_pcie_resource_get
> > - fix various formatting mistakes
> > - fix a checkpatch warning
> >
> > v8:
> > - add core reset patch
> > - simplify IRQ enable/disable functions
> > - drop spinlock
> > - only enable/disable IRQ requested
> > - only pass the IRQ register bits used to irq functions
> >
> > v7:
> > - drop assigned-clocks
> >
> > v6:
> > - fix a ranges issue
> > - point to GIC instead of ITS
> >
> > v5:
> > - fix incorrect series (apologies for the v4 spam)
> >
> > v4:
> > - drop the ITS modification, poor compatibility is better than
> >   completely broken
> >
> > v3:
> > - drop select node from dt-binding
> > - convert to for_each_set_bit
> > - convert to generic_handle_domain_irq
> > - drop unncessary dev_err
> > - reorder irq_chip items
> > - change to level_irq
> > - install the handler after initializing the domain
> >
> > v2:
> > - Define PCIE_CLIENT_INTR_STATUS_LEGACY
> > - Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
> > - Add legacy interrupt enable/disable support
> >
> >
> > Peter Geis (5):
> >   dt-bindings: PCI: Remove fallback from Rockchip DesignWare binding
> >   PCI: rockchip-dwc: Reset core at driver probe
> >   PCI: rockchip-dwc: Add legacy interrupt support
> >   arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
> >   arm64: dts: rockchip: Enable PCIe controller on quartz64-a
> >
> >  .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
> >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 +++++
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
> >  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 119 +++++++++++++++---
> >  4 files changed, 191 insertions(+), 26 deletions(-)
> >
> > --
> > 2.25.1
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
