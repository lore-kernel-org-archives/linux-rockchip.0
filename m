Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D42EFC54F54
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 17:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evsY+B/ezgADAgAiTdsWwGeKB2C3jjrikAI1L7fj6Dg=; b=POUgzennZKTUC1
	ORx9cniLOykDcPCajeHmNUC4xhPhu7k9OQHztmn5sp6YWktTjFjtxK/SxvQAMVA5qMNWn9tqUkEWr
	x1XwX+vJX6OVy0HD3vCPmA5GNrcCcgLXpQfxlMaiqC7Kv+D+SGzw6E8EkeFEAgjRNMSnyR7F7bwcB
	x9sDD0BrJuxkF2w9g8B3qf4bKprmskR0O7ixLGnYSPY02tqv9fd4Vqfv5ID87Y1l2w7SokFa4az33
	+YtAdwOWWwa8Sa1ge5FMKPVeWfKvNJXdWQkFRfsJm5pihmzY281Hl+HNW0CUueDIhPdgJlafme4rt
	1d0AsfwKPyrqaaWAC5gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolsO-000000061pA-2bGN;
	Tue, 28 Jul 2026 17:46:00 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolsL-000000061nB-3wmY;
	Tue, 28 Jul 2026 17:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785260755;
	bh=xx2ceQmEUbIedwsjjbjRenF93i96lCbY3WSb7wtpe/k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MLiKDsLfVUHaqH04VuEbrLsuogJm+icQZggr2kp73tZFXic4VW6ENoGIhJbclInKs
	 PxMy/3KBQ/27kKKd6J6zmUucHR3motgvoIBDjtidGmv5eSb/hPv/Q1G6NutF24K9gM
	 hL5qUZnYwNTMYG0HnANnNSamSXOcB8EYCLXUtxDXufq9ikcJiPZa/7WrRTwCarq5Uu
	 +xliEwMzq8A7Tu61++DIu4/Q5GSGxjipz5dgrVtES0ZXYZKKj0PwZ68i1fTcC9CUEf
	 S1uXZncQjowz3MzyobiDkaKp02/59lGE6hwD280pm/YuyrdV0KyJUS8kueQ/fjZaco
	 UOQFfebqgrBiA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AEBC117E0055;
	Tue, 28 Jul 2026 19:45:55 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 22E72480062; Tue, 28 Jul 2026 19:40:46 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Jul 2026 19:40:53 +0200
Subject: [PATCH v7 17/18] drm/bridge: synopsys: dw-dp: Clear only enabled
 SDPs on atomic disable
MIME-Version: 1.0
Message-Id: <20260728-synopsys-dw-dp-improvements-v7-17-b7640fa8cf48@collabora.com>
References: <20260728-synopsys-dw-dp-improvements-v7-0-b7640fa8cf48@collabora.com>
In-Reply-To: <20260728-synopsys-dw-dp-improvements-v7-0-b7640fa8cf48@collabora.com>
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
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2923;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=xx2ceQmEUbIedwsjjbjRenF93i96lCbY3WSb7wtpe/k=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpo6Z2TH9QEE5IGgxdn2lcYgPGBGBf08gCki
 skZKuJPIDbIpIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqaOmdAAoJENju1/PI
 O/qa+tQP/j49CBJZazsEA66kEeViFH0deAbEoQPJyHrmxS473n0LcmIkiclGWOxgkxNKHs656pb
 MHcHUWwH83mJdlxOdZpFY4QKMIUByUhB1HMHGzqvmJ9OJ/m6s5UfKWk5rP3f2TVUF7u1TBCtDfh
 FKBjtp/48EzA/XZ7ALG2w7Lj+C8jRBnW7J1KY8GBy4k5vvnp0JKoC/Iij07dh1p4HRQGQ8mujmA
 ffJZAKRQUfqwA7KPRRgJbOaLbMllR3EhXc4nsBcz/h/d97IWgWMcgt84fOAb0/f4TdwZWY65xev
 eJjIHmLZUSkvtOPfmPvOJYNAnmvjjWOQ3oAHL9uygnZFLf+95AHctVBPtfajrsZ2dnZD8cC+VZG
 S4JIumsZdyHoLvigWa08+CWMqyVyI/0fFBkRyYybWR3k5xO4Iy9r3ButTrVKEjxmaDlJibh9j/a
 FXCWK8PLeMQGrOxPy5405xpcfrstdDuc+flvTCAjACdPXG+p+w82z7lc1BgBIkwc7mSEqCRJNZM
 XUQ00tPH9fcOUyQje60xtjF/8rpJkdGRflL0r2fjOfsS8rrJbhbF1MGhdxdM9o3chbeteW6Fw7X
 c65g9EHGijqyB2C+jo4W8K6wbG6fWCMybIaea3+E6rqP6KKXHRWw8bjWMFbYwbcaAf5B9PzUgMS
 AlMFjfIVKh4fxKXDuyooyJg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_104558_154090_D7BF6E8E 
