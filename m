Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 215F1ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 13:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER5xUvsMJY8AQZRnMyy5yY/heaBSQ+ZJgfjjTyFGrUw=; b=kljhrVSpvCqaDV
	53TVOQ0VvNdtaPMClnSOfeck50XkARxBwjnaIFN0qzQ0inyllw/JdkwWzTcjoT5kH8ee13HUAce8X
	IAgF4NcQb8fciFSey0njJaHnbgpM3vvCitrm4PXIS+hzhPuJtmScgBP+Mdn6JZfVMZEV6sQuWh+Uq
	9HojTokc/wF1tF1O9wuj7+vGCi3jutsprNVv5tOxvbg74Kqe36cjnXVNhkgxiauuFasCdOgrTnvyl
	KYRirjMjKi8MafWlGOpV1iEog+///t86Xh1TezYDpx3jnKd32gHXL4T3BAPzWShiuLHQNy4H5WUER
	yzYfmkmmhG5+MuLffGzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oolTQ-006CmY-Dc; Sat, 29 Oct 2022 13:02:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oolSN-006C2s-83; Sat, 29 Oct 2022 13:01:01 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oolSE-0006ID-NZ; Sat, 29 Oct 2022 15:00:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: John Keeping <john@metanate.com>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Daniel Vetter <daniel@ffwll.ch>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	David Airlie <airlied@gmail.com>
Subject: Re: [PATCH] drm/rockchip: fix fbdev on non-IOMMU devices
Date: Sat, 29 Oct 2022 15:00:46 +0200
Message-Id: <166704843772.1532410.11915201216204142960.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020181248.2497065-1-john@metanate.com>
References: <20221020181248.2497065-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_060059_301903_A7723D98 
X-CRM114-Status: GOOD (  12.69  )
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

On Thu, 20 Oct 2022 19:12:47 +0100, John Keeping wrote:
> When switching to the generic fbdev infrastructure, it was missed that
> framebuffers were created with the alloc_kmap parameter to
> rockchip_gem_create_object() set to true.  The generic infrastructure
> calls this via the .dumb_create() driver operation and thus creates a
> buffer without an associated kmap.
> 
> alloc_kmap only makes a difference on devices without an IOMMU, but when
> it is missing rockchip_gem_prime_vmap() fails and the framebuffer cannot
> be used.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: fix fbdev on non-IOMMU devices
      commit: ab78c74cfc5a3caa2bbb7627cb8f3bca40bb5fb0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
