Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EC6C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HgyK0sTq8Ld9gcbzCxCgUmMeGEsc73f7A2aWu3xmLE=; b=x2saIu3mOFGlGG
	La5drmi92aA8/RbQLb/MnWSnpJEVNmR5YJUJ+meMCaQ8+8GHmFJVuGUIU1mlL7Sb+fCKR+vkXHVoe
	JeFk1uAzxxSkcJ3oydqhiil1B4BbeARI+dhQqKV0Fr5wzjnl6PEtboRye1sxW3NX3B7rlAvUiXgnt
	YqMmpvxYn6Q3QYIY/SAWJOCLWw+u5L9HDwU6AGcFCbxMt8GB1BCdPC9LhyRgDkjov5EX+e8hGo1CQ
	plN07cZkDE3ySr+8MzrUYnYC+GEbpGlGXqUqKeVIE/CzaSYVNDg9vhR+YdYfu3cT29EwoqvIkeyVW
	55w04Ay9tVAcgBz48WQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqf-00000005mf5-0Pxl;
	Sat, 15 Jun 2024 17:05:53 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWq3-00000005m9S-3j3z
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471083; bh=HhA0TE6TtiMIUmeRX5oAVj2VQq5qfAon5bzRoNsK6Uc=;
 b=wdYarLR/xIMt+/TaQZFCWEdXALELm6MV2s2u+EWpEMMYvDj2VK2kd1QKKGTgOfRiQT92XLsDW
 oylGQlRaANeRA8uBiltNN0CRgVFK+wYlv+ulZTFnWmzV5r71bUa8aAshX+ojkicqonSDLe1wQgL
 +i/JsLSFnYKPnJ02B5FBApjKRsbQNQqrwxSAQOWHQ5yjWWn1zlJauJqUZY9pJzlDYBQ/9rHljAO
 Km/cIijyfgu/RwrZEJCIYoUBWCQ7iv3uZF+daT2CMwdfdE2OqYWCTEA6BXtpa4Wc3sWc+Pa225q
 AtwzvKflKMg1enlR/haeY1/HWXlmQMQZjV6hY2/qhnBg==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mark Yao <markyao0591@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 03/13] drm/rockchip: vop: Allow 4096px width scaling
Date: Sat, 15 Jun 2024 17:03:54 +0000
Message-ID: <20240615170417.3134517-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666dc9a524e0254b39804005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100516_232948_645F1622 
X-CRM114-Status: GOOD (  10.18  )
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

From: Alex Bee <knaerzche@gmail.com>

There is no reason to limit VOP scaling to 3840px width, the limit of
RK3288, when there are newer VOP versions that support 4096px width.

Change to enforce a maximum of 4096px width plane scaling, the maximum
supported output width of the VOP versions supported by this driver.

Fixes: 4c156c21c794 ("drm/rockchip: vop: support plane scale")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a13473b2d54c..4a9c6ea7f15d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -396,8 +396,8 @@ static void scl_vop_cal_scl_fac(struct vop *vop, const struct vop_win_data *win,
 	if (info->is_yuv)
 		is_yuv = true;
 
-	if (dst_w > 3840) {
-		DRM_DEV_ERROR(vop->dev, "Maximum dst width (3840) exceeded\n");
+	if (dst_w > 4096) {
+		DRM_DEV_ERROR(vop->dev, "Maximum dst width (4096) exceeded\n");
 		return;
 	}
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
