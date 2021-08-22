Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB5B2C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 20:26:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71A5E606A5
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 20:25:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71A5E606A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r1izWa82kdwwVns+lXyfqH1NL4dOpbPuuE69BM6oNE=; b=fLfXnTdCVkKdBX
	2juYtThg15h7am+vUA58Pl3v8bQtUmGh5VwpyBhQfLvkz7eXJSm1nrYTrtvPZ0HTFUCQ96OckJxBQ
	Bmw3xKiUgGrpkvmylRR8Py/+Nnuki/lFRYolm/BogEkmJuRhBgBxn7Nl2EKNcmFDz/BuN0PBgOIdE
	RNycLIlgWdohvKFgiNor7KAFnhdUfWHfNT3PGXG6As5Tyvdp6j7aqbdbXAWwsvud76OpKO3X1N5nV
	gm7WWvGmyACTkjXg+zy1mCBiCk3Rq1rMnZuZ9M3GSrHC9YtCLJTfr5U9gRGouuh5rJY+xPSkeaizp
	QE9ZQFf20e7k0Wzji4vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHu2V-00Ei6g-24; Sun, 22 Aug 2021 20:25:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHu2I-00Ei5F-PQ; Sun, 22 Aug 2021 20:25:44 +0000
Received: from p5b036204.dip0.t-ipconnect.de ([91.3.98.4] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mHu2E-0005lA-2D; Sun, 22 Aug 2021 22:25:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's
 vpu
Date: Sun, 22 Aug 2021 22:25:36 +0200
Message-ID: <24767661.6Emhk5qWAg@phil>
In-Reply-To: <CAAEAJfDLvctAk3omLgFBBbzvufFKwSW5_cQZ+MjvyN4khGOe_w@mail.gmail.com>
References: <20210822115755.3171937-1-knaerzche@gmail.com>
 <CAAEAJfDLvctAk3omLgFBBbzvufFKwSW5_cQZ+MjvyN4khGOe_w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_132542_884027_802B712D 
X-CRM114-Status: GOOD (  16.22  )
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

Hi,

Am Sonntag, 22. August 2021, 16:37:24 CEST schrieb Ezequiel Garcia:
> Hi Alex, Heiko,
> 
> On Sun, 22 Aug 2021 at 08:58, Alex Bee <knaerzche@gmail.com> wrote:
> >
> > Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> > intended to remove the interrupt-names property for mmu nodes, but it
> > also removed it for the vpu node in rk3399.dtsi. That makes the driver
> > fail probing currently.
> > Fix this by re-adding the property for this node.
> >
> > Fixes: a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> 
> AFAICS a728c10dd62a removed lots of interrupt-names properties
> from devices other than IOMMU.
> 
> Maybe it's best to revert it?

where did you see more mistakes in it?

I.e. first of all, at least when grepping through my kernel history, I only see
  commit 53a05c8f6e8e ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
with a different hash and at least there I see a lot of iommu interrupt removals
and this one line removing the vpu irqs in error.

So from my glance at it, applying Alex' patch should solve the issue?

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
