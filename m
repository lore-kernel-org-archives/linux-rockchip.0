Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 943E1CD6138
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zjfuTwu7utovBkzTTcwZ+cFn83eoII/vfKiGHZcDRA=; b=tw3ePSSIEk3qEA
	HM9zQNbOG111rFztmc4XGCRRX695+EvbMVSPtffK25mdpoIDpc1xacvZ7gyd4V8y6eMphDZ9yD8lj
	smvFBt7Dqp9nYp5+YpLYCGY36PTyZOsEnluFRzj9L0etP1gIdsBmfmRORJaDmDZPxC8s9L3xZCJL8
	86WskIzrC/AVRl0I6p8IhC7X0xo+kN7zIgewpSEL+0Cvo9phKrVnwngFEiHpwyPRxXL0xiqHJdgkf
	TKHrbrgV9ZjoH62TbO/nLPPq0+KUSnQcXv5XN41GQ+f5b3kqUaWFtQRRA9TnaEyx9F2z2XRMFKW8X
	ocl2Mm62YJubScOi6qXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0L-00BaSV-2W;
	Mon, 09 Oct 2023 20:37:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0G-00BaPU-1h;
	Mon, 09 Oct 2023 20:37:25 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpx07-00058Z-20; Mon, 09 Oct 2023 22:37:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: vop2: Convert to use maple tree register cache
Date: Mon,  9 Oct 2023 22:37:09 +0200
Message-Id: <169688381984.192795.6257914410959231324.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231001-drm-rockchip-maple-v1-1-ca396ab75be7@kernel.org>
References: <20231001-drm-rockchip-maple-v1-1-ca396ab75be7@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_133724_562577_26E2BB81 
X-CRM114-Status: UNSURE (   9.88  )
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

On Sun, 01 Oct 2023 01:42:50 +0200, Mark Brown wrote:
> The maple tree register cache is based on a much more modern data structure
> than the rbtree cache and makes optimisation choices which are probably
> more appropriate for modern systems than those made by the rbtree cache.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: Convert to use maple tree register cache
      commit: 3d59c22bbb8d03f3f14e6d0845d44c146fb48f35

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
