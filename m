Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F5AAD735EB
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 01:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Nf+3QlOHrjVM9fKku/VN4ovEmCVV/53K/t/LRafweA=; b=KG1Wy9UWA2f47v
	hc/vkxsgW9jScUvl1G/CR9X0zdpdhNrIndiZnUVBcsQLTfTUQbEjaV5xlGPA8IAwdIoFozSg0ufCA
	SdqzVd7KsG9MfcGxgDjK1nIHVvHUUuoNjzY4hTrqBWM2RuF0DPycGbYvuBO8Cwv7RtMSvicfpJGLU
	HVWkbEpSTdKmFmZAT0r76N8JosjZ0Aej1L6zy1FsespqW/uzkZjQzok+kc1bJJPNRUb4xL8azVOzE
	S6h/f7xay9FBR8sPfqORnB2jp3Hlo2EGFrB7IRm2s+PY8gaHZN2UxKbhQLL23BWfZIzQopglD1qgp
	77j1T/TNMyh6ov9oQYMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHCTk-00000001EKH-1q8R;
	Sat, 30 Nov 2024 01:41:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHCTh-00000001EJb-1flP
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 01:40:59 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU1ejXu024551;
	Sat, 30 Nov 2024 10:40:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: use Type-C port as USB HOST port for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 01:40:42 +0000
Message-ID: <20241130014043.12942-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_174057_646492_1B9C9F89 
X-CRM114-Status: UNSURE (   6.43  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Type-C port is dual-role USB 3.0 port. add usb_host0_xhci and phy
nodes to use it as HOST port.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 0ec4992b43cd..c5776e3b4aab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -840,6 +840,14 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
 &u2phy1 {
 	status = "okay";
 };
@@ -883,6 +891,11 @@ &usb_host0_ehci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -900,6 +913,10 @@ &usb_host2_xhci {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	status = "okay";
+};
+
 &usbdp_phy1 {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
