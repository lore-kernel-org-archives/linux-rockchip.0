Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D3E6CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 13:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpyn+tfFrkUSarNb7UAF6zTJpwYPKvp6iUYG9RgS4nE=; b=0W+SxDUAh9hOQC
	uj+k5mAbl+lNavPO5+0ShAUOWWRZ0unVtPhXpG81HR3IBJyk/PJDp1naKtfZ4NiYiszRRDxJ7Vkcv
	dqgGLry4IXVJ/quyT4hLVKAbf62OK6aoFT/t7HbtqD0gOqCQIhp9zlrayXJLMUpyeyRO1LcZzjCb8
	mLNZDhCgrmi9RFHaNuKMhbYRKcAPnl9t32O8Y1CZtRDi2lxsMqIRVm929QHN3Xb1RoAHtehAArSAY
	bJyBVX/9So4a/Vtkm/PHSy5WYRFEevyZXRs1yKFvnw/7Tv6lMswHPtatwyJoBC3YfNo33eP0mEeZI
	PZYX1w7KK8M7Zf34DX8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyt-0000000GqI7-34rz;
	Sun, 08 Sep 2024 13:29:31 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snHyq-0000000GqEc-1m64
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 13:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725802151; bh=8TqgWjT3UGoq8NhlqNVT+UNBc/OTSgrzdmn4WedFMlo=;
 b=SiliM5Y4uv2xAzqEW+kAAu/blbSllSL/y+qZapkThn+8tepqhlG7/P7tSN2kHBjMZC4w2sG+u
 pnwbz7P1CW2jtYTM281z1BbT1beKCMT0MYyHw/qfWsO5vReUYcv7WHjcsrcafdKlmcKBmzuBi+8
 pzccuCRELE62qQZDcSZZEMRl8o+QArmL+MLBcRDnnh/hirA/ZAMNXm05NEILgtpMXxP+dc1fFt4
 lndVGtMo4nRVI5gmoNjfeok1QR79uMa+KbE4ag0ViHB0EQgWT4mYzk//NXd/ZX/xNGxKRMVPiWV
 2J2xgcKLljj5FSlSFiET7xcG+nerpJYh8sJCvmK13nyw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Christian Hewitt <christianshewitt@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/10] drm: bridge: dw_hdmi: Update EDID during hotplug processing
Date: Sun,  8 Sep 2024 13:28:11 +0000
Message-ID: <20240908132823.3308029-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908132823.3308029-1-jonas@kwiboo.se>
References: <20240908132823.3308029-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66dda6a63c9877b4595879b6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_062928_597705_F2F3AE56 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
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

Update successfully read EDID during hotplug processing to ensure the
connector diplay_info is always up-to-date.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
index c19307120909..7bd9f895f03f 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2457,6 +2457,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
 
 	status = dw_hdmi_detect(hdmi);
 
+	/* Update EDID during hotplug processing (force=false) */
+	if (status == connector_status_connected && !force) {
+		const struct drm_edid *drm_edid;
+
+		drm_edid = dw_hdmi_edid_read(hdmi, connector);
+		if (drm_edid)
+			drm_edid_connector_update(connector, drm_edid);
+		cec_notifier_set_phys_addr(hdmi->cec_notifier,
+			connector->display_info.source_physical_address);
+		drm_edid_free(drm_edid);
+	}
+
 	if (status == connector_status_disconnected)
 		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
