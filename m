Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080F3C25B5F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 14:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luqtEZ3dlevJUu+K8NAw48j9kC/UVr7NKk3yhrvvwVE=; b=KRnb+YlIdZMJ4p
	hgl+7eIfxLCG8SN7Hv/Pkd/Iao+LgU0g/EZ7o6EJZ3G5K+4nzCRpMVD2XevCaxT14xXLUqmP9+SVx
	qKd6itGxgZoiDa0b/HGVJFdnMIJnpVYyoUelsx0pG2z59oOo9bUh5Nn1NrZ7xzkalrsqws2jT5a7G
	8oxr9mBWIv5748yxakQJQlZSUVkmbhWUf88CSndQpZozTeMmEVYIT5jMcqTqfJf++wnXDpchwars9
	JnQCQYFpO1ksUHhS7UxA85JJXRrGMLslVbE9lddW1vJmKqGvHLcR1ALnqChkg8Qh4RfHPzNj0NdHJ
	QhaM1rrhjqjHDH6EhOzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4LqN-0000000BVo1-0Y9L;
	Tue, 07 May 2024 14:30:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KiS-0000000B9td-1uVw;
	Tue, 07 May 2024 13:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=yH1/bTQF4tqNEopuXyVKo8GK6e/uBCG4/MDvAwTFabA=; b=UEiXM4lKZQ4zO9S8Z9lXG6iXUV
	QAKsktIB5SXSTFPsFdSnsbEUJarMEMcGGvFaOwlJUKyFAXECvyQ8Eu+1v3CL7ho3s00RIkjg3sbCU
	vgS49IwYHLf1fX1iyQOsurtZPFgypscD/oyKG8iVq4qWoDNFuWpeKA212SrqL2CWfE5PFjCHo7n0B
	z/e5WNTKldfME5ZzFmXUAK1U0uMLCUe+x/gIM7aaraS9oQtWzC8wty00w3pKhMTX4NrFE3uPA7bjO
	AjcziU6k2s+lqO+qyz0nChysIhfqdfDH/eo2hxeIjkd+H6fjwR2ZIIa6OKoD8zA13hQwUMgCGHl2p
	DmYvOifw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Khx-000000026Bf-1O8o;
	Tue, 07 May 2024 13:18:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D309961767;
	Tue,  7 May 2024 13:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 517BCC4AF66;
	Tue,  7 May 2024 13:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087889;
	bh=MbjlKvUpIH4Kpzei6mLsDD4DvZW2edzJFxhrN620Y6I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QyzrAp+jGv8reICxRHF5XmxuuEo4fE1L1/C1pmJgdC/KRbPTTqZZFXMaItU/HbCo5
	 e95wvIyhinbV5oiCYaWXOLDBvw6Z8KeXWy0uUGOucNrASf5G02EP2fbNKnHWPPWgxF
	 cFQnD18kMr4epHK3qg6FlbidWb6Buj4J5MHfVeEcr29jS/l3H6fd63QaNwLb+4I8Be
	 dEdzJkDCz2AxsPBzqqK0iyp9eP+TMfBJMh5U1QpelGydFRlCXyjsNkw5eIjzVDygip
	 TpNzgdfV/kaDGFbdeGJG70/c+518CgyR7EGufHbuXakrQa28JOPPGx7lYdJB/nN2gF
	 L2cMpXF9LILhw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 07 May 2024 15:17:27 +0200
Subject: [PATCH v13 09/28] drm/display: hdmi: Add HDMI compute clock helper
MIME-Version: 1.0
Message-Id: <20240507-kms-hdmi-connector-state-v13-9-8fafc5efe8be@kernel.org>
References: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
In-Reply-To: <20240507-kms-hdmi-connector-state-v13-0-8fafc5efe8be@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3352; i=mripard@kernel.org;
 h=from:subject:message-id; bh=MbjlKvUpIH4Kpzei6mLsDD4DvZW2edzJFxhrN620Y6I=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGlWmq//7NI93yb596ai9BTRc2oee3fOF774U56Z63OJ4
 GWbOb3nO6ayMAhzMsiKKbI8kQk7vbx9cZWD/cofMHNYmUCGMHBxCsBEpkxnrBX1CDX8Z1f+zOkT
 8/0LjAlBDOeuFDUxdc/5r1S0KCJE9+2qlcWLZt57ciA0zePFsatLLzPWqZlHqKvlFCeoHtCIDrs
 6oVDxVJGc51r9x9lisvffyTRd/74wN1lu7kbW49u83RgeLYwGAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_141815_449774_4192DD66 
