Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114B4C07E98
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXNiYf7HjuLoVOxo6HdOJDAmBIPdusu3PkoeXAQaBCk=; b=EW+u0uPCeCb+RZ
	OeM5W57Xrg67faayFQPSySKQCuNXY7JAdG4aHfQNfdPIjjZ7o61fsFhdv0/rciZ7lJirX0jjTud6r
	s1A/7+IkfDeMS0Ta0m9R9/DfOkZmONzFuLeRTkyMiN3Ht+Pfv+9tWKRIbVyAWcX/hlV1+QfiEf93j
	VzWnuyGF2D9Fj75Fo6phnqVgr/FJn783kY6cMeRFjBPzzjw8liu2jWDqbLP/vIe5WeoYXGXCsHyt5
	+INtZlQr4NFBOkJTkGN48Hc849MAfjwYWrEf9TE36N5v7zyp2k/3zOb3ImbX81SkoNNGUGYsq4cCP
	AxBTPXJuvKh7QUka3Mvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vGd-004rMl-1s;
	Tue, 28 Nov 2023 10:24:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vGW-004rFi-0S;
	Tue, 28 Nov 2023 10:24:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2863961640;
	Tue, 28 Nov 2023 10:24:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DAB1C433C8;
	Tue, 28 Nov 2023 10:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167064;
	bh=JvRx9DHQ4ySKwGLhCe7UFOvVgm2pA/HUikxGsFzEITQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SQ0xHTGCTtrJKmvJWC1tDNqG/dL3kZmZ3kLHyQNKxR+IObCWxPzrq8c1x8x3LjwpM
	 BlCNrF3oLRTLg65oaL2knHHbPG9Yc1LGdAr0pODSm6z+RHlpA3H9JJu3RywaLDsp6L
	 5Qisxpal/EY9ydqdv+w99VCFP0hNW7w9MeolNbmgNp9To0x9rcanWWTnHC/jOVCAt0
	 iF/UjIa2kdtz1plNTor/c0Q5X8XgGEtU/bbtfLG1nm+fCSHNtuE0PwRgcSJ1TQjS+y
	 BnrmLKylLdNDGI7BnP35ZJn4tmypFhQXHdQiN/lCH3vZfq8d2urBgE5FTbbRf9xhuy
	 pNTi85VE7KmzQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:12 +0100
Subject: [PATCH v4 01/45] drm/tests: helpers: Include missing drm_drv
 header
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-1-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=857; i=mripard@kernel.org;
 h=from:subject:message-id; bh=JvRx9DHQ4ySKwGLhCe7UFOvVgm2pA/HUikxGsFzEITQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y9aRJz+E1K8N/Mm/w6d5In9Mt0PQnM+Vb8/c/l7b
 +lbvdlbO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCRo2yMDEsZ689+3b7ra7DI
 dY4bidVKvxgud4as2M4s0fZe+XSk8llGhoXJLVvYsuViNn4p54+8Et1RVRxy8LPsEgUNy7Sdq15
 IsgIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022428_226874_00584A46 
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
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
