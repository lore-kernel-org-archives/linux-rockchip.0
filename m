Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F56BC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 00:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9PwWr9P5GqJHY7c0p/2lCyBGM6ME5ffNk4IpxSrPh4=; b=xGxiqwq5FTaYC5
	s/Ck7vrhnfdT90XoRfUmbSSv8yIpdx2ILokkyGNc0QDwR1AcpCO24rc4WqlC73NiuE/2cOaP7VShl
	e+kuefci42ujKDWMfdD30jL/w86PfbD38dQqGQuj6L/JONFNufqbUuUSHG2plyCDBdNlgrlsVWOZN
	otf2k/zWWMiPByA67DuDLsYL3fbI7q9Y/Cry+zoLwZ10R0qKs+spBeJGeSCAVaHjTskkMS/LPC27S
	FyrykGuASy0seo6DAkeJ+utZbz/nOvNsXb+objGp1rs9ZrAESkky5UZNgZLTTw2zgerumff9ZHxkn
	ypld8Cwj0Tyj3u251pkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrm9A-00000004hb7-3PUy;
	Thu, 06 Aug 2026 00:39:44 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrm8q-00000004glU-3g6R;
	Thu, 06 Aug 2026 00:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785976751;
	bh=/pny3r7ktgDc2Z+IoylC5iAQmlaEL0Yh0JrwtTyx240=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aG64Ov0NQjtVWfmCPFZcPSn5GI40uY0Rw0cmishWEaYkAjoqIB+1E25aclhEab97U
	 00fgG7tGrJO2W+7PtdPuJHycXOPlZBXlraWmC7/JRXULI8u0raIDV/hG0j4eeBURjB
	 qpdS5fKtRnpbbiDOXktXk8IlV/GjqhRzwwkUgl8jVeLCK+A2YkENqwuSxAlERX6u/A
	 NGQ/XqXpasbH3lIegAwuEAPaHvurTnHNLyvbOiF1VwUts8rOeMcUsHWogDuoRgylNh
	 fvTwpXPWMX3HFXtDJ+NeJ5KY0z3yKd6Sb7fL/PPZmYlw6K8e28Z2UADxLjSU6VOflh
	 ftDBvIbuM3MEg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 846B317E084E;
	Thu, 06 Aug 2026 02:39:11 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9E287480061; Thu, 06 Aug 2026 02:39:10 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 06 Aug 2026 02:39:22 +0200
Subject: [PATCH v10 16/21] drm/bridge: synopsys: dw-dp: Protect
 sdp_reg_bank from concurrent access
MIME-Version: 1.0
Message-Id: <20260806-synopsys-dw-dp-improvements-v10-16-d84a26c303d6@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v10-0-d84a26c303d6@collabora.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v10-0-d84a26c303d6@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2378;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=/pny3r7ktgDc2Z+IoylC5iAQmlaEL0Yh0JrwtTyx240=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpz167wZVFaB2j2JT4LQKLFTVJWIbXQdcXOk
 qqJYVWBwAzDtokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqc9euAAoJENju1/PI
 O/qacE4QAIeBECduSDd7RLHt7dZy72CUXmLfxhcAccV9cyo4IA+NxxpwzEYzBepPzLKUlqsVL+f
 z7lAxnNUbGSBlR3wx0oPMYPDY5vsCdCXa5x5HnAqDF6k14WhyoWNlsonC8+bnnM/Yz5YRJVcxav
 SE6HD3YOr5xhR3TPp0gsdMYwo6BcatJLo+zYDk/z/hqy7igM7oxyAmziFuMu5oXgPtj9C3tsq/g
 i6MeT807KiefEeb30tno7sYGVkSxV6LMAUfmBxC1/xDGCLSrrh8G+n//xh529l1/wTJSTP0xZMo
 h/aCnt2b9jon4EAOLHxuLHqnHNWg7c+YjlqiBJz7ed8LcYd1LpCX/rOLKvGkYwLxVZynGwzJXr/
 VvwrI5mp9OjAHlqOgvuGwIkm7CX+DEbymncatH2P7uc+DMnIM8TKczkYCge2PX2xexF7mMDhDYR
 NimiJRRr9/1vWJ9QoU9VYQoqaP79K52MFwB/NyUlxVF3mO53wzgskE7VACjpKd0cVAHXbRCznXU
 7lvniktXVgLkWGvqf2RIKRZAS/k07LACv9qQ9b/DAl6auOD2w9KHRPKfC7jgeraEUUQNnPHFC+3
 z5vKZn7FjlgjgKJW6qyB6tLRVThzX5s0010zKHnEsrgT8WlPo0aHu/HUrXJIj/FXOz0FfBy01/D
 5iMAA1gaxsGjEsE2kG4sygw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_173925_113013_036B2DAC 
X-CRM114-Status: GOOD (  13.03  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Right now sdp_reg_bank is only used during atomic enable/disable and
thus there is no risk of two threads accidently claiming the same bit.

This changes once more SDP users (like audio support) are added, so
introduce a mutex to protect concurrent access to the bitmap.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index b8ba884d04ed..a63fe1fc0969 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -323,6 +323,8 @@ struct dw_dp {
 	struct dw_dp_hotplug hotplug;
 	/* Serialize hpd status access */
 	struct mutex irq_lock;
+	/* Serialize sdp_reg_bank access */
+	struct mutex sdp_lock;
 
 	struct drm_dp_aux aux;
 
@@ -1048,11 +1050,13 @@ static int dw_dp_send_sdp(struct dw_dp *dp, struct dw_dp_sdp *sdp)
 	u32 reg;
 	int i, nr;
 
-	nr = find_first_zero_bit(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
-	if (nr < SDP_REG_BANK_SIZE)
-		set_bit(nr, dp->sdp_reg_bank);
-	else
-		return -EBUSY;
+	scoped_guard(mutex, &dp->sdp_lock) {
+		nr = find_first_zero_bit(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
+		if (nr < SDP_REG_BANK_SIZE)
+			set_bit(nr, dp->sdp_reg_bank);
+		else
+			return -EBUSY;
+	}
 
 	reg = DW_DP_SDP_REGISTER_BANK + nr * 9 * 4;
 
@@ -1708,7 +1712,8 @@ static void dw_dp_bridge_atomic_enable(struct drm_bridge *bridge,
 		return;
 	}
 
-	set_bit(0, dp->sdp_reg_bank);
+	scoped_guard(mutex, &dp->sdp_lock)
+		set_bit(0, dp->sdp_reg_bank);
 
 	ret = dw_dp_link_enable(dp);
 	if (ret < 0) {
@@ -1752,7 +1757,8 @@ static void dw_dp_bridge_atomic_disable(struct drm_bridge *bridge,
 
 	dw_dp_video_disable(dp);
 	dw_dp_link_disable(dp);
-	bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
+	scoped_guard(mutex, &dp->sdp_lock)
+		bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
 	dw_dp_reset(dp);
 	pm_runtime_put_autosuspend(dp->dev);
 }
@@ -2229,6 +2235,10 @@ int dw_dp_probe(struct dw_dp *dp)
 	if (ret)
 		return ret;
 
+	ret = devm_mutex_init(dev, &dp->sdp_lock);
+	if (ret)
+		return ret;
+
 	res = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(res))
 		return PTR_ERR(res);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
