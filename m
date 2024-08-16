Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0960C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 10:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CA4HSsCm/rAKTcmsGjEqwaT7W7JzruHbMiG50RxFsTA=; b=M6AGF6mO1a/CBL
	8mVDRQEtQQ1TJHDN90mpRGV/QuVzJl4X2stN9oRkAyx6h+nFo0UhY42Zg6p1xwDwGEou5lK119GXW
	XAxEUrkOHZcVwfUHOPmoylZpn9VLL3Ex9WVbkLjfmXrkXLZ0a1BL5cm6csdNicxLcGIiHniZLDRx8
	7zUkURpKuim1dURFFnBPG9wXYtf+PyTLmLy/gkxmShbxdN1KapYLHUxB05tinXXZ81HJhBUH42Dun
	ches7v5kMVyVXVxtcY6gKqz89MkcNOVb6PKxbO4K46HHSOdIHQQgjTuTjZPlGaciVcDHZczpmsS8c
	dn30d1uk7e4Z0XfVnmaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seu1Z-0000000CZ1o-3KPF;
	Fri, 16 Aug 2024 10:17:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seu0u-0000000CYsR-1mwT;
	Fri, 16 Aug 2024 10:16:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1srJQU9Lp6EXV/TNHEJRaeCIzq3POh/wVkC52KKLehw=; b=LtSknKU6PVF+UNOREKxl+Fdrhv
	aUDPr8I0BJhIZJ8DHgpwTASmCUS4B+wu8mAQ9PC0iie9WRb4KMyxO7b9uQ8MDwHokGeLczF/kbggL
	s2+TqXK2OOAMAUe0SX0rEg2cIdWYZWkLUgtQDk/S2GB2qkxOwV1Y8MmJUSddbMSkpaMtBFIZv22WZ
	Imj9fvkx3boMFdA6MFjOqI8zayDdiQ57rJbAGNZlF6piK/tB9wcFcuVti+mMGMDfd8/Sw5UPUQ7Z5
	xT+oG/a6B4hGZa3VDYeAVupo/V++pzLXqg2JEo3qmN0JRXW5XcVm+8OL532zVpBBels9DoQrcG8ez
	gloZEYtg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seu0m-0000Ra-Ag; Fri, 16 Aug 2024 12:16:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
 Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: improve eMMC speed on NanoPi R2S
 Plus
Date: Fri, 16 Aug 2024 12:16:47 +0200
Message-ID: <2743124.mvXUDI8C0e@diego>
References: <20240814170048.23816-1-jin@mediatomb.cc>
 <002107db3dcf3f1d1d1a767f049b5b79@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_031656_518160_71EACFA2 
X-CRM114-Status: GOOD (  18.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Am Freitag, 16. August 2024, 12:10:18 CEST schrieb Sergey 'Jin' Bostandzhyan:
> Hi,
> 
> On Fri, Aug 16, 2024 at 08:51:40AM +0200, Dragan Simic wrote:
> > On 2024-08-14 19:00, Sergey Bostandzhyan wrote:
> > >This change has been suggested by Daniel Golle during patch review,
> > >adding mmc-hs200-1_8v; makes sure that eMMC gets detected as HS200
> > >which improves it's performance.
> > 
> > Describing who suggested the patch in the patch description looks
> > out of place.  Instead, you should add a Suggested-by tag, whose
> > purpose is exactly to describe who suggested the patch.
> 
> thank you for the pointer, I guess I missed that, I generally had a hard time to 
> come to grips with the hole process as there are so many details and nuances.
> 
> Heiko, I guess it is too late to fix that now, sine you wrote that the
> patch has been applied?

correct ... and also folded into the first devicetree patch.
So no worries :-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
