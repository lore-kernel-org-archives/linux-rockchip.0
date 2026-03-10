Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70126EB1043
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJIySc5G+0fHUs/8Raur7kvgtW3vYiLEIICcg/7SmYc=; b=dJMBXgO2I4mslg
	b+K4tjIW2rKA93Lh5AxHDAmAuysUmniqqDPmNglv8kN9OI+Ah/079ops3wMLc7BxEsh+rdyC8rlxL
	6F2ttS2YCthycJftwfakQZbib/CHpUuNiEjV37sAaeLTuom4dOiHxE2nmfA58Dr7hC/go7xGwAclV
	wk0tMmziCb1hgInc9gU7ns+a8gn4gxoN6TrtPyZMXuYfGT+FGWHop6WMX50g+j4GEpE135tTBgbUa
	XP2J+DfWtK4BPP4JEmVGX7JRCjFp7eB1HeUDueJ4v382eM1AkL+ZVe144rZCmiXhkbfYsVHVcS6Ud
	c4DBp2QRtt7mZlxhp+vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzujp-00000009Edl-1m0S;
	Tue, 10 Mar 2026 10:54:57 +0000
Received: from mail-m1973198.qiye.163.com ([220.197.31.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzujm-00000009Ebt-1Eup;
	Tue, 10 Mar 2026 10:54:56 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 366858a56;
	Tue, 10 Mar 2026 18:54:49 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v1 1/4] dt-bindings: display: rockchip: analogix-dp: Add support for RK3576
Date: Tue, 10 Mar 2026 18:53:04 +0800
Message-Id: <20260310105307.309765-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260310105307.309765-1-damon.ding@rock-chips.com>
References: <20260310105307.309765-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9cd7629bd303a3kunm866f47e7374c22
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0lNGlZCSExOTh5PTkxDGh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=JsOsqLicvtrVBdtBsi5v62eg2d2hfPn9AwBoJTgKZqZX5zQ8wPTSv9SXZW9L0eukBl1N2Umb95i67BNpfEVHSM458MYJvapKop3ZqZ6b+M3KwQa6qZMbdodBQi18WqIqeUnN4tMto4CkqjCEKdZM80ogcNgKuB6ZKZlLXcpxqI4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=cAyaLLzXSpjsG1bPzd6hBMSGohTcoDK8X+UfEAVLv58=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_035454_515979_B74F2BD6 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, dianders@chromium.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, alchark@gmail.com, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The eDP TX controller on RK3576 is the same as that on RK3588.

The newly added clock 'hclk' is the video datapath clock.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 .../bindings/display/rockchip/rockchip,analogix-dp.yaml     | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index d99b23b88cc5..4496a43881f9 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - rockchip,rk3288-dp
       - rockchip,rk3399-edp
+      - rockchip,rk3576-edp
       - rockchip,rk3588-edp
 
   clocks:
@@ -26,7 +27,9 @@ properties:
     items:
       - const: dp
       - const: pclk
-      - const: grf
+      - enum:
+          - grf
+          - hclk
 
   power-domains:
     maxItems: 1
@@ -65,6 +68,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3576-edp
               - rockchip,rk3588-edp
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
