Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FD1AC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEvVZ3G4MfFQ2G7MKrAb62re4azh235nbrY9FjlmRM0=; b=IM9JOzAMgxy8Zw
	QgI6VJGkxqyN2M6DVIeQSXI5xTqPh1L9qk0Kq42TuG3Lnv5zTiho2CuXkiMejPMDhhPmMWBrYMTTC
	VdOjFs/ws4s2JAtdQdmkFKmFF40FQj6Q2sJ6P3qOiFJAz+gk5tE5sC28GPk/C/ileH3tTqnx1ZoYi
	/Ug2nYUYT2NlyvvMxU9qwRmwzNYYwXgEdAZ9qMqu4wbZqhYUvzKE1+1De5tfPYpoYqd25x5pZ9Rqv
	7RNYmpvHWkI+NvKM/jtZJpFprqvUWY/CXU3UH3FsuUnYNQuhjyanRo+dxo805wMoHPG+2EKuNIM8+
	/y0CH7EukENUKeCZtnbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIj-004tSR-0h;
	Tue, 28 Nov 2023 10:26:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHo-004sSc-07;
	Tue, 28 Nov 2023 10:25:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 97BC0B839FD;
	Tue, 28 Nov 2023 10:25:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71ECAC43397;
	Tue, 28 Nov 2023 10:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167146;
	bh=cewGjSfrxsWvWPkrDxnbvQOKsF0K1kZ/Vi1wxjvWMJU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AoC8BAXVAN8YKhH6+iXmJP08aAXvlPWtk/wgDwxz/h04z3leGGBtOB+tGmtkzKX9i
	 gFTHUlMEeS2j9T8s4LgRD4MOIG0kpcgfROLFP1CrBHibfC/fFRlyvp/N4zotaMLlpx
	 981iEQ/K+REyMXaIsmjldWy1wRqtAo2ZUuf+MCLEc5CdNKL111sxYNvmvimuX7TdiI
	 IXd56pJDl2/ah5dkaf7ME6CUBAeWyWEdH1XDaiW1coZBp+7JuLzqP2zD7HVu6kXyg2
	 /lWS6oxgycsohXaqSilSZBTTMK7DSFw3qQIgkQaK4Zv5Rb0XiBzlMF85mim5dorwJ5
	 YemY+7FwivhEw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:40 +0100
Subject: [PATCH v4 29/45] drm/rockchip: inno_hdmi: Remove useless input
 format
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-29-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3445; i=mripard@kernel.org;
 h=from:subject:message-id; bh=cewGjSfrxsWvWPkrDxnbvQOKsF0K1kZ/Vi1wxjvWMJU=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y91VQXbbmKdepgjZP+8dQ+sooMNHyQcqTq9ufKV6
 d8kFr2tHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZhI9l6G3yzb2HoSX6RpOZgZ
 TD4y1dzUacbaXeWMW+/v47Nt8mF/VMTwVyr5kcaVnmym1I1i/jmfIy8zXpt4KnzZzJvu1hfFZsj
 eZgEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022548_381119_28B51D11 
X-CRM114-Status: GOOD (  13.01  )
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

The driver has a lot of logic to deal with multiple input formats, but
hardcodes it to RGB. This means that most of that code has been dead
code, so let's get rid of it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 39 +++++++++---------------------------
 1 file changed, 10 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 3908dc09d85f..e0696ab16da3 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
 };
@@ -328,47 +327,30 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
 		v_VIDEO_INPUT_CSP(0);
 	hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);
 
-	if (data->enc_in_format == data->enc_out_format) {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) ||
-		    (data->enc_in_format >= HDMI_COLORSPACE_YUV444)) {
-			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
-			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
+	if (HDMI_COLORSPACE_RGB == data->enc_out_format) {
+		value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
+		hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
 
-			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
-				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
-				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
-				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
-			return 0;
-		}
+		hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
+			  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
+			  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
+			  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
+		return 0;
 	}
 
 	if (data->colorimetry == HDMI_COLORIMETRY_ITU_601) {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
-		    (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
+		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
-		} else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
-			   (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
-			csc_mode = CSC_ITU601_16_235_TO_RGB_0_255_8BIT;
-			auto_csc = AUTO_CSC_ENABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_DISABLE;
 		}
 	} else {
-		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
-		    (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
+		if (data->enc_out_format == HDMI_COLORSPACE_YUV444) {
 			csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
 			auto_csc = AUTO_CSC_DISABLE;
 			c0_c2_change = C0_C2_CHANGE_DISABLE;
 			csc_enable = v_CSC_ENABLE;
-		} else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
-			   (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
-			csc_mode = CSC_ITU709_16_235_TO_RGB_0_255_8BIT;
-			auto_csc = AUTO_CSC_ENABLE;
-			c0_c2_change = C0_C2_CHANGE_DISABLE;
-			csc_enable = v_CSC_DISABLE;
 		}
 	}
 
@@ -443,7 +425,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	struct drm_display_info *display = &hdmi->connector.display_info;
 	u8 vic = drm_match_cea_mode(mode);
 
-	hdmi->hdmi_data.enc_in_format = HDMI_COLORSPACE_RGB;
 	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
 
 	if ((vic == 6) || (vic == 7) ||

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
