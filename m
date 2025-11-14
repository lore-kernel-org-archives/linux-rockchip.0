Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C85CCEACF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 23:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpPjt/2bQRM0/6hw6Q9U66jsPugNRGxY+HTBUqisBes=; b=2Ki884fUSvolpt
	fOGx4es7rO7RK8TOq+0jhr2x9OFu9d9RiELzinhWO+CX7UZU4bVty7KUlqEaCehNCjF9TG/6Yqr/y
	YgYyQQAotf8L2OH/9YJp6JrAbo/WW5BxB+GoXPBXMCE2EUgembmJfNba8hHxsfMiK+5j1eBm3lkj4
	4LU6GdnHDTxHchI5yUZNu1eS6MxWJfddOqXOezH07s1+inxp/D7wERh/KLWqKaXmxDMkgCebbktQH
	qt7p/5JRNikUCsVMwNChvnxOQq3H2dWQCMzSS71mzO38ZiatpCAjPq9IWDmD7jP67sndVvMngqC7m
	tGFoB+opXvxutdhKLiQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK3DJ-0000000DD7r-3Ll4;
	Fri, 14 Nov 2025 23:28:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK3DH-0000000DD7G-0waM;
	Fri, 14 Nov 2025 23:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rz/rE4HfLfxrtP/3EODf3xNouLWQNOsp2p3kVBQ4JAg=; b=RpNTk2MUXtZ5J5TnZhacGOX82f
	kSdUjPEVeUdZcoa3vB++D7yJJxjkkBh7tmLK+IQ/b/d8+xG5uT51OBbHs1rp8MJRBucUmQwn5sfOx
	/PV6gk8+rRVSyeATDH2NRObRqv/MNX+KzgIrg32/04YAMSSTYfHqh4zRdt8HYFN5qC2BT23XbpioD
	rNrIL/zMSx/5b5qtwhutimbJ9XHi6sXd0gArivSGa4njM6/C4ZZbkubeESPO3kny72BJ/fEBjrZxN
	+bFGcfnt2s9IW7Do0cgPpcn5KNXketm4g2N++exRmedFiSmCghpDZTHIOVwk57nmQVPgITX+97i2H
	G2eB7Ljw==;
Received: from i53875ae8.versanet.de ([83.135.90.232] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vK3DA-0008Sz-R8; Sat, 15 Nov 2025 00:28:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Daniel Stone <daniels@collabora.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v1] drm/rockchip: Set VOP for the DRM DMA device
Date: Sat, 15 Nov 2025 00:28:10 +0100
Message-ID: <176316288379.665693.1905072777626583730.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251022161948.199731-1-dmitry.osipenko@collabora.com>
References: <20251022161948.199731-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_152819_292126_5F2B9BD4 
X-CRM114-Status: GOOD (  11.24  )
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


On Wed, 22 Oct 2025 19:19:48 +0300, Dmitry Osipenko wrote:
> Use VOP for DMA operations performed by DRM core. Rockchip DRM driver
> is backed by a virtual device that isn't IOMMU-capable, while VOP is the
> actual display controller device backed by IOMMU. Fixes "swiotlb buffer
> is full" warning messages originated from GEM prime code paths.
> 
> Note, that backporting is non-trivial as this depends on 143ec8d3f9396
> ("drm/prime: Support dedicated DMA device for dma-buf imports"), which
> landed in v6.16 and 421be3ee36a4 ("drm/rockchip: Refactor IOMMU
> initialisation"), which landed in v5.19.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Set VOP for the DRM DMA device
      commit: 7d7bb790aced3b1b8550b74e02fdfc001d044bee

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
