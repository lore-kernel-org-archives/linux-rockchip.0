Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61D4C4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:37:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B32F922581
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:37:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B32F922581
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PsF/dULQbTYCdk9FlOp1yaoZJdR2w0PcGp30MkuB9gk=; b=aBIW8JupCPemwyEAEzxq62lHs
	jITMXnBeQNYP0YWkAptFN+tTs58BrDpF7qH69/OFfe5Ka6uqO5fo/bwVmJRCcWYP1BFx9IrCuh2gp
	jouPe0ThODuMnMt30EXkceZfpO3ZhjAbp+mljK/jbedZ7t4CQ2VQ135ELPp2/ZIq0nUb87U8+EvlB
	2RAR4DaIH6rln2U8+R5/X5Jz6IjDg4yu1K5gOK0wmPuwKq1yRLruy4ZT9fhmx/npXM7n2ae+1em6Y
	2EeoBMofhH+xF6Y0rjepHS7Rh5VPvTpUzP1ULZlVfUnJ12dhYDqomXVc8FiboFImvkrNBs46uph96
	h4ZXXDwIQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klAKV-0000oG-Ow; Fri, 04 Dec 2020 12:36:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klAKT-0000nm-5S
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 12:36:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1klAKC-0005nm-Qs; Fri, 04 Dec 2020 13:36:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix iomux for PCIe on rk3399
Date: Fri, 04 Dec 2020 13:36:35 +0100
Message-ID: <20873050.EfDdHjke4D@diego>
In-Reply-To: <CAAMcf8DyPzErWCJvBi9y4-6vtkYp9nG5=DJLytNuz8bcbqX=ig@mail.gmail.com>
References: <20201201150522.923-1-vicencb@gmail.com>
 <deaf148f-f8a1-0411-db40-192c4913d945@arm.com>
 <CAAMcf8DyPzErWCJvBi9y4-6vtkYp9nG5=DJLytNuz8bcbqX=ig@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_073653_235109_F0882C48 
X-CRM114-Status: GOOD (  19.24  )
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
Cc: Carlos de Paula <me@carlosedp.com>,
 Douglas Anderson <dianders@chromium.org>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, nd@arm.com,
 Shunqian Zheng <zhengsq@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 4. Dezember 2020, 13:33:16 CET schrieb Vicente Bergas:
> On Fri, Dec 4, 2020 at 1:01 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-12-01 15:05, Vicente Bergas wrote:
> > > Fix PCIe pins according to the documentation
> > > http://opensource.rock-chips.com/images/e/ee/Rockchip_RK3399TRM_V1.4_Part1-20170408.pdf
> > > in page 301:
> > > GRF_GPIO2D_IOMUX[5:4] gpio2d2_sel
> > >    0: gpio
> > >    1: sdio_detectn
> > >    2: pcie_clkreqn
> > > and page 313:
> > > GRF_GPIO4D_IOMUX[1:0] gpio4d0_sel
> > >    0: gpio
> > >    1: pcie_clkreqnb
> >
> > What exactly is this fixing? Commit 461a00bb9d53 explicitly removed pin
> > configurations for these functions on the grounds that they apparently
> > don't work. FWIW it looks like they might also be related to some magic
> > in GRF_SOC_CON7 which nobody's touching either.
> >
> > Robin.
> 
> This fixes nothing.
> I've got a non-working NVMe and while debugging the issue found this
> mismatch between the DTS and documentation.
> So i fixed it by changing the DTS.
> Regarding 461a00bb9d53 it looks like the issue is in the documentation
> instead, but there are no (public) errata documents.
> The issue with the NVMe i've got was unrelated: controller chip not
> correctly soldered.
> Now i've tested that NVMe again without this change and it still
> works, so, ignore this patch.
> Thanks for reviewing.

thanks for letting us know ;-) 

And also thanks Robin for digging up the history of this.
I was about to ask something similar but hadn't found the time yet
to dig through past pcie changes.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
