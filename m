Return-Path: <SRS0=HIU6=B7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC7AC433E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 16:16:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C23F22B40
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2020 16:16:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mrzH78pr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrsG4TTl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C23F22B40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DRHVyQT0Pi1xsP4clpVU3egCVF/wCBxRbt/5KNFzLmU=; b=mrzH78pr4yBp2ipno8vEf8uGH
	0ichetGS+oNdq3BXHn2JdNv6i1NjKjRX/aYJMwHS32aeHzqn4ixVsn7VQ7vQql0IT2muyIbCay5Of
	GgM2GfL/D3D9++Ls8P/bH6ASBzy1ziLXNXkzg8X7h18I2BqTTxndnj05/0LAEjlJnTz+rumJfOvyU
	xlLdh5FeqdN10nup/K2jXIwf1C9/362p1Q2uTEy7QYPi5extmt4xJfOg2zHYbcXUtwLLfnmlidwiv
	G4OujYlTclb+/c+BP//LvmkFx1kHCf81zVKzM9S4bpjmfV1rozmTo8xWe6Y3uQcmi0XWtpigjERya
	lVXxhoi5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k99i6-0002ag-Ij; Fri, 21 Aug 2020 16:16:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k99gI-0001hn-7g; Fri, 21 Aug 2020 16:14:19 +0000
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51DFE2086A;
 Fri, 21 Aug 2020 16:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598026456;
 bh=bYFPqMFJZGGngklFEQRN75kI8fBeiH03ggGK5rWbC+Y=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=HrsG4TTlftZB4x2EwRe5u3quGJonn+QgNbwpnWEgepSktVD8haZkZ8TxBQ3Oy/IAp
 bVSvr2fDKvvpsqvs5L3DrHdb1qlZGW3HPSJa0avFswWqVGGR8a9+JMedIyGfiz/UGT
 GcIMN3WC2ySL9GTNl/wkJFgJE0JNgY9a+CLB1eTo=
Received: by mail-oi1-f170.google.com with SMTP id k4so1971809oik.2;
 Fri, 21 Aug 2020 09:14:16 -0700 (PDT)
X-Gm-Message-State: AOAM531tag/icuZ+9uU9WdoeB7Ilt6BTm+krytG7l1TKtxbk9zH2bm3X
 eWth6tGu9YuSuHPhOwp61CHPOLdzNhqUwI5nUA==
X-Google-Smtp-Source: ABdhPJz0/TSttwcTQBGtLxaZvemBSjATwc2oAvXZ2ak2yZPCGrKMESorIZVN97B2EbAAVFg67RcqV37KM698UolAMHI=
X-Received: by 2002:aca:190c:: with SMTP id l12mr2282143oii.147.1598026455636; 
 Fri, 21 Aug 2020 09:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200819221750.2055932-1-robh@kernel.org>
 <20200821011237.GA4527@lx2k>
In-Reply-To: <20200821011237.GA4527@lx2k>
From: Rob Herring <robh@kernel.org>
Date: Fri, 21 Aug 2020 10:14:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLfzDMJXDdqtVBYWrvuB8kBDHECWmNkS5EJStiwSFtp-g@mail.gmail.com>
Message-ID: <CAL_JsqLfzDMJXDdqtVBYWrvuB8kBDHECWmNkS5EJStiwSFtp-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: Reformat PCI ranges/dma-ranges entries
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200821_121418_699553_2A26650D 
X-CRM114-Status: GOOD (  15.98  )
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
List-Id: <soc.lore.kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>, Wei Xu <xuwei5@hisilicon.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, SoC Team <soc@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Yang <leoyang.li@nxp.com>,
 Tero Kristo <t-kristo@ti.com>, Robert Richter <rrichter@marvell.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 20, 2020 at 8:53 PM Olof Johansson <olof@lixom.net> wrote:
>
> On Wed, Aug 19, 2020 at 04:17:50PM -0600, Rob Herring wrote:
> > While bracketing doesn't matter for a DTB, the DT schema checks rely on
> > bracketing around each distinct entry. Reformat ranges and dma-ranges
> > entries to fix warnings such as:
> >
> > arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: [[2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576]] is not valid under any of the given schemas (Possible causes of the failure):
> >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges: True was expected
> >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0: [2197815296, 0, 4194304000, 0, 4194304000, 0, 31457280, 2164260864, 0, 4225761280, 0, 4225761280, 0, 1048576] is too long
> >         arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml: pcie@f8000000: ranges:0:0: 2197815296 is not one of [16777216, 33554432, 50331648, 1107296256, 1124073472]
>
> Seems like a bug in your tool? Why would we bother with this churn?

It's a feature. :)

In this case, with the entries bracketed, we can check the PCI top
address cell contents in the common PCI schema and check how many
ranges entries in the specific bridge schemas if they have some
constraints. The use of bracketing is useful to defining the number of
entries not just for ranges, but everywhere. A device binding defines
how many register regions or interrupts for example. It makes sense to
delineate entries in some way. While yes, we have #.*-cells, there's
not really any way to handle that in json-schema. And let's face it,
#.*-cells is an odd construct.

Currently, the dtc dts->yaml output maintains all this formatting. I
suppose we could change that such that we parse #.*-cells and define
the boundaries based on them. But then dtc has to know about every
case of #.*-cells. That's not impossible to do, but doesn't keep the
tool and binding data separate.

Looking at it another way, do we really want to just allow anything? A
device with 3 interrupts could be written as:

interrupts = <1>, <2>, <3>;
interrupts = <1 2 3>;
interrupts = <1>, <2 3>;
interrupts = [ 00 00 00 01 00 00 00 02 00 00 00 03 ];

Or can we have some coding standards that are no more onerous or
pedantic than what we have everywhere else?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
