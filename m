Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7338C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 13:15:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15E9022D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 13:15:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15E9022D6F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73c6I3PVEJ9FlhSOFdOgGedyGliP9QCwdgEqm7UmdAQ=; b=ULW3xBNgWZt8sovYDAhQV2D9j
	a+ygVTYpFcPGfVgV4qvrdQoVGBRmEL4DTiwgprj6FdyY3rpPsPoS5QUxTpO0pDZGi55GMEZiVp7Vx
	E79n/fBOyjqJ7PIEJWDzUyWFIstXpPPLHrtdrTQnOwo80Da7fgc4el0zECvZT5g9wn7e6DOVLOvY+
	1AEGrX9Z3xr1jD2aGJuiJOBD4UcCiVTgLZ9uUD+QfGHlSYXzbBQaGfA2pAYfzBI99C34s14shHtY7
	mIlBPuiD/N/IKBlepjKplPDG4sIckfCHqQsWjOvokscj5GkN+Am3rmFtdJjwmSVl80mLd3TQeIx1L
	jDA0lrIaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1qql-0005Xb-2C; Tue, 19 Jan 2021 13:15:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1qqi-0005XI-22
 for linux-rockchip@lists.infradead.org; Tue, 19 Jan 2021 13:15:09 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l1qqa-0006zp-SK; Tue, 19 Jan 2021 14:15:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Simon Xue <xxm@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Tue, 19 Jan 2021 14:14:59 +0100
Message-ID: <2336601.uoxibFcf9D@diego>
In-Reply-To: <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <20210118091739.247040-2-xxm@rock-chips.com>
 <e143ad9e-1cfd-e59d-0079-513c036981ba@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_081508_122392_E9DFBCB1 
X-CRM114-Status: GOOD (  23.10  )
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
Cc: linux-pci@vger.kernel.org, devicetree <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,

Am Dienstag, 19. Januar 2021, 14:07:41 CET schrieb Johan Jonker:
> Hi Simon,
> 
> Thank you for this patch for rk3568 pcie.
> 
> Include the Rockchip device tree maintainer and all other people/lists
> to the CC list.
> 
> ./scripts/checkpatch.pl --strict <patch1> <patch2>
> 
>  ./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
> --nogit <patch1> <patch2>
> 
> git send-email --suppress-cc all --dry-run --annotate --to
> heiko@sntech.de --cc <..> <patch1> <patch2>
> 
> This SoC has no support in mainline linux kernel yet.
> In all the following yaml documents for rk3568 we need headers with
> defines for clocks and power domains, etc.
> 
> For example:
> #include <dt-bindings/clock/rk3568-cru.h>
> #include <dt-bindings/power/rk3568-power.h>
> 
> Could Rockchip submit first clocks and power drivers entries and a basic
> rk3568.dtsi + evb dts?
> Include a patch to this serie with 3 pcie nodes added to rk3568.dtsi.
> 
> A dtbs_check only works with a complete dtsi and evb dts.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 
> On 1/18/21 10:17 AM, Simon Xue wrote:
> > Signed-off-by: Simon Xue <xxm@rock-chips.com>
> > ---
> >  .../bindings/pci/rockchip-dw-pcie.yaml        | 101 ++++++++++++++++++
> >  1 file changed, 101 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > new file mode 100644
> > index 000000000000..fa664cfffb29
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > @@ -0,0 +1,101 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: DesignWare based PCIe RC controller on Rockchip SoCs
> > +
> 
> > +maintainers:
> > +  - Shawn Lin <shawn.lin@rock-chips.com>
> > +  - Simon Xue <xxm@rock-chips.com>
> 
> maintainers:
>   - Heiko Stuebner <heiko@sntech.de>
> 
> Add only people with maintainer rights.

I'd disagree on this ;-)

The maintainer for individual drivers should be the persons who are
actually know the hardware. We have individual Rockchip developers
taking care of other drivers as well already.

And normally scripts/get_maintainer.pl should already include me
due to the wildcard for things having "rockchip" in the name.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
