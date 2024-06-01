Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F830C27C51
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGnbOcQImt4oQKbAAWO/xUvUKmXOmm6RLIC0qGeU1ZQ=; b=TC0CYX3ixbaLyI
	SAnoW9OMBruUK98XU5e/tyRC+tnTzPR1e/jV9cQX/u9qq7MoD9MYKpIW5VeIpFSxtH3qQov0jGZUB
	zDrU35rUIV79w9GY4URMh3v/K3zYiAOwLi1cNkn/rN4qYumXOBL4VuM+iIycBa+55zXgs3VcmLmQA
	BAAQQbtDddXs8/R1wd13SWWnY6NCLY2E3Jt6BEtdPsF6aCTvGW01qMtj/z9iQ2hYSDe/WZZZLS6yF
	73UVi9UffwRdCnsTExNPVZNpdq/yLgEcSbh2DNX5ZGxhSlCbbQvpv843iZ7kwV5FdhB1jpYUTqdCT
	nO+DC04seJeoWYoCZTqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXy-0000000CeNf-2DBK;
	Sat, 01 Jun 2024 13:13:22 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXg-0000000Ce7l-2bNX;
	Sat, 01 Jun 2024 13:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247582;
	bh=Potzyhce4Kbwz3ncwPjojzHRgtcLidd3K5wALNG0/oc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pO6OX9OjOlVw2zgG4UMuwGPgr5eFHKPkM6BxwVf91cGAoBdeHPp/mHCOh5y209HHc
	 DE/TQtHE4PRl4TxnlN1oiKNv5ZHIa726dDR14f3edfE3W6DNBCXMkuF1lE6rwH5Ep4
	 zlG/G0IjilZe1HjP23lAhe7sXxlGRBNwtMIFQTQ1gI0hzbAhRcPerXFXqHVwsW6si0
	 AgW2jfWvrByf50eA/ftQEKmYSkWCJYYKT8kWH7N/LTwByntz/LlU8ugj5hn0m9erkH
	 4lbGM38X9d/wKUw8HGngoK2qTrPdcOejSgfGkVgyplAK4NsIU1G6Ca+XK0tWEsjRQg
	 utPcLRCnIjZPg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 02CEF37821EC;
	Sat,  1 Jun 2024 13:13:02 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 01 Jun 2024 16:12:25 +0300
Subject: [PATCH 03/14] drm/bridge: dw-hdmi: Commonize dw_hdmi_i2c_adapter()
MIME-Version: 1.0
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-3-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061304_863772_4C844227 
X-CRM114-Status: GOOD (  12.75  )
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

In preparation to add support for the HDMI 2.1 Quad-Pixel TX Controller
and minimize code duplication, export dw_hdmi_i2c_adapter() while adding
a new parameter to allow using a different i2c_algorithm.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h | 2 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c        | 8 +++++---
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
index 28e26ac142e6..ffd2ee16466c 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h
@@ -146,6 +146,8 @@ struct dw_hdmi {
 };
 
 void dw_handle_plugged_change(struct dw_hdmi *hdmi, bool plugged);
+struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi,
+					const struct i2c_algorithm *algo);
 bool dw_hdmi_support_scdc(struct dw_hdmi *hdmi,
 			  const struct drm_display_info *display);
 
diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index b66877771f56..5dd0e2bc080d 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -376,7 +376,8 @@ static const struct i2c_algorithm dw_hdmi_algorithm = {
 	.functionality	= dw_hdmi_i2c_func,
 };
 
-static struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi)
+struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi,
+					const struct i2c_algorithm *algo)
 {
 	struct i2c_adapter *adap;
 	struct dw_hdmi_i2c *i2c;
@@ -392,7 +393,7 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi)
 	adap = &i2c->adap;
 	adap->owner = THIS_MODULE;
 	adap->dev.parent = hdmi->dev;
-	adap->algo = &dw_hdmi_algorithm;
+	adap->algo = algo ? algo : &dw_hdmi_algorithm;
 	strscpy(adap->name, "DesignWare HDMI", sizeof(adap->name));
 	i2c_set_adapdata(adap, hdmi);
 
@@ -409,6 +410,7 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi)
 
 	return adap;
 }
+EXPORT_SYMBOL_GPL(dw_hdmi_i2c_adapter);
 
 static void hdmi_set_cts_n(struct dw_hdmi *hdmi, unsigned int cts,
 			   unsigned int n)
@@ -3373,7 +3375,7 @@ struct dw_hdmi *dw_hdmi_probe(struct platform_device *pdev,
 			}
 		}
 
-		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi);
+		hdmi->ddc = dw_hdmi_i2c_adapter(hdmi, NULL);
 		if (IS_ERR(hdmi->ddc))
 			hdmi->ddc = NULL;
 	}

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
