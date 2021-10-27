Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CF68C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 23:20:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 559A561039
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 23:20:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 559A561039
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TISPlDEyk1TOO+NsGz3U3S5cpMscd7FzkpvmBeKvoo=; b=wUyj2dZiEEQ4rw
	aktW0R3eZam/ewYTgpeGlPeaCo7K+WSBgMW5+KV+pu3ds56o8AcQjoakxA9ol1PzlyB4h9Hrom1+9
	s/OclseAP1awAAC9ZtDCRbXkMupccZp8tVZLhb/7KTn2pko3oEDJID228PdebXqGqtWJgTsu50mZQ
	Q0OfcrVDaYXoWYOSot2qZ2EQbAvXIFAaodRWJcLK9lfhqKAVvcNpQF3lAyeq3+c3jDNqDJ+9r8UgP
	6h8HbcPE4heSsvgVOKsmyrrl0wDC2pArJwD+c5BisA1n0qh0HMkLisdKB2m5mZ/WGD+SKjl2Lm2zy
	n57Sx4nbldBoES4jxM7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfsDX-006U5W-6x; Wed, 27 Oct 2021 23:20:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfsDU-006U56-2U
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 23:20:21 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mfsDR-0000HR-UR; Thu, 28 Oct 2021 01:20:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com
Subject: Re: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver
 handling
Date: Thu, 28 Oct 2021 01:20:17 +0200
Message-ID: <5381956.U9aoDET0nm@diego>
In-Reply-To: <163536646616.15791.10163287623335903483@swboyd.mtv.corp.google.com>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <163536646616.15791.10163287623335903483@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_162020_155467_D8C1A140 
X-CRM114-Status: GOOD (  12.26  )
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

Am Mittwoch, 27. Oktober 2021, 22:27:46 CEST schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2021-10-27 06:26:14)
> > Recent conversions or inclusions of rk3399 and rk3568 as platform-drivers
> > and subsequently allowing them to be built as modules introduced some
> > problems.
> > 
> > These two patches try to correct them.
> 
> By removing modular support? Ok.

It looked like the easiest way to go for now.

With all the clock-definitions as init-data still in both drivers, I don't think
anybody ever tested running this as a real module.

We could of course also remove all the __init + __initdata attributes, but
still wouldn't know if it actually runs as a module, without someone
building a real test environment for it.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
