Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE70E77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 03:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUy1/Jro2cts7vcsOaL15UYlBK+el39JxsnsYrFUc1o=; b=aUjzA9eLfj5hio
	57TLXxUcZwh+w3nTt6r1MBgf6dVHkLi4rU5TCL7gw6ehuIWSLYrI4NPzWQzpL0TwSHb9FiX6mO7LQ
	aEObz1lbxixZY03GL1CH7Wd1jbE7ooE98D3KfOUZBa8wWkDQkvv99Ic5myzgaWWcJGElNFlnVWtK6
	D0WZFx2cn3dfGoyt8Ne1iqCjVg5J/xNcR+m2Iov+Hrt0zfUWufBV+QAr94Ij8fX/us2xfNIkyK/et
	LKgW7bQj0o2TJQEU9E+ImdERJGmy+hwzgFmDnl+dEPkF6WUJhUuI/LCj2CC6L0it4kds55/9yecIg
	L92pUW2D22orusHtokgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVjVI-0000000AdfH-3uqc;
	Thu, 09 Jan 2025 03:46:41 +0000
Received: from mail-m121152.qiye.163.com ([115.236.121.152])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVjIS-0000000Ab4C-1RZ8;
	Thu, 09 Jan 2025 03:33:25 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a81;
	Thu, 9 Jan 2025 11:28:18 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v5 11/20] drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
Date: Thu,  9 Jan 2025 11:27:16 +0800
Message-Id: <20250109032725.1102465-12-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhNHlZITUxISRlITUpJH0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491b127903a3kunm82c01a81
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mj46PTo5PzIVIRRILEoOQypN
	Ei4KCitVSlVKTEhNSEJISEtLSU5KVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITExONwY+
DKIM-Signature: a=rsa-sha256;
	b=dp1AxSiUUL4UTk2GkXst7cOnju629zizuJEMU3Evq3vAjsZWQYtl5tvPp27uz2nBx3PzspXS2U+W41LMub6ykDz1n2n16doKbzwPKMhGuoVG5q+YnJu/Wlocie0x+K7/J23JPFmQ2SQn1TaeOH02LS8MXdutNlk2/Wpf8hjSM90=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Uf4UFxDsT5vSfWEZ+9rK9nvtFoknlN7ayfJQpa/hLWQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_193324_673893_9A77DFFA 
X-CRM114-Status: GOOD (  11.62  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The main modification is moving the DP AUX initialization from function
analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
eDP panel during probing, it is also needed to advance PM operaions to
ensure that eDP controller and phy are prepared for AUX transmission.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v4:
- Use done_probing() to call drm_of_find_panel_or_bridge() and
  component_add() when getting panel from the DP AUX bus

Changes in v5:
- Advance PM operations to make eDP AUX work well
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 62 ++++++++++---------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 8251adfce2f9..78e78fb474d3 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1548,6 +1548,18 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 	return ret;
 }
 
+static void analogix_dp_runtime_disable(void *data)
+{
+	struct analogix_dp_device *dp = (struct analogix_dp_device *)data;
+
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_dont_use_autosuspend(dp->dev);
+		pm_runtime_disable(dp->dev);
+	} else {
+		analogix_dp_suspend(dp);
+	}
+}
+
 struct analogix_dp_device *
 analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 {
@@ -1658,8 +1670,29 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	}
 	disable_irq(dp->irq);
 
+	dp->aux.name = "DP-AUX";
+	dp->aux.transfer = analogix_dpaux_transfer;
+	dp->aux.dev = dp->dev;
+	drm_dp_aux_init(&dp->aux);
+
+	if (IS_ENABLED(CONFIG_PM)) {
+		pm_runtime_use_autosuspend(dp->dev);
+		pm_runtime_set_autosuspend_delay(dp->dev, 100);
+		pm_runtime_enable(dp->dev);
+	} else {
+		ret = analogix_dp_resume(dp);
+		if (ret)
+			goto err_disable_clk;
+	}
+
+	ret = devm_add_action_or_reset(dev, analogix_dp_runtime_disable, dp);
+	if (ret)
+		goto err_disable_pm_runtime;
+
 	return dp;
 
+err_disable_pm_runtime:
+	analogix_dp_runtime_disable((void *)dp);
 err_disable_clk:
 	clk_disable_unprepare(dp->clock);
 	return ERR_PTR(ret);
@@ -1708,25 +1741,12 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_use_autosuspend(dp->dev);
-		pm_runtime_set_autosuspend_delay(dp->dev, 100);
-		pm_runtime_enable(dp->dev);
-	} else {
-		ret = analogix_dp_resume(dp);
-		if (ret)
-			return ret;
-	}
-
-	dp->aux.name = "DP-AUX";
-	dp->aux.transfer = analogix_dpaux_transfer;
-	dp->aux.dev = dp->dev;
 	dp->aux.drm_dev = drm_dev;
 
 	ret = drm_dp_aux_register(&dp->aux);
 	if (ret) {
 		DRM_ERROR("failed to register AUX (%d)\n", ret);
-		goto err_disable_pm_runtime;
+		return ret;
 	}
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
@@ -1739,13 +1759,6 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 
 err_unregister_aux:
 	drm_dp_aux_unregister(&dp->aux);
-err_disable_pm_runtime:
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_dont_use_autosuspend(dp->dev);
-		pm_runtime_disable(dp->dev);
-	} else {
-		analogix_dp_suspend(dp);
-	}
 
 	return ret;
 }
@@ -1762,13 +1775,6 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
-
-	if (IS_ENABLED(CONFIG_PM)) {
-		pm_runtime_dont_use_autosuspend(dp->dev);
-		pm_runtime_disable(dp->dev);
-	} else {
-		analogix_dp_suspend(dp);
-	}
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
