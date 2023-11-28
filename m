Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36D59C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCMLU0wOc0zFLDX8hBgAKfim9UXJtnKUxfnXQGdT6ZU=; b=3gbAw+h47bAtqZ
	FDauz92K9G0355LPEdey2TtY67GmcfhZRGGUQFLreJ4vioeSBLW4qL5bbG0eltJqZIJyNSAHUaDnM
	j7uLWZS2GspeR7I1RQ6zpuFKiXPBhp8mvviuzx5myy/iF4rnsGTRdqdN32+Whbfb4Ai6qkeTfIY3C
	+yBk3dQ2NjtRnXBzkvZJDQvUEzoKUDx14GwANTBYrTzfKPizT9qfk9KlsdfEzT7HXcdadcHdNDuNu
	ePS3bqyaG2voCYJ71ww1LMLVkftzrBX/Eaj6tjIzsIMqDtIIzJuCw+Z56qyYV15aPlNdxELSqm5dj
	NswX2YXNouaorFXbeJdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vJ9-004txc-0a;
	Tue, 28 Nov 2023 10:27:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vI5-004sj1-0E;
	Tue, 28 Nov 2023 10:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=p0S+1JCbHRBjf4KEMC1MhYa37tQLdP/h0qOmTVSb2zU=; b=EUMjRHgIe4/zhpdHHnhhTjeoq5
	oUOMTN2/nzJa7lDWpfPQBq2ab1S6i86xV+TWk0yt8V3N7d5nnSDh6YZPwzHmoyHMrOyQJWNgd0+uY
	D3CIT1qf67ifA8YjRDa2hqonVuMi/u2sCFVt409mzjDUbEHwZqYSFS8ZXxfAbcwcKYh1y1lifrzux
	bU01OcAgy2j/Hk3ldcETI2kUMeGW+hVL4vwtR+4R1yze4G8KY9NOCedEvfcCbYSYkdDX7cx27I24E
	RpWEmimLv0zfma7uHaACZIqUKvr4d6vV8JRlb+grxqr43M8/BKCW1xi55/A3XkgQSbwvrKS1m9vQB
	ql1LG48Q==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vI0-00GaOl-1K;
	Tue, 28 Nov 2023 10:26:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id A7572B8397F;
	Tue, 28 Nov 2023 10:25:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD6D5C433C7;
	Tue, 28 Nov 2023 10:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167157;
	bh=+5JYn8V0UryLv4NGrPj7TOsjDrccf86rOvDhC/BodNA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WXFJdbm6sZrcrZ7Z60m0NuYAnLiW84TfAfdil4M/s1OPHVhSmuzwGlKSMixqKGVaB
	 g7hsqgVZqiWR8PoGzv2AppoJ7xqJNmJEyHAoV2rv0UTdYxpp2vkhcMAid73uhcGYlA
	 ww9ZkG9Iu/7DHO9bvQAxNL7eobSGixOdNyVvAIEeYct6uz9AOc4cEw+uSkDGdA512e
	 Y0QAcRyELQyM2rOswS6Ny3xkV7VvsTb54VqZMzW4dtFO0BpPT4ZnHN7bcYF8zp1SPU
	 qSTr47YozWL0d4TeuTlbl7L813B8G8d0vC+RTUUHP5qLPsGtAfgJINWMsp+IRd9SuV
	 jfPmimSXGx+8Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:44 +0100
Subject: [PATCH v4 33/45] drm/rockchip: inno_hdmi: Remove tmds rate from
 structure
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-33-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2323; i=mripard@kernel.org;
 h=from:subject:message-id; bh=+5JYn8V0UryLv4NGrPj7TOsjDrccf86rOvDhC/BodNA=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y/dn8kl1bzD/ZzCohaDT6V66247rr39SuhU/pZvg
 aJyvNxfOkpZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjCR92EM/yvWu3p/8vBU6Jw+
 d8mjK3W8r/dbqZbM2DLhf/AC7oIfW9UY/mcvSErKjc1q6byWprGsw2Xv8qc2+2RFpvDUv2eWtbs
 znw8A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102600_701088_2F344915 
X-CRM114-Status: GOOD (  12.95  )
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
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
