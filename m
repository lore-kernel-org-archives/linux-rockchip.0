Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 674B8C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 02:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsDc+u69dL3+8+wrfaY5ZgLMYUITiqAr8oBZTWrSmgI=; b=EfE4Cx10M/YSXX
	WVjFckgf9whtGNOKqajVhLP945DYPc5h5ghGJxQttIJ0fXTUEUKEfAtgBIlyOj/mbzaAdWL3vKNXC
	uOLXIB5PeR2LtcVWyjQwz13MotbwL17kdy9uLTse7JAkL8qyFAwBKXGv5Br8GuMtaiF2lNFcskZt6
	IkCICKbMZYmVQqgVhcBeC39eaYaB/izj/MVERiHiUa2k6haDCHt9gdSiigG754kaS77oiUNvY6rC5
	Vpm99r1M4zT4JlXE4D40triP4Tn4rb3JTJD2MFjQaiF5+P4EHsbE1I91Ja20QUjnXbE/T4Bi72KNx
	7R8bcS4Nabs5iz+uhJyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPET6-0013N4-1R; Wed, 02 Mar 2022 02:11:56 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPET3-0013Le-8G
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 02:11:54 +0000
Received: by mail-pf1-x430.google.com with SMTP id y11so575500pfa.6
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Mar 2022 18:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bN6s6TEZphRwWI80xPm4aDtJet1ujkPpuwP31QhXI/4=;
 b=Gi3ddJmZGU2EBvfYqXHrtA6sMRGzkmAZ0ATThinzacPTB+38oNB9Joc0MX5AaExxvf
 MnAEUHidDLO8fgXj+3CVfa620VMN43lZ1TjqxDWvnHrFvaZpRFmiWRl7nQoeoWpbPDxw
 8498XmP5qcqTmjP9MchQOKq88Y1K1krgttZz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bN6s6TEZphRwWI80xPm4aDtJet1ujkPpuwP31QhXI/4=;
 b=O12vr+0wbPieuLeIbeDwFM0wpepTt9WHGpmpLBk4x5oVVSwJxBIWlPjcdHjT5nVVKd
 wl6QnZQtAcwIxAhEB/QOqjSHavQSQfBu9LuUrEaeYrOzkIFy7lTudVIi2nwlx3cI5HGf
 jVJTXUmZJK2V0cPv8strSI2EJlDnbQgSY3sbpTmghPO7dkC6rsdlWiLtDnTiunchVXaP
 ipgIqrHVYoCEK6AbdszsDGJk/XAmzm6Do42DthsmthaY4ogh1P0kGoIdEZoo7CMH8wmE
 aEXVf3SG/T8twh1AXGawynbf0U6MZJeHkWXho5I1WEfFLfPqJyoQmtNXDR2mF2QlBmAA
 NUdA==
X-Gm-Message-State: AOAM531lmF0UBDA39rSqlZfl7+xGSK08v6HB4IXcaf604UwQpS3dxePQ
 gkdfyIsoxI7l+K7MZcehoIEg7A==
X-Google-Smtp-Source: ABdhPJxqAYWE+06jubmS6vphEWSmGaG3d5IxrqcrnICb1nu8otRMzyUve+NDlL+vrTTB6Qb3KPoVww==
X-Received: by 2002:a63:f745:0:b0:373:8350:889f with SMTP id
 f5-20020a63f745000000b003738350889fmr24420532pgk.620.1646187112488; 
 Tue, 01 Mar 2022 18:11:52 -0800 (PST)
Received: from localhost ([2620:15c:202:201:ddf3:7c12:38c:3c61])
 by smtp.gmail.com with UTF8SMTPSA id
 f15-20020a056a0022cf00b004f3b99a6c43sm18651273pfj.219.2022.03.01.18.11.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Mar 2022 18:11:51 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 2/2] drm/bridge: analogix_dp: Enable autosuspend
Date: Tue,  1 Mar 2022 18:11:39 -0800
Message-Id: <20220301181107.v4.2.I48b18ab197c9b649d376cf8cfd934e59d338f86d@changeid>
X-Mailer: git-send-email 2.35.1.574.g5d30c73bfb-goog
In-Reply-To: <20220301181107.v4.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
References: <20220301181107.v4.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_181153_318681_F290E92D 
X-CRM114-Status: GOOD (  12.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

DP AUX transactions can consist of many short operations. There's no
need to power things up/down in short intervals.

I pick an arbitrary 100ms; for the systems I'm testing (Rockchip
RK3399), runtime-PM transitions only take a few microseconds.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v4:
 - call pm_runtime_mark_last_busy() and
   pm_runtime_dont_use_autosuspend()
 - drop excess pm references around drm_get_edid(), now that we grab and
   hold in the dp-aux helper

Changes in v3:
 - New in v3

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 16be279aed2c..b248d352f2bd 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1119,9 +1119,7 @@ static int analogix_dp_get_modes(struct drm_connector *connector)
 			return 0;
 		}
 
-		pm_runtime_get_sync(dp->dev);
 		edid = drm_get_edid(connector, &dp->aux.ddc);
-		pm_runtime_put(dp->dev);
 		if (edid) {
 			drm_connector_update_edid_property(&dp->connector,
 							   edid);
@@ -1642,7 +1640,8 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 
 	ret = analogix_dp_transfer(dp, msg);
 out:
-	pm_runtime_put(dp->dev);
+	pm_runtime_mark_last_busy(dp->dev);
+	pm_runtime_put_autosuspend(dp->dev);
 
 	return ret;
 }
@@ -1775,6 +1774,8 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	if (ret)
 		return ret;
 
+	pm_runtime_use_autosuspend(dp->dev);
+	pm_runtime_set_autosuspend_delay(dp->dev, 100);
 	pm_runtime_enable(dp->dev);
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
@@ -1786,6 +1787,7 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
 	return 0;
 
 err_disable_pm_runtime:
+	pm_runtime_dont_use_autosuspend(dp->dev);
 	pm_runtime_disable(dp->dev);
 	drm_dp_aux_unregister(&dp->aux);
 
@@ -1804,6 +1806,7 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 	}
 
 	drm_dp_aux_unregister(&dp->aux);
+	pm_runtime_dont_use_autosuspend(dp->dev);
 	pm_runtime_disable(dp->dev);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
-- 
2.35.1.574.g5d30c73bfb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
