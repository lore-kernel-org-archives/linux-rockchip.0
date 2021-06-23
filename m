Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B76C48BC2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:40:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93C2961026
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 13:40:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93C2961026
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQcgRTRuqaPQAPOWLBzRLxpsVA7mEqyCzcZnPo8UCAI=; b=EF9Nv+zJLWTfoG
	wdjt2xxbmwGUdu20X0SLs5AB8GXht1Z8vudJi5Zt4PnmNz6fN5vqr81aQQaLhQ4ZPHBDa/azDdYZJ
	lH65tw0J2bGsY03CPSvNaS1ZRpn8phqZm8+qVN7HIZsSpQgv+Rgc24cpnLj1PSslViAuAQTB+AqqM
	wXp4efN/CwjmFVlnVlLVfzubO6FDTFG4HsYrYo8+r6/tuPqt9FTgK+9++bLVc8SOOdYOjwcCEJOKr
	ON7gXhpDVd5T5I5iAXtP+3ccF/PxvgAuhVR3lhzoEAePBrq+nfVORqrigsjBIPBvC8qQ4pMEdwXQc
	9KsTq6AEgJrwrHQ7v3CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw37W-00AqJG-6q; Wed, 23 Jun 2021 13:40:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw37K-00AqHZ-MJ; Wed, 23 Jun 2021 13:40:35 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lw37H-0001rM-12; Wed, 23 Jun 2021 15:40:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, wens@kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdmmc_ext for RK3328
Date: Wed, 23 Jun 2021 15:40:30 +0200
Message-ID: <6327455.haC6HkEk0m@diego>
In-Reply-To: <CAGb2v67K-BRhQ_a1yXtdPCX8T30FJPLojueJ2cvpXmGUskOLjA@mail.gmail.com>
References: <20210623120001.164920-1-knaerzche@gmail.com>
 <CAGb2v67K-BRhQ_a1yXtdPCX8T30FJPLojueJ2cvpXmGUskOLjA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_064034_783632_D043CC1B 
X-CRM114-Status: GOOD (  17.73  )
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

Am Mittwoch, 23. Juni 2021, 15:11:12 CEST schrieb Chen-Yu Tsai:
> On Wed, Jun 23, 2021 at 8:00 PM Alex Bee <knaerzche@gmail.com> wrote:
> >
> > RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
> > boards have sdio wifi connected to it. In order to use it
> > one would have to add the pinctrls from sdmmc0ext group which
> > is done on board level.
> >
> > While at that also add the reset controls for the other mmc
> > controllers.
> 
> I recommend splitting this part into a separate patch, and
> adding an appropriate "Fixes" tag to it.

I'm with you on that. Adding the resets to the existing controllers
should be a separate patch.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
