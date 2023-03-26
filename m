Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3953FC77B60
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 20:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w3nJDeTQu6B1Bw+T7QtLwSSFWohDlisu1ptknU1yjkI=; b=rnMiUodHJsc207
	d/EKKJE+yzKxqyb4MTuPdF5fDgZlXyMPEDYRwiNTl1x3RQzIBPFqNPEfWBPMakF7kjEHKppM9Mv/6
	P1uwh5DBY7rTh7i0TzEB7i9Tek0Fe3SaGYmTBu5uliFVyBaFBobD8PaGvod52jXY7PGGSg6xbmC57
	x4/X9qxnAyn0gXuBrLHBNfUByoniQyz1n9v5fpM0a3opJCUDisMy7MEkYpwYRXnBBLTt8rhGPC3vn
	qbaIRXmX5QVamMdZM3+tUogzZ2Hm3HqSl4kSNN66TGo8eYFiSjTHKTp6e+Ov1wdXqOlYAe1XlELui
	Xhs9SIznrB/XHXQZ9PWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXF2-009BTg-2h;
	Sun, 26 Mar 2023 20:45:28 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXEy-009BQK-0l
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 20:45:25 +0000
Received: by mail-ed1-x52f.google.com with SMTP id y4so28037985edo.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 13:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zKeqvPxm46B8O4W9qzQW2dMP+9bNVOZP8XOxlGMFt78=;
        b=e/6HJAScT4RiWqlfn8XQ3KWA+0e55h9JsVVPIYhIF6NSHAAYuUJuqqAqIgZaBJjKIY
         jDcWTFbI34Cq08FT/AW+ngu6EivgEN5dU2Zr2Pj00tDLi5qNQlNFmJYFTR/SB3WHvjqT
         O0kikH5paSq8UX1KK8TnNwD4bOVmyszHMO/kPW9e15vCg/ct/UHRDKw/NIT2Z8i9IQg6
         NmM9FDONp2kW8xo01KPwUWxShJDzHdjErq0HYWq2OdGQ+pwDNIH8GrT4r0uNHuIb0vIm
         2pAcpzz85qCnHTIJAOn+0pdH3N2QWYfB/29FpoL4sXi2MM7+oiJ4kOMb275bwd6axEnm
         Urlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zKeqvPxm46B8O4W9qzQW2dMP+9bNVOZP8XOxlGMFt78=;
        b=4WZk0bUngFZIkNeCCACoG1GTUCbKLtHzm84jri63eI3CAtqSg30a8RRuHnnPwFfd2+
         zMZcCtqlFjPCvUVsRRnxcl96Y0sm+IdMh8y0tes3hcH87bmVKPq343ZKQnx61YI7D3di
         rtI0dzs1+YJWpofnhdOaJTz1C+wWGSQDvXl94vAIIZl2IlUj0GZS401SdVQkxB2CGGMk
         6qnmgLzFXA8qbOfsnPDoJkO8Ao4jI40r2CxEOvZ3jiMwjeeaQykLAYmSMW0gjxACpoVb
         QOjQhK7hkrtBv3eJLnmsXLXKoWbSbDa8Qa0kMnu7ZaHq0BEmhMdvHYMw1TkT1GrjHsLG
         4DCg==
X-Gm-Message-State: AAQBX9efBwz/fk8XR46nVJ37uXL9OiTaAaqNe218RpRybKSQvOBjwHKd
	F1hFlYMoAMsHN9yvXpyJ6TMPkA==
X-Google-Smtp-Source: AKy350YvH7Ps1wazgDh82qJwbf2I7lTAQe/OGi0P5E2EuabFszjUkUyN/w0BWr357mArwQ7wiKJ2Aw==
X-Received: by 2002:a17:907:724d:b0:93f:3027:ee5f with SMTP id ds13-20020a170907724d00b0093f3027ee5fmr7636908ejc.70.1679863522281;
        Sun, 26 Mar 2023 13:45:22 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id ga5-20020a170906b84500b0093e23d03d72sm4090982ejb.177.2023.03.26.13.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:45:21 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: correct panel supplies
Date: Sun, 26 Mar 2023 22:45:18 +0200
Message-Id: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_134524_274898_57CBBCA7 
X-CRM114-Status: GOOD (  11.52  )
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

The Anbernic and Odroid Go have different panels and take differently
named supplies, so move all the supplies to DTS defining actual panel to
fix warnings like:

  rk3326-odroid-go3.dtb: panel@0: 'IOVCC-supply' is a required property
  rk3326-odroid-go3.dtb: panel@0: 'iovcc-supply', 'vdd-supply' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts | 2 ++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi      | 2 --
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts  | 2 ++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts      | 2 ++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts      | 1 +
 5 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
index 61b31688b469..ce318e05f0a6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
@@ -24,6 +24,8 @@ vibrator {
 
 &internal_display {
 	compatible = "elida,kd35t133";
+	iovcc-supply = <&vcc_lcd>;
+	vdd-supply = <&vcc_lcd>;
 };
 
 &pwm0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index 04eba432fb0e..80fc53c807a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -235,10 +235,8 @@ mipi_out_panel: endpoint {
 	internal_display: panel@0 {
 		reg = <0>;
 		backlight = <&backlight>;
-		iovcc-supply = <&vcc_lcd>;
 		reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_LOW>;
 		rotation = <270>;
-		vdd-supply = <&vcc_lcd>;
 
 		port {
 			mipi_in_panel: endpoint {
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
index 139c898e590e..d94ac81eb4e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
@@ -83,6 +83,8 @@ button-sw21 {
 
 &internal_display {
 	compatible = "elida,kd35t133";
+	iovcc-supply = <&vcc_lcd>;
+	vdd-supply = <&vcc_lcd>;
 };
 
 &rk817 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 4702183b673c..aa6f5b12206b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -59,6 +59,8 @@ battery: battery {
 
 &internal_display {
 	compatible = "elida,kd35t133";
+	iovcc-supply = <&vcc_lcd>;
+	vdd-supply = <&vcc_lcd>;
 };
 
 &rk817_charger {
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
index 1b9769ccfdeb..35bbaf559ca3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -144,6 +144,7 @@ button-sw22 {
 &internal_display {
 	compatible = "elida,kd50t048a", "sitronix,st7701";
 	reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+	IOVCC-supply = <&vcc_lcd>;
 	VCC-supply = <&vcc_lcd>;
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
