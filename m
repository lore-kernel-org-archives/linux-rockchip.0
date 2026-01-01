Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE07EE57CE
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jan 2026 06:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvMqbuK/lSX3TWzQpR4C6++MQVbM8gjtfEl85Btfi4k=; b=CyVmwfSowlepoV
	R2GyQhqX33aZmRmK5IuY36uuKd2zzR/hRzfAot8hIn05iHJO7+Zf7e5QbtgGH30R3HslUIJjSt7xu
	7wJkYjrpF1lfRvshl5W1lKql2iFEoYzvElFdJOl2QNsZH37iQXeI2RHsINEYpc2wJgHQEk54O5iYe
	eWL4IHqedc1HdOeTK+m99PAoHmtMN/ikbB5SZTpjq4pnjmNVEbfsBVfQEx0OJLdFGLRsiaWPoUP+/
	335kRgj9DaDIkzX9RE36+WVSzW5R/oGzIGFtXsrkDR3KFoZutVHTVKvstBlM2UaupmC/MdCR3IoL9
	dQ3iQuJDyTV004Xagu+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbCPZ-00000006ebS-2OVC;
	Thu, 01 Jan 2026 06:43:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbCPW-00000006eZi-1c3P;
	Thu, 01 Jan 2026 06:43:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D6D3B60097;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A069C19423;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767249827;
	bh=bjVUo2aFNJ16rr82vKMzFz1a1vqrjopgbDQB3E+Os40=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=b1xv4QTdJnLDIT5Z2cyzgkws67gD+ZXnzAiHbGWJzJ1DChH9NsUitFDasbrfuWt/V
	 qD/abqofC9ZPlk6ccuX+kqk6tFx9ayX5xgWy+beVK320q4ZUgWOti5vt5DNeP5SEnH
	 2bZ7rlXmMWlTMZWZmu9EN2N1SYh6ijE3Dmj1dvW0G20BT9H0xyBj4Ey2MGVQtdV5AW
	 62uyO3BEAX4p9sMGTtHW5TS6b18rnod0uaRy5ib9aidc+JnRMsB7/g5AVVJKL8VEef
	 ci/fqwlNu0gpMiJjgTUU1WYNKHTd9N60O4JcdUWMN5F3hpIsHkrAmJEdyT1q3iUV2v
	 jSQHwBPS0jjMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4269FE9410C;
	Thu,  1 Jan 2026 06:43:47 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Thu, 01 Jan 2026 07:43:11 +0100
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Enable the NPU on Turing RK1
MIME-Version: 1.0
Message-Id: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-3-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jimmy Hon <honyuenkwun@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1656;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=U3z//lMNVVVOhXu8sqy/9jYcCMBg51abWkRs/utgick=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVheiY0StyS1yWbqibJ/lLj41BFqKPrn8jEIN/
 /nbEkfbD6GJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVYXogAKCRA7Xj/jnsft
 6fuvCACpI1CWwJDHaE1NTbe+IO8QAYbUZwnQuwNNo19Dm7GvkaycTb6dxNh5wn76FwoB+JQYgeg
 rqwr+RyXuYCA7RgjEI3rLz8AR+357Y132Nv2CiL6ZwbHZhbu7emxVtgXfnAQQ7m/nBASZAKx/+k
 dkQIhO8epwFyoWdLBM+q1CcoXMjXT1O20AwQlDAo5G/Juz+hu7mkgAMe/j3arbveszy3Uuq4ZJA
 S3pPcZ28jB4LYM/WY/g6iXeDz55I+caW62uanaJroSjMgLiPUAYq/FYa9x3a+qsqPBY4Zjp7gim
 eBACVKgZNHFZP6Veq+d1mQt0VwMQB21Hi9ElXBG9q0oTTJIy
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
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
Reply-To: ricardo@pardini.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on Turing RK1.
The regulator vdd_npu_s0 was already in place; since
the NPU power domain supply is now described, remove the
regulator's always-on.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 35 +++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 6daea8961fdd6..b11d24dcc1806 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -171,7 +171,6 @@ vdd_npu_s0: regulator@42 {
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
-		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <550000>;
 		regulator-max-microvolt = <950000>;
@@ -293,6 +292,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	fan {
 		fan_int: fan-int {
@@ -333,6 +336,36 @@ &pwm0 {
 	status = "okay";
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
 &sdhci {
 	bus-width = <8>;
 	no-sdio;

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
