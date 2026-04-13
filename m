Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA4C6F531CE
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 21:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2GHgZPE+U6GVp5bevX49iAmLNUuNmMLertzTUFjmKeQ=; b=pa95f1cxg53nGe
	J5NfQxGjBsi/9pTQdArr6HCGMVJEvqLUMnAROJkm62phvAt41LIxIPXHp5LYehqXy8/pZp3MPnS0c
	1OoUKTzb3bpJalkhuQCPyt0AYZePF8GLwlUf6Z7PxGNnYI0+HmZIUxNYeKQJHuhrhlhM2RjZ/SC0a
	LLn8GdpCxbaaaRUA5q9FXMwvHQro092S31WR8ttvdOzmNG/oLXTkSK17uPrvFHlB9VnzXebtX6VR9
	v7r3zRgrho/JP4kelzt0xzXpT8zH+W17popGRHNKApOdRiR4UGIFuhlQ7FKYgjqF4olGL2c/hFCif
	pNQR1/1jtXtcKrvfZ9kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCPEF-0000000GPhP-3u7r;
	Mon, 13 Apr 2026 21:53:59 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCPED-0000000GPgg-2aZG
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 21:53:58 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5a2beddab48so4662166e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Apr 2026 14:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776117235; x=1776722035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AOXMNTIIXoqpY3VFkb3PMLMzullDNaoQaiXPYXq2Yho=;
        b=OPeCbT7h24Z3BSBrr5eAXjmHtIZhBvJoZxF9frsrQyHPJ5Wn8be0JR2PT8DJouaZl6
         d94kcWhf/Qo4akKEVWdqsKggQ8Hlsv+WTdN+v/8Nq5/pQDBKpk9adW1ZoKFuHJkXpJmE
         Sns+2uJ93aDDwiJmxI3p7F7bs0Vc46DArh7FfuPk+ggnXUNt4slfMgxM8s8a+XnKvc9k
         x4oJ4ZtRCuGvGJ/Z5+Az69OfLFoU1bOk0Hah5FOqvZetUJUfa1o2n/M+BoOwbuWp4KEp
         ueYzB+vb5/qz9Zqn7hUQ0ycbrvZKWcBhrRiQx75D4zmKUs6uUhFJ9jQ1q0S2UR/twVq+
         dZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776117235; x=1776722035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AOXMNTIIXoqpY3VFkb3PMLMzullDNaoQaiXPYXq2Yho=;
        b=ncseTxLj7UpDygvHKsn8zXOxmtp/a6N7dyocZSWcKUlYZ+cf9Gb6QSOuHfBlR6d+VM
         z3tPHHoNg3T+lfb4o4f3jMNUu+Xe1cS8a7P5+Q6IIvZp60GMn1UlGnAkR3v6eVrrZF7V
         0VSPskdoDTy6U2kEUfAoLVs3Vf57hBIJSiXP2W3Su6fV+RAD6jyBQ2cYeaewxIK0hLBE
         30CBncx7w4l/2RDaRgPj9l7MXUImeUNkBKFNH+eUoC2VkaXfgCWDVI03Wv+WKRO2TnIL
         axgB3GHbxkIMtYou2rCKbPnAVN5MKQdfhMNMiAGZ4El8esvwWrZtIR1wOZoLaS+26Dfr
         CVag==
X-Forwarded-Encrypted: i=1; AFNElJ/dgnhqdgSZSnhnLrh5BJQihhV+fJsmeLCyddUL62FASBRPNWTQSy9KyWeDOrZh4YZOLzmovG9RGejx/qoTIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx0TlYvfSjgi89xQLMq4N+zbq14Rt9XAWcQpokMeSa5CPkzyDZ
	kNFWzcSM21H4PQVpgigz+lFmPsRWuKURl150+AG66bNGrMQZs/IXDmv5
X-Gm-Gg: AeBDiesywMsqJnC51fF8pzNXbGLhRJdT/K1VWsX1edHgoVpUJkqC/CIZZ1KWr7+Rt5E
	0V6JleWkRdJCPfLkjrs8PMfTfYOkhRBj9KxVpA6cIZkr6TfNoUJNcNeGOkXuFFExM6iKtnL7L10
	j5GbuFN5HhNSEVfNNLJG1Qz6QR/PUmnumeBNHQShRCd3p6tTiCOAPOf8mVpgpJ0In6bEt8nEtA8
	bi6tFMZBfuCjokmy4XQk5ah923sJttBL+gJgWBC1A+e3z9NqdWmpL8Z0cCidNiCQ7KQbmUIIMhW
	e0+VmDrDUxxo5nASOMh08WPZfPRKu68jeUo71lqF4rVqok8cLWk5WwnyCxVXG2TWsENvQqtqmcC
	tcOrlswnQUcMTSCGFK5yktM5+6M8NfpX+7hgjZjY192lbT6Posj1Wkp4Vfwm8wPJ0rtj33O9pQu
	uCt4NoukiNMhCIFca6P9A2s9pImGRGXH37XarJw8+nH4VpW7eOoPiXoMxEXfVjQsMBL3dcVuEbB
	2vzp8j2NIZBVDjp1uHOmEz7a8tVWw==
X-Received: by 2002:a05:6512:108d:b0:5a4:d4:5c5e with SMTP id 2adb3069b0e04-5a400d45e20mr1006936e87.22.1776117234891;
        Mon, 13 Apr 2026 14:53:54 -0700 (PDT)
Received: from rocky.so.lan (9091-40f8-8d6a-8ea6-6a01-841a-07d0-2001.dyn.estpak.ee. [2001:7d0:841a:6a01:8ea6:8d6a:40f8:9091])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3fe65214fsm806370e87.49.2026.04.13.14.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 14:53:53 -0700 (PDT)
From: Sten-Silver Ots <stensilver@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sten-Silver Ots <stensilver@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Torsten Duwe <duwe@lst.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable the NPU on rk3588-rock-5-itx
Date: Tue, 14 Apr 2026 00:52:49 +0300
Message-ID: <20260413215301.4656-1-stensilver@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_145357_677218_596433EC 
X-CRM114-Status: GOOD (  10.42  )
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

This commit enables the NPU on Radxa Rock 5 ITX board.
The regulator vdd_npu_s0 was already in place and since the NPUs
power domain supply is now described remove the always-on property
from the regulator.

Signed-off-by: Sten-Silver Ots <stensilver@gmail.com>
---
 .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 35 ++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index de154adb1497..d3ab6c68a60b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -421,7 +421,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
@@ -683,6 +682,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hym8563 {
 		rtc_int: rtc-int {
@@ -802,6 +805,36 @@ dp1_hpd: dp1-hpd {
 	};
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &pwm14 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm14m1_pins>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
