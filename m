Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0D2C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCZ1I17q4SkAOrN3h0khlE6jaiWBoOz4f9OXjozuTyk=; b=oITZCHXiDzrwK7
	Gmv9BS0z0ggnevJmM1NqpChxnqH3KzBAoIuGp0Vbo+Vc7ZdMY9Dz7wEffdk5sbATYPqWbiS601sqQ
	hr9OJM/u6YUYdtgAJmuWbJujetj98Bl6lytOaKJjsM0z2gxQo0K6SzDr1gL4O1IzoR4mfRQHDdYT6
	HGgVMUNIQty0S3KNOsnU2oHfKRU0RKKj2osuEUXwWbjdY9Bswjtu8R6numf9Z3iajj9xwsPnAR9TZ
	PlavVor1LxDwh3ou2hKeomoqYyXWla6SBZfopc24UD6+d3wHHXTdMKfA5Jacl+8rBWMKxxFVtYqvr
	N6fpQ3gpQVcbWqiBHOxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHkB-00DTE7-2S;
	Thu, 07 Dec 2023 17:00:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeg-00DHjK-0x;
	Thu, 07 Dec 2023 15:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U8VaCe3UXEtl+RrVPFZ/LIQb9uQGAcZ2vl6WoxzXyyA=; b=N5sk8fc9FWMt34h2sPa2UEHzxq
	NvSlh6A6CYrEfra2ZsO6zWW9aQv1WwmAsQDYYi8zvUxB4HQbHp0K0M2Z7TCNugZjS0iRIRpoUB7tH
	+T37zv5tYJOxa1diOpM+g6B2k9n3s9mDFwyZr7PEdTj/NmIdzKESDll8wjLxj3+APmG+YkyJB0FGV
	GM9TCDtCL6dPOaGITO4gAnjDRpbAWiPJCrZ/TYBFGQWd4sScYM6RdQcvGxdPWjJhIbOpGgs6aP7mY
	PlNxpfN4P2otEaGkuJkOwhA5AYnU0j+dsRge9miM/b27/q+C3qiDaizd3gADUHJaRAeflRJgN5pCt
	TnLUto7A==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGec-0062ez-2o;
	Thu, 07 Dec 2023 15:51:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id F3808B82434;
	Thu,  7 Dec 2023 15:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C4DC433C9;
	Thu,  7 Dec 2023 15:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964268;
	bh=lBOOj7rqrx2w/8tcNodZrBPU2IsB4Kwf5qyl3esIKfc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pMULg9EezM19uQemjGykB2QqjkS1ctKoiNhGGR2cbfcOWBWWIZedbINDk2Tki2i9x
	 +d76AJZEfUCl2pxiicCExtm4UYYKzCUEPCmSse9xKlqBDtQKHZzKlglQSi31bwmYLv
	 EggkQm8IbSrhT0HrwVH22c0f0spQJ6ddMQtNrX/HZfImYVqU1w5ylvh+iBZaSPHVbp
	 gTimLWCT6ac51cWfNhh9QUt+rmHWbRlkEiEHQw7tvu9mFRFUp6MENxhHhccrTHQT4R
	 tivxfbHpLi6t0MuUNXVG/SXDbjriDM/E+0abs25gAJ9idiGhZP3h2iQNX6zYhXIcLk
	 l6mHGu4PniHug==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:57 +0100
Subject: [PATCH v5 34/44] drm/rockchip: inno_hdmi: Remove useless
 mode_valid
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-34-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1311; i=mripard@kernel.org;
 h=from:subject:message-id; bh=lBOOj7rqrx2w/8tcNodZrBPU2IsB4Kwf5qyl3esIKfc=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9s2S18I/2MTyeLsc+SlxqzTj7lKNQ6ku3ly+Xdwl
 T92fzy1o5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABMRzmNk2Ct6xbp/kWrNtRkx
 TIoFVZPudly89GKX9v6ynGMl1pk6jAx/pZU5D960cmp5e2Xj8+PXhNN335+UqrRf7t+2SU1T/z1
 5zw0A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155110_981548_B2241CC1 
X-CRM114-Status: GOOD (  10.46  )
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

The inno_hdmi mode_valid implementation always return MODE_OK which is
what the core assumes when we don't have an implementation.

Let's get rid of it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index e4fe02b79a98..59b2b676b7b8 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -400,13 +400,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
-static enum drm_mode_status
-inno_hdmi_connector_mode_valid(struct drm_connector *connector,
-			       struct drm_display_mode *mode)
-{
-	return MODE_OK;
-}
-
 static int
 inno_hdmi_probe_single_connector_modes(struct drm_connector *connector,
 				       uint32_t maxX, uint32_t maxY)
@@ -431,7 +424,6 @@ static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
 
 static struct drm_connector_helper_funcs inno_hdmi_connector_helper_funcs = {
 	.get_modes = inno_hdmi_connector_get_modes,
-	.mode_valid = inno_hdmi_connector_mode_valid,
 };
 
 static int inno_hdmi_register(struct drm_device *drm, struct inno_hdmi *hdmi)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
