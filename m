Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71944C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 18:28:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6D9F65139
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 18:28:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6D9F65139
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=earth.li
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwG5WHCU6BRv8/p9lvvyP8FCByRdQrteo7fwGuAC7Cg=; b=iCUewszaTIabtu
	e3ECAvqNMwCot9sNJo82sCOff/GI1BN1RJXjAxQlmYMaAHE04rEDS+ZJfRmPTVIBMKDsc7dpUZJI+
	i9hpCdAQOQfQ3mb2kXbcyyohv5BsZQLL3Z4fRl9Tp+3675AUrRl1C93M8PLa4KP0D0M2tMtPcH1b0
	FPBSMnixkeX2wPlom/L93gdg5DraDiahxAPh81fUzAC/E9+t2/ItwdQwc5j75Bz21QDSaaM9iPL9I
	joB3r85jErCHw4GTYX4AC4DbTVfXhXPDNiJVsDRPyYuN5bB4CIzP8sEDe5d5xZn30uOvBcGj9uzOQ
	x7vKMVj2NxNSFpAJeAGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMEQV-001cLR-Km; Tue, 16 Mar 2021 18:28:19 +0000
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMEQD-001cIo-Sz; Tue, 16 Mar 2021 18:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:
 Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5abAEvlb6RQ//aPbXWSlsFscXPRdObN6cMphxdvzJjg=; b=xg1tvYgAsbdUB+jLBkj30dqmd1
 xXNF3flKWiQA6A5RpDXb/gRLMMkpDcBWQseNapujwWNGcgD/j3rKawPNtDnKinp5myE2eGIDhpNiJ
 tV8aMStaMoMtIOdZQCTU0RsyFJXKGzrN5IbYHzp3jfg4jwZbLETRAGvGDfHiSLqqguD+IhFHafnI2
 FS59nvVC+IU4NxVJRk3jIk3op3MgO0BeWRQeowZoko5Sr7Xo6PPhDw4SvBQrgKLMoXB5N5QflXNNp
 nBIwWPF8Cac4CimaOARg41uFTWwYtlrFqu0WbEvgclG/qWnBRTLkunR5o/UbGO+Lb/Xk1WPKpuFzH
 WTJa8e8g==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>)
 id 1lMEQ5-0006i4-VW; Tue, 16 Mar 2021 18:27:54 +0000
Date: Tue, 16 Mar 2021 18:27:53 +0000
From: Jonathan McDowell <noodles@earth.li>
To: Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: Cope with endpoints that haven't been
 registered yet
Message-ID: <20210316182753.GA25685@earth.li>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_182802_063011_8E74886C 
X-CRM114-Status: GOOD (  15.15  )
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

The Rockchip RGB CRTC output driver attempts to avoid probing Rockchip
subdrivers to see if they're a connected panel or bridge. However part
of its checks assumes that if no OF platform device is found then it
can't be a valid bridge or panel. This causes issues with I2C controlled
bridges that have not yet been registered to the point they can be
found.

Change this to return EPROBE_DEFER instead of ENODEV and don't ignore
such devices. The subsequent call to drm_of_find_panel_or_bridge() will
return EPROBE_DEFER as well if there's actually a valid device we should
wait for.

Signed-off-by: Jonathan McDowell <noodles@earth.li>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 8 ++++++--
 drivers/gpu/drm/rockchip/rockchip_rgb.c     | 7 ++++---
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 212bd87c0c4a..b0d63a566501 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -270,11 +270,15 @@ int rockchip_drm_endpoint_is_subdriver(struct device_node *ep)
 	if (!node)
 		return -ENODEV;
 
-	/* status disabled will prevent creation of platform-devices */
+	/*
+	 * status disabled will prevent creation of platform-devices,
+	 * but equally we can't rely on the driver having been registered
+	 * yet (e.g. I2C bridges).
+	 */
 	pdev = of_find_device_by_node(node);
 	of_node_put(node);
 	if (!pdev)
-		return -ENODEV;
+		return -EPROBE_DEFER;
 
 	/*
 	 * All rockchip subdrivers have probed at this point, so
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index c079714477d8..989595087397 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -77,7 +77,7 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	struct drm_encoder *encoder;
 	struct device_node *port, *endpoint;
 	u32 endpoint_id;
-	int ret = 0, child_count = 0;
+	int subret, ret = 0, child_count = 0;
 	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 
@@ -96,8 +96,9 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 		if (of_property_read_u32(endpoint, "reg", &endpoint_id))
 			endpoint_id = 0;
 
-		/* if subdriver (> 0) or error case (< 0), ignore entry */
-		if (rockchip_drm_endpoint_is_subdriver(endpoint) != 0)
+		/* if subdriver (> 0) or non-defer error case (< 0), ignore entry */
+		subret = rockchip_drm_endpoint_is_subdriver(endpoint);
+		if (subret != 0 && subret != -EPROBE_DEFER)
 			continue;
 
 		child_count++;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
