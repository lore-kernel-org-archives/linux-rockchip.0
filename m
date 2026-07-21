Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9E22C44539
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 17:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXzcMo6ZBRwBaHP9DWrs3VyrRjC3DWLQXvneAdjz1is=; b=FeiZOvTkdpFBt5
	xo1QpfAG40WVetRjfLntUlQk4ETqKd7QsAIgdP7eDfN9rRqHvbD6FhsCrwe8536nPoedd4cpkMCoA
	3J5d9QlLFH3AAimhCw+PEkmUXjIjjeCKbnJpb1+wACqtmqp7I+sFqG/gfIna17jp89K/p8DyNbxwY
	zgAWJswpafGU5jahv0JKW0vA79lxd/1TP0h3aTWnrKG4h0S5MRjPx609T+gCOK+11xL8gvE+p7b4a
	PWDo/hrMX1ZecbjMkbuWcfeINOC80cYY9q1/+NFDMUpeRdvm7ssvmqX7hVjfSnpNXSfGhOqzu+nfD
	prqqUumRJVha9WZMB4zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmEeC-0000000A6z5-0QHx;
	Tue, 21 Jul 2026 17:52:52 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmEe1-0000000A6pe-1Aav;
	Tue, 21 Jul 2026 17:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784656358;
	bh=oiWWXRm0/cQ/tnB5PbRJ+mS8OTFZDOErXBKz7hNNENs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H5bAbQvewlB4XdutPGbj6v8Dr3pN62frIKGpnVKcOpZXrre9fpvszlLZI2pF1I7GD
	 vqgLlkVhQnBW0G1LOwbpkpP6nUpe+6gRJprAOe4L4eOkNcH8eEVfqKzWezAkODr+03
	 zev7ByXxzR53mS8MME++MWfjHfz1HQTNdtm6i9VoIHiXwQtDLEbWaAEMNV5LBFimOU
	 feaJEE9cqIuP9WiUAJyqj+oXShHJK97PYlll424S4Q+jeRMSQZ7HlwenrvaI1WOcLZ
	 vmOa43D1W8J0ugbt6vR/juA/z4+8lCkbr/9500y4fbum/a08L/zKZat9sgBN6L83Vv
	 p0OTCSH8libYQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E210917E0FD2;
	Tue, 21 Jul 2026 19:52:37 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 966E748002C; Tue, 21 Jul 2026 19:52:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 21 Jul 2026 19:52:32 +0200
Subject: [PATCH v4 02/10] drm/bridge: synopsys: dw-dp: Support
 MEDIA_BUS_FMT_FIXED
MIME-Version: 1.0
Message-Id: <20260721-synopsys-dw-dp-improvements-v4-2-f0f4a4ede712@collabora.com>
References: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
In-Reply-To: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1544;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=oiWWXRm0/cQ/tnB5PbRJ+mS8OTFZDOErXBKz7hNNENs=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpfseWaZo8u4YM2fcGoridEgdNIEiwuvkpuW
 7qpmL+Fr0D/aokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqX7HlAAoJENju1/PI
 O/qa6dYP/ifbvNSK+yxLY4zkGyIr/SbYIGC3zGQmLlpTPrmaxm1F/+iN6leUD9VYQumBG4zJt8i
 t6I/C9H3TvZgFbE3iEC6PxP2LwPw5wUJJlkSfmbR0HEmpeIZqcDpT+mB90BnuAtihlUuzo1ewzA
 +mPE8tsXvyWBE/Zob6hhimfZTRSsyaAotMb6DQNq3E4upaduciBUCEaO8+MdxrFeekhWezJQU4E
 SW7xXJAj8SCxogvIzgB4wlsAhZMV8/SSiWaNSfeuAW9W8E8cW8C27TgGDOUCU+PsphCsUIy7Unz
 USs4PhA2ggY+iabsEH+aR1+WP0x01G69wQg7snBr8QEbAkXFgpZhbuGh6RF6Ye1B7HN5sqtHp1o
 b9ogXebJiAAP4i5xDmW2dox+8FDEmdMGzfZ2Fzj4iUMJfcrTr9hLrgktGx6KXnt93bVly8VKp0z
 vNxZBrd/3ykGyA4WM/4cLDrqyaBrkLlRux1Qh8rCKeKG7O97rgd55owO06bdO8L0s4DBHD0+bC8
 ITRzrzO1eM+ElpKnBMc3kSt9BIby9qJCEEPG7V5VZmS53+aGN1hxnAV3UySRPY4e0j8ms7zHaD2
 J8HqPB5LMw4xmpKjcCoWN8Pn1bw6Py/W57Ar8ez3652NncpS+JNqAEALlPPLGvvRXrwuv/HI3za
 TASCKJSP3MWU0mrsD4UwxEw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_105241_492363_4C9345D0 
X-CRM114-Status: GOOD (  13.32  )
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

Add support for MEDIA_BUS_FMT_FIXED, which is e.g. requested for USB-C
DP chains as the last bridge in the chain (aux-hpd-bridge) does not
implement atomic_get_output_bus_fmts(), which results in the generic
drm_atomic_bridge_chain_select_bus_fmts() code using MEDIA_BUS_FMT_FIXED
instead.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 368e1f85e625..aca6816febe6 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1528,6 +1528,7 @@ static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
 				     struct drm_connector_state *conn_state)
 {
 	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
+	unsigned int out_bus_format = bridge_state->output_bus_cfg.format;
 	struct dw_dp *dp = bridge_to_dp(bridge);
 	struct dw_dp_bridge_state *state;
 	const struct dw_dp_output_format *fmt;
@@ -1538,7 +1539,10 @@ static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
 	state = to_dw_dp_bridge_state(bridge_state);
 	mode = &state->mode;
 
-	fmt = dw_dp_get_output_format(bridge_state->output_bus_cfg.format);
+	if (out_bus_format == MEDIA_BUS_FMT_FIXED)
+		out_bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+
+	fmt = dw_dp_get_output_format(out_bus_format);
 	if (!fmt)
 		return -EINVAL;
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
