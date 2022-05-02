Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27AB3C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWdqFZF/IBAwcB9iXi73huTKHwNyXkGRlm3zV5zsZEo=; b=FoAAfpFP4OKbgL
	7mHcvB0EPzP1o105s3Yke7V0nyahWzclan7tCbDMTdJ+a7kCrXXoQKcj5LrBn6PPd26mktRNvFVXx
	Qa0g4UZexHbNJIA3WJL1sbjWI/NLFuWaO2pCjQyAO+JvzB5mVF3peboPEuUVuypGqbYjwVx4IiZDk
	LpVcs5mrCxZ5RxR9Rn0LPpOjTT/TxBSEp8jr++QesUEMTmqJjdcEjAASAyiJhuhfkuwR+1vGmvjqd
	5w5X9J32hVOGSRe8d1bWMXiDZQjTfx6/TqriB5BuQCAFYsE813ztKdgYpTq3jRblDRJDqlLIssXTu
	0604rQj0y6J7Nqf7KA4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleSr-002uAj-Kq; Mon, 02 May 2022 22:24:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleSo-002u8l-Nq
 for linux-rockchip@lists.infradead.org; Mon, 02 May 2022 22:24:19 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nleSf-0005bu-2T; Tue, 03 May 2022 00:24:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>, s.hauer@pengutronix.de,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux-foundation.org
Subject: Re: [PATCH] drm/rockchip: Refactor IOMMU initialisation
Date: Tue,  3 May 2022 00:24:03 +0200
Message-Id: <165153020898.255051.11175155714135351840.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <94eee7ab434fe11eb0787f691e9f1ab03a2e91be.1649168685.git.robin.murphy@arm.com>
References: <94eee7ab434fe11eb0787f691e9f1ab03a2e91be.1649168685.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152418_811334_067FB85B 
X-CRM114-Status: GOOD (  10.59  )
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

On Tue, 5 Apr 2022 15:32:50 +0100, Robin Murphy wrote:
> Defer the IOMMU domain setup until after successfully binding
> components, so we can figure out IOMMU support directly from the VOP
> devices themselves, rather than manually inferring it from the DT (which
> also fails to account for whether the IOMMU driver is actually loaded).
> Although this is somewhat of a logical cleanup, the main motivation is
> to prepare for a change in the iommu_domain_alloc() interface.

Applied, thanks!

[1/1] drm/rockchip: Refactor IOMMU initialisation
      commit: 421be3ee36a497949a4b564cd1e4f7f9fe755f57

Additionally tested on rk3288, rk3399 and px30.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
