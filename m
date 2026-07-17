Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F17C44520
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 07:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86D6EtepeOsF+ZaUOggDoqhwAdAB4m0cGz7Ls3tmElc=; b=Q1fCt90aWIe2NH
	r+EN0iGuY+IT04zoyQ7agFkEotyCuWO7ogDQC5EN9VlkZf7ROvAXL+f4OqDPEkVc7bJk/Zm7wjnHG
	NY27NsyuKe4iSvshpFFqAUA8y2dut0P7NqEBMhajf6qtcUmvM3vUEqsndqToyVlxZFA9pNwQNWsBL
	w7wEkNSLgp4NhRIJap8uN8AceytltC1KUe8xsDvIv/vhr6Iw5fUL9EpIU44GYc4NiPhFs9lcO48O2
	i9LhWQg+d7qaM0ypNImitn7xQ0L/fpY7fMfPVE4A/o3KSPzQLw0saqbRNcNhfkvyWGL6Cmjd5VXSB
	HzzoZm/Lu2Cf0QjbrbXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcuo-00000001Op4-0Gqd;
	Fri, 17 Jul 2026 07:23:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkcui-00000001Ogg-3eBV;
	Fri, 17 Jul 2026 07:23:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B09843D24;
	Fri, 17 Jul 2026 07:23:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C777C4AF0C;
	Fri, 17 Jul 2026 07:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784272996;
	bh=nVtNc2VmZD4F7sfKsw28OjiO5gd4yZY0UtdlTmzLCkY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=gRYIVwiEvhYBuW+8j28X73mkgnGqiAHj4rh3ZQnQwj9RvYghEvZfIfTb1Cr4Z1Z1Q
	 i3hocfivVpsfc9kB2LCL+C1MIOoxiLd1S+GvIixN3OC3tUVCY35U1/9rAQQaIlu6VH
	 wViayFtZBtMlX/KmFUdYULHk1njtR8ELpp5y5+3HWEIccjaBWm4auOLY/Lwwg1morX
	 PYgHQ7BG/kDpMkKfuQOhr7qSFzIV56WtvRFq1Ivc3zdFFq174wtDsLajCgHQ522nd5
	 R3sPY18raOXh9hd5IJYEAUGDJr4zTAq553Gpx4YRkmn8T7D9TzXml+iGFN1Jp4rgbm
	 az9Fpa2Z5UfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C5B3C44517;
	Fri, 17 Jul 2026 07:23:16 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Fri, 17 Jul 2026 09:23:05 +0200
Subject: [PATCH v4 07/12] arm64: dts: rockchip: rk3588s-nanopi-r6: remove
 useless vcc_3v3_pcie20
MIME-Version: 1.0
Message-Id: <20260717-nanopi-m6-v4-7-b31391a72e41@gmail.com>
References: <20260717-nanopi-m6-v4-0-b31391a72e41@gmail.com>
In-Reply-To: <20260717-nanopi-m6-v4-0-b31391a72e41@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, diederik@cknow-tech.com, 
 jonas@kwiboo.se, Joachim Eastwood <joachim.eastwood@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784272993; l=1725;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=EfLs2ZxoByu/f+Z3fMnXZ7XWXMt5chC8hLRJwZe05Cs=;
 b=FGfR5Yj9WqI/vD3sRKD3w4TFcryXdmSUeTVxqhSYzh2ESBja27MFIkg6RWTqv2DWRTvJZjcut
 n2bucUwomxdClIDCSLcYWRMCKUipwqMaeNmLVhD6CjRZxNK3G23jgOV
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

There is no separate regulator for boards with RTL8125BG MACs.
The power is only separated from VCC_3V3_S3 with a ferrite bead.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index c12c05247d80..30e09352bbe9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -131,16 +131,6 @@ vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
-	vcc_3v3_pcie20: regulator-vcc3v3-pcie20 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_pcie20";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3_s3>;
-	};
-
 	vcc5v0_usb: regulator-vcc5v0-usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -361,7 +351,7 @@ &pcie2x1l1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_1_perstn_m2>;
 	reset-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc_3v3_pcie20>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 
@@ -370,7 +360,7 @@ &pcie2x1l2 {
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>, <&pcie20x1m0_clkreqn>;
 	supports-clkreq;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc_3v3_pcie20>;
+	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
 

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
