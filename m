Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2537EC48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EFXuayQqAhrqQB+0Ug1IBY6lWr5GClut8KvuQLvZC0=; b=htQb4kuNB/2E57
	74PJPiC9fR8/3ZH12kk1rJq2XKPbU6v1XBizn/pGfkrPXR82amRqmqJJOgE3XS7ZE0MKyijtrf3SD
	RMqYnmQtYGRQQCSSZXJl8SHQVoZtnQIpVD8LkKVG6pRe9pwueyjiJMVxMrlvl5w1Ozhrc1Nm68cpx
	7q+oM9HcS0n/BZKstYIv+xSGw9T2WoKBsNQO5OFItpqYXfgYpjH9SpAXv27lB/g0Csf2ESS0e3ONn
	GDkjj3jtlCW1/+lQY3Xo1pZmidUkYhhc8Tztq0x9cGWPRjCuBJQVuasfnqK6nwkggMIVS/ZQIzlxs
	w+IuIYHyDoglhvAUKd8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW81-00000005OYj-2Fqg;
	Mon, 12 Feb 2024 13:13:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW7r-00000005ORV-0Ipt;
	Mon, 12 Feb 2024 13:13:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C42560FC8;
	Mon, 12 Feb 2024 13:13:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03E52C433F1;
	Mon, 12 Feb 2024 13:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743614;
	bh=FmMsFeXhutf6tMibK52IysTNfOw//ufgAXxQlMPss38=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=HnWjb3/TpoD5LsTLuSpJEczOHDyGGzoRzrosplO5/gP+842/Wupq9xSmxNvb1X+Bk
	 KxfKZaxXyPEuXUr/OW87NXXBXtNH9M8R+Fd407emglF3hDAi2qeFrA+CbabjGt88AB
	 NLBSrsrrnhSnJcW2heCyYQrI9apD3TV/sHAgp19Dh59lSGCuHtR+YLSDZ6TD2u/Vkh
	 BF1ImkqsXBCwXMIIu2fOixiupsXFeY137HMl93YRpQgIPYX0lY7fipNBsI2cpqDAl7
	 jDvqCjQLpj36mgSmAVNHrZ5uJiQOlXmm9UwZKxoI/ljZes9lDGH+/u11gOhc5vuGtJ
	 +vWRroeZ4argg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:12:45 +0100
Subject: [PATCH v6 02/36] drm/tests: helpers: Add atomic helpers
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-2-f4bcdc979e6f@kernel.org>
References: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
In-Reply-To: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1086; i=mripard@kernel.org;
 h=from:subject:message-id; bh=FmMsFeXhutf6tMibK52IysTNfOw//ufgAXxQlMPss38=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJOM9l5jtVJtx9t9V/6R5VxWmRbNefFPn/TB67pOGF
 1nzV7X4dZSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAivdWMDH85cgOzrlTdUZI+
 rqLhNmWh7bdbm+79VTFm2FrGyrehUpvhv2syS8bcveE/KjhfGlYoGrrMkPgl/rN1b4HxnnkSb9Z
 xcAEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_051335_259276_B594C99D 
X-CRM114-Status: GOOD (  10.09  )
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
