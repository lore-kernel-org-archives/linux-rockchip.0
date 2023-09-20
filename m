Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E7CDC0031C
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDQjlf6Cctfwd1GAV8Vz/bLqzggHS/IEnWO0B/Qhzuo=; b=VpXWeakyaIrZ1K
	neogNnGPUSNMkhufGRY6/fcGi8wPpwJFE0DmaO1+/riwyAM+SlMuQXV+QfJTP9I6QuM7wILZSwZY5
	7FJLPDTCXVlhdnbu4WVd17i5jjtadd7UyEMZJFYxeSm1Q+uCsQm8zXPYfvxhBf9Zg9HONhDIIKAWY
	B1GLT+nd4S75eYK1zx99oSFpj4D3BMmVGunyKYuGGERIrh2xwzD4dKPikrf+auixQpMko8vHiD9c7
	NDm+eD8tcfPAkMFo78U3jZ3G2NZp4cXtn5sxrhvor20Pysqe1WOUaxH55nrpfprpQ/uF8pLEXV3OX
	184QYj4MWTpQHdMEg3iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyKQ-003MKb-38;
	Wed, 20 Sep 2023 14:37:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJa-003LTQ-2F;
	Wed, 20 Sep 2023 14:36:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8BB8461C5D;
	Wed, 20 Sep 2023 14:36:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15DDBC433C8;
	Wed, 20 Sep 2023 14:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220588;
	bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PX5gKdOtc3ImRq9gdiJmKV1zUjMxyWERJvCJIpkdDt/Z4BenT/GBymHELaMrgddY6
	 65h5od0OpXVWyzu+5eUCtkTwLz5lcsz4PM2iMCpWCyfaMMvjcDTcE2o40D2o6C9oWu
	 WVgHPvUcebEjBeZo+d1xMzoutUZbgY3KudhtBoYJ0hkyqTUOOiLuezigwfA61GXIUi
	 dNW51Px3RzdyvoHC/FoCN77bFB1CPTEYNl5N5ohIWY9fhv/XvthDwpQcg9j02OSFqh
	 MwpuLT6XkIzDGTpWG19i/ErO5Ry2HrS1OXI864hTalAGqkZsBIDS06PGsdR9o7jtXl
	 +3sYUoMrOUPGw==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:31 +0200
Subject: [PATCH RFC v2 16/37] drm/rockchip: inno_hdmi: Remove useless copy
 of drm_display_mode
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-16-17932daddd7d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hjO1thsBtNWKgoDt95oSE/97xbheY9O5MXtc459uiLk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczJbLWT4+/Wj02NHni/PmlZ+e2wWraZ613iH44n9x3
 KQz0x+EdpSyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAiu7IZGX5tD3f7Y/MznZlB
 dPLjbrWlz44dYGuJ3P1OTKEi47Bu0wFGhu03b0qFc88uF5yRGmQpZJD/iNv74bIepXsl7qbsf3P
 rOQA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073630_921752_EB0856A9 
X-CRM114-Status: GOOD (  12.44  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc48cbf85f31..4f5844fc115a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
