Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C6F2EE49BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 20:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6qN6K+EWh4gDLWIqMGz2mLw5psum7ijdSTssGJLtmM=; b=H20eNzg6qYfsQR
	LqJE/j20SNBNjnO/pS4dVF88CulOL8bHdajTIH63KYBz/jnj+DwFmp7l7qrErl+ibbU9ygDbROzXB
	bzoEQk+DE7jKngZVJx/Od+oDeKZY7y7107p+HIrVzVwuc4lAZsotParhf0YtQLVQl8SjYVag9IpCT
	ZAMEUmSb0dOmc2FRxyc0eMw44uLVEUFZEqwL3s61NltaBPIIoKPH/eLYrSTzt/IqqlHV3rPNyih61
	WTpgLeGLS6UVp6ajji5jQH/3BwCkusIu5J88EXeIU4opdbCSaEaA49EFqvvNDwp1blHAeZD3GN6m6
	j53/rTLnELP5XBWKjivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vagC0-00000005Gja-0WSn;
	Tue, 30 Dec 2025 20:19:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vagBv-00000005GhM-2Wm7;
	Tue, 30 Dec 2025 20:19:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 138C3442F0;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E453EC116D0;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125977;
	bh=/+9+iLOtFvLLN5b53KbFCJPBG7n0Tv9fjrgIxHLR3G0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sAzYxTEhgys0QWIhqy5nFnpXnieAFdNWgWsVCP2E4fpVVzead7ij37e4djarS3w/j
	 Jw/M2EIdt5NyiF8d4NBew7I/5Jnmv1UbaYiRPjUNDUAKqpD6wIciXmraTBLvlIOCWN
	 gdjvYswhuPihxsEKtnM7/okHNr+OlX0tf1ksQV2bbxN92gbP22E701KxqpPHYBhudJ
	 z9FF8ODLN/nAsr3DzfF6rP5b2+DnYyVtTIcoky6DlPr40dpydPaBVrwOCU/tp+eOML
	 G2I22sfONYy7AyiQhaKM+f78uN6FiW8FHAhVGLL92p0fL2uY8DhlUrMjbBcBoDc3Lq
	 6VQjgqPqe+17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F2AEE49BC;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Tue, 30 Dec 2025 21:19:30 +0100
Subject: [PATCH 1/3] arm64: dts: rockchip: Enable the NPU on NanoPC
 T6/T6-LTS
MIME-Version: 1.0
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-1-d38b182a59e3@pardini.net>
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1346;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=+QiHWgqrqCvAOEg9ZYrtyyD9Tb3C3HqtujZ2zGhDDrA=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYgaaZKkBzk5d1Kj1a5IICn5fE5aQRqf38z
 EgnUptOBG2JATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6SqoB/9N+rz+MEY6VoUs2Bu5JmiCmkTLSYSQ1vx7/Z7MNRq5hPaQFpYyJS21PQaubUXdeiqK8wy
 rmCwpXRMgyRZqOzJCMtzi1ujM8LgE1dJpYA2qriq+joLRWMYjVSNJeuA2XM6YJbwohD9eyge3X2
 waBMxjEBtXGOfwqco+U/KHT25sj2m+oTmXzZy6XR70XRsKyVZ55u2KnXYxaw97d598fkRAb3VaM
 tsqvrrYm8+ntXs+UxH3i9Q4NWrjbkTy1b9FJZttfwr8Q3sVikDw0Gl+EMBO3S/Ut1dVfmCzwFZk
 IfUp7KGg3dK6B+B8BspLcwNgYF29fKccdRuvhpdyAh6tnQRR
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_121939_694940_303373C7 
X-CRM114-Status: UNSURE (   9.16  )
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
Reply-To: ricardo@pardini.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ricardo Pardini <ricardo@pardini.net>

Enable the NPU on FriendlyElec NanoPC T6/T6-LTS boards.
The regulator vdd_npu_s0 was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9e..93bd479118e92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -629,6 +629,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		sys_led_pin: sys-led-pin {
@@ -706,6 +710,37 @@ &pwm1 {
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
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
