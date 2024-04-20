Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D236C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Apr 2024 13:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NYf1dx9OP5MbLY/V12npJBNrvF+NsCLXEYHx2sYy1O0=; b=oYuhQrQhZoj6xq
	ij+Xsu4qm5xWdmm9GGxU54da/6lqPbwGl23THDY+ZQc56gg4dn8ocpLL2m+rYfL27Kq5pfvcpfrik
	/A40F/+V3z/Gq5A8EoaEesLcOwJRfHNqMmJQULxXGy0m24PYO40fVZCMpFqFBqBH8UYvPzlCvsWNB
	LyXLtDMHiNsVBgblCTM9N4oLDIYqshHv+xnidcEf88c0HQe3oxPbKCSV6AI3QYdY7m4jVlW2uqOQC
	KPaokwIKPr3Urpi4T0i2wvUXFvo0AZwp8gbjKD3kTBVtzjcWZt3BUnlgnyS+JlYK2zONm57iJQAID
	Vye+5wn8lsDxw17j+O1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryAZs-00000008XZt-3TC3;
	Sat, 20 Apr 2024 13:16:24 +0000
Received: from mail-gw3.jing.rocks ([219.117.250.209])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryAZn-00000008XYI-3wzY
	for linux-rockchip@lists.infradead.org;
	Sat, 20 Apr 2024 13:16:23 +0000
Received: from mail-gw3.jing.rocks (localhost [127.0.0.1])
	by mail-gw3.jing.rocks (Proxmox) with ESMTP id AA609EA94;
	Sat, 20 Apr 2024 22:04:46 +0900 (JST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jing.rocks; h=cc
	:cc:content-transfer-encoding:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=mail-gw; bh=Ekh+
	vb1T4uv7G/SoGT6Q0xLqqdJaTLg2htjm/0kf+g8=; b=mxYXu2PrPRUvnggtCw3t
	T4HRKMEHfrZh1pY/WHlYvhQpwWOHJenyxQ44e43g4liLbWX6WS82bbNvpRTFeMTz
	4sWdYLuLlTmETtPZX2ixZiG+iTJhVYhZPqtYyfsuiY+j59OVrcMo+BEoxk0AAuV5
	QpFHoIxPqreR2tU3sZFV34qFOGCMGSwvIf1LeU5QsbjRdy9q4/ehfjfHstVijnmv
	t7OSFQQBvD54OdWg7tAmWpXJAxyPFGQpF0R8n5M7POT85uX/u8c3vdSzbiKNVKbn
	SfSyPnFhUc6iTzrxWL65yen3PsOxxjvfY9UiZeq/JknyE+4r27o2qdj5nbmGtPla
	cQ==
Received: from mail.jing.rocks (mail.jing.rocks [192.168.0.222])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-gw3.jing.rocks (Proxmox) with ESMTPS id EDCEAE951;
	Sat, 20 Apr 2024 22:04:43 +0900 (JST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jing.rocks;
	s=default; t=1713618283;
	bh=/E2SsRI6+1CnMkzJGqUluzn1ZgdJDM+ZQA8WYx/El34=;
	h=From:To:Cc:Subject:Date:From;
	b=PzYpkLDTdZbu4Bl34ShZimDAkm0Kk0lrub53OqJRg0H7z0mTGHPtCkcChdyAIBP3m
	 C7jPe0O5fJlksBZl2OufUv8Lb3WrCcevCrF5/UlIiGYLOsizV4qcf9OqBq1/As5cBp
	 0IkT02fIcZ8XuuZ2A/rclotBXLuJJX3pomKwzDoz7HTW/guYJm0clVPucl8E49X8+l
	 T3rYawFDymAhrcEtK9M1vqx72Q/erS2Fn3329UAY7fAdQdE6wsisvEMMrtg6kRjY4+
	 g0hDCdNDfCeUnZzsYCta7DPxhcnH1q0K8oqfDaqv974zVIe9NmPt++a1vcpR66/5aN
	 ODUkEr8Rl+Uqg==
Received: from X570AM.jing.rocks (X570AM.jing.rocks [IPv6:240b:10:f00:1b00::7e82])
	(Authenticated sender: jing@jing.rocks)
	by mail.jing.rocks (Postfix) with ESMTPSA id B8FB22A509;
	Sat, 20 Apr 2024 22:04:43 +0900 (JST)
From: Jing Luo <jing@jing.rocks>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	cfsworks@gmail.com,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jing Luo <jing@jing.rocks>
Subject: [PATCH] arm64: dts: rockchip: correct gpio_pwrctrl1 typos on rk3588(s) boards
Date: Sat, 20 Apr 2024 22:03:55 +0900
Message-ID: <20240420130355.639406-1-jing@jing.rocks>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240420_061620_962263_3890FF74 
X-CRM114-Status: UNSURE (   9.15  )
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

gpio_pwrctrl2 gets duplicated by both rk806_dvs1_null and rk806_dvs2_null
gpio_pwrctrl1 is unset. This typo appears in multiple files. Let's fix them.

Note: I haven't had the chance to test them all because I don't own all
of these boards (obviously). Please test if it's needed.

Signed-off-by: Jing Luo <jing@jing.rocks>
---
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi                | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts              | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index cce1c8e83..5fc40f16d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -357,7 +357,7 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index c0d4a1532..d9bf67525 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -182,7 +182,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 39d65002a..7d7303f8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -452,7 +452,7 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 1eb2543a5..9a196836e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -396,7 +396,7 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index dc08da518..6b9206ce4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -318,7 +318,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index e037bf9db..7f4d7bb9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -479,7 +479,7 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index ce8119cbb..a5b76e24c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -528,7 +528,7 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 25de4362a..73700d77e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -336,7 +336,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 00afb90d4..5c99636a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -414,7 +414,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.44.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
