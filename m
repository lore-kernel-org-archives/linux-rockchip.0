Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE97C53219
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 22:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwHbmFnWU2ku81j2vAISShTtLY7HKi77H4E34xZBd3A=; b=Lt6nh6WXQvUco1
	N1Re27ZTMswg3ZIpyRANhJEmAQw73xm3QVgMTXw4dCauBx32luOc0mocv2+O76kRj9cmEVcv3G9tH
	+C0G+vhtW4JAyyloNyNtdMX13Gi4bN/kEUHKejfPY20YKY/iEbBg+CseSZx/TbSMOkP2qFL7Qbd3m
	gTh0AEc2U3w0liTBIgjK6uxrlSUWxy6ApDpORP2TJaBPLAjyOhS2mUjOAnj8vLPnP5JN9OcSyNhG/
	oOtBczNsrfupmnrz0tvqlM4UPMgJq1eNLBC0lvjRrrr2KPk8+6rlc5VdhM5VA5cv7O1pnykA+jvUr
	dCyEAZoiJYr1vvXe/sFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1je-0000000FAXp-0Ho7;
	Thu, 23 Jul 2026 22:17:46 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1jN-0000000FADK-3cxz;
	Thu, 23 Jul 2026 22:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784845043;
	bh=yiVcOQ4cf/0UvZlieIJedpMgqZji9/jQ/GmCQgXnTqI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Z85Mkh3DNHW7qzU/LG6t8wfGogFx5Zb89EabGl4dpXzH/RKTVZ/bc11+Sk7lkqVQ8
	 yzVnpQnBTfu0m3MMwdgrTXCTLsb7evM8/bCIjytav23AzjBdXA4KC/qsr2aQ0pFjj4
	 BObSGvyJ4zNyvsvlTrHIr6cYH08mbGeycU1c7LHgaiH0OiDz9dJHec4FErtXhSHa/2
	 hTot6SEJvhvXdvoq3kwjqZiqdDakQrSCjb6AaJj2r4op59VunRtQHHuZZPEzW7WuBB
	 2ktSgZ1DLjsQcnenOFhf2abMN/hLQ0u03aXhIDeyyR3kdWXJhE5VkSAMYiVNRJQ9SP
	 sj0l0GmoDOoUg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C6C9C17E3BAA;
	Fri, 24 Jul 2026 00:17:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1DC1548004C; Fri, 24 Jul 2026 00:17:22 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 24 Jul 2026 00:17:20 +0200
Subject: [PATCH v5 12/15] drm/bridge: synopsys: dw-dp: Protect sdp_reg_bank
 from concurrent access
MIME-Version: 1.0
Message-Id: <20260724-synopsys-dw-dp-improvements-v5-12-9445c2e87441@collabora.com>
References: <20260724-synopsys-dw-dp-improvements-v5-0-9445c2e87441@collabora.com>
In-Reply-To: <20260724-synopsys-dw-dp-improvements-v5-0-9445c2e87441@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2444;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=yiVcOQ4cf/0UvZlieIJedpMgqZji9/jQ/GmCQgXnTqI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpikvHEw4LvDdG8llV+u2zZRHNqbeIAiaSlG
 72XvR6XhYdaIYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqYpLxAAoJENju1/PI
 O/qafXMP/jFMp4SCX2G92JHFicza/4wAJs3ZJ7EjVOVrMINYPnw4RPXnUXgs72lT5CoC/SOlRYe
 6pnYqUqhUk6tFYZ0XF3o+hg1D+TVSibh6RlRoCVNMNkEdnn15YLGEuVLIyEdtV0wN2jxcmsG4CJ
 DylLIw5NXZt4P+Aa+2xXRMXExGawmW3+NGZtuRRSPg0/CtVXwDQ+hyVJJanuvLfehd6M2ovajx4
 u6x3D+DrfFyA49To61kU7oUf6cE8QInoLf4DKxCQ0L+j9tyvt+0Qk9S1MXGfgA8aFEjydukvZdu
 Zeuc+QPR/p55Dm7IvIRw6kLtHICpUntdVlG1wynE/GxHA4/Dmv6k3saAAPe+s/wCR2mOhoHRbTi
 XUJMhY0YORAIZf25w9ubQN0GkphrpfBx4ezqkArm1sF9nkfSvt2Gvpf4e7d6zoFTwyRpmmdTDah
 xCrEzXxUp1xovrdDibt+fZJ8OP9u25bwDsxF7UY5SDPS2GoTTJrerr4u81i0cwsPWc2CXKMErUt
 johLykS/swqPvWlaJ2J4VIle0PYL2TVufzYZs7IJqLw78wFnard7Q+bik5B07KDAAC566uInHne
 tlWoLQd+AJJw61vxSag9WRlOK/ildlMfx7l7woWXjKPXWMnnnGM8PEzaVMZPKmZTY+Iwk5oFXf9
 0qtrAtKPnc/wgBsEQLqU88g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_151730_110095_A714AB2E 
X-CRM114-Status: GOOD (  12.97  )
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
index bcf7ad84f217..435f23fe391e 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
@@ -322,6 +322,8 @@ struct dw_dp {
 	struct dw_dp_hotplug hotplug;
 	/* Serialize hpd status access */
 	struct mutex irq_lock;
+	/* Serialize sdp_reg_bank access */
+	struct mutex sdp_lock;
 
 	struct drm_dp_aux aux;
 
@@ -1045,11 +1047,13 @@ static int dw_dp_send_sdp(struct dw_dp *dp, struct dw_dp_sdp *sdp)
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
 
@@ -1740,7 +1744,8 @@ static void dw_dp_bridge_atomic_enable(struct drm_bridge *bridge,
 		return;
 	}
 
-	set_bit(0, dp->sdp_reg_bank);
+	scoped_guard(mutex, &dp->sdp_lock)
+		set_bit(0, dp->sdp_reg_bank);
 
 	ret = dw_dp_link_enable(dp);
 	if (ret < 0) {
@@ -1780,7 +1785,8 @@ static void dw_dp_bridge_atomic_disable(struct drm_bridge *bridge,
 
 	dw_dp_video_disable(dp);
 	dw_dp_link_disable(dp);
-	bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
+	scoped_guard(mutex, &dp->sdp_lock)
+		bitmap_zero(dp->sdp_reg_bank, SDP_REG_BANK_SIZE);
 	dw_dp_reset(dp);
 	pm_runtime_put_autosuspend(dp->dev);
 }
@@ -2173,6 +2179,10 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
 	if (ret)
 		return ERR_PTR(ret);
 
+	ret = devm_mutex_init(dev, &dp->sdp_lock);
+	if (ret)
+		return ERR_PTR(ret);
+
 	res = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(res))
 		return ERR_CAST(res);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
