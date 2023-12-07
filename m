Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C009DC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnritkIY6RNdqe5s6aUtpvUYPn8b7Oaa8lY2Mk27T2g=; b=X+J6EX52ubDxaR
	JGGi8aZBSNkgxt1SmsCMJCLhvrUnHqO/Njw+rYJ6HAyUQnl3FBiVRQFREvj4DCNlslVYxJwmL2Jr0
	g/SgDqNHUedWN8iPAaYti8sqmOX8c5Ra69Ye4pth7ByJiUraehzUWkEuMZ/C+LZrin/+77+RpL/+1
	kKnXzbkN2Zzz4CQ6bVQHMvCTQRDRJHrHyOjItKgfIIIeBcCVZZ0odVtJAi8QzZ0UM9C7/IpbPeCmh
	Zf/F7sTidg8/EH8FYgosZo0ChdJSJaikppg5nzECb5nHmIUzvLhsJ2fZzGghPr8qzBvGj0TvMqqD0
	+PTS6HUuUcGVJNzXMaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGd8-00DFzM-0r;
	Thu, 07 Dec 2023 15:49:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGd4-00DFwM-0y;
	Thu, 07 Dec 2023 15:49:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C08EB61F71;
	Thu,  7 Dec 2023 15:49:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8991C433C7;
	Thu,  7 Dec 2023 15:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964173;
	bh=81lEe31K2YU0V4EnFq3xxesUJy/t9LyYJwWTzno5+Rg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ODlGU75K8yKtjUopqTiU4wsNotWNVWiC25d6aWYxaxOvFMqQVxZZGkEhMSpN2Snms
	 cpy+aLoHA7sAdr5zqVat4bgL3nPTRSKoY/2m61W5XZs9mxPG0VkkTNoNimV37pEOmJ
	 u6PxyIcDeGCsp/CEWN29NMW/Z43t17GNM/5xtp0yMuxheMBCBwpwkUZYB8yAk/XtGT
	 KMEfjo6M5JUjVzSBmqpE6mOvv0anLYhgrhYQMOawvIfHFtAB/xFDNe+6uT63n7y47C
	 kgxjIz4TEjOVSC0RLPbAf/aRseJcchgJaguN+kPFjiwDsiObO8UMGnLamSAhO55+YS
	 qfNLz4dX2Z8tg==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:24 +0100
Subject: [PATCH v5 01/44] drm/tests: helpers: Include missing drm_drv
 header
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-1-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=857; i=mripard@kernel.org;
 h=from:subject:message-id; bh=81lEe31K2YU0V4EnFq3xxesUJy/t9LyYJwWTzno5+Rg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1sefDpxVV7F8ANfMWcRC3v5Y5/ZYiHhd3wD9yWG2
 1hVP9zbUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgIn8FmdkWG16u67kAofX8UNu
 wkfucbosWZ/LwHWiWP3Gvq5Wy5fK3xgZ9jBeF/B56fZy7bpQkeq9P/R3dRXqNH97sptN0GjPz6W
 v2QA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_074934_385538_3EFCE6F2 
X-CRM114-Status: UNSURE (   8.70  )
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

We have a few functions declared in our kunit helpers header, some of
them dereferencing the struct drm_driver.

However, we don't include the drm_drv.h header file defining that
structure, leading to compilation errors if we don't include both
headers.

Fixes: d98780310719 ("drm/tests: helpers: Allow to pass a custom drm_driver")
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 include/drm/drm_kunit_helpers.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/drm/drm_kunit_helpers.h b/include/drm/drm_kunit_helpers.h
index ba483c87f0e7..3ae19892229d 100644
--- a/include/drm/drm_kunit_helpers.h
+++ b/include/drm/drm_kunit_helpers.h
@@ -3,6 +3,8 @@
 #ifndef DRM_KUNIT_HELPERS_H_
 #define DRM_KUNIT_HELPERS_H_
 
+#include <drm/drm_drv.h>
+
 #include <linux/device.h>
 
 #include <kunit/test.h>

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