X-CRM114-Status: GOOD (  14.09  )
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

dw_dp_bridge_atomic_disable() bulk-cleared the whole SDP register bank
allocation bitmap via bitmap_zero() resulting in the loss of all
tracking information. This results in a slot potentially being handed
out again by dw_dp_send_sdp(), which is still considered to be held
by the previous owner. Then the previous owner might free up the wrong
SDP later on.

Instead of bulk clearing the tracking information, the new
implementation only clears the SDPs actually configured during
dw_dp_bridge_atomic_enable() instead of the entire bank. The
introduced functionality for that will also be used by the to-be-added
audio infrastructure.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index fcee47c6716a..c0026bd4c7b5 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -336,6 +336,7 @@ struct dw_dp {
 
 	struct drm_bridge *next_bridge;
 
+	int vsc_sdp_nr;
 	DECLARE_BITMAP(sdp_reg_bank, SDP_REG_BANK_SIZE);
 };
 
@@ -1075,7 +1076,19 @@ static int dw_dp_send_sdp(struct dw_dp *dp, struct dw_dp_sdp *sdp)
 		regmap_set_bits(dp->regmap, DW_DP_SDP_HORIZONTAL_CTRL,
 				EN_HORIZONTAL_SDP << nr);
 
-	return 0;
+	return nr;
+}
+
+static void dw_dp_clear_sdp(struct dw_dp *dp, int nr)
+{
+	regmap_clear_bits(dp->regmap, DW_DP_SDP_VERTICAL_CTRL,
+			  EN_VERTICAL_SDP << nr);
+
+	regmap_clear_bits(dp->regmap, DW_DP_SDP_HORIZONTAL_CTRL,
+			  EN_HORIZONTAL_SDP << nr);
+
+	scoped_guard(mutex, &dp->sdp_lock)
+		clear_bit(nr, dp->sdp_reg_bank);
 }
 
 static int dw_dp_send_vsc_sdp(struct dw_dp *dp)
@@ -1393,7 +1406,7 @@ static int dw_dp_video_enable(struct dw_dp *dp)
 			   FIELD_PREP(VIDEO_STREAM_ENABLE, 1));
 
 	if (dw_dp_video_need_vsc_sdp(dp))
-		dw_dp_send_vsc_sdp(dp);
+		dp->vsc_sdp_nr = dw_dp_send_vsc_sdp(dp);
 
 	return 0;
 }
@@ -1738,8 +1751,14 @@ static void dw_dp_bridge_atomic_disable(struct drm_bridge *bridge,
 
 	dw_dp_video_disable(dp);
 	dw_dp_link_disable(dp);
+
+	if (dp->vsc_sdp_nr >= 0) {
+		dw_dp_clear_sdp(dp, dp->vsc_sdp_nr);
+		dp->vsc_sdp_nr = -1;
+	}
 	scoped_guard(mutex, &dp->sdp_lock)
-		bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
+		clear_bit(0, dp->sdp_reg_bank);
+
 	dw_dp_reset(dp);
 	pm_runtime_put_autosuspend(dp->dev);
 }
@@ -2191,6 +2210,8 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
 	dp->plat_data.data = plat_data->data;
 	dp->plat_data.max_link_rate = plat_data->max_link_rate;
 
+	dp->vsc_sdp_nr = -1;
+
 	bridge = &dp->bridge;
 	bridge->of_node = dev->of_node;
 	bridge->ops = DRM_BRIDGE_OP_DETECT | DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_HPD;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
