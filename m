Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0B63C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:01:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5968D611CE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:01:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5968D611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i04Fw/bVeJrWg552VGGnEOTWx47rwNkC/RGBCIc8mJs=; b=MH6Tlw4KRYTwRT
	gHLGh9U7pe51JMV+h1n5rHW5Vlf1B/9mgc/VvqDgJuDETdG9v+BQBsJC8tK2zC072Yo7La87UXNFv
	1qnE7vSTOiCNL2w2zhxNCLCFLR7AmD+yKC/lJUIGuZE0A1FJzX4ikTcpazJlT+pgbnRWvhKa2m+dN
	prVvRBD8Tu9TB2I+Kcnit9rneNUMIOQwCp+sq+Kx+mG1kWbnNEGXAByJ4KyGXlguT1qIyTt/2TRU4
	fvkJFxfISoMFyQk7q8qi1EvaVD6AhmuVb7WdbIeYw5zwmeM7yX4xhJ8V6h308grJ6IShN2M51VbQc
	gZvGLd/vhX/WBG7KKibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltI46-003kNd-OA; Tue, 15 Jun 2021 23:01:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltGvo-003JIc-SI; Tue, 15 Jun 2021 21:49:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ltGvk-0002Ci-Or; Tue, 15 Jun 2021 23:49:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Punit Agrawal <punitagrawal@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 wqu@suse.com, Robin Murphy <robin.murphy@arm.com>,
 Peter Geis <pgwipeout@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 Brian Norris <briannorris@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge
 window to 32-bit address memory
Date: Tue, 15 Jun 2021 23:49:07 +0200
Message-ID: <3238453.R1toDxpfAE@diego>
In-Reply-To: <CAL_JsqL8iDo5sLmgNVuXs5wt3TpVJbKHfk7gE740DidmvLOwiQ@mail.gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <3105233.izSxrag8PF@diego>
 <CAL_JsqL8iDo5sLmgNVuXs5wt3TpVJbKHfk7gE740DidmvLOwiQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_144912_977620_170BCE3C 
X-CRM114-Status: GOOD (  22.63  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 15. Juni 2021, 23:29:12 CEST schrieb Rob Herring:
> On Thu, Jun 10, 2021 at 3:50 PM Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi,
> >
> > Am Montag, 7. Juni 2021, 13:28:56 CEST schrieb Punit Agrawal:
> > > The PCIe host bridge on RK3399 advertises a single 64-bit memory
> > > address range even though it lies entirely below 4GB.
> > >
> > > Previously the OF PCI range parser treated 64-bit ranges more
> > > leniently (i.e., as 32-bit), but since commit 9d57e61bf723 ("of/pci:
> > > Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
> > > the code takes a stricter view and treats the ranges as advertised in
> > > the device tree (i.e, as 64-bit).
> > >
> > > The change in behaviour causes failure when allocating bus addresses
> > > to devices connected behind a PCI-to-PCI bridge that require
> > > non-prefetchable memory ranges. The allocation failure was observed
> > > for certain Samsung NVMe drives connected to RockPro64 boards.
> > >
> > > Update the host bridge window attributes to treat it as 32-bit address
> > > memory. This fixes the allocation failure observed since commit
> > > 9d57e61bf723.
> > >
> > > Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > > Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@=
arm.com
> > > Suggested-by: Robin Murphy <robin.murphy@arm.com>
> > > Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> > > Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
> > > Cc: Heiko Stuebner <heiko@sntech.de>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> >
> > just for clarity, should I just pick this patch separately for 5.13-rc =
to
> > make it easy for people using current kernel devicetrees, or should
> > this wait for the update mentioned in the cover-letter response
> > and should go all together through the PCI tree?
> =

> This was dropped from v4, but should still be applied IMO.

It was probably dropped because I applied it ;-)

It's part of armsoc already [0] and should make its way into
5.13 shortly.


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git/commit/?h=
=3Darm/fixes&id=3D8efe01b4386ab38a36b99cfdc1dc02c38a8898c3

> =

> Acked-by: Rob Herring <robh@kernel.org>
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
