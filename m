Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A92C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:54:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D39B82336D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 14:54:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D39B82336D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JHzn1rbnS5TEUtaWtQZV00uzVt2lVWm4qZLLW26b3VM=; b=UvDKu/Wa0b/lxQB1lxsjCfnJy
	csvrFfc9XyfOawXfkxNGeVJTzW5w7ZJqbBmNaRyKCqaWcbxFtDxxOeA2sXrGtkx/NLd/gXBjbF3IK
	SjoMnyWWvLDjsuV9PS8oGDaJ/0zh2Z5qXa+D9DzsIlxQ64uH563QUpXn7+jrzr3IfdslFEwwbYXDg
	Ui4Tu8IxoGPNtbDQ++Anft4qhI0vruLUT3tyR0h5+Jvk91Q5rbCimJsJm8cpsDNPM8Au7WU3ALne8
	1XaOpJ2vOqYVFcLvTUzLj6k9GM5hArEGNeCfSHalNMK2uIK+V/CnU85Fq+Jibn/Wnp6QUtCAlB5Ro
	FSzjntRKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Esi-0001Yq-DX; Wed, 20 Jan 2021 14:54:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Esf-0001YL-K3
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 14:54:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l2EsV-0001oX-0b; Wed, 20 Jan 2021 15:54:35 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Wed, 20 Jan 2021 15:54:34 +0100
Message-ID: <3792680.3daJWjYHZt@diego>
In-Reply-To: <CAL_JsqK=roMm7vb=WAcLUsiru5qwFg=Sc_po1gD8oJu=JipZbg@mail.gmail.com>
References: <20210118091739.247040-1-xxm@rock-chips.com>
 <c9ff67c7-ca1d-d4a6-aef5-4c75688ed6d3@arm.com>
 <CAL_JsqK=roMm7vb=WAcLUsiru5qwFg=Sc_po1gD8oJu=JipZbg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_095445_658475_5ADA8295 
X-CRM114-Status: GOOD (  31.27  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue <xxm@rock-chips.com>,
 PCI <linux-pci@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 20. Januar 2021, 15:16:25 CET schrieb Rob Herring:
> On Tue, Jan 19, 2021 at 12:40 PM Robin Murphy <robin.murphy@arm.com> wrot=
e:
> >
> > On 2021-01-19 15:11, Johan Jonker wrote:
> > > Hi Simon, Heiko,
> > >
> > > On 1/19/21 2:14 PM, Heiko St=FCbner wrote:
> > >> Hi Johan,
> > >>
> > >> Am Dienstag, 19. Januar 2021, 14:07:41 CET schrieb Johan Jonker:
> > >>> Hi Simon,
> > >>>
> > >>> Thank you for this patch for rk3568 pcie.
> > >>>
> > >>> Include the Rockchip device tree maintainer and all other people/li=
sts
> > >>> to the CC list.
> > >>>
> > >>> ./scripts/checkpatch.pl --strict <patch1> <patch2>
> > >>>
> > >>>   ./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallb=
ack
> > >>> --nogit <patch1> <patch2>
> > >>>
> > >>> git send-email --suppress-cc all --dry-run --annotate --to
> > >>> heiko@sntech.de --cc <..> <patch1> <patch2>
> > >>>
> > >>> This SoC has no support in mainline linux kernel yet.
> > >>> In all the following yaml documents for rk3568 we need headers with
> > >>> defines for clocks and power domains, etc.
> > >>>
> > >>> For example:
> > >>> #include <dt-bindings/clock/rk3568-cru.h>
> > >>> #include <dt-bindings/power/rk3568-power.h>
> > >>>
> > >>> Could Rockchip submit first clocks and power drivers entries and a =
basic
> > >>> rk3568.dtsi + evb dts?
> > >>> Include a patch to this serie with 3 pcie nodes added to rk3568.dts=
i.
> > >>>
> > >>> A dtbs_check only works with a complete dtsi and evb dts.
> > >>>
> > >>> make ARCH=3Darm64 dtbs_check
> > >>> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/pci/rockchip-dw=
-pcie.yaml
> > >>>
> > >>> On 1/18/21 10:17 AM, Simon Xue wrote:
> > >>>> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> > >>>> ---
> > >>>>   .../bindings/pci/rockchip-dw-pcie.yaml        | 101 ++++++++++++=
++++++
> > >>>>   1 file changed, 101 insertions(+)
> > >>>>   create mode 100644 Documentation/devicetree/bindings/pci/rockchi=
p-dw-pcie.yaml
> > >>>>
> > >>>> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pci=
e.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > >>>> new file mode 100644
> > >>>> index 000000000000..fa664cfffb29
> > >>>> --- /dev/null
> > >>>> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > >>>> @@ -0,0 +1,101 @@
> > >>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > >>>> +%YAML 1.2
> > >>>> +---
> > >>>> +$id: http://devicetree.org/schemas/pci/rockchip-dw-pcie.yaml#
> > >>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > >>>> +
> > >>>> +title: DesignWare based PCIe RC controller on Rockchip SoCs
> > >>>> +
> > >>>
> > >>>> +maintainers:
> > >>>> +  - Shawn Lin <shawn.lin@rock-chips.com>
> > >>>> +  - Simon Xue <xxm@rock-chips.com>
> > >>>
> > >>> maintainers:
> > >>>    - Heiko Stuebner <heiko@sntech.de>
> > >>>
> > >>> Add only people with maintainer rights.
> > >>
> > >> I'd disagree on this ;-)
> > >
> > > All roads leads to Heiko... ;)
> > >
> > > It takes long term commitment.
> > > Year in, year out.
> > > Keeping yourself up to date with the latest pcei development.
> > > Communicate in English.
> > > Be able to submit patches without errors... ;)
> > > Review other peoples patches.
> > > Respond in short time.
> > > Bug fixing.
> >
> > Crikey, it's only a DT binding... :/
> >
> > > If that's what you really want, then you must include a patch to this
> > > serie for MAINTAINERS.
> >
> > I think if Bjorn and Lorenzo want a specifically named sub-maintainer
> > for the driver itself, we can let them say so rather than presume.
> =

> For the binding it's my call. :)
> =

> This should be someone who cares and knows the h/w. IOW, if I want to
> delete the binding, someone who will object.
>
> Of course, I'd like that someone to have all the above qualities too.

I guess that would be separate entites then ...

Shawn and Simon know the hardware way better, though I'm not sure if their
work commitments will allow them to keep track of binding deletions

So maybe all 3 of us ;-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
