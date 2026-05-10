Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A586CD37B2
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 18:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG+uWJEOSsK9ZEyDdp6slZKaSa9bNk4QfL24Z7sAXu8=; b=eYcFXemg+CmzRW
	FwpPdc1i884hhUAvg6Uv8218iDojLLU8evG+U82STAwZf6/NDOuug4bKJr0MF5o/ePJwHmIlVNuap
	7XqUv9QKKXcaZgoVCWsApFrpj3B88/4u//ZKY9yjxcsc2H5wn33Z7bVXaWvwrZME8Bmzyxka+TnI2
	4j7XGOML1WcudEJMWdISGhF/LJQlM2LidxFdVqaBjo8so952H9gKtg/7i5kH7EfTgmAqJlzWItU1a
	7HnTJx2BPMt3uyVJ/D/8BYCZ+3M8LBesmyuTA4xTwZs1mkSXw9Iucu1XBVZVY7qq/mSDsKbdlvnYF
	4fab1MHSZWQoG+Rj6Erw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8wJ-0000000BMHB-34I4;
	Sun, 10 May 2026 18:31:43 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM8wG-0000000BMFy-1C0Y
	for linux-rockchip@lists.infradead.org;
	Sun, 10 May 2026 18:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1778437899; bh=z436gSSBTFhLoL9d5wdN6j/AQR4iFFTGFYZWVF5au/s=;
 b=QYMpxOtbEJEzR/n/OPe8GfHuylel9xiIlKJc28CiSTxjWNI302dMD7KVfJQQsjdhIqht7j7x0
 1IRCHIzD5NzGJyMFvWAZN0jit72t6fUBgUhEDPeUJUfElq2ueO+WPB5J+5a/jifW+0bIL81D02C
 6VWXuHQB77H6DdaHZA+d0Tp7mXDrX/0PzVrvp9VqN79k5Wc6NLSaZHcVhFWueRhEjA33kbNQLmW
 1DeF+vXeUn5UrC6FpqV1yxmqvacrQywiSg1FCWVulYCfiI9bqV3mYtDBUtMyodkU+xrIoamU4Ny
 agV+632tE1NqeyWBcGzfzjw9NksJPzXpWbmGwfA4BTZA==
X-Forward-Email-ID: 6a00cefc61db3ab145b0f226
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 01/10] drm/rockchip: dw_hdmi: Use of_device_get_match_data() to get match data
Date: Sun, 10 May 2026 18:31:02 +0000
Message-ID: <20260510183114.1248840-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260510183114.1248840-1-jonas@kwiboo.se>
References: <20260510183114.1248840-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_113140_836332_87D4D4ED 
X-CRM114-Status: GOOD (  10.34  )
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

Change to use of_device_get_match_data() to get match data prior to
allocating private data. All current entries in the of_device_id match
table provide match data, so no functional change is intended.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 8c0e433fbda2..34a2248f6b4b 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -536,8 +536,8 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev_of_node(dev);
+	const struct dw_hdmi_plat_data *drv_data;
 	struct dw_hdmi_plat_data *plat_data;
-	const struct of_device_id *match;
 	struct drm_device *drm = data;
 	struct drm_encoder *encoder;
 	struct rockchip_hdmi *hdmi;
@@ -546,13 +546,16 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 	if (!np)
 		return -ENODEV;
 
+	drv_data = of_device_get_match_data(dev);
+	if (!drv_data)
+		return -ENODEV;
+
 	hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
 	if (!hdmi)
 		return -ENOMEM;
 
-	match = of_match_node(dw_hdmi_rockchip_dt_ids, np);
-	plat_data = devm_kmemdup(&pdev->dev, match->data,
-					     sizeof(*plat_data), GFP_KERNEL);
+	plat_data = devm_kmemdup(&pdev->dev, drv_data,
+				 sizeof(*drv_data), GFP_KERNEL);
 	if (!plat_data)
 		return -ENOMEM;
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
