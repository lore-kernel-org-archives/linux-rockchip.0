Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3411EC00454
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpS6iypM0lCn90JJHpBuX+O/7P9tExca0yzuLRwfZIY=; b=H/OcyYhb2Aw6ZJ
	rZpLSnMywAoWziSH9uu9ZQvd5ijtcq2kHkmH1ly3Z+N9syZr2iSHKk4MrBP8beSOe3icFEjXGLMv6
	iBP2wbTnC3M29tj34UPkUz6eKzXk/MhGP4FHGffBPpje/cTtGEigV3ABeqs/rJAItGdIJr/5HeAt1
	lvv9aujkZ2MBDBRvOiSC/d1L2cRHnMdUw2Yk/4sZji6jDRVm94Wom7BhpV5pP1k5X1yI1rdxXr+cS
	LGMipT2lqcNmf55c8f7D1hC/qOBfM1EeW27HY0gDWOosCr8ddmnpdSDxqf+TYU2gtyN5Z5h5rhUug
	oWAZkklLTgQ5KF5q1YTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyKE-003M9C-1G;
	Wed, 20 Sep 2023 14:37:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJW-003LOm-1H;
	Wed, 20 Sep 2023 14:36:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C7E0361CCE;
	Wed, 20 Sep 2023 14:36:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46C8EC433C7;
	Wed, 20 Sep 2023 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220585;
	bh=O2ArSsFw7SF4g7FuBBWi6vHwa0go+wIZPFZlnlzeBPY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eH10rFvWxdky3DLIt0++UOK73Fu2ljtbspfMbphesrF7XZopMCWWRcKj/cbe835dW
	 rPnH1Y+BFE/44ClXpanfea0CKoQuO+gFlDRFckLIHb0ybjXK1B/RpL2ovM6pvGyCrn
	 n1vBNDMHpxxppheThZ93TANLCyZby7IrVC8daWzLaqRESzl3aJBILZBg87rXXvp0Yq
	 4vFdmnj1rji8L5qqYMCM5UagIHlh7PIVNNumRgFH7Db0+voxiLG/SDGzWFVZkgBTeu
	 cLpE6olcVvNn1DwoSiCZb7bSEYr2AWju1t0LXvrk1xjOCsjroeZ6QqivZ3S4iV3ZQm
	 8hF+fuyl7AmqA==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:30 +0200
Subject: [PATCH RFC v2 15/37] drm/rockchip: inno_hdmi: Remove useless
 mode_fixup
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-15-17932daddd7d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1301; i=mripard@kernel.org;
 h=from:subject:message-id; bh=O2ArSsFw7SF4g7FuBBWi6vHwa0go+wIZPFZlnlzeBPY=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczJb7Txx0k5s8c6vmqYhfjPcnrMs2/XzZ5I3r9Fkzw
 +TLeZ3/d5SyMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAip7wYGT6GXz64b/afplPb
 X5ryzVTbUlL87mLiVwZeg90Pd6iZiPEx/JXeGqiRf2tr1ifnhTWMfAlX+2fI77VRW+DvrjaB8eH
 1QywA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073626_608400_600D267E 
X-CRM114-Status: GOOD (  10.87  )
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

The mode_fixup implementation doesn't do anything, so we can simply
remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 6e5b922a121e..cc48cbf85f31 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -517,13 +517,6 @@ static void inno_hdmi_encoder_disable(struct drm_encoder *encoder)
 	inno_hdmi_set_pwr_mode(hdmi, LOWER_PWR);
 }
 
-static bool inno_hdmi_encoder_mode_fixup(struct drm_encoder *encoder,
-					 const struct drm_display_mode *mode,
-					 struct drm_display_mode *adj_mode)
-{
-	return true;
-}
-
 static int
 inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 			       struct drm_crtc_state *crtc_state,
@@ -540,7 +533,6 @@ inno_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.enable     = inno_hdmi_encoder_enable,
 	.disable    = inno_hdmi_encoder_disable,
-	.mode_fixup = inno_hdmi_encoder_mode_fixup,
 	.mode_set   = inno_hdmi_encoder_mode_set,
 	.atomic_check = inno_hdmi_encoder_atomic_check,
 };

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
