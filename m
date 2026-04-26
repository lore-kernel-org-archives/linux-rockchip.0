Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E3FFF8861
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 00:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsKSOh1nOZyW9SsRSSZCOtiJyk50kvhyZNFP3jUXMM4=; b=zEryA4dAyFYl3P
	GsTgI8KudSbzDy83CcKDhaMq3KMiGZO9q1ByuBoNWx4LtNq3UT3+C0Q1oTKxxiS6g/8qiTaTjJt10
	lAeXtERLZaD8DKtxWecITkhTPBZH9iMaSQtT5wxrQKZl0f00OD+3afdPOdOU78+i073BXvPxFMwUC
	ws3vd8t9fsAsWTBjZX02eTPmjVrHVPPlz2ikR9slnGMNsiU/bmiE/4AZKNsnV/k0/br4KO/9f21jX
	O1Y+u1CNJQFvOGx7hAM750aFjGX4K4zQHrWNHt8UnnPwGeFbHjbifRg2OXK8mUK7Lo9trzktIulCb
	NRx4bMLKv6nt+NCJdDqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGnEo-0000000F6p2-3m0c;
	Sun, 26 Apr 2026 00:20:42 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGnEe-0000000F6gq-09eb;
	Sun, 26 Apr 2026 00:20:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777162828;
	bh=+dJ/23iHbtk2/12b3JiLDopSaHxNe/BUJmE1pAxYI74=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZD+yP5MUDK32Eh5pM4t+KlmIgUaw03KgTUQVrkF9LJSYh13eLLW1FVEL8WioKJQIg
	 JAIJXpxezKfWCjGZfgSuXeCliPvD+uZiqHYtjctwQ7D8uux2EKoKKD7kmVBDRj/RNZ
	 41AEKaZQF5BJvL0TX7AqC8jsf1/jcKuM7/J2JYReMdc447lKD6WOuiyviRs5mYhzjQ
	 zrsQrdw44DySgqkh5/inx1kVSIewspyeVdAy9p54IWwHtQLPzemc+P3rFqWIQQhyBE
	 uWW9IjsXEdEhq4YUr9Toot2hVR1pB6pbsNnl/OhO+nBRoP7QZPsRUVuqW+KW3HnpD0
	 8iCYxSCbIjaHw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 073B317E0EB6;
	Sun, 26 Apr 2026 02:20:28 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 26 Apr 2026 03:20:13 +0300
Subject: [PATCH v5 01/10] drm/bridge: Remove redundant error check in
 drm_bridge_helper_reset_crtc()
MIME-Version: 1.0
Message-Id: <20260426-dw-hdmi-qp-scramb-v5-1-d778e70c317b@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_172032_221730_74D22FE1 
X-CRM114-Status: UNSURE (   8.82  )
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

Remove the no-op error check after drm_atomic_helper_reset_crtc() since
the goto target is the immediately following label and the return value
is already propagated correctly without it.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/drm_bridge_helper.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_bridge_helper.c b/drivers/gpu/drm/drm_bridge_helper.c
index 420f29cf3e54..0a3c8fee66b3 100644
--- a/drivers/gpu/drm/drm_bridge_helper.c
+++ b/drivers/gpu/drm/drm_bridge_helper.c
@@ -50,8 +50,6 @@ int drm_bridge_helper_reset_crtc(struct drm_bridge *bridge,
 
 	crtc = connector->state->crtc;
 	ret = drm_atomic_helper_reset_crtc(crtc, ctx);
-	if (ret)
-		goto out;
 
 out:
 	drm_modeset_unlock(&dev->mode_config.connection_mutex);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
