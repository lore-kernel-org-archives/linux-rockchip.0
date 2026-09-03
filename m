Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B891CC61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 14:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCGj/rqPjyAu6xBZqhbUJkRWXK5OpDrmlAndx8grrcs=; b=ZlxNoh0v0xI0Cy
	HNc+DfRO0pUcxwUq95xQhg0Al5Bl734vPaF/O1pZv4cWTvN2RWBR88UiiJLW1ABiGcoB0+furYnpR
	KTyTt6KD4YeUlLIyxnPNXlz1SlxSFNG6LfdYgu0kRAUt6l9Xgpw5ZYGdnw3tNZLwXte7wtn/480KM
	9kRsUYhhVSMfTmwZ6b5cbS/K5a/4YBgG4lepTyO7IcrZCZcgzCcJzIuw+myvFyv1iCplaxXxcGQPy
	N4PvUuxgYh9XCZtxkpEO7dG669R6GaAKKxL7coVBEg5+0PjLHTw4CnpCZWBg+k5fvHCPfApmqNp2T
	ntuZG05WzJSgGf/BspFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28B4-0000000HTjj-1Qgr;
	Thu, 03 Sep 2026 14:12:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28B1-0000000HThC-0pjd;
	Thu, 03 Sep 2026 14:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HDphPTZasBW/m6rqPKWNWdlcoSOfg9Wv3BLKy1YJmFk=; b=GjRQ17cTZGJyO9RseyyaQA+rJ2
	KFNRg9yVF0nvIwkEzkEfH5NFEWW8acQDmuKl1f6q6vQ7hOzImiIke6iL7hFX1C+f6tBGJf+Ol2V+d
	VuOnEMMB3JdoROXdxAxA/ilFfkTGkMt8LL6JoSRAgFSTaGoLP9VoY6dqRK2TiMGA4r07hJDy8Mvll
	cmXc0yGIA/VDpi2tfF4vsdgfV8buO5SyDx3nPWjAxOJ9Laa3Hc30GvLHcbbVE2PXOKlVadljZYaIr
	whRPifETlbniKBgzN9KMCSWvw6CT6YutHQB62x/U6kYBr/SDQuhUBOZ4Jgb59PjyzScnJ1Ql0JJlj
	77ooFAow==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yudi Yang <2000jedi@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Damon Ding <damon.ding@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: analogix_dp: bound endpoint name formatting
Date: Thu,  3 Sep 2026 16:12:03 +0200
Message-ID: <178844472024.2481528.12971315442057669333.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901195511.2761251-1-2000jedi@gmail.com>
References: <20260901195511.2761251-1-2000jedi@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_071227_522426_1B392159 
X-CRM114-Status: UNSURE (   9.75  )
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


On Tue, 01 Sep 2026 14:55:11 -0500, Yudi Yang wrote:
> rockchip_dp_drm_encoder_enable() uses sprintf() to format a device tree
> path into a 32-byte stack buffer. Device tree paths are not limited to
> this size, so a sufficiently long path can overflow the buffer.
> 
> Use snprintf() with the destination size to truncate the generated name
> and keep the writes within bounds.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: analogix_dp: bound endpoint name formatting
      commit: bc69439d983cc491cc86e01fafc1deb94e1bb85e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
