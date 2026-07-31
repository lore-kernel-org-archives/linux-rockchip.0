Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C88C54F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 14:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qjGVKcv8yMwbM5lYA9P2M87Iw9JxrR6KNsww+5MbUE=; b=vGAiiWtHcDW1RX
	ZeuLUes4Vn436YmKhPAONZJdaTGfsmQepAzj/ctc1hpPmHyyLJH4utv1yv0msRanid2of7TajZzgM
	8OirnRy+KYk2u1Gs5JgufwvMmpomLhpzFlzYs9vpKnB3E2AalWVNiEWasl8WFUIe35JTa7nPks+aO
	ojYFaJm7dqM8uBt5/3f3EUrwxxEkPDetz70qcU48i1aKM47oC3W0Xb3LHWO2RLqP9mF7OWW+4/dYd
	ulvi5/oquEIFzvwgOG2szePB0ivsGoVK1qbpGSoa/weQfttxWPsZyuW5ZLXxb0o001FquiI58H1Pm
	K0jQ3STAtCSgQznFqgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoSm-0000000CnMS-0Z6y;
	Fri, 31 Jul 2026 14:43:52 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoRP-0000000Clno-1bnz;
	Fri, 31 Jul 2026 14:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785508930;
	bh=n3IX51tkpkD21CL9ldfkAQVrSezJGEvz0u6xDi+nsPQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lHv9n2hwdRdQoN0Bo/tqsTZlMVvMTTSuOQvSSm5wBb03pfBNBnoaKMO09HQs5A8dJ
	 MZ4Les7Rkbre+soRFK+bg1AWo+rszQJLoHS6iNeCAvvXDANITqmv31sB9tbnr7rkwE
	 7MEsarqOOpwsCa5VSDZs1CPGjYzlkpc3Ft2Zsw4G46LShhbpecaywE1MT8RCQwvLkz
	 Iox7f4iK+vAtiFXcBwVJDi2LXuJ+cOo+/BqbJtskeTWYGnVgIRIakUpkY5fceNYvoF
	 m9iGt2iO3An1yHRf+w/zNA596XpotkCV72+NvCq4aPKq0ze5mMEpLoiYnLtQinfHux
	 1xZm7GbWZF1nA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0749117E093E;
	Fri, 31 Jul 2026 16:42:10 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 18F9F480065; Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 31 Jul 2026 16:42:24 +0200
Subject: [PATCH v8 19/21] drm/bridge: synopsys: dw-dp: Use regmap_set_bits
 in dw_dp_send_sdp
MIME-Version: 1.0
Message-Id: <20260731-synopsys-dw-dp-improvements-v8-19-ac1e6a75782f@collabora.com>
References: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
In-Reply-To: <20260731-synopsys-dw-dp-improvements-v8-0-ac1e6a75782f@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1255;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=n3IX51tkpkD21CL9ldfkAQVrSezJGEvz0u6xDi+nsPQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpstEAmiM7hQO4fCiWUrvhcE6MZZ8yW06xhO
 5kR02XdGvBSKYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqbLRAAAoJENju1/PI
 O/qaWB0P+wVbj2Bigh3YaBXj9ndVlegoqd65W527nQuLfIfUk77oZ3boc5IEACZUUyZP6+L2nO2
 24GjPuchJylG4ZD9q14QppCilHy/MmceXAHZlBLMpZpb+wCqXBcdwmHx1VaN9hi2VoYnByLfjmp
 RCz23aH+jH40O6/rTstUUDQupp01043mtnGRm1lezIIiNxfiFtwU6fXjPnAzjxzNzBQJE21xmHO
 ygHpqzahSg4N6Ns2VTp14X0pIOtaGlgHFRnv3ArHJQ1zy0TNjDLkn9x7Ei46FTr9Zamu1wBddUS
 QBg6juVu1iJg8PJ/KNRdwWDBeWNEjVcwWAfW3QfsYqz6mVFR9QoMd3KJ6nNB6p5qGeX4mFDbSKR
 QZnNrV395ncr9sHCO9XTZeXAe0Em+wfro+cmvR+bS5BN6yd+Y8WWSQGEArBvkU5B/jGoe57teAL
 e3x/uyiWxhg735dnSIgjAmK8Mt7HwcMmkynMbNuAU150UOkRC9AMPsMXy/FyXQz5FYnUFqErsK8
 +CI2t4b2zyPdV3VjbBpLDJz2b+xgrBm6prpNhE3Pe+0s095DjHxxKzO9tPeEw1MKE6CIB9981hn
 yJ+z5BHtSHsugxNOnGDmWV3ULZnCLyWJSv4EY3EUN2fyz1qSh+YExoCRTrDzj3nLmEf7sJjesSY
 gayIny0WuzwW26dS+jKE2eA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_074227_603671_35E85849 
X-CRM114-Status: GOOD (  10.69  )
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

Simplify dw_dp_send_sdp() a little bit by making use of
regmap_set_bits.

No functional change intended.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 9b9c6d7c8cd2..a39007f13a05 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1070,14 +1070,12 @@ static int dw_dp_send_sdp(struct dw_dp *dp, struct dw_dp_sdp *sdp)
 			     FIELD_PREP(SDP_REGS, get_unaligned_le32(payload)));
 
 	if (sdp->flags & DW_DP_SDP_VERTICAL_INTERVAL)
-		regmap_update_bits(dp->regmap, DW_DP_SDP_VERTICAL_CTRL,
-				   EN_VERTICAL_SDP << nr,
-				   EN_VERTICAL_SDP << nr);
+		regmap_set_bits(dp->regmap, DW_DP_SDP_VERTICAL_CTRL,
+				EN_VERTICAL_SDP << nr);
 
 	if (sdp->flags & DW_DP_SDP_HORIZONTAL_INTERVAL)
-		regmap_update_bits(dp->regmap, DW_DP_SDP_HORIZONTAL_CTRL,
-				   EN_HORIZONTAL_SDP << nr,
-				   EN_HORIZONTAL_SDP << nr);
+		regmap_set_bits(dp->regmap, DW_DP_SDP_HORIZONTAL_CTRL,
+				EN_HORIZONTAL_SDP << nr);
 
 	return nr;
 }

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