X-CRM114-Status: GOOD (  13.68  )
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

A lot of HDMI drivers have some variation of the formula to calculate
the TMDS character rate from a mode, but few of them actually take all
parameters into account.

Let's create a helper to provide that rate taking all parameters into
account.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/display/drm_hdmi_helper.c | 57 +++++++++++++++++++++++++++++++
 include/drm/display/drm_hdmi_helper.h     |  4 +++
 2 files changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_helper.c b/drivers/gpu/drm/display/drm_hdmi_helper.c
index faf5e9efa7d3..679eb3e81393 100644
--- a/drivers/gpu/drm/display/drm_hdmi_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_helper.c
@@ -193,5 +193,62 @@ void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *frame,
 	}
 
 	frame->itc = conn_state->content_type != DRM_MODE_CONTENT_TYPE_NO_DATA;
 }
 EXPORT_SYMBOL(drm_hdmi_avi_infoframe_content_type);
+
+/**
+ * drm_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
+ * @mode: Display mode to compute the clock for
+ * @bpc: Bits per character
+ * @fmt: Output Pixel Format used
+ *
+ * Returns the TMDS Character Rate for a given mode, bpc count and output format.
+ *
+ * RETURNS:
+ * The TMDS Character Rate, in Hertz, or 0 on error.
+ */
+unsigned long long
+drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+			    unsigned int bpc, enum hdmi_colorspace fmt)
+{
+	unsigned long long clock = mode->clock * 1000ULL;
+	unsigned int vic = drm_match_cea_mode(mode);
+
+	/*
+	 * CTA-861-G Spec, section 5.4 - Color Coding and Quantization
+	 * mandates that VIC 1 always uses 8 bpc.
+	 */
+	if (vic == 1 && bpc != 8)
+		return 0;
+
+	if (fmt == HDMI_COLORSPACE_YUV422) {
+		/*
+		 * HDMI 1.4b Spec, section 6.2.3 - Pixel Encoding Requirements
+		 * specifies that YUV422 is 36-bit only.
+		 */
+		if (bpc != 12)
+			return 0;
+
+		/*
+		 * HDMI 1.0 Spec, section 6.5 - Pixel Encoding
+		 * specifies that YUV422 requires two 12-bits components per
+		 * pixel clock, which is equivalent in our calculation to three
+		 * 8-bits components
+		 */
+		bpc = 8;
+	}
+
+	/*
+	 * HDMI 2.0 Spec, Section 7.1 - YCbCr 4:2:0 Pixel Encoding
+	 * specifies that YUV420 encoding is carried at a TMDS Character Rate
+	 * equal to half the pixel clock rate.
+	 */
+	if (fmt == HDMI_COLORSPACE_YUV420)
+		clock = clock / 2;
+
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		clock = clock * 2;
+
+	return DIV_ROUND_CLOSEST_ULL(clock * bpc, 8);
+}
+EXPORT_SYMBOL(drm_hdmi_compute_mode_clock);
diff --git a/include/drm/display/drm_hdmi_helper.h b/include/drm/display/drm_hdmi_helper.h
index 76d234826e22..57e3b18c15ec 100644
--- a/include/drm/display/drm_hdmi_helper.h
+++ b/include/drm/display/drm_hdmi_helper.h
@@ -22,6 +22,10 @@ drm_hdmi_infoframe_set_hdr_metadata(struct hdmi_drm_infoframe *frame,
 				    const struct drm_connector_state *conn_state);
 
 void drm_hdmi_avi_infoframe_content_type(struct hdmi_avi_infoframe *frame,
 					 const struct drm_connector_state *conn_state);
 
+unsigned long long
+drm_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+			    unsigned int bpc, enum hdmi_colorspace fmt);
+
 #endif

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
