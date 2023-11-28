Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51EDEC07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ev0ssokg3ttYGUaenPLAGKUUcM0cStNrKEbryorRoxo=; b=W0ytaVep1J/k/T
	8CKEg91AhRViJi60iVqS2vZk5lSXHDcf+ad3DcwlfJ4hs2ouCZOdoMyJrG+zGZmlIuKPPMv8Zju5l
	rYtdBXINBSGlpc9QhHvA5gCDFyZogKoBKCsqs/F6jLQH+5NHw6flyBZ3o/kAwffJgQrovKSIDE+8W
	aP+/9hGho21FcAHRqamOELh+uEh561KmraxPtwVBomi39NcLtRS0G4KxmFnYxh9aercn2DJvv5VkU
	mAWVY85x74xI3Z9txasic+NSAojku3iK2VPRPzIk+AZHndvcKNX1eG0F1DiCHeAvw3JZhqEtAoehG
	mTzOUSw7Fe1UurcSeqEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIa-004tHx-2C;
	Tue, 28 Nov 2023 10:26:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHq-004sV5-1C;
	Tue, 28 Nov 2023 10:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=bQCZFQNf/lWJlKzbJ4pjPrOz8Lf/tHgVgnhJg3rCJJ8=; b=Q8uC45tfTPf1KwYop/kSPeCkNw
	KcEC78ohj4zdRa5l9ffi690x0QP3wC4FWrRYPrLn1+2HgRKD0qIybQG3XrUpuOZW0wp5IHakRrL7K
	mc0btUlyBPIsBO0rAS3GYT20j+/UzKvH+JJiZWYvTDIEjmfw61qn7P5lhpTAAQE0kp3jwUvAfl9VW
	vDQ1nYTpt1zFrOuBrKcqcuKAS8tkCDaommXZwLT/6Oaa8TFgjBeeRggRjoSUJ35A1PwRWMBTJHArb
	sK1KNmUwnuPptSZuu7awS/WG8iHmrmiiqwvEWsWWbCXNkmsDIqWZeRjdTd3cw41y+TVP32kR+9J+n
	At63dtyA==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHk-00GaIA-0T;
	Tue, 28 Nov 2023 10:25:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 127D8CE1AC3;
	Tue, 28 Nov 2023 10:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8FC2C433D9;
	Tue, 28 Nov 2023 10:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167137;
	bh=NPcmog8rmIBDaqZDT4O0fzD3K2AFLpEEWCR2cLRhvQQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RPU+1I5o3q9VbgxNkmj+Om7S3OtsQA/1Rz+blYtkXjXnWGlVHukRf4I+I+x0W+DML
	 86pMvw81vUksHB7eP0c4KsVu86EAmyJNybHcfi9qmOlx7jaNm3wphsbZ/sbGl4e0vu
	 nSHkjUbAFkQ/8RMWrBSdx8iJAD3GFrByLvUpnxyyr9Eyh+LhDXoipX+dqsXccnbg+R
	 J3KbOhbQM8jod3vcBgS6wiaHdTe7VMXLVGHW87yDLk5YqYd0g5aK4JwZJ2K6ymC4vH
	 Kgo/34ErtKwVUDL/UPgiG64znYwyZiHuvMMZ/ia+zN9ViLcdAUyXz8rHecC1s1ab6H
	 EXIB7Q1Ekfs6w==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:37 +0100
Subject: [PATCH v4 26/45] drm/rockchip: inno_hdmi: Get rid of mode_set
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-26-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1884; i=mripard@kernel.org;
 h=from:subject:message-id; bh=NPcmog8rmIBDaqZDT4O0fzD3K2AFLpEEWCR2cLRhvQQ=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y85H33u9HRW2ssDW8ttBSKPfvec0bZ7wX2HcEH/Z
 dU/fNvnd5SwMIhxMciKKbLECJsviTs163UnG988mDmsTCBDGLg4BWAikiaMDFOtWN/WtMksKpQ0
 sl/+qfYF8x/era13xPdvesP0RTziBhvD9/rHTzPrn16RWevgU/N99oT4Dy6cL8XNGybnC6v+OK/
 HDAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102547_227825_4798BF18 
X-CRM114-Status: GOOD (  13.31  )
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

We're not doing anything special in atomic_mode_set so we can simply
merge it into atomic_enable.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc86d273ca4a..4db18195246e 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -490,21 +490,22 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	return 0;
 }
 
-static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
-				       struct drm_crtc_state *crtc_state,
-				       struct drm_connector_state *conn_state)
-{
-	struct drm_display_mode *adj_mode = &crtc_state->adjusted_mode;
-	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
-
-	inno_hdmi_setup(hdmi, adj_mode);
-}
-
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder,
 				     struct drm_atomic_state *state)
 {
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
 
+	conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
+	if (WARN_ON(!conn_state))
+		return;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (WARN_ON(!crtc_state))
+		return;
+
+	inno_hdmi_setup(hdmi, &crtc_state->adjusted_mode);
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
@@ -533,7 +534,6 @@ static struct drm_encoder_helper_funcs inno_hdmi_encoder_helper_funcs = {
 	.atomic_check	= inno_hdmi_encoder_atomic_check,
 	.atomic_enable	= inno_hdmi_encoder_enable,
 	.atomic_disable	= inno_hdmi_encoder_disable,
-	.atomic_mode_set	= inno_hdmi_encoder_mode_set,
 };
 
 static enum drm_connector_status

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
