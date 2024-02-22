Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48A4BC5478C
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrZ79MyCwpAZxpgDGJI/Aa9uZWdvnjb9+DVDIMjXV60=; b=nM5lBPaGTW7NQc
	ISenZUIDXBmRxu8LyxEuPjaXAWhLvYdklN1zxW67sAbSWnAAbV7j952aZx+E74UUA2jgcDAnpo2ay
	K0qv2yK6/NcYPXqeXzgW/RWgLhiw2rMgFq1UzZ/Zx/Z+Uc+tDHUztLfH/cAVnuD6eRagUlxekIgws
	gQjlzaRf4qofjzv9+zhgLOAd2CPqWQIRz0BJmJtpgoR6+AkN4k6qhwo0iekvcmWLt/gDleXhebhQ5
	A5fvkmyhToPbxKzP35u8jOssstV1E3Z4iRqEz2Fcz/HgtEWz6svKXKcNAfQ5VRLmbuOdfx8QqYAK9
	bVWaUBP8e6rTqpLZBb7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDd2-00000005xy9-3V8S;
	Thu, 22 Feb 2024 18:17:05 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDai-00000005x40-482c;
	Thu, 22 Feb 2024 18:14:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 24C3FCE28C1;
	Thu, 22 Feb 2024 18:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C23AC433C7;
	Thu, 22 Feb 2024 18:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625670;
	bh=kHekB7+ds8HZQmTIIDcT/8myymC9mYLsud01YExrJOg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=g3zBTaDItjm2XsKVKjxzwnBiuzy4wNXnVf4UYigdnUHlIBqP105EyAoYw1osMwpJM
	 aMnUJvo0HCmK4cFpqouGt7Y8kLbOsY+EGzHu4rJO1W69bpA3nVT7ZPJkW8p/2DmLEP
	 I6uBgaVc+ZJ3RwKSHbHsp3LLzfj1dyhWKUphOwiMb+//cxELWiEKcQ/n44G14DmEKb
	 8fyx883D8W1OmsOof61Lda6qUjkPeQf2KnnvgI+LX2E0WcZLCc4RhaRu1uqsRBwiEn
	 iSsaRJjCa7Bv2QUUN1U5erKp4Ara5IzUddvlwcvwior7wpnawQYD5kN0+oaQIwnPSi
	 MDoICaAnAGe+g==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:47 +0100
Subject: [PATCH v7 01/36] drm/tests: helpers: Include missing drm_drv
 header
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-1-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=857; i=mripard@kernel.org;
 h=from:subject:message-id; bh=kHekB7+ds8HZQmTIIDcT/8myymC9mYLsud01YExrJOg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+14+OPGD65yaVsrXhVmJuUeYFHZas6m/kLWwjn/uM
 e2Q+QW2jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzE6Cojw8dX7G+ZpRLPTvky
 72jM/sy/Xqt2bxLjSFZ5zHvgq6fpOROGf3bOQpurI/9sPsWz6HlQz6qaOm62E3fYiyTfejJ9UOr
 2YQAA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_101441_524608_A1C94A1F 
X-CRM114-Status: UNSURE (   8.68  )
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
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
