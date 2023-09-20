Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB68DCE79DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u40lfHGq8kw9A/6dVhnpJjelGRzZG0GYnxTVUvPmDJc=; b=222fagz1cnSqFr
	5wka1NNpcyiZ9pA/EljFCjPl/8gWQvyQ8tvtSRrmvisNx9Pv4NhdS7b8lnlHZv64XizInz0HCb9QF
	GoaP+pWD89UOOpNRBdYHnx1fFN9fE4weMvdJ+BzEwF5gWRlIo8ezLMsIJiqluWGQEJc1FE5NqHGWR
	eC9dwj+bqTH6zTDS6sFuaYnEmZ2RTh/5LCbmOHlqwVs6R605txxoXJ7JeTtWWjZIkIOrB3shw8JcA
	A6kECqPCiAM4jDOREJ90s1UN0NH9IEFVOn9ySvzO1EEL+b9ICPV/N5YluuQaIsjMjARe+S/YhQ8/Y
	3isNLTeiveulbfHzMXIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyM9-003O3k-1o;
	Wed, 20 Sep 2023 14:39:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyKR-003ML2-12;
	Wed, 20 Sep 2023 14:37:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4529361CCA;
	Wed, 20 Sep 2023 14:37:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8235C433CA;
	Wed, 20 Sep 2023 14:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220641;
	bh=BKAqssSSrz/lWlwNaLsJkad1kx62XBx3UGaeEawTwAE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EtN6A+MKtH7qocG6NTeWELFzrImwk7f49faBZSnroJ/zTK+i0DNgeEEH+FDHZ+XZD
	 Rcf7dMVCTghvN1vhIrYdvfBaoZnuub2d8bxIzTz5Wfgadu2wQAhTy27GDHjHepUZve
	 UiuiKMSRAmoomKV6O/HqMOnximPKTz46FRztFxn4didL1e/3F3wuu7ugLpj5mmi04F
	 2VjoDQ1S9D3piYoBcQgwTM4mMQ+qNsh8mraasiyORexLFmuI7s5+s+2nNtsYh3oBXe
	 fBX2CrLYHDanA1z79sAW16lIAfXPU8QtwA0FMgK0UOA7LY/ugww5QZxH/v0TZcWjZm
	 kreap6LRbh7zA==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:50 +0200
Subject: [PATCH RFC v2 35/37] drm/sun4i: hdmi: Switch to container_of_const
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-35-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1344; i=mripard@kernel.org;
 h=from:subject:message-id; bh=BKAqssSSrz/lWlwNaLsJkad1kx62XBx3UGaeEawTwAE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczFYZmq/yffmeSE+sO+ZV+LTO//EmfpsWr61Zi0Vqn
 YPmHJ/eUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgImsfs7IMLfG0cOgUbJuw4EV
 3XNYD1Yt9Qqa53vy+N3HgiLNjWsM2RgZVm3kNjXsfbV9xnOnw4sf1l/Z/fA5K9v2r7viUlYm7Ej
 ZzgYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073723_576447_04AA3A12 
X-CRM114-Status: GOOD (  11.16  )
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

container_of_const() allows to preserve the pointer constness and is
thus more flexible than inline functions.

Let's switch all our instances of container_of() to container_of_const().

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
index bae69d696765..c276d984da6b 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
@@ -30,19 +30,11 @@
 #include "sun4i_drv.h"
 #include "sun4i_hdmi.h"
 
-static inline struct sun4i_hdmi *
-drm_encoder_to_sun4i_hdmi(struct drm_encoder *encoder)
-{
-	return container_of(encoder, struct sun4i_hdmi,
-			    encoder);
-}
+#define drm_encoder_to_sun4i_hdmi(e)		\
+	container_of_const(e, struct sun4i_hdmi, encoder)
 
-static inline struct sun4i_hdmi *
-drm_connector_to_sun4i_hdmi(struct drm_connector *connector)
-{
-	return container_of(connector, struct sun4i_hdmi,
-			    connector);
-}
+#define drm_connector_to_sun4i_hdmi(c)		\
+	container_of_const(c, struct sun4i_hdmi, connector)
 
 static int sun4i_hdmi_setup_avi_infoframes(struct sun4i_hdmi *hdmi,
 					   struct drm_display_mode *mode)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
