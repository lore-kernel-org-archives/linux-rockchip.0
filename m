Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672BAD778AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 19:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azxaWhnKnN7LUpIp1RN7RI7PuDHplc+WxOzQMgySK7E=; b=KMIIhnLeC5kNE8
	DAQq55ecrN0p+VUiFUWclDSsrCdm+BF7se0lionm9kbFjgTbs785xYl5B5b/Kq9R3nhlBHZS6HosP
	nJH6pVzEOB+aOpA1XNXOjSlA3+f+RhBvHbIHRFHJJ11I7d+bJkT/U46ptpJtWv/kXNF+TMnnvxqtF
	MMyNDXrXpFmcp0Zswh7mgcFlKxsSj6u0HIM/Npvtzoh85CFzrX4/A6oA/UvJ6Bj6ZEchY4cwFkDdK
	WxbHRok4IyaWDNMvyY+YOzkLewrVsHqfEkLf+jX4L5WkChTKJehCoiSLM3sTwD3T8UcAYNj4esnl6
	c1tkcEeMbmwSmcGtp4yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMjx-00000009PNC-0SOQ;
	Fri, 23 Jan 2026 19:22:41 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMjs-00000009PLB-26A1;
	Fri, 23 Jan 2026 19:22:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7DDC1515;
	Fri, 23 Jan 2026 11:22:28 -0800 (PST)
Received: from 010265703453.arm.com (unknown [10.57.51.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7F24D3F632;
	Fri, 23 Jan 2026 11:22:33 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de,
	neil.armstrong@linaro.org,
	dianders@chromium.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/4] dt-bindings: display: panel: Move FriendlyElec HD702E to eDP
Date: Fri, 23 Jan 2026 19:22:20 +0000
Message-Id: <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1769191673.git.robin.murphy@arm.com>
References: <cover.1769191673.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_112236_584445_5983FD2B 
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

The "E" alludes to the fact that FriendlyElec's HD702E is actually an
eDP panel - move its compatible to the appropriate binding doc.

Cc: <devicetree@vger.kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../devicetree/bindings/display/panel/panel-edp-legacy.yaml     | 2 ++
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml b/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
index b308047c1edf..afe7dc54ebf4 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-edp-legacy.yaml
@@ -44,6 +44,8 @@ properties:
       - boe,nv133fhm-n62
         # BOE NV140FHM-N49 14.0" FHD a-Si FT panel
       - boe,nv140fhmn49
+        # FriendlyELEC HD702E 800x1280 LCD panel
+      - friendlyarm,hd702e
         # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
       - innolux,n116bca-ea1
         # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 24e277b19094..a01cf025aad1 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -144,8 +144,6 @@ properties:
       - foxlink,fl500wvr00-a0t
         # Frida FRD350H54004 3.5" QVGA TFT LCD panel
       - frida,frd350h54004
-        # FriendlyELEC HD702E 800x1280 LCD panel
-      - friendlyarm,hd702e
         # GiantPlus GPG48273QS5 4.3" (480x272) WQVGA TFT LCD panel
       - giantplus,gpg48273qs5
         # GiantPlus GPM940B0 3.0" QVGA TFT LCD panel
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
