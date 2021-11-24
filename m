Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2296DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 16:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvxYC2+N+Y4Pui7SkZTCn56Ox6nQcrvJrgpd300JpKo=; b=zK2h93OK/QQBAf
	s61+br9Y9vj1SqErFC9Qtnivft9F1ml07G+RvvJL+jnevELSXR5hDvmgbsoEEwPXtVgI9kJDj0v9z
	yJ9Gpej9mAxr8S31Cw+KZCMRGkeyG96n+7jNj12AGeTNs/xn2nJuEyqIWM3auA+GicSc4770V3U4O
	kPichuD/DP08pTyxJQCLsMr9HIF540hbSvyhLpFjwAK80C5s4jzaeYENAZwwqP1GS6Qw2GLTHUAnM
	quDsLjLHziJO49eOx13XkXptRaJXY8pz2YqwO0uccowGh2sR1erydgmk9HKUQjRSnius7rTe9KDZr
	Bj62D/72SWuG7Gs/OqTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpvEf-005Grk-GY; Wed, 24 Nov 2021 16:35:05 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpvEP-005Gm2-Mg; Wed, 24 Nov 2021 16:34:51 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 6B7A9341; Wed, 24 Nov 2021 17:34:44 +0100 (CET)
Date: Wed, 24 Nov 2021 17:34:35 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
Message-ID: <YZ5pm2kFM41OOu+Y@8bytes.org>
References: <20211124021325.858139-1-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211124021325.858139-1-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_083449_932259_332E7571 
X-CRM114-Status: GOOD (  12.29  )
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

On Wed, Nov 24, 2021 at 03:13:25AM +0100, Alex Bee wrote:
> With the submission of iommu driver for RK3568 a subtle bug was
> introduced: PAGE_DESC_HI_MASK1 and PAGE_DESC_HI_MASK2 have to be
> the other way arround - that leads to random errors, especially when
> addresses beyond 32 bit are used.
> 
> Fix it.
> 
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Applied for v5.16, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
