Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E945C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6zKk/kamIhVFv2z3VbRAB5qMgZ/+OFhjnO0sV59EZ8=; b=49eA7HjhhGJGW/
	vihnjfpfYpMlK/kddTk86wmRmuaHfzQqiwN0CALC0SwnuMlXo5lSQ8Pq3tZG0AWlQK1N22HB3iKdz
	wyFWjsuf78POKSHlc+wpKJFQrglz/U/G2enpEciQw/IMN++7QMgKhZukAw7Uw83lJ/WBKWDL4bBgN
	LZ2dZeTmlnrgeULwmrKRIYEJjdBg+iOoYJSoyrYBwnIX1wAehvr9VLamya6DWi85RH6cY4tOKoq8L
	G5LpJMvw13yI4AEsMSXCkkhj/spbQ7Vuzh+mb3LlxIZBytXK5//Tr+xcZSIhpJJ8Br7jlUJfi/e8y
	7HGJo/iy8BTDiqVokVRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfq-00DJ17-0H;
	Thu, 07 Dec 2023 15:52:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGea-00DHeT-0C;
	Thu, 07 Dec 2023 15:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jg3Wn0BPnAIG4CBxN8nS1uZZ4GrqqGc3nWoEFfOcqqU=; b=GfaheRQdopNdlMupkt/lX1XzGg
	mAqnrhVeEzqgzOdBaphrUxcsnfvSLWBQ6Vj7TtoEQGG9uoVJuqZCeEAaEcDb6EvjynjYXLPNdF+r7
	zvmciyz00tsXbPGTo8uXQZxlq+ejFUaHNREwhpuuzUrHKc/tWvJLl9kgJOumGEPkwLAOI7sRLJH1G
	KZSYdxaMANwAPxiwAMuRza4A7yZwI69L2JvA2IjcRqTcpzDWYwjLAGo4NX5v9ZktHrxMEPcVol0t8
	hWBI1OAGrdAemUx1FlG+fLnGAWXPx40i3oq2zSenp4GofW1851O4YGTOW8/IDBX341VcvBpOShhlN
	Q/qLjF9Q==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeW-0062cs-2v;
	Thu, 07 Dec 2023 15:51:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3AD89B82434;
	Thu,  7 Dec 2023 15:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 884EDC43140;
	Thu,  7 Dec 2023 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964262;
	bh=Km69nVpnUP64b8Kzk0NTIbgVieEwtlfBTD9lTbvMXp0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kMkWra5LfMebFjlim7OiMi9DpfITxL7WUX3rB+xw5xNhiGNE5gdieGC8N3DOGiPlS
	 5hFm5y/xKDSkJWTb+z+8SbmC+y1qBobBLX6n1VR12m3VwiPYz3D/qYWn8V1Liq4VOr
	 D/0EZnAfkEsbtIijpnWMSs4OM2vxizDPnI2siT+lW/JyxDdnMpJognErL2z6loLgTn
	 nvSLQuFoWiB7M6bFI5Rln0daFzKaDtkUutze9NPi9dxI+SW+t8ezDJ96QextGrrdx7
	 h9dMFFnMXEXajuR0z9pV50HKRk6hKWutTEqocf68KGusofCvS9VrO0j9SYtNvRD8Ah
	 pOUPek4CX669w==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:55 +0100
Subject: [PATCH v5 32/44] drm/rockchip: inno_hdmi: Remove tmds rate from
 structure
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-32-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2323; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Km69nVpnUP64b8Kzk0NTIbgVieEwtlfBTD9lTbvMXp0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9vmSnYUT/JkiauJfT/nQAKPxkrRjRcmBfO6X7wq/
 EkzImBdRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACbidIfhnwbzjnWWL1NvXzEK
 6lEUvrHhSNe50Jfhrz4t2Kr419mhdQ0jQ+95QfOY2MK4iI6a+88femUlTl748S1/2vtdaVdX8dd
 0sQEA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155105_106807_6CB4897D 
X-CRM114-Status: GOOD (  12.73  )
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

The tmds_rate field in the inno_hdmi structure is used mostly to
configure the internal i2c controller divider through a call to the
inno_hdmi_i2c_init() function.

We can simply make that rate an argument to that function, which also
removes a workaround to initialize the divider at probe time when we
don't have a mode yet.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f05417c6b637..35f44e556fcf 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -50,8 +50,6 @@ struct inno_hdmi {
 
 	struct inno_hdmi_i2c *i2c;
 	struct i2c_adapter *ddc;
-
-	unsigned int tmds_rate;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -155,11 +153,11 @@ static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
 	hdmi_writeb(hdmi, offset, temp);
 }
 
-static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi)
+static void inno_hdmi_i2c_init(struct inno_hdmi *hdmi, unsigned long long rate)
 {
-	int ddc_bus_freq;
+	unsigned long long ddc_bus_freq = rate >> 2;
 
-	ddc_bus_freq = (hdmi->tmds_rate >> 2) / HDMI_SCL_RATE;
+	do_div(ddc_bus_freq, HDMI_SCL_RATE);
 
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_L, ddc_bus_freq & 0xFF);
 	hdmi_writeb(hdmi, DDC_BUS_FREQ_H, (ddc_bus_freq >> 8) & 0xFF);
@@ -389,8 +387,7 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 	 * DCLK_LCDC, so we need to init the TMDS rate to mode pixel
 	 * clock rate, and reconfigure the DDC clock.
 	 */
-	hdmi->tmds_rate = mode->clock * 1000;
-	inno_hdmi_i2c_init(hdmi);
+	inno_hdmi_i2c_init(hdmi, mode->clock * 1000);
 
 	/* Unmute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
@@ -768,8 +765,7 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 	 * PCLK_HDMI, so we need to init the TMDS rate to PCLK rate,
 	 * and reconfigure the DDC clock.
 	 */
-	hdmi->tmds_rate = clk_get_rate(hdmi->pclk);
-	inno_hdmi_i2c_init(hdmi);
+	inno_hdmi_i2c_init(hdmi, clk_get_rate(hdmi->pclk));
 
 	ret = inno_hdmi_register(drm, hdmi);
 	if (ret)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
