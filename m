Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FB7C00523
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Sep 2023 14:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFThrJsSBpY/wr9k4PMIXAwEE6wwdJVwYnTY8gp6ijk=; b=pyRRcLjMWmmGFC
	+mYuxauw0tiycKDsGIfgYDoHOgtLAwYNlDEVhuqLzy7aU38+rRLEoQxmQRqk7LjzuBcIIgGDJaVwF
	R0KGi5rlqa0XPhcUWQfJWXAqh0+T8aZ/1Ao69PI0aMytTx0Oua8+iabc72zFLRJUKvQpTZvJ+npRQ
	y1/fbhC8oCUKElaga7ric0GXNwMUEmRnmyv+iY/Ps8ch2BQMBwGiH7lnbmREkRmAFWrQ+U8ZH9KE0
	BblxUbihp+6v7j0yumgwhjMBneuY5SuJi8gZk64nTNJehzpBNYDGg+0yhOvNruHCRG7uMHqTUeMs+
	ENsQ/rOOJ6pERsJksb/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyKZ-003MVp-2M;
	Wed, 20 Sep 2023 14:37:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyJi-003Lbr-2W;
	Wed, 20 Sep 2023 14:36:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3A5A861CD2;
	Wed, 20 Sep 2023 14:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C16DC433CB;
	Wed, 20 Sep 2023 14:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695220596;
	bh=fuZjkFl/jqhwO48bmKJwJvIB0H4MjJa9mxi0LwhfDmM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=PBCmUUVD4phyz8ZtxdO8mxzkohSSj2HpK6SL/ZSBMiuhwEj6HYNeiz4wza1P7IrE3
	 V8HJidQBlt9MDmzxpIgsvXn6h10vEGA3JURZqYuzS4crUjIwSp2Z56gYGvO7jpCs+J
	 OydUXYW8Dp1yAb/diIRO+FQfUVdsnKKrxoYj3R7B85VWgIsPnGqeQ8aNYWFXjCzGFt
	 Dv8OvXrQVsp71v/vkh0EcLJXOWfVj9ALkgHH9Qm4/rHaFLOMm39/JJdkmR+Bnm0LDh
	 fI40x0S0h44RTovcVj21QMnuV7OTyKaqNO8WOuZr4VeuQJvTMilAFPSH4GZNYyaNdL
	 bCBJD02oRvtyw==
From: Maxime Ripard <mripard@kernel.org>
Date: Wed, 20 Sep 2023 16:35:34 +0200
Subject: [PATCH RFC v2 19/37] drm/rockchip: inno_hdmi: no need to store vic
MIME-Version: 1.0
Message-Id: <20230920-kms-hdmi-connector-state-v2-19-17932daddd7d@kernel.org>
References: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
In-Reply-To: <20230920-kms-hdmi-connector-state-v2-0-17932daddd7d@kernel.org>
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
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnczFZnP6ZX7pe40nJCaRn7GtOmTa4rdmw1To2f4Jj38
 7DN3l0PO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjARvgcMfziOqd9wYGjz3bBr
 ph63RoIy+4fVU7xjaqUeh4Q/c2r/rcHIsPVk2KPZu6Ktdx76s5P5Ccd2c52dM2awq8UbssVVbJp
 VwAcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_073638_932457_4758D00F 
X-CRM114-Status: GOOD (  13.07  )
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
