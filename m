Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E533C001B0
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 22:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avCbKiK00tF28uM/lBNJAIwbr+O4loYvzOFQEdhzM+w=; b=nht7dSQdJQ6Duv
	3zRKoEJ8JtN4b2Tl+5b3sW0ywN9UMN/wD0UZoamoxZxinw/yQcxBcOfNddFJYi9Ns+4wCi9O113X1
	KYGVKG+RI4enV+W2wyssdJPHez9n0lnAlsh7QshWuEBEfdBqTbYRyiakdz24MsZMYguDGSSZo+X5n
	i9CxBu8Op7csmqllfs6JYY7v8sYoUEOssJ1mqRM/PfNkUp1WKIltDzZFfusK6VMAYIdpypfjYhwfo
	EF2um+3Jv18HaQMqgohDNG4jTqR8DoEF8r5dw96kiZkNbxrIt3XISuJHVpLt4MPFxFcfgftPUwrjZ
	kl/NqbE1JdASA1ZLhXlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUx6B-00E7SJ-1m;
	Sat, 12 Aug 2023 22:28:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUx68-00E7RT-1D;
	Sat, 12 Aug 2023 22:28:41 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUx5r-0002QJ-4H; Sun, 13 Aug 2023 00:28:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Mark Yao <markyao0591@gmail.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] drm/rockchip: Fix crtc duplicate state and crtc reset funcs
Date: Sun, 13 Aug 2023 00:28:21 +0200
Message-Id: <169187928908.3734147.12874056475289998677.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_152840_453507_CC1F4F10 
X-CRM114-Status: GOOD (  11.34  )
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

On Wed, 21 Jun 2023 22:33:15 +0000 (UTC), Jonas Karlman wrote:
> This series fixes a reset of state in duplicate state crtc funcs for VOP
> driver, a possible crash and ensure crtc reset helper is called in VOP2
> driver.
> 
> Patch 1 use kmemdup instead of kzalloc to duplicate the crtc state.
> Patch 2 change to use crtc and plane cleanup helpers directly.
> Patch 3 adds a null guard for allocation failure.
> Patch 4 adds a crash guard for empty crtc state.
> Patch 5 adds a missing call to crtc reset helper.
> 
> [...]

Applied, thanks!

[1/5] drm/rockchip: vop: Fix reset of state in duplicate state crtc funcs
      commit: 13fc28804bf10ca0b7bce3efbba95c534836d7ca
[2/5] drm/rockchip: vop: Use cleanup helper directly as destroy funcs
      commit: 800f7c332df7cd9614c416fd005a6bb53f96f13c
[3/5] drm/rockchip: vop: Fix call to crtc reset helper
      commit: 5aacd290837828c089a83ac9795c74c4c9e2c923
[4/5] drm/rockchip: vop2: Don't crash for invalid duplicate_state
      commit: 342f7e4967d02b0ec263b15916304fc54841b608
[5/5] drm/rockchip: vop2: Add missing call to crtc reset helper
      commit: 4d49d87b3606369c6e29b9d051892ee1a6fc4e75

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
