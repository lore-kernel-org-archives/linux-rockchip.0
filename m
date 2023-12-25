Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1ADC46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 00:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2yu7klgnYiNIIE9FSbaAsmqaeGjgdDZ8wrLh4f8QwQ=; b=iYPRwLembmgpst
	xVcSl0xitu/KBL4JQ6SctGYvs59NOHHbRxT5wTy7//KekekJv7PpVMzEZ6Iy4RlPfjBDvL32uxKBa
	wRJM/MPbFnlwTI/rW+aWObCZ1G5exnt++Hl3+/mQF0Z2r7Ml+z1I8ZSvopq6OeWVe9C9fIvT4+XYQ
	7sDRKZs/obYaO23kMBFixLqv06A98GXi0Lh0FnNPI+XGyu7rBPrdawv5B+U/24cYc8kLW7L6OGxj9
	vhKdAJKKQl4Mu4eGVzJeEAd8Gxt8S82n7xBGqIqKJVr+lCQnSKHV0VYkk+iDoAVRqvrjm0xrM1geK
	81qeH+czRyCgaseVlhTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHYj9-00A1qT-0B;
	Mon, 25 Dec 2023 00:21:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHYij-00A1il-0g;
	Mon, 25 Dec 2023 00:21:27 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHYiR-0007kx-97; Mon, 25 Dec 2023 01:21:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com,
	s.hauer@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	broonie@kernel.org,
	m.szyprowski@samsung.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: vop2: Avoid use regmap_reinit_cache at runtime
Date: Mon, 25 Dec 2023 01:21:04 +0100
Message-Id: <170346364423.2455794.3597954899361458023.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217084415.2373043-1-andyshrk@163.com>
References: <20231217084415.2373043-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_162125_249952_BDD6DAE2 
X-CRM114-Status: UNSURE (   8.37  )
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

On Sun, 17 Dec 2023 16:44:15 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Marek Report a possible irq lock inversion dependency warning when
> commit 81a06f1d02e5 ("Revert "drm/rockchip: vop2: Use regcache_sync()
> to fix suspend/resume"") lands linux-next.
> 
> I can reproduce this warning with:
> CONFIG_PROVE_LOCKING=y
> CONFIG_DEBUG_LOCKDEP=y
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Avoid use regmap_reinit_cache at runtime
      commit: 3ee348eb36f14e9303a7e9757efb91b0bbf3f7a9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
