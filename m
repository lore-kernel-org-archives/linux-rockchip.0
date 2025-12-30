Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC73CEE49BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 20:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lBjgbLirz9kVz3X6Pt5XwVrKtXT5d9jlhhFNNDU3ls=; b=FUDQOUGusdFIuL
	T6vHo0bUi+lPT95Mf87W982WCvR3VPe344WmH51qPuBBsJetK5aJpht4QixA1OBxZMBp/xOYJo2ns
	h754CFp57dh3HO14L9CGkc/hwVBhbnlE542OipaVb+X7ETcYKRYc0SMU3UdSTS5K9W9chcz9hYpWq
	Swksj3UZPDvShB4OataIudbUvmGv7kXIHNwisUYcwSF7iJi/jfwljEEpjwPp9v1Dafiq/fJp5Gi7+
	tFrfaCYpLOxUq0CwJa6gYrv5g6lf/U0eKnQKMiWs2bdKnqKNJFIZ38ZNHNWHRM5bFHr70dwsFOhvF
	3p084Mtqy/1CtOcMjPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vagC7-00000005Gni-0yv2;
	Tue, 30 Dec 2025 20:19:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vagBv-00000005GhN-2ZBR;
	Tue, 30 Dec 2025 20:19:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 19F6B44446;
	Tue, 30 Dec 2025 20:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD1BC16AAE;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125978;
	bh=R4J2Kd1UHZkJVcCVNxCIB6NX00uFzTXdyR0Tdjo8mN4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=oqjkSSoq1Kso1xXL9jLsH3I/a2G0FkriyF1C/edLkLUigkyK8nJYPLQNNb5Zd1Bio
	 ASlYTGw1/aGLjU6k0aaCYEUvRMrR58exUZgebwzjV5PKhhOTc8JQjzrAyDugQzJKu/
	 /xjF2eSacS9fBA4k/nuWECcHAbR8F5gQ8M7McoXgu77BtyXqRCo0QfaujV2guJOaVH
	 lO2HsayYYawWy3pBq/P/AfBD/j/7QnEb1mOhzRlvvFghlLYeu2E4skw/0FabPpuASX
	 7qgui3Aoo7T5Fp5EqoreUIpcu4/DxKwviYMB6MB5T53ypg5BmBPFjUfxFVtEK+AVk+
	 zfY8TphCuAO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF47DEE49BD;
	Tue, 30 Dec 2025 20:19:37 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Tue, 30 Dec 2025 21:19:31 +0100
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable the NPU on FriendlyElec
 CM3588
MIME-Version: 1.0
Message-Id: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-2-d38b182a59e3@pardini.net>
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1367;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=LYtJ7Pl+FdA/I8ghxhk7iPyl3TvBTU0gE+wWAtE6hso=;
 b=owEBbQGS/pANAwAIATteP+Oex+3pAcsmYgBpVDPYbWywt+jyTrZT7MoyS345KuCIUX9AjgsQm
 a71EhpBcliJATMEAAEIAB0WIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCaVQz2AAKCRA7Xj/jnsft
 6eLVB/9KYU1PSKxm4IV0JHX+267cedhnc0K/IoGKsPhWJlVt8g7WQG4/+brNEcFClJGlDA0M6ab
 UGabUfRnRQMaUYPn1WniBFk/zO/D5zONLg9+dehlcT8MsDTwzLWa3fD6ja8t1m/oZzuQOCD7KAg
 UDQg3y+bD/9AlElPqmAxNGEBJr9vhe0W/JmI+lBaKYiNQnOZqbbLADyzH+inpZ9BaSSYTpDq2RH
 H2b9+IxE62JJisBI6zDCGkI4hMigQkt5go7HBj4aWRKFIUY4RI4TOwo5VpoH7lBCz0SZkAMpI9i
 YQ2oALRuEMaKhtCOU8jpsHwddcNo+A6kTKgMK1YE1oUOhKKW
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_121939_713984_70DA8AF3 
X-CRM114-Status: UNSURE (   9.49  )
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

Enable the NPU on FriendlyElec CM3588.
The regulator vdd_npu_s0 was already described.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 .../dts/rockchip/rk3588-friendlyelec-cm3588.dtsi   | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
index af431fdcbea7a..46e33e666bb3d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi
@@ -264,6 +264,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	gpio-leds {
 		led_sys_pin: led-sys-pin {
@@ -294,6 +298,36 @@ sd_s0_pwr: sd-s0-pwr {
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
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
