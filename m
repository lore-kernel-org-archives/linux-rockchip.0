Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A173C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a52nDUOY7Th236kXCx2h4EPW37w6Y84xJrNpYocoLoM=; b=ghg/FTIhcvst0o
	9ZpbYVYKLtymJkJUKAu67hLHQzRTWW3YPZYAYR/r0eFpppS1QxuxBK8K9XDQOhrszYZVUiJ43ermR
	tTJspSYn20A+St7tK2zqcwWEVKlSS3PHsOkBIcSwmMX4u/umneTIbrUQFy52yNSTKDPNYt+Sw0Vhs
	Pkwjh/JiCR4XTQUqBy09xWuA1dzxeBXuiWTqMQr0tEwy6FmoNd71jdWfijwjtXLREiYUInr8YHB97
	No5vfXehc5l7/EKh6J4cDhjvJwAf/wWiwvansuZX2ZbSsNDFXj5BqTnKT0sPy7KKpy7KiJmEkZJJu
	C4AEPZvftfwm6I3wZHKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDdD-00000005y5R-3e28;
	Thu, 22 Feb 2024 18:17:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDan-00000005x9u-22ac;
	Thu, 22 Feb 2024 18:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=LGU1uoSYV6XFxmpWP17GkUNO3Z1gMHblacZZR0S6V/8=; b=pYfuJB36Y6pLQj2r2GbRLHibxu
	mTqAE+HM6BYUHKShybXZtUh3mFK3pmmkqXV7azekRRhIbxZ0CBOC+lwHEeOQWhZ+PttzNsAFSB1pA
	jledvt8BgGGr5CgJa3eVwhMYm+UTMcplNVhKIQoifEt3OaGuHTje7mTQEcruhsn6ri+8Zjm20S7Sq
	zK55SQAS1KLNTWKDYKTaGIiytcNwZ+AUFUdksoQqITXtQzOqEeahgEoMSefFyvDVO9i17ddLUwz8Q
	SzluUYjqruLR1JnusdLeV+YJoXikq105JDi1/6ZM44pLC/cZ0CxXgX53eq+hU8k8XPzhWf/uO0zXX
	nIWKhAuA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdDak-00000004IFC-2d0F;
	Thu, 22 Feb 2024 18:14:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E5DC4619AF;
	Thu, 22 Feb 2024 18:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63CADC43399;
	Thu, 22 Feb 2024 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708625673;
	bh=TPv8mjAc7k5WixCBRXHynM6H/AaB/bUbe1H5MJSrFTQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=X+M5ANkB1G/XImwHDpav6Puqp1tOivphrSFKAYvmOdJchFlHyCPJYfTXMrxPNi+Wo
	 Xi5p2qC9Q92a0AH97//XjY6qjSMO0pzcsMplhKKuHRAp1/CqdU62EflPbnWwI1NHpL
	 iMgRNV2C3AoV7bcRuCBbhihhYOGTyP9b/j9oB/of4n8ncIufeKXgVJXY+fOJF67P7T
	 SP3Ecy3Hpc1uA2/A7mPcdN+szfNbAFddDScakVfzxdnXN0yizutE9sfcQP5w1UuOfO
	 y/MM1ie2l+ekMhxnRguIo1l6hd2rWld2YAFHsP5Yg2I5vyTn100oEuAB6E6Q3s5smY
	 DT1CAmYDF8+JQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 22 Feb 2024 19:13:48 +0100
Subject: [PATCH v7 02/36] drm/tests: helpers: Add atomic helpers
MIME-Version: 1.0
Message-Id: <20240222-kms-hdmi-connector-state-v7-2-8f4af575fce2@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1086; i=mripard@kernel.org;
 h=from:subject:message-id; bh=TPv8mjAc7k5WixCBRXHynM6H/AaB/bUbe1H5MJSrFTQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnX+17F6uVucBPQ2WjBInZLQdLzjvr37ZceBBx8Ei6y/
 9tibRnRjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzkpyAjw7GvS26/03vapBp3
 bfr1pd/XHs1av5C7ZnvFwfhDn96/aFrIyPBO/Z2sBptBi2LkPzHmdT0fdRIXNsttmvNX64XIVPa
 zbpwA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_181442_805973_257949B9 
X-CRM114-Status: GOOD (  10.12  )
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

The mock device we were creating was missing any of the driver-wide
helpers. That was fine before since we weren't testing the atomic state
path, but we're going to start, so let's use the default
implementations.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tests/drm_kunit_helpers.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/tests/drm_kunit_helpers.c b/drivers/gpu/drm/tests/drm_kunit_helpers.c
index ca4f8e4c5d5d..4fb11b938bc1 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_kunit_helpers.h>
 #include <drm/drm_managed.h>
@@ -14,6 +15,8 @@
 #define KUNIT_DEVICE_NAME	"drm-kunit-mock-device"
 
 static const struct drm_mode_config_funcs drm_mode_config_funcs = {
+	.atomic_check	= drm_atomic_helper_check,
+	.atomic_commit	= drm_atomic_helper_commit,
 };
 
 /**

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
