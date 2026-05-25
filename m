Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F60CD5BBF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 09:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=221gXmJGOu7t9wMZN4yknZdn8tDoiiZsk0Z7/9WeHe4=; b=gwXhOs8Mt+YZJe
	/XBStXuFEccReseLhM9i0LWhiYVTEDFUXdP2Ro0RyShJMr5gMX/mp80xz0fhdPVueCAD1M0h0bHsB
	mTWE74cpSGalnoqKVq/mI284aZauXGUbg8s0qHZtdD5mlyB6nSxmX83xJX8yiPdBW9Aa93coyNvMD
	d5W53NVWo38r/0Xu7t5tTG4eidA6ofR7HK8to5EzGwrLcuB7Xn/if9NjljsbsAAGBW31sWBMdBXe/
	NTZpq5uFVLuVYwBJA+bLXDlEPB999+hMNCLTvJ6HXMt+t+0CryTK/uvY1usFxt2KqDWumWWyCSKW+
	SCMTMtPXVEgt3mDkZGTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRRuT-0000000GrEp-13MT;
	Mon, 25 May 2026 09:47:45 +0000
Received: from mail-m82210.xmail.ntesmail.com ([156.224.82.210])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRRuN-0000000GrBs-3vuf;
	Mon, 25 May 2026 09:47:42 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fb5f0038;
	Mon, 25 May 2026 17:47:35 +0800 (GMT+08:00)
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
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: analogix-dp: Add data-lanes support for endpoint
Date: Mon, 25 May 2026 17:47:30 +0800
Message-Id: <20260525094731.121380-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260525094731.121380-1-damon.ding@rock-chips.com>
References: <20260525094731.121380-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e5e885b4a03a3kunm84eb206f10f6e6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHU9NVkgeThlPTx8fQk9PQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=YXa/n/fipKFbCAYwgQABrgNPfqsDqA3khgvclnrhpGGsMmudnBYBK/Spd6v7aNTkPorqvri4HKPnTT87kqZoDDaQlOSnuVjq1+9vUp01PNCRxZwxFaCvQsL52qKy73bcKArM4bsf1BNjtqTHkY4ezg34caDwOjeX8Jtq4D8zbCg=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/7dV0C6Vz7r+2tla2biu6s3z9O/dPMQreZFsjTMDiz0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_024740_306767_8A1BABFB 
X-CRM114-Status: GOOD (  10.74  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add data-lanes property support to the port@1 endpoint for physical
lane mapping configuration.

Lane mapping is mainly used for below scenarios:
1. Correct PCB lane swap and differential line routing crossover
   without hardware changes;
2. Adapt mismatched lane pin definitions between SoC and eDP panel;
3. Support multiple panel hardware variants on the same board
   by configuring data-lanes in device tree only.

Additionally, add data-lanes setting in Rockchip eDP DT node example
to show actual lane mapping usage.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Add lane mapping application scenarios in commit message.
- Remove redundant deprecated property 'data-lanes' for eDP node.
- Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.

Changes in v3:
- Squash data-lanes adjustment of Rockchip eDP DT example into this
  commit.
- Add unevaluatedProperties: false to both the port@1 and endpoint
  nodes.
---
 .../bindings/display/bridge/analogix,dp.yaml  | 19 ++++++++++++++-----
 .../rockchip/rockchip,analogix-dp.yaml        |  1 +
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
index 62f0521b0924..ecf206871cdd 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
@@ -42,13 +42,22 @@ properties:
     properties:
       port@0:
         $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Input node to receive pixel data.
+        description: Input node to receive pixel data.
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Port node with one endpoint connected to a dp-connector node.
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: Port node with one endpoint connected to sink device node.
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  enum: [ 0, 1, 2, 3 ]
 
     required:
       - port@0
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index b4ec101b77a3..cf3ad33a0e86 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -154,6 +154,7 @@ examples:
           reg = <1>;
 
           edp_out_panel: endpoint {
+            data-lanes = <0 1>;
             remote-endpoint = <&panel_in_edp>;
           };
         };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
