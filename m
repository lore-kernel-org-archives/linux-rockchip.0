Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C08C38142
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 07:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pInIBhdEEW/Is0hWmOrDm3qQ5wqJ3LcAZc5dYp6gRTg=; b=FyuYMchV2V58eY
	Oa4hmTJHjwBDIJ+rEh/WvhAmiLRP5WAQ3dXVZD3fDJZLNmPIhZJki0xgN7nc4PUx2XStIJfyM5YLd
	DxuDCjMvYyHLHrf18hdah40b2+i2qv6w407C6IHkREabxYrxeTrHP4nXsR/kRfKTjV1sZvDuuFBwE
	LCoITHvDmG4548o0y1jvURWmh5IzTVSYdR78JluPOXkfAXnQ3tQNHVsbG8v7GeSA2URjWWnitzhzB
	Ys2foGZCHbsqOFxyL2OMrwkIgJJZMX7XlpkZM3MxF0Y51A5UYYEwG9yuDKOVLWTVuJBU+NFUd9q/E
	QWFWFtZ0rzF9xNhUnoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr5Q-00GB1W-GJ; Mon, 23 Jan 2023 07:17:48 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJr53-00GAsz-1X
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 07:17:27 +0000
Received: by mail-pj1-x1030.google.com with SMTP id u1-20020a17090a450100b0022936a63a21so14454601pjg.4
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 23:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=42R4c843N+9FNQP8hHKQVlyc9l8sQ4OucSn1xsY1hAU=;
        b=iuAO05Cqc7TibS/2AjBK9OF4YSvQ+KYPtV8ecxQLxqC4a8HkbcsftI26XOdtPnlMuH
         fO4ULtQr4lFKylg3kdBp95gvu8W1gAOLFJcTto/KBxiIZAA1fihFu0Z/OUSJtOifBRmY
         0het6htv1U2pwlZPLGIJ7nvODcKRlpQSCD+3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42R4c843N+9FNQP8hHKQVlyc9l8sQ4OucSn1xsY1hAU=;
        b=wJ3ElEE0aIu4vbuaH1QqrS0L1ouC8ccO230DJ9mh5UVqpODBQfeHOhJaJ6eql2CvLP
         3XVeBHlbM+kX1iCBfsz0GDuZzCtpqFCH9E1qPFfUP9WsY5tNyDK45uMSF0I3+0XEjXu6
         AUmhwqeKPnDlkq4+2okO7JEDD7B/MgbY1VI4GMH7bJo3Gm6NQX1X3gdkpI4Lly1GJrKV
         uNMMxg1Ex4SlGjPmFQ+XAmB+nuF0/wkh+pfkYskrMsk7DDtrfQrW64Uci2SpIAVOATXP
         Tnbx3c9lf46vHkYLNk2Ci7kl8TpwnORAZx2vSj8kLFpBA7egyE89s5Xmx1KViu8FDWnB
         hGfg==
X-Gm-Message-State: AFqh2kqh+992QOYNQp7fxOgMEB1rIiq4qThqqJfbOoCyHrpQfMxP3Td2
	8shKYWDRN+kvWpr68vD73HFxFA==
X-Google-Smtp-Source: AMrXdXu0tzRY9cZn2S4ClWD/KYgzUZWc6dop9Wi4ucM2HsK4KYG4LPUt2rWQEYNlTN/xx5CRObK/Hw==
X-Received: by 2002:a17:902:b611:b0:194:8dea:44ed with SMTP id b17-20020a170902b61100b001948dea44edmr23243589pls.30.1674458243141;
        Sun, 22 Jan 2023 23:17:23 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:3847:3e45:1d7:787c])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm17742091plh.5.2023.01.22.23.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 23:17:22 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Date: Mon, 23 Jan 2023 12:46:50 +0530
Message-Id: <20230123071654.73139-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_231725_127317_E5A210C5 
X-CRM114-Status: GOOD (  11.89  )
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

The compatible string "radxa,radxa-cm3" referring the product name
as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".

Fix the compatible strings.

Fixes: 24a28d3eb07d ("dt-bindings: arm: rockchip: Add Radxa Compute
Module 3")
Fixes: 7469ab529bca ("arm64: dts: rockchip: Add rk3566 based Radxa
Compute Module 3")
Fixes: 096ebfb74b19 ("arm64: dts: rockchip: Add Radxa Compute Module
3 IO board")
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip.yaml  | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 98afd7c6b8e6..35f74eda30ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -624,8 +624,8 @@ properties:
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-              - radxa,radxa-cm3-io
-          - const: radxa,radxa-cm3
+              - radxa,cm3-io
+          - const: radxa,cm3
           - const: rockchip,rk3566
 
       - description: Radxa CM3 Industrial
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index 3e6578f27ec0..4f8ac9fbbf7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -11,7 +11,7 @@
 
 / {
 	model = "Radxa Compute Module 3(CM3) IO Board";
-	compatible = "radxa,radxa-cm3-io", "radxa,radxa-cm3", "rockchip,rk3566";
+	compatible = "radxa,cm3-io", "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
 		mmc1 = &sdmmc0;
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 23a85a13311a..0bc747997c14 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -8,7 +8,7 @@
 #include <dt-bindings/leds/common.h>
 
 / {
-	compatible = "radxa,radxa-cm3", "rockchip,rk3566";
+	compatible = "radxa,cm3", "rockchip,rk3566";
 
 	aliases {
 		mmc0 = &sdhci;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
