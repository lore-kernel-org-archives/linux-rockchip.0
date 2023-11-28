Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F51EC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx/0M6HJnMOn8OncOYMV5YzyHf0kiGIM3yLi7cMuFwU=; b=Zn5tt4iJYHw5Dy
	SNioQQH2kX5skw32Aw4W+3pt7dw4OJY1/OLTkhky9fPasAsCrrNRexWapiYxTk8d2iFsQd+FeTWJc
	fH7VDdTYTBN820g8oRTb/O4gchGVcGCClT1+0JMrHp1iBa+GbkntzXxWHZ3E4sPrFhskHeTuYJpeN
	BX3S0lbJJGK0jO8skicIvbGldqHlTjG5D9c6jpxbC0MSbeqadbdkmWKJo/Oxjb6s1+aRu0xtFPWZL
	lW0yI86geFsK+IZ/TcMrCiPNf42CvPswxKbmFhz4k0akbe437rOeV8MZw7Njd5VyRwKwhNhctFdtB
	S1UCSXV3K5NHjHS7qd1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vGk-004rTe-2B;
	Tue, 28 Nov 2023 10:24:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vGY-004rIC-1d;
	Tue, 28 Nov 2023 10:24:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6F559CE1ABF;
	Tue, 28 Nov 2023 10:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A3E8C433C9;
	Tue, 28 Nov 2023 10:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167067;
	bh=Fnr3n9V/rmEGhyYzyhKw6YhgF2ss0cefC+cpk2ChxTM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VnWvtLMY80iPcQuP+xsQy4v7vRFYFqKSo7ScwL0WjMFK/GIfD4ojmmavN0ydmyoAv
	 Un8aG1ogypWQEECspemYcXzYrgRoP7+fdpOxeS/QKwBwnE5tHAkvwYI1c6W+DjeTJS
	 d2gOAazTRY3nr0aDqhEanKZUakjMGhcjP+Cqxg0McxbP054gUucNby/kORDYP5mJFE
	 OojQ3xAHlAjmAqimKsrKFcdk0ayK8U5JJcm6H7U3ZiqLtTxTRxOPc6Xk/FKBlEU516
	 p2QETlP6sYMAZ8U4IJidKEwJyKZzr7IV1w66QP3CzqopvcUEfcpTqKZR34NKM3ktHv
	 hJ2bty+eey0aQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:13 +0100
Subject: [PATCH v4 02/45] drm/tests: helpers: Add atomic helpers
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-2-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
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
 h=from:subject:message-id; bh=Fnr3n9V/rmEGhyYzyhKw6YhgF2ss0cefC+cpk2ChxTM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y8u+LXy4p8IgX0Wy6YVdRYufr9zwf2erwHTjQyqS
 r6n6U5+0VHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJrF7G8D+9vWBq4OmlYt9m
 SzF+VBHacF7p+ZzTHqzc884WJxwxyZrK8E9rfoZPA59vwuuI02uSWdhDDiwRFUnyCD4uNYOf/Xd
 pJwcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022430_769184_A93DC9BD 
X-CRM114-Status: GOOD (  11.01  )
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
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
