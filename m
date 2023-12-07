Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94197C10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAvDz0D88UFesCRPW6d8fldf35/kru1jhqXIaTJqN3U=; b=xmAkQWx4X1FHiw
	Aj/XlROtYk7kN2vmgrMLUhFhnObYcrvGYnECMnTz1YNK4gOl2/YOARtjwF7pi+Bd4to9PEhXkMBiN
	CMhukdQUilmSp2SPiPNpMdb+n518Z3uzLhthoGlY1z72AwuhpNUvUFTwpP+ypM0FIqw1nR443QVhI
	z11I6t0vh/gwYGv7YYBjh+CpEkqIGKvxgT97i72MjR0RBz1+F5M9a0ZfFRW6fV/1HnCPs6Q9ayd2s
	cntVo9rcRPOH2Ba3BWghDBqyiyZiLXN3kFuNFtZ+2QhlISY6bJReO2inabcXFJw6PzGA9dL/+NZOn
	dnIqiLw5IyDumVMBSVgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfx-00DJED-2h;
	Thu, 07 Dec 2023 15:52:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGek-00DHpV-2S;
	Thu, 07 Dec 2023 15:51:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0519D6217C;
	Thu,  7 Dec 2023 15:51:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F27C43391;
	Thu,  7 Dec 2023 15:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964276;
	bh=8QhaK94cu6NS8qoDm6VYUiajOTkUlwPERKnlLKf8BBg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FISsZouABBLFe/tUDWbm0ZxVn9dffh5HX04ImgM90vN6ltfjHfsaWW8RKJkH74LCi
	 XxBv1mFWSEcFqBPQdjXX+eZe7KJz04EEQ1uSaewk03VhFdoZsa/MHSY/mBUzLpacGY
	 wpF6y9yotjj+YQ7duJf41i8D+AVrlxIkDUMgNnbNc3sxqjyCGsS9BAs7VeM6fnnKDd
	 iva7KRZydMpSbqSL/ZTcgZPDBzBiTP4xDTjV1sPh9XoC1HgolQKEJde8nVQSZ6lfMh
	 JmuQHCMYahzG81G7w5FD/jbH1LUNg1aDGCZKiuR4DFjgV9O2c7DlFB0kNLLJHkVzbz
	 UBwflsFgfb8Rg==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:50:00 +0100
Subject: [PATCH v5 37/44] drm/rockchip: inno_hdmi: Switch to infoframe type
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-37-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2619; i=mripard@kernel.org;
 h=from:subject:message-id; bh=8QhaK94cu6NS8qoDm6VYUiajOTkUlwPERKnlLKf8BBg=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9sef/1mOEFU9sQ3i68RnxyzhKd4z3imuvamr/G/u
 wE/nGXzO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjAR01sM/4vZz25iff6maMFS
 J5OD0/JCTLinnBcwKdFZb8Ky4WLS9HCG/zFdKipc7yczH7yztnT3r7A4kVUcYRtbPt9Onnbv+5y
 tgowA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_075118_986755_45DB10C6 
X-CRM114-Status: GOOD (  11.45  )
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

The inno_hdmi driver relies on its own internal infoframe type matching
the hardware.

This works fine, but in order to make further reworks easier, let's
switch to the HDMI spec definition of those types.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index b68cd3a6a0d1..77b530f377c0 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -156,33 +156,34 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
 }
 
-static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi, u32 frame_index)
+static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
+				    enum hdmi_infoframe_type type)
 {
 	struct drm_connector *connector = &hdmi->connector;
 
-	if (frame_index != INFOFRAME_AVI) {
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", frame_index);
+			"Unsupported infoframe type: %u\n", type);
 		return;
 	}
 
-	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
+	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
-				  union hdmi_infoframe *frame, u32 frame_index)
+				  union hdmi_infoframe *frame, enum hdmi_infoframe_type type)
 {
 	struct drm_connector *connector = &hdmi->connector;
 	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
 	ssize_t rc, i;
 
-	if (frame_index != INFOFRAME_AVI) {
+	if (type != HDMI_INFOFRAME_TYPE_AVI) {
 		drm_err(connector->dev,
-			"Unsupported infoframe type: %u\n", frame_index);
+			"Unsupported infoframe type: %u\n", type);
 		return 0;
 	}
 
-	inno_hdmi_disable_frame(hdmi, frame_index);
+	inno_hdmi_disable_frame(hdmi, type);
 
 	rc = hdmi_infoframe_pack(frame, packed_frame,
 				 sizeof(packed_frame));
@@ -206,13 +207,13 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 						      &hdmi->connector,
 						      mode);
 	if (rc) {
-		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI);
+		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_AVI);
 		return rc;
 	}
 
 	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_AVI);
+	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
