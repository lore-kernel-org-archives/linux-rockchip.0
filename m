Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02F8FC53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/znptNOMvDEM83Z6NkyC7UTJGrg+72HY4md8qFfOLc=; b=L08fj/uP3UKkF0
	33Fist1Jb/2616U1ugIXrfSsogfjv37LId0m97kd0KHi/nJPWg4p5X2wUXa1A0UK+DyxPJAu/8Hi0
	VK2O1l2nqmnX7mwJHUgVBIyTBzE1ajrtBgs6s3OitcqbIoN8S1fB7r8uQnbOUPCRnfo39gAJv4bmr
	+AAxv/2VGWpwFt9zgyyG7vckY4DFCjtgR/ry7zhyyJJbBSNVz7CUYPVoqdNcqgyCFghRblOWsgADG
	U9xE7BJWB+LehHnivrheqh+6Pj+J0SC13DZV1TwJa/3TK83hvJ7y17QVBP8AEtMzCyfgWAYSO5FHw
	aFmS+U9WAHkSDNH8yTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolnu-00000005zQd-38YJ;
	Tue, 28 Jul 2026 17:41:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wolnR-00000005z2j-4AeI;
	Tue, 28 Jul 2026 17:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785260446;
	bh=eiHbGZC/P9XkiRI28/xkqRUSq2InYi/4+hfl52mIH2Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=G9qGVhKneeDyu6liuvjKzU/PzIrnbzGMypcKcYL3e4Cd7JXqwscsyk6tKFos3p7br
	 EPQMdDK1pCpll1om5QmpMbEhWVxgle4hhQ6/fxjwgcqavmUGj3+0WCslmpJuHyx23p
	 ZU+RLxAhZoRzf7APlZLH75e6EXJjNGqVY5dboAp9BvQCqPQxlOMdWmQ256bad6ieK8
	 hEctl8Fhzc9mCwIHM/Kk6J9WVr9yLhg9uolwNZ0LuleZl8sY3DjQ3vBbbUyDO1TFyt
	 LB3qSBe0u5yxdGmrRbLadONSlhudk+qkVvD6k8fcBhtUTuCLKpFjvoEFTItaT/+AWC
	 Xm8Ns9daAxs3Q==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A785517E0739;
	Tue, 28 Jul 2026 19:40:46 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 10FEA480031; Tue, 28 Jul 2026 19:40:46 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Jul 2026 19:40:41 +0200
Subject: [PATCH v7 05/18] drm/bridge: synopsys: dw-dp: Reset AUX channel on
 transfer timeout
MIME-Version: 1.0
Message-Id: <20260728-synopsys-dw-dp-improvements-v7-5-b7640fa8cf48@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1517;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=eiHbGZC/P9XkiRI28/xkqRUSq2InYi/4+hfl52mIH2Y=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpo6Z3v9APPH1sA3rP3N/t1ILUDSzolOtgwa
 sYCJi2Cc+CGbokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqaOmdAAoJENju1/PI
 O/qaVzcP/iFaDaK1V0Nbo+DS5xGD3WenxNQhQAjjP3XnTUsLCajOCpjkeFnE62pOKlavMMyrwir
 /CJy8a10AFKesPxdsFgBYpqXZD2dhuGGpst94yA6nyIj+VHBmHOY1euAfypoYBxR0xeuW+U2K1c
 XF4Lu8MiWoyruMqFYGy6DQGqWMU5Qb/gKT+ExO3aYC13JHjYLVvcslVntkr9S0pWui2eg/F3jl3
 1ZXjGkndP+BXLpCrasnYWikZSUv6/tr8ScLN3xE17puovNRegpPA3NZ0n8mgsdhghaBCfAoAprB
 8Ss9lT4gZA3hRKMCWQvnir6+S/2URLyui9SwaKhClurOZuq6mTxYBrYqFvnOlX8B0WhCrzgfzUJ
 mdiY6w7FQKWtJWGX3yPPsMtQ5vP/2Er3pIE8/0eYVuvUxk0f291N98u7UBjp5ZswHDL1Xlv00V5
 w2Z7Ytc88IQ83v3WByj7HAxAEHkTXJiUo2GYS6Io+uRtCx7pi95oxNsp9EiuNxUL0O3cFYTUjrk
 NmSQ7t2cNdOLJ0hy8hfadLduO6ycDvCBqNQJGS7RA98Mw/ob8cmWqd53sC2Ah8Yhga2Er3fLHo2
 UaBdJQZZycPt200cDy7y1UQ+QTLKGQDxfuhQ6raakmj4gfWS3aRaWg5fpe23GJHL1nIPjMiQ6yW
 9KX469RXcIKxS7hfhYUkvqA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_104054_192290_9C483D45 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Sashiko <sashiko-bot@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Re-initializing the completion before each transfer discards a stale
completion that has already been signalled, but it does not protect
against a reply interrupt that fires after reinit_completion(): the
delayed complete() then satisfies the wait of the following transfer,
which reads back the status and data of the aborted transaction.

Avoid this by resetting the AUX controller when a transfer times out,
so no delayed reply interrupt can leak into a subsequent transfer.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 951f1e280e47..1281fe28b0f9 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1493,6 +1493,11 @@ static ssize_t dw_dp_aux_transfer(struct drm_dp_aux *aux,
 	status = wait_for_completion_timeout(&dp->complete, timeout);
 	if (!status) {
 		dev_err(dp->dev, "timeout waiting for AUX reply\n");
+		regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL,
+				   AUX_RESET, FIELD_PREP(AUX_RESET, 1));
+		usleep_range(10, 20);
+		regmap_update_bits(dp->regmap, DW_DP_SOFT_RESET_CTRL,
+				   AUX_RESET, FIELD_PREP(AUX_RESET, 0));
 		return -ETIMEDOUT;
 	}
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
