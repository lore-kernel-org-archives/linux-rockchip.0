Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4645BC5516F
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 14:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb1guwqyAFT/I7EO8yQ3eCLSOdKa2QC//olfYuJ7AZQ=; b=cYTxdbkkJFx+5f
	Up1/sfwG16UsseFV4RYAAyg8vzwPWSgz/ROOkFaOi8YAIhcUWG1nqG61/FFeonSKa82dx9c9VGZcw
	xiLwjrbET+mUsFZRaNeGA2F7PkhvUBsxvlQ0ImKb9XgndO70r9g5mrPzCS7Ao7Hw/eK/e8n1ZuN10
	4pUC4w2nKJYrtBfX9J7mvAHHaV9HKsbDATBpvBcV/BEvqQCnfm9PuEPHuj7mGXpkkac/ehL6Uf/gg
	8wlrIsVeI4AHL9CpTVSQMquMrTVHO2rqtz+JeG2CoVLEyQLP2KqCU7gZfA8OzXC1JbwjLVXNSYwZZ
	bHVMl9oj2nmNMqoE2L9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoSR-0000000Cn43-3Dbx;
	Fri, 31 Jul 2026 14:43:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpoRF-0000000ClbS-1Q41;
	Fri, 31 Jul 2026 14:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785508929;
	bh=67aod2y/NN3Z0/tR+63bhBBILIefJK85gRwCSfTU17o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lCZ8Q7sIO6icNPa1zc1qNzM8EBaOkmXd1Hhw6YsHpN1kFpzWNtehuXU7SVdXsi3Zl
	 /H7T/DMe1gz9+mHNZXTSgZmkMRFABqORMMTjqH7Dg8Mk/qwmQ4dtsDdJbGAlI+k6f9
	 n9meeF642LcNnAB9GkofSECWnnacz50qVXqd3cVrpyiqNy4O/cPICzvt+m4HxhkfNV
	 iNU1PPsPogL0bzLvS35wJ9+Y5ceLnVrOiOODoc3Y9yVJAhrG0D92vbGu/4KBtKLNwl
	 RUONywN5wKlRDIadZol1xX1NNGDiwLw7WFOtackLY/suT8uorvZd30HhiQLQca0wPS
	 mqw/TFs9U1teg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4991217E08EB;
	Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 01AF1480030; Fri, 31 Jul 2026 16:42:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 31 Jul 2026 16:42:09 +0200
Subject: [PATCH v8 04/21] drm/bridge: synopsys: dw-dp: Document missing
 reset line deassert
MIME-Version: 1.0
Message-Id: <20260731-synopsys-dw-dp-improvements-v8-4-ac1e6a75782f@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1609;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=67aod2y/NN3Z0/tR+63bhBBILIefJK85gRwCSfTU17o=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpstEAiiDNAYe6ydxJrk23XOS90RTpqdTZAV
 3w6vGf3yhnmhokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqbLRAAAoJENju1/PI
 O/qaESEP/RGU/Si0lmndkxUhc6ydkA6dgLRS1ot5p+2zBwW0Tz/CtyF+vPWVasjkkQAq7BNnP2B
 8GfsS8dwfx808J3IUFhnGQku/4wClW9Lz5vhOfUrKDV0KIS9IUiC5K0jandniEzH5j/F3BJCWrP
 Dm8LrSiSO+9xseV4ziLz5cOTVL7HbwaA4PJvZWcVE81jRuuTNq/b/sZ+ablD/FQKWl8iW69ykOs
 0KJC4M+RU5tD8yxyfsjC9KzxtFdeT1bJNG5LwS8286ueiqzMmxZi3TQ9DRyblBAVs6stJdIvjEk
 ulsKS/U5kBpuNqf4+nUFZCtOUot1V08Mdqm1wUFiy3s+EfdS+DtNpThwnoVFoHan376/9XyA2yZ
 AL8Ii0d6aek9tyXk3qgKdKav+HArBeqbnj/9vQkzEMNQsTQCKpGM1AL2cfttwSxt5rs8WIMi4xX
 QS+9E0WYuqtxylHq9PMIEmh//sDWIqFLgmxcjbCHu/2H/8V0zxuQ3ypUycYOzeKVaF28JLdcsj/
 a5o14hD/IA/peyOcw3qSwYg/fTceEoWuZ/lPdz5ryavs6XZfPOXIHb5OJKyKi0UFDqKDG6kVpLq
 bBA1qgd4ZYldfO/cRsP2ES/7G2t25lSFL6S+mTt3TlpoFKw+ygZfAbFDAb1XIdF1p5t0OksYN/Q
 dC5bkNt3Hu+vOu5RBvHcpRw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_074217_641497_2E6C94D7 
X-CRM114-Status: GOOD (  14.83  )
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

If the driver uses devm_reset_control_get_exclusive_deasserted() instead
of devm_reset_control_get() and thus automatically deasserts during
probe, the SoC will hang when the device is unbound.

This does not happen, when runtime PM is being used (not yet supported
in mainline), which suggests the power-domain involved requires this reset
line to be deasserted.

Even with runtime PM there is no gurantee that the power-domain is
disabled as it is shared. Considering the power-domain does not have
the reset dependency described in DT, document the problem but leave
things in the current state until a better solution is found as the
reset line is deasserted by default on all supported platforms.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
index 6289ed06e231..a8ae13cf91d6 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -2076,6 +2076,10 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
 		return ERR_CAST(dp->hdcp_clk);
 	}
 
+	/*
+	 * This reset line is deasserted by default; asserting it hangs the SoC if the
+	 * related power-domain is still active.
+	 */
 	dp->rstc = devm_reset_control_get(dev, NULL);
 	if (IS_ERR(dp->rstc)) {
 		dev_err_probe(dev, PTR_ERR(dp->rstc), "failed to get reset control\n");

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
