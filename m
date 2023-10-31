Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FAC1C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 16:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFThrJsSBpY/wr9k4PMIXAwEE6wwdJVwYnTY8gp6ijk=; b=Iy4oTEE3TNwTvs
	ijqrdZATn9qBzDPMckBUJXRKAsxJjXY8hb1v9EJPCkeMUucxSRKpTHvlComJUhhaUiXjDVqqYiJyV
	I5kJ9Y/kt1yH7MhZ0tF/HW2zhvqbaUwtTAkNVdFbwBnAgKO0dpzDhUua6XwzB64BlOFIbZU2dU4f5
	gBZYTJF6Gor31wdAW65EtNI7nPeDPPZlYkKrjZmuPusZvwwrFIIKVIkp3DVyfiakXvY4dbOOrntwQ
	d/9EwSH4l4M5Ya65xRjeZNLgxrvwBytEzQAHb/LImk84HaenKGQu5lhWIYjrMw0k9o6UnwIfg4wFA
	Hsd3vwXyTdG5mPabC3bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxryC-005lgD-0O;
	Tue, 31 Oct 2023 16:52:00 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvt-005jrZ-2l;
	Tue, 31 Oct 2023 16:49:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 246CFCE09AC;
	Tue, 31 Oct 2023 16:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BAC2C433C7;
	Tue, 31 Oct 2023 16:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770969;
	bh=fuZjkFl/jqhwO48bmKJwJvIB0H4MjJa9mxi0LwhfDmM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bwcFC7s3Ub6p2kpTBy3SM60z6BpbCeUsbKjMFv1QI3/ZPa5VwXVw0OGztX+a5d/r0
	 qQPq9o1v8O9DOSs5Crb1FXuFpKULV7PDofEuEUVz4Qoc098OYrWmUyBkZBPwvwi9aU
	 5pDXpx2vi+BzWOWriyO+5sUqu2ZypUfJnMC7wyabzyBDNqFcS/IpBUH+OB/sAJRDYw
	 GLcoyk8tFkO/Dg4yotSkkR4KYzzZ5/UCorNASO0sWlb1YeOTUAmRuHGIuEnJUIBctl
	 1HYXl8e6lI5Bi1AVGooi8BH8+IDq1iDAppNEcMZbBxgy865+kXWwE2lfmLr8OXqrdP
	 g2z2F4MwhLahw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:32 +0100
Subject: [PATCH RFC v3 19/37] drm/rockchip: inno_hdmi: no need to store vic
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-19-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633; i=mripard@kernel.org;
 h=from:subject:message-id; bh=fuZjkFl/jqhwO48bmKJwJvIB0H4MjJa9mxi0LwhfDmM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+vdK+HI016hJ3WV60eMxXys/wu2wmNztDr9ZCTpt3
 x77avV3lLIwiHExyIopssQImy+JOzXrdScb3zyYOaxMIEMYuDgFYCL3VjP8FW+YVDmP7ReLkm+J
 1Z9969duUzv31XbHt5VPss5zOt0tWcDI0G7iffJR+RGNyY+Zv+2p9fv2y6yu5V7MzL2Hrk63Wlb
 whh0A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094940_156790_CC141EB1 
X-CRM114-Status: GOOD (  11.30  )
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

The mode's VIC is only ever used in the inno_hdmi_setup() function so
there's no need to store it in the main structure.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 4db18195246e..294f0d442c0c 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	int vic;
 	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
@@ -443,16 +442,15 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-
-	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
+	u8 vic = drm_match_cea_mode(mode);
 
 	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
 	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
 
-	if ((hdmi->hdmi_data.vic == 6) || (hdmi->hdmi_data.vic == 7) ||
-	    (hdmi->hdmi_data.vic == 21) || (hdmi->hdmi_data.vic == 22) ||
-	    (hdmi->hdmi_data.vic == 2) || (hdmi->hdmi_data.vic == 3) ||
-	    (hdmi->hdmi_data.vic == 17) || (hdmi->hdmi_data.vic == 18))
+	if ((vic == 6) || (vic == 7) ||
+	    (vic == 21) || (vic == 22) ||
+	    (vic == 2) || (vic == 3) ||
+	    (vic == 17) || (vic == 18))
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
 	else
 		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
