Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E2BFC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNWdPKE4+5orYvqwn2KWa1+QDB+xNBeQXpPAXxMFiK4=; b=bTq/+UT55qTA9h
	mRNjGof7w29AFiUwNbuA4vCdJv/Cg6oz0Qhyx/SS9Hbm749haxLqGGNLx76EJtYFGds+3J0ZGbd5R
	KJJ6HHRQuQsbeW40fl2GLKzpwgzeahNyyQnKFoEU93DpUSaepWvUJrW3lT+R41rX+P4D1TPPaCN/o
	sa3LiOgi+LoIlPCCgXx312++J79SWBcsrzKqG6NyrOtZ6VxDD7KUrPzKL8Iz4FA357TM/USnt8qht
	mXcaPZYyXIcGFKXOHim2ALwinN4hI9Akvx5vKNTiYqHwM+5s/Fj5mWt6ZlnFiydunnksURw0fqvZk
	ri+md5+Y8x4XcnmOXg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfu-00DJ8i-1J;
	Thu, 07 Dec 2023 15:52:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGel-00DHqv-1N;
	Thu, 07 Dec 2023 15:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=gYQcHSyQlz0lEH/oeEX2CrI2/c/kkrsxzsZ86sTF3gw=; b=XzbtgUenKn+lJWWg+UrdEQ78yt
	2o10Wl4X6u902md452EkdOD+d4VKEeVYw0IMAvUryPVdJWpb64sXCekc+enwQvADoT7XhEiEhdSMT
	zIiGANbBSV33+ElSF+xEIIgj467ExWxD7xF1BAfBsni/y4KaGuw+DRakI69dNr7d+NKiihpv/MVRy
	l2az3j9zuHRo7VPi/RiSRAIsKbuSSaAU5xO0EH4GmAmko+KDco8OaFMJmJWmIZ3MlXlsfnpoFD8q9
	+oV/mt+3oHqM0yJtbmiMjZNk3V731JHEDPWKlRni3od8sXBOsJJUINaNIJJhdM5UXpK5D31K1nFiS
	pAq1qPYg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeg-0062g2-0c;
	Thu, 07 Dec 2023 15:51:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 892CA62005;
	Thu,  7 Dec 2023 15:51:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5804C433B6;
	Thu,  7 Dec 2023 15:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964271;
	bh=hSiOZT7I1AlS1gpPTNWhjWxcUL69aElzs2JoN5aOHC0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aSS3aJgdltZXzxT+fgn0psGO3PXlcKP/sDU7QsEBphGeThZd7WvfnjeuTYXUAoJl6
	 W3UInt9yE1HPeppX1mfWCshHz2DVM61Gl7R+kPh2+gESTs0+i5OR0Nhe5oxzuTyYMa
	 OUPI7GkjEVfdWxOD8YuAM1tbrxLtG3F/RBPxVWZczIf92BMWcGPdF51qllDOsUjNLv
	 C2r9rVUjd9zb6GvSa9dfzKWC2YFsNxdJ8ZtJ2q7IjTxOoFkd1/C3VwKUtrIOdoIIKT
	 wxPhvags5RIDBvoa3DGsT1iRjBseHfpbT4+aOjiK+NlCqoL2258g1cO92UsTF4fAXN
	 G6IZOm4KG2qtg==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:58 +0100
Subject: [PATCH v5 35/44] drm/rockchip: inno_hdmi: Drop HDMI Vendor
 Infoframe support
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-35-6538e19d634d@kernel.org>
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
 Maxime Ripard <mripard@kernel.org>, Johan Jonker <jbx6244@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2822; i=mripard@kernel.org;
 h=from:subject:message-id; bh=hSiOZT7I1AlS1gpPTNWhjWxcUL69aElzs2JoN5aOHC0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9sesy4/MpEnIFEg+5vVAa2dT37LrHj08kWPgM5XZ
 pu9058c7ChlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBEDKoZGSYy3poZbX4jjumJ
 dO+prZv3X77j7L9hBYO67J3nTRsmn2xl+Kfs/p+/aVZP3kLJXU+cPntzpjit+X/qTHuh8XVtATm
 eEkYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155114_555512_DC752386 
X-CRM114-Status: GOOD (  13.46  )
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

The HDMI vendor infoframe is only meant to be sent with 4k60 modes and
higher, but the controller doesn't support them. Let's drop them from
the kernel.

Suggested-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 35 ++++++++++-------------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 59b2b676b7b8..9c64f94ede6f 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -157,11 +157,15 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
 }
 
 static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
-				  union hdmi_infoframe *frame, u32 frame_index,
-				  u32 mask, u32 disable, u32 enable)
+				  union hdmi_infoframe *frame, u32 frame_index)
 {
-	if (mask)
-		hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, disable);
+	struct drm_connector *connector = &hdmi->connector;
+
+	if (frame_index != INFOFRAME_AVI) {
+		drm_err(connector->dev,
+			"Unsupported infoframe type: %u\n", frame_index);
+		return 0;
+	}
 
 	hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_BUF_INDEX, frame_index);
 
@@ -177,28 +181,11 @@ static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi, int setup_rc,
 		for (i = 0; i < rc; i++)
 			hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i,
 				    packed_frame[i]);
-
-		if (mask)
-			hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, enable);
 	}
 
 	return setup_rc;
 }
 
-static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
-				      struct drm_display_mode *mode)
-{
-	union hdmi_infoframe frame;
-	int rc;
-
-	rc = drm_hdmi_vendor_infoframe_from_display_mode(&frame.vendor.hdmi,
-							 &hdmi->connector,
-							 mode);
-
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_VSI,
-		m_PACKET_VSI_EN, v_PACKET_VSI_EN(0), v_PACKET_VSI_EN(1));
-}
-
 static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 				      struct drm_display_mode *mode)
 {
@@ -210,7 +197,7 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
 						      mode);
 	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
+	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI);
 }
 
 static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
@@ -306,10 +293,8 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 
 	inno_hdmi_config_video_csc(hdmi);
 
-	if (display->is_hdmi) {
+	if (display->is_hdmi)
 		inno_hdmi_config_video_avi(hdmi, mode);
-		inno_hdmi_config_video_vsi(hdmi, mode);
-	}
 
 	/*
 	 * When IP controller have configured to an accurate video

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
