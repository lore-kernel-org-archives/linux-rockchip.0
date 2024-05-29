Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EF83C27C44
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3Ias2hgqhLdI89iPkIKBmJ+9k9jDlrZRqEDK+YMHRw=; b=qOu4lQxbSKKHpd
	loAisrez/jB+ovARUWnblOtsPZosyKzEQpbhCXzwyzPp1OxUxxj3eVFXFwLK7X8sV4zFg7lHRuSf6
	x7ti8PU6CrcOr8QnL7u6975dKL18gN2d0Mq7VT9P/Qb6UyMiRVVNV5TzcS92eNJ9S/yDE41KvebZV
	DpKgg9YkqmxlpiaeqzMv7wpYLhCYXoSn/x1b6joQVqGHN3EErYG3SCItD+wpAVuJ1I6ruFf75HHHx
	dsFFFWBt/b2p7fTGhq04Sozgz9nl0TIG65qJTR0W2etpJEB8p/ftEVr/jkriqMmRCEVdQbG5XLIg1
	WUd7zxqQ1QkCSPszPzyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCM6d-00000004tnd-3upz;
	Wed, 29 May 2024 16:24:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCM6a-00000004tmL-0YZR;
	Wed, 29 May 2024 16:24:49 +0000
Received: from i53875a0e.versanet.de ([83.135.90.14] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sCM69-0005AH-Ga; Wed, 29 May 2024 18:24:21 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com
Cc: mripard@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, s.hauer@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 0/1] Fix the port mux of VP2
Date: Wed, 29 May 2024 18:24:20 +0200
Message-ID: <2652218.tIAgqjz4sF@diego>
In-Reply-To: <2397969.FhQbyb98Gs@bagend>
References: <20240422101905.32703-1-andyshrk@163.com>
 <171405838036.2897712.4067984796758491640.b4-ty@sntech.de>
 <2397969.FhQbyb98Gs@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_092448_208478_EE860524 
X-CRM114-Status: GOOD (  18.23  )
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

Am Mittwoch, 29. Mai 2024, 17:55:25 CEST schrieb Diederik de Haas:
> On Thursday, 25 April 2024 17:19:58 CEST Heiko Stuebner wrote:
> > On Mon, 22 Apr 2024 18:19:04 +0800, Andy Yan wrote:
> > > From: Andy Yan <andy.yan@rock-chips.com>
> > > 
> > > The port mux bits of VP2 should be defined by
> > > RK3568_OVL_PORT_SET__PORT2_MUX, this maybe a copy and paste error when
> > > this driver first introduced.> 
> > > Hi Heiko:
> > >    Maybe thi is the problem you met when you porting the dsi2 driver.
> > > 
> > 
> > Applied, thanks!
> > 
> > [1/1] drm/rockchip: vop2: Fix the port mux of VP2
> >       commit: 2bdb481bf7a93c22b9fea8daefa2834aab23a70f
> 
> Wasn't this patch supposed to be part of 6.10-rc1?

Looking at the drm-misc tree, the last tag for the drm-misc to drm-main
merge is labeled drm-misc-next-2024-04-25, same day as I applied the
patch.

In theory I think -rc6 is the cutoff for drm-misc changes for mainline,
which would've been the 28th of april, but there might've been simple
hickups preventing that last merge, resulting in the patch missing an
early cutoff.


On the other hand, somehow Torvald's tree actually has this commit [0],
just with a "Notice: this object is not reachable from any branch."
Possibly some drm-merge-mayhem?

All very confusing.

@Thomas, @Marten: do you possible have an idea what might've happened?


Heiko




[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2bdb481bf7a93c22b9fea8daefa2834aab23a70f



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
