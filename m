Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1584BC43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 15:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6D7olIsxO0qx8sNleLxyuXIqjXCAkzO45LVcAHEDXE=; b=2fdgIxEZ+/9kxt
	OLBueC4SHa9/3oBQ/hXdKFtMqS/wMVgE4o7JGqBTcM9NR/Ze3ikWp4FLMF4iBgMIsraHzBxs4GFT1
	cky8GX/0gjJWrpDxJSrNcoUCdXHq7A2qj/VTqYwkK4G5LFzN5npauZlQuJBPE3db+7scFG60aafOs
	UEc/w0d8LlUk+qh0fcIUr6IXmuBTQwl++/jx4a2d+eLdxwIKcsJ3OD7+Rcc10kBH5Po5kjrRsRPzW
	QepsACMafyckejTikxxgn+yRvrstpe6hdukdgH23J4ma+Kxtb63JMGSQZV2Tn87ubnvoz6RbKjeH6
	Z/ig4SNpZrGapq8u0pgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8O2d-009iKl-Pb; Mon, 04 Jul 2022 15:31:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8O2b-009iJx-LV; Mon, 04 Jul 2022 15:31:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o8O2T-00038m-2I; Mon, 04 Jul 2022 17:31:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Steven Price <steven.price@arm.com>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] drm/rockchip: Detach from ARM DMA domain in attach_device
Date: Mon,  4 Jul 2022 17:31:02 +0200
Message-Id: <165694865211.1434291.3332055091205134554.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220615154830.555422-1-steven.price@arm.com>
References: <20220615154830.555422-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_083113_739210_2505276A 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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

On Wed, 15 Jun 2022 16:48:30 +0100, Steven Price wrote:
> Since commit 1ea2a07a532b ("iommu: Add DMA ownership management
> interfaces") the Rockchip display driver on the Firefly RK3288 fails to
> initialise properly. This is because ARM DMA domain is still attached.
> 
> Let's follow the lead of exynos and tegra and add code to explicitly
> remove the ARM domain before attaching a new one.

Applied, thanks!

[1/1] drm/rockchip: Detach from ARM DMA domain in attach_device
      commit: 8490cad4dc4e2ee265ba9e12cd47bdfd6b9a3d34

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
