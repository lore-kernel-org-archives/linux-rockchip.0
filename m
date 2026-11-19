Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656E1606A331
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 05:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=G9cxDJW4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=m/K8mWdU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jyC1vqXw2HKioXgNDaNT3U0S6Av0PMMHqCfgG75Tf1M=; b=G9cxDJW4HmhS0Jjg2Fq9vQO6Eu
	V8D66jQQ0H217O0yCA7x8f1HM8k3G7YQkoZcwShi483UfpWdZDSEPNI8Q+NppxFGHiAOBQSFlulVF
	THWUhEhopaeK8pQGPUQYvMhGplxTlTrZWwz/rP5Xrnkp+A5jchLtvXME92UO67JtZzQ3lZ3lqkYG+
	mPUl+ozes8hgzNf+jXwMWbt3DmTeLPu6f8mDiWLtyT/vE0Y4/rbWMvSL61TI8oS6S+hfBNJsgVS4I
	4q/Pxuu04TnmS1TLHw/jXV1QMwY1iLXibrC3nX1YFS47zU+bsErByFt51rCP2E+GAVch74NGGsYZ9
	PA2mOMzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTuah-0000000As0F-2iN6;
	Thu, 19 Nov 2026 05:21:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTuaf-0000000Aryr-3Nng;
	Thu, 19 Nov 2026 05:21:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 327BE42A9B;
	Thu, 19 Nov 2026 05:21:45 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795065705;
	b=jPWeClNTRjBf5tc4gBwgF81C04FxMWckwiaUT71SqNZ0H5OpJEJu2OT40Dq4z+Gg70Vt
	 iAiS2a3jz6Xsk+06orh/cTadGcGcIngoMeVCJgDBqdZPwa7+lrdV0mvb0ViohNR+HnrP5
	 WhskkxGyX8EOzzD47i++iFaY4+Old0f6LR+dMqABthqXYSwx/0Hh94udiZQAD6oUAxNtR
	 LusP4Q87lvYCeQ8Hbnh8YEk+mcpR3xE7VEh5bLDdZ2iXORwp7kkFfhT6aqhjWrULxAFel
	 pAdVgnWl8Vj2XRwoFTnXcXjcpp3wWZEz6yzL1DXMPSxXccYqq1IgSXr3fPxWuWNp0rA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795065705;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=rfuxr0B1OpYG5Xm5r5EJeM7X/JS/n7Astd6NNj7X7L0=;
	b=wrzum+lWoklpTuzy9jDIdyQEtclWo2CrmZbuSaKqaGhl/nkRDQBBj9nP5m64pdP9gHDs
	 9UNwkABENp4hfXlVugboW/YNZVxk+NC8/nAKEr5Ni0ZDZwvpLC5K87xhAPgCLDbI7mSYw
	 n9GRITpzE2kzx23W837MBmYEZ83BSCtU08hT+MvTIg50nj79qVrXzYq47letSzEsKtPET
	 xs/YJJcfDjtktjinOQWAIOvOr0BJ1fFxpC9k+1p0SKmC3gvUvWtLuaQCMUwsuTbwvZaCj
	 w+DkFm4xfdEu2hWoB4CPN/TfJmOWh9i5hi4TZqLeGXHCGeD1P00xYBO/zzmymIlMQ2Q==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id DA78E1F000CA;
	Thu, 19 Nov 2026 05:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795065705;
	bh=rfuxr0B1OpYG5Xm5r5EJeM7X/JS/n7Astd6NNj7X7L0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=m/K8mWdUAIOjTsjFdzRwMqJ+lk2bF4J/IYzvk2QJs7o4aErhhdOPRvdLcfEtO0Uty
	 nOHCS7ElLQzoQ+fHNk/xxwCMNpdtfqDTnem0FExgJidwJfFtkOyT9c0eBv9+1X8aCM
	 paydDLyS2l+J54bVJjtUWEe4mbymwieDmr+35nZCtshAFiwPOEB4KPVj0sYJ6fuSpr
	 ymIqywXeBv2566OC3c/GrxgN7s3M61WVvt+tzHrkDmxSkLoZdClvMnvjiV/KIuiSLn
	 o1Zb09FlvVaWAnSVEYPxF4gJEEdQKwMmJCZxPeRVIqcvr87kt8CeTzUGF6TkGEeqy1
	 C4nySi/1sTw+A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 638C24B0FE;
	Thu, 19 Nov 2026 05:21:43 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 19 Nov 2026 05:21:43 +0000
Subject: [PATCH v4 2/8] drm/rockchip: vop2: Don't use uninitialised
 dividers on RK3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-vop2-fixes-v4-2-4b8f5e7148c9@gmail.com>
References: <20261119-vop2-fixes-v4-0-4b8f5e7148c9@gmail.com>
In-Reply-To: <20261119-vop2-fixes-v4-0-4b8f5e7148c9@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Piotr Zalewski <pZ010001011111@proton.me>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
 Damon Ding <damon.ding@rock-chips.com>, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795065702; l=2236;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=Ze0km6e6xf3MFauTWjdHWZ99JiujLW3xneM4AQe1tWE=;
 b=+UqdyznPcKcYgRt8RzywfDvjv/VOsLvuOc961gMgxE6mcHvRsoJivL++FDyye0QctGV3M0clJ
 zJfV+GciK/xBJGuvmPr9Vo2kh45hbtAHFSFBKWRTIbBtCQ9IdaBi1f7
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

rk3588_calc_cru_cfg() converts all four dividers with ilog2(), but every
interface only sets the ones it uses: dclk_out_div is left uninitialised
for HDMI, eDP and DPI, if_dclk_div for DP, MIPI and DPI, and
if_pixclk_div for DP and DPI. For HDMI and eDP the uninitialised
dclk_out_div is then written to RK3588_VP_CLK_CTRL.

Set the dividers an interface doesn't use to 1.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Suggested-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Damon Ding <damon.ding@rock-chips.com>
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index c44648e1bc0d..f340aba5bfd1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -1597,6 +1597,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		 */
 		*if_pixclk_div = 2;
 		*if_dclk_div = 4;
+		*dclk_out_div = 1;
 	} else if (vop2_output_if_is_edp(id)) {
 		/*
 		 * edp_pixclk = edp_dclk > dclk_core
@@ -1609,6 +1610,7 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		 */
 		*if_pixclk_div = K;
 		*if_dclk_div = K;
+		*dclk_out_div = 1;
 	} else if (vop2_output_if_is_dp(id)) {
 		if (output_mode == ROCKCHIP_OUT_MODE_YUV420)
 			dclk_out_rate = v_pixclk >> 3;
@@ -1622,6 +1624,8 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 			return 0;
 		}
 		*dclk_out_div = dclk_rate / dclk_out_rate;
+		*if_pixclk_div = 1;
+		*if_dclk_div = 1;
 	} else if (vop2_output_if_is_mipi(id)) {
 		if_pixclk_rate = dclk_core_rate / K;
 		/*
@@ -1643,8 +1647,12 @@ static unsigned long rk3588_calc_cru_cfg(struct vop2_video_port *vp, int id,
 		 * mipi pixclk == dclk_out
 		 */
 		*if_pixclk_div = 1;
+		*if_dclk_div = 1;
 	} else if (vop2_output_if_is_dpi(id)) {
 		dclk_rate = v_pixclk;
+		*dclk_out_div = 1;
+		*if_pixclk_div = 1;
+		*if_dclk_div = 1;
 	}
 
 	*dclk_core_div = dclk_rate / dclk_core_rate;

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
