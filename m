Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDCDCF8573
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw0Td2n4RzuBzmYD92rxlFBrolbTHO7UhdtIo8PQ4vo=; b=fCr0fYJptsv1Lh
	AIqwdbncJ5tF+LWTjteA5myKAo5n/tc8uHEHSNWBsCdA1IHrRN+gzBwdgkjJEieDGV1ib4BoS1una
	ECwIubNO/5QfLEiOz63lpkBvRdbmW7zrLdLm+ICNWzDa3dN7FkUtMf8zesPuQTHd9iyLQkFKHY+fQ
	T38b9VHZgep6dyMrOlP2fRkWw6KRnyQdJtelQePiE/7/OaUhfQvYFl/NsS7Ai7kUodJTK8TQfw+VZ
	7AgyYkLfL82ILmUE+8R9in529ZeYAETLXNq251s1TVt4ef1KP5b96wYjKFTxRiCylvXt+Qm8hCWnf
	QJJzybql9ztgtAhO1mkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swIUV-00000008iKT-0rf6;
	Thu, 03 Oct 2024 09:51:23 +0000
Received: from out-187.mta0.migadu.com ([2001:41d0:1004:224b::bb])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swITF-00000008i2I-46od
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Oct 2024 09:50:07 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727949003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r+0IzIZkqo5OWrkJ+sBCX8uW4cDLePoKImfyKH4X9YE=;
	b=W1N5+oc3mEKfyfoIyE1MM5WE8u1xF/IsOE1qP/oXBqGQhbmIh3t4dItljrsJ/6Dh8eC7oc
	lED5Pfthn+HpoWze0z04a3iKV1nClJcWKrcPf9EAy20qIUGV64nc7APB3ZvqCNlsm+OWVL
	yFOnQolLyEfCQaWlMRVB8XcrgVw3p0cDK9Yeu5YiiQmbsPrLz6F9hrcBFmV2a4hUrZ8s4D
	X7Uc7p95EuP+DrBdVCnOQO5osXSDkH1f2ZQ4E7I0oTwRPidN5CH+IaxLZOZrVfuEPKI3Hx
	7uNNPB9ieVbOzU8JuM6zwel8Fx0c0e53YbUDuxjB/6ya0hpGI3u7Wr2G02pvuw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 1/5] arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
Date: Thu,  3 Oct 2024 11:43:25 +0200
Message-ID: <20241003094927.62042-2-didi.debian@cknow.org>
In-Reply-To: <20241003094927.62042-1-didi.debian@cknow.org>
References: <20241003094927.62042-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_025006_194492_7FE665E4 
X-CRM114-Status: UNSURE (   9.44  )
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

961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")
made "rockchip,system-power-controller" deprecated in favor of (just)
"system-power-controller".
Update the px30 DT files which still used the deprecated variant.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
index 5eecbefa8a33..dd715d22d4d2 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
@@ -50,7 +50,7 @@ rk809: pmic@20 {
 		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <1>;
 		clock-output-names = "rk808-clkout1", "rk808-clkout2";
diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 0a90a88fc664..c9d7b32da997 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -189,7 +189,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
index f18d7eb9a9c7..d22ea65b364c 100644
--- a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
@@ -70,7 +70,7 @@ rk809: pmic@20 {
 		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666..eb0bb78cff7d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -127,7 +127,7 @@ rk809: pmic@20 {
 		pinctrl-names = "default";
 		#clock-cells = <0>;
 		clock-output-names = "xin32k";
-		rockchip,system-power-controller;
+		system-power-controller;
 		wakeup-source;
 
 		vcc1-supply = <&vcc5v0_sys>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
