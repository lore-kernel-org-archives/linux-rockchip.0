Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5CF1C10DC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjPMaBzazFLTnT1TIi/Wv3TUC3dXuCfdzKYC1YoQzFY=; b=UADiId9mx+JAyT
	cxWlvyGCn1Lny1U5/4JHWu1rq1LfxDqNRj8uT0TAJQDmvJdrl7uQVrAIcHUdoyykbzjpK1bOp+KxT
	t3Ct05k3vqQf+T8L0Uhz11XSetJrLXRrNE2a+ngpIjFetxIhcOBnDAiHccMDbD+KtZg2QsEGALC6y
	lRYiKE1ODdPtjD4n4eXuRgTXo+TYR6QQKzPHTC8+Eb1cOl3I/p9rTN0niWxrnqig24ypZK79Pcy+C
	vkGpg1Vw7IWvoI9oPEuAfxXiUVUlsK1bLbIHe0vZdAnQNAsIAdui4u8JT4TFf/eAWlzwqlc5e9/9c
	ZTrGPN3E7D2uG8pXYWeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIw-004tha-1l;
	Tue, 28 Nov 2023 10:26:58 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHt-004sY7-2N;
	Tue, 28 Nov 2023 10:26:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 2E91EB839FC;
	Tue, 28 Nov 2023 10:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3045BC433CB;
	Tue, 28 Nov 2023 10:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167151;
	bh=XYcftkSLjd/7MG53JZE43R8v3MnE5w+0sf3V4jSByaM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BvCgIlidubEErhDB077O2nB/RqbBLQodAsy+8igR0K3DD+mWaAeF580o+wf3eeXvy
	 BmQClUznVHa+DYsOWuqtzbNFzLqfLMwirSvFnh4TbCTCwTmEtXv39XmnBhC6mqFcYv
	 uDDSsHKUUMDukGlk2P0fKo2ji0LbWwXfAyFgbkJ2KIdXX8iqFzn3fKg/BQBfnn0DgZ
	 vMyG6FH0RxV3ZFVLUh7djyvFo+jH22ZSOMKsJmTwMFR0+o0DffCosIoP20mtx+3Osg
	 J5FynXFdjzmxKDpSx0BEzVXKlgniMI7klmQzaVWHPC+P2IOwT9ICfhNnWoQD9N6lxu
	 U604w87npq5VQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:42 +0100
Subject: [PATCH v4 31/45] drm/rockchip: inno_hdmi: Remove useless
 colorimetry
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-31-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542; i=mripard@kernel.org;
 h=from:subject:message-id; bh=XYcftkSLjd/7MG53JZE43R8v3MnE5w+0sf3V4jSByaM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y/ZCqg/f8q9pN0rTk9129fHczoOWu+ymhmi80gt+
 xhfgNTEjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEzEt5yR4fz7C99L9jqni+7K
 +eTw5cVSR9dT8o1mzvMNPipsP7g605XhfyR3pMd650cvZrEtuXNvXxiLY8xbgzNzKi9HrnlkLt2
 TywoA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022554_077571_EEA2FF9F 
X-CRM114-Status: GOOD (  10.65  )
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

The colorimetry field of hdmi_data_info is not used anywhere so we can
get rid of it. This was the last field left in that structure so we can
get rid of it too.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 0c6c550e0ce7..c342bc8b3a23 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -27,10 +27,6 @@
 
 #include "inno_hdmi.h"
 
-struct hdmi_data_info {
-	unsigned int colorimetry;
-};
-
 struct inno_hdmi_i2c {
 	struct i2c_adapter adap;
 
@@ -56,8 +52,6 @@ struct inno_hdmi {
 	struct i2c_adapter *ddc;
 
 	unsigned int tmds_rate;
-
-	struct hdmi_data_info	hdmi_data;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -380,15 +374,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-	u8 vic = drm_match_cea_mode(mode);
-
-	if ((vic == 6) || (vic == 7) ||
-	    (vic == 21) || (vic == 22) ||
-	    (vic == 2) || (vic == 3) ||
-	    (vic == 17) || (vic == 18))
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
