Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B47CBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raZ0sYORUWvQ1kIG+ueUYzGaiFGrd8IRMKE4RmtPkJc=; b=XG7jTnLIwfbMDN
	2ugEwI327l0l0k1/Zj84KeLNcrbsky3+L67ixb5y7UHB59K8uhSzur0eVM86M1m5wqb9G1A4TrLJi
	AEkdOF1gzwTci7dVdrLkzPcYeg4Bu5PKpdXChie9/HC4ZPc8xXEwlfHypAgW5UE2Ydul70T39aTPG
	ldPlQK+LbzclU5YVUI+8xx4zR+vNHZhIcbdOVhcCg3HHLmnUS2Ah5ffVImfCqBaXLooKmjBAh+7AN
	s9B4M5pEifnKKDEvlLH+ZbivmNN84xdCKcHJHNacCgKivdodNCTWH8IoCXLD0K/rSOGW3tL2MoHma
	DeAWTFWpkdTd2A6rD73g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbR3-002ikX-Er; Wed, 15 Dec 2021 21:03:37 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQT-002iW6-Pn; Wed, 15 Dec 2021 21:03:03 +0000
Received: by mail-qt1-x830.google.com with SMTP id m25so23211431qtq.13;
 Wed, 15 Dec 2021 13:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qtvoh3tWKPnOw1Z92Liu2Y3L35YeCARO/v2RhKvSqa0=;
 b=mtzYePaF3q6HIoiwUrD0Qpoz7PMauWz+vbmYJ+etGbJ+OJRihIBkniO1SJtHiYRvBA
 IWAyQW69QJiqB8j5Nx4u0aivp7TATGW+K6mrQAjEeEDN5q1V5kbNCR9vDoKFgOGr47Ol
 NXJcJIpg6es+Ku0I6+uFDD2KW2nx3T0zXhQKr5sOuZ3d6pZ1ntQ3lY86HAy/4NCQEess
 bpOhLYfvUo5wSZFFowYAcCig4XlKqjKf99PPPd1cZdXk6dsnBv/USG70cVj9Rfrzm/65
 FqunVFl+qqIxwchUM4kipSLPbISHrIKn4BdcgWzz1bUbQPIGW06zFWJCpuMfjYuzsb6R
 xNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qtvoh3tWKPnOw1Z92Liu2Y3L35YeCARO/v2RhKvSqa0=;
 b=pO3BcEh325x0Sjm5taInoklx4HZGKJc2sG7x+O6E9TVqvXH5tjsoM8/mRSePiiGRD0
 R4sbi8YCTmvKNejuWYEYRS5JGpDlBIp2VY5Qw7H/Wfb0vT2osOWhfJkjAuThyPv0ecLO
 fW5LcKmpgqn9x+NPBDSDtYZ64qds3DWIYwuesQKq1RAHtXEFinWpD+DX0DEYi4GfrdZr
 hQOLzU8S766FoHGEQRxPItB5NQZgz/oMMSXs8EraR2O5QI3ODD1kHQKr5zww5u9glNHh
 hV7SyRBZtywkuZJxNeINlR/HryrgZ13pxvUB4gOO5G7j4PZc2a+t2q9JL54WQqr5Erx3
 GIoQ==
X-Gm-Message-State: AOAM533SVdIjD9WbVY+EmCl6Lv09BmvJZX3QesuIRxaRCH445wY7I+zs
 sPmGyYUN/8Vb+ZAS0H60x2pSzRNHcmT4UA==
X-Google-Smtp-Source: ABdhPJzCgrybsdVfbHcMg+6x0kMS2UAJKkjdtqiz97/N6CuLvJ+knNOQtRgNMNMWkdBoAQCjKsaXuA==
X-Received: by 2002:ac8:5e4a:: with SMTP id i10mr14343170qtx.569.1639602180345; 
 Wed, 15 Dec 2021 13:03:00 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.02.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:02:59 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/8] dt-bindings: phy: phy-rockchip-inno-usb2: add rk3568
 documentation
Date: Wed, 15 Dec 2021 16:02:46 -0500
Message-Id: <20211215210252.120923-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130301_859037_13491761 
X-CRM114-Status: GOOD (  12.42  )
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

The rk3568 usb2phy node is a standalone node with a single muxed
interrupt.
Add documentation for it to phy-rockchip-inno-usb2.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

This was the best solution I've come up with for this.
I avoided creating another binding since this is such a simple change to
the actual driver and would likely require renaming the existing
binding.
I've tested that this correctly flags if the interrupts are missing or
incorrectly assigned on both rk356x and rk3399.

Thank you Johan and Rob for your constructive feedback.

 .../bindings/phy/phy-rockchip-inno-usb2.yaml  | 44 +++++++++++++++++--
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index 5bebd86bf8b6..4b75289735eb 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3568-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -50,6 +51,10 @@ properties:
     description:
       Phandle to the extcon device providing the cable state for the otg phy.
 
+  interrupts:
+    description: Muxed interrupt for both ports
+    maxItems: 1
+
   rockchip,usbgrf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -67,6 +72,7 @@ properties:
 
       interrupts:
         description: host linestate interrupt
+        maxItems: 1
 
       interrupt-names:
         const: linestate
@@ -78,8 +84,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
   otg-port:
     type: object
@@ -109,8 +113,6 @@ properties:
 
     required:
       - "#phy-cells"
-      - interrupts
-      - interrupt-names
 
 required:
   - compatible
@@ -120,6 +122,40 @@ required:
   - host-port
   - otg-port
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-usb2phy
+
+    then:
+      properties:
+        host-port:
+          properties:
+            interrupts: false
+
+        otg-port:
+          properties:
+            interrupts: false
+
+      required:
+        - interrupts
+
+    else:
+      properties:
+        interrupts: false
+
+        host-port:
+          required:
+            - interrupts
+            - interrupt-names
+
+        otg-port:
+          required:
+            - interrupts
+            - interrupt-names
+
 additionalProperties: false
 
 examples:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
