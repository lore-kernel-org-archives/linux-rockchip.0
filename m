Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB06C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:24:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D83AD611AD
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 23:24:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D83AD611AD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3jprto3hdsLFYQI1xyf9sQMCHKAC2azJ5pT+B2SvEDg=; b=ZuXP+J7aBPSJiDK4EK8tthL0D
	m1uFmg8ahScrFFqF8DcODdvY9zRZRQSa1haWpJccq5V2FqDTZsw25DnIvF19c5AxWYURawoxyiFBx
	/lTbsdF5YI7l2vm8e8aGfqJNKg748ZU51jqDfMr+sA+sbg6+pR2xcb2xsSPFw4A4gzCL6Ltoe/YyV
	fH/QWdtcmKpJPA5g3cqDDU+iPfIER9K2WT+4Q3Srw5qhPA57KtYJUPaZkALeHRapVrGB+wIidR/2d
	cWaEqyPhCjK1TOZe2BMlR22zni5XeHSurBYr+7yDCiDc3wkSbGrPgElV9RN3RM116tUIZ6dqsuvqh
	xUScPLCog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljVXa-005KhJ-DI; Wed, 19 May 2021 23:23:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVXY-005KhA-Oj
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 23:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=ddeVbOvULaMfiqcHZSYsc6qts9mccAdSJnysQC13dYA=; b=XkGXrI22CyKR9luZta/qJEJ3Ps
 fxgeeRTwS0XN3snaJnhsrtQJf/b83KV98gEFl1QoblS6Bdoc7KmFDi3VzXcn6lqBpQwH64cac9xpV
 8a6jPZs77WCGE1CSO3BkXWyS94uwWkMvlLeu1Lv7lUBkKJnEWVPpl2RZsvMPBM7H3niyOly4YDEhn
 OAvosGN8+++J84Ff3opCICNkczVmBHIsNxbXxKq5bUoc5LXVkleFNi1YEEqeQZZ01UalkQNu+akjH
 IGyym76O+D0zKCVLciL2RjNJ2M2c++wZ+L/jwUFSqG561ox7sSxRPXTeYIF8R/A7pADkUymbewIjn
 3H2NO7Bg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljVXW-00FqBu-9G
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 23:23:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ljVXU-0003LC-Ri; Thu, 20 May 2021 01:23:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, robh+dt@kernel.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH 4/7] gpio/rockchip: use struct rockchip_gpio_regs for gpio
 controller
Date: Thu, 20 May 2021 01:23:42 +0200
Message-ID: <20019893.0c2gjJ1VT2@diego>
In-Reply-To: <20210510063602.505829-5-jay.xu@rock-chips.com>
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063602.505829-5-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_162346_356807_6E59CD9D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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

Am Montag, 10. Mai 2021, 08:35:59 CEST schrieb Jianqun Xu:
> Store register offsets in the struct rockchip_gpio_regs, this patch
> prepare for the driver update for new gpio controller.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
