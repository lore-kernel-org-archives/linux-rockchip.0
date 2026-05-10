Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E652CD37B5
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 18:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=II5kAgsvuwfNaYbdciQ0YbAT//C5+HFtcQM+iSna5e0=; b=ncncRkY54/bMTC
	kYU2IJ+ZJIMJR4Xl2fBjxU11IVBCHHfZDzifnr7A4CFkmD64OcRNo2iORg0KvhY2WUhjH4tJ/Dj+b
	fsC9EX7uqyqMD7ngoNRDh3cZ+qFS4syZHDsNo9MascuqkN58Qhk/rdVESOGCwmx3M7mxJbH4+ZPBj
	NxkMT5iX3mg0kzlgxHrddNLQBUVJR8qJ5i5XdBq3s/7peTLfitUe11ftjM0OPIJ9ABMTt6jZFXP9f
	UngF21/KGJ4XUUj60UAvOpfasQbqX1BZLUPTjMRuYMrNdSZBJggpJDFHwuk5GUxkC3DjiDgOpMj63
	L4nwUnWBjw8iPPgNsvAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8wq-0000000BMeR-25o6;
	Sun, 10 May 2026 18:32:16 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8wn-0000000BMYb-45YE
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 18:32:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778437925; bh=8k30gz9vz3UFGlsNIyXeeJx3RIgE5znUSB+laop1qFY=;
 b=lXkjUGiBCbCZr8HvfPd/5BUmatC6X6A4sczKjrtzPqkRbq+BhGtELvVRSfYCclmczTSq0Lkmk
 fiCSDblp0VqVxH4ZU/SPjWPRZBBsYh2Dq3Hoqiu8DlowZkAKxK9OjctgWq5cLW/d1E8G7S1C39s
 PZ/CHoJm01ZflQ2amyR/rFbgxfHfL0l8IPS7LSCDYfk1JxxCJFy5/qRPEDg776WEt5TR8KFB3a+
 QVrRFAiSNWppnl82QsTEP1+xwHamuJUaiAqJSo+dPc7y1pEc38cx3OqGyVKNT5I6zHYr8aJTNTW
 2hRmP22ghIKRDrUw9sRxiJRJx4Se9aV7foOcmLK3MSPQ==
X-Forward-Email-ID: 6a00cf0f61db3ab145b0f2ad
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 06/10] drm/rockchip: dw_hdmi: Remove empty encoder helper funcs
Date: Sun, 10 May 2026 18:31:07 +0000
Message-ID: <20260510183114.1248840-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510183114.1248840-1-jonas@kwiboo.se>
References: <20260510183114.1248840-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_113214_144835_6599783E 
X-CRM114-Status: UNSURE (   8.74  )
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

Remove the empty disable() and static return true mode_fixup() encoder
helper funcs as they do not provide any useful functionality.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index c7933f3eb64f..6aefdba0f1f9 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -226,18 +226,6 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
 	return MODE_OK;
 }
 
-static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
-{
-}
-
-static bool
-dw_hdmi_rockchip_encoder_mode_fixup(struct drm_encoder *encoder,
-				    const struct drm_display_mode *mode,
-				    struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
 					      struct drm_display_mode *mode,
 					      struct drm_display_mode *adj_mode)
@@ -290,10 +278,8 @@ dw_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_funcs = {
-	.mode_fixup = dw_hdmi_rockchip_encoder_mode_fixup,
-	.mode_set   = dw_hdmi_rockchip_encoder_mode_set,
-	.enable     = dw_hdmi_rockchip_encoder_enable,
-	.disable    = dw_hdmi_rockchip_encoder_disable,
+	.mode_set = dw_hdmi_rockchip_encoder_mode_set,
+	.enable = dw_hdmi_rockchip_encoder_enable,
 	.atomic_check = dw_hdmi_rockchip_encoder_atomic_check,
 };
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
