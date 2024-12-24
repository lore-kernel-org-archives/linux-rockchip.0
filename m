Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94974E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 10:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLHeq8JyYNmHoC9DdikEOgZNt33/Fyiei2E8iPb3ttc=; b=x7wF7FfURAo3Rs
	l+OKerj9wH/E72GFQjRAD0w59+hypZaSNqg/3OLz4VusqUs31Fa7FB4oMCIlIyGOGeO+V+eZLzt/S
	oUaxmUpaBRsQpXv8pbyrI7EZ6oj18HdiHwJ7i5bb2lxj0j5/7aAnhFQvZ2IrvwCMkFOvaqnAvh6k8
	gKVEmaOXzy6vxORMBNmLHNj9KhrCHqPA5qMNikT5LT5NWINj8myyWad/AuS2hehXzzvI6Z59ZNp9D
	y0g/Tumy73nPJ8PhF6Maxq/Q5HGtduBYLrGWhUlqxV1cNwNxiu85EpAABe17f/INuJFyEcSCuUKDy
	fa6q/jBVRJ8BWlYb/oGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1lu-0000000BgvG-3CMt;
	Tue, 24 Dec 2024 10:04:14 +0000
Received: from mail-m121142.qiye.163.com ([115.236.121.142])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ1Xj-0000000Be1M-3vO0
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 09:49:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6aad4f0b;
	Tue, 24 Dec 2024 17:49:32 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH v2 06/17] dt-bindings: gpu: Add rockchip,rk3562-mali compatible
Date: Tue, 24 Dec 2024 17:49:09 +0800
Message-Id: <20241224094920.3821861-7-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094920.3821861-1-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhCS1YaGRgeHUxPHk0YTklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f81258f503afkunm6aad4f0b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6ATo4SjILHEojS0oILCFR
	EFYwCjdVSlVKTEhOS0hITExITU5IVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS05NNwY+
DKIM-Signature: a=rsa-sha256;
	b=T7LND+XfDLkMaBiBZdsXWlMZ20wC0hDD2YrIeXQLdN2oTHRdXeEfAqIqS7XRckXVUKbjvhX/ExBAVZNrzvu4oBR5u0IEsbf88I+onTvMahEKB+q28VzzCjIHlthBYUHNmCw3NmzUgDf0iZ84SS8R2PQkZXjiB7vdDpC9tRzbTFM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=9e0fkON3OqPWW/xMJm4rwqQ0FxbNptJZ1Px6QOShTng=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_014936_159915_11B114F0 
X-CRM114-Status: UNSURE (   7.07  )
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

rk3562 has 1 ARM Mali-G52 GPU,.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 735c7f06c24e..b0d4806614aa 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -25,6 +25,7 @@ properties:
               - renesas,r9a07g044-mali
               - renesas,r9a07g054-mali
               - rockchip,px30-mali
+              - rockchip,rk3562-mali
               - rockchip,rk3568-mali
               - rockchip,rk3576-mali
           - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
@@ -60,7 +61,7 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 3
+    maxItems: 4
 
   clock-names: true
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
