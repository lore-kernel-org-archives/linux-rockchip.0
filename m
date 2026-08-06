Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEA11C5ACD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kU1E6qmSnbZEosKgOCifL9+jwb4WJqugn8diDZqddAM=; b=hiDnrNrH8JbwUf
	OZxiXlOKcxJgqmGjV7XPhuUPEHG6NqJlxD4xLOKN9F1wcphwdfGclk/f8khnU2NWnyLJOeM+s6K3T
	I+DHM3TOzQS2Pw7Mjl+OzatSnyjgTsUaMuV8zYOB2SDHBGJNOoy7FXjIDfiqPcs8IEsFGZFrRhBUw
	c5GW3nFlROFyrAYxyfODNTYtaq9jVq/Uv5SiGYlyBk2pGsgt/yPx5Y00ID6Lnz8cnIvMvhMoxfYCG
	Q1QfUuViPFhtjBkPmac0D+s+y2mPxCOKyON8nNZG3yihQEbrhTli2QGYagIes5GevBHtt6uP7fHBg
	D2dUqhUOcwZGCcuKAgvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UN-00000006HeQ-2CjF;
	Thu, 06 Aug 2026 17:02:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws1UG-00000006HMm-0I0P;
	Thu, 06 Aug 2026 17:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786035745;
	bh=/lgBpexnadALM8qH0IRqFvISL085+4oJ6MSwbA/prjw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Dl4BiTmBokojrQFAJ+KNC2cWeneWlQRkZFPyeZ9W0YWx8BdaHmnqkI+3JEruFpHyu
	 SwD4X90LRPV+M3U+mOcIseX1JlZi5JMrTSlcCEaPOjVh5JOsGON+KYyJ6qrRpnX7Rz
	 4bXVV5Q+DyRx3J0y31fbZFPM0KBRy1dWmcA+TcyryYEUbeNu09XwEEhs8IwWkAvcRp
	 OD6lc96qILa1Mi9w+YNYh8jUxR+i9qnFJNuNDax8vCvVM2c0pWukdJL6kLxTeGoWuv
	 ZCwvuF5P+BcKmRzZNhA0uLn8Cpti6KIfx+5ZFcYNRPhDjCWXRn3cB2TK5aDLn2mAfu
	 Mvji9MM9m9faw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A022417E1104;
	Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 03AF348003A; Thu, 06 Aug 2026 19:02:25 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 06 Aug 2026 19:02:14 +0200
Subject: [PATCH v11 08/21] drm/bridge: synopsys: dw-dp: Free output_fmts
 when none are valid
MIME-Version: 1.0
Message-Id: <20260806-synopsys-dw-dp-improvements-v11-8-0d508505f383@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1057;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=/lgBpexnadALM8qH0IRqFvISL085+4oJ6MSwbA/prjw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGp0viBJeHTihB6rTSVJOQPkad+CcXtFBwZQU
 2YBrUW0ZeE6lIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqdL4gAAoJENju1/PI
 O/qau1IP/3lYGxq+/czWfeaJnqNvkT5jdwpaQg8ewclxUgoqe5A16+1c/9bcSdX3ddyzsIrmDaq
 VWW+hax0/gAeXR4AomcNFkgf8EBlTJ2iuzTCVZ2hrsCgPZpS7Z9DwkwO+ALfUUyIQ+Crg7Z7diE
 QChoH8CJkm9GLoxbnK4gOZd/yREd5ntFNEN5Po+MbOu3Bq3PoTM00q/NoFn3npGw0wNkdJvCdL9
 HoPbm+zGz4zf9pjmLKzBhotGKMiwTVAD48LX67ka16Fcptzxvz1hiESz52mln8ZRdFXcLyAdyjh
 GD++lMdLW/LJIzxDPehPKLMtlScP64ZN4+hJfERc4yBvDucRHfJwXq5ke4EN/lBYQaRjKr+4RVj
 ZawLsRronY/WrWqzRagbEMJB2koy7tELkoRlvkxEPos0r9nYQ8TyAakGw5hPZ5WakphOHnwGikF
 npO/6Dm4VfjCIpcdNOCjGS4z1t8ch/K+GNfp/fBkiLQgCF5OUlcV8ORG+eGfT5TXQCPaeUwLNAL
 Tu2sys+vEZXCwwe+YG3H7Hoeu1iNyY8GEIgjJiympR9jXc9yrifZeEPWw10AZgYzIhUbxvXJsHY
 Zk5cyDACWbh+aarpe/jOrbiEMwlsvKYHFWbNsKhOEEGwYA7/KL5mBZfgnKxFdYWJQafv9cm7R65
 BdhXzKXyvUe8FxMfSZnEjPg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_100232_314880_E8BC920F 
X-CRM114-Status: GOOD (  11.33  )
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

If dw_dp_bandwidth_ok() returns false for all formats, *num_output_fmts
might end up becoming 0. In this case functions calling it assume that
nothing needs to be free'd, so free output_fmts within the function to
avoid leaking memory.

Fixes: 86eecc3a9c2e ("drm/bridge: synopsys: Add DW DPTX Controller support library")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 8ceb139f1a72..d35dcd4a413f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -1820,6 +1820,11 @@ static u32 *dw_dp_bridge_atomic_get_output_bus_fmts(struct drm_bridge *bridge,
 		output_fmts[j++] = fmt->bus_format;
 	}
 
+	if (j == 0) {
+		kfree(output_fmts);
+		output_fmts = NULL;
+	}
+
 	*num_output_fmts = j;
 
 	return output_fmts;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
