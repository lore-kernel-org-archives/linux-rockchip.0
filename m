Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D00C10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPktpejpimVcN8nAdpO9IW8i3nGlVxC2zOpBiVVqYP4=; b=Zks0M4YSOvSZ13
	oI2525J40dfK1fUAcEJZ262KITI2ELbQxcxmOoaZBl7XEHCvpeQzX3qFSDTTbTpvqAmsk8NGeL1lM
	eY/d8/NmYwfSIa/QvzaBG8MIS0N+6hm+zJCEYqad0rRLkQ84o2yQHKrqPBYM8wPnmP+j9ORpSo11E
	hdjSv8ho6Mw0l22JFud0gZzJPqxk7ORSFef99nHO7omHOvMs9BpLFaQOTPIUheL+ErOQtioih0+sA
	JYGvQTlp9BnIQUfaWqmDeRd8yRq4iQ40/6nPNoDd/bSg8+3qXxTZtL0FM6goWMn3lpbZg2Ur26yp+
	mUjRFKBeK/VYXotbVSmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdD-00DG55-0E;
	Thu, 07 Dec 2023 15:49:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGd7-00DFyA-14;
	Thu, 07 Dec 2023 15:49:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D5D3A6213E;
	Thu,  7 Dec 2023 15:49:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 502AAC433C7;
	Thu,  7 Dec 2023 15:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964176;
	bh=N/byJx61MB/G+xPer+BE3L2kaBiCkfIycNZTFhMyqxU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Qn0IYS+xXVt98u5JQmLzprmafaUmc+Nx31sQTVta/7A2h3no627Ry6GGHeFEZr3Nc
	 ktJbQb+xgyB5b8rT260XmhMkVqt+QzCc2oF5RvWfXsYhTk3qIDuAbn1tL78yrCbF4/
	 85UDnN5nw3bk8rwbzejxP8au4gckM4Jl0If3zT2nR0n/raVZRQvKN0U73594I2NRXP
	 S2XOeRkecUJ7zw+NdBACCN3cdZzPr4F/+W90MIG1RSJLED+gTAdK5pPIwaPuksHvGX
	 7obGPzVKmTKbF1XRinWyWkhwOYDTUQVeak0Q8r6eeOA84UcKtAi28pp8Gr2pGdsquB
	 rOaZ3GoMDh9jQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:25 +0100
Subject: [PATCH v5 02/44] drm/tests: helpers: Add atomic helpers
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-2-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1134; i=mripard@kernel.org;
 h=from:subject:message-id; bh=N/byJx61MB/G+xPer+BE3L2kaBiCkfIycNZTFhMyqxU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1t6VRXK5zR87DjjniA9T8ugxan7yJL1sd/0Iyrms
 +5s7JbpKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwETqXjIyLJgvWqj2ajLr7ik7
 3JPmRZ05zvXM4GPQ6TxrNvVb9dIZ/xgZzt39UPM7/u7z6yLMG1jzGVZsSo+9v1Zzsr3MYZVzn/d
 UcwEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_074937_414326_42551AAC 
X-CRM114-Status: GOOD (  10.71  )
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
index bccb33b900f3..272a3ba46d60 100644
--- a/drivers/gpu/drm/tests/drm_kunit_helpers.c
+++ b/drivers/gpu/drm/tests/drm_kunit_helpers.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_kunit_helpers.h>
 #include <drm/drm_managed.h>
@@ -13,6 +14,8 @@
 #define KUNIT_DEVICE_NAME	"drm-kunit-mock-device"
 
 static const struct drm_mode_config_funcs drm_mode_config_funcs = {
+	.atomic_check	= drm_atomic_helper_check,
+	.atomic_commit	= drm_atomic_helper_commit,
 };
 
 static int fake_probe(struct platform_device *pdev)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
