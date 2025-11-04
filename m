Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 334E3CCFA00
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 08:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EyU/iQ4GC+BKMmW57/AfXDcyAaGXZHPe2Z05br/g9DU=; b=gY5gZigtCdWOnr
	A1KuDrt0HMy8trP00hVb8qzQTzLIzBANGcrk7a/RV3BogPq4Ch587Nuyd01hBvRF7xzu3+ArehvYd
	soNzMy89LydYD3kgW+C8dwCM6IYkTugSmyMg5NHHkrVepNw63T/WVQj1YLDLFTn++GlvgjpA5FIqd
	jBNZ2Te945CoDmbTD8/45G8HlUEmvKhY8wD9zY88iACLT6/Lh6gsLcRGZO3WbmWzSfS51gA1SN4bG
	lWz0E8jONvdZXvOuZGtdelhhB3D58ApUsnbQGG+RmqUnagpIDJeXa5LVToG5i3z9HJGHvsYW273u4
	pVgDDY4twurc0Oe2QJ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCns-0000000BTXj-2vhf;
	Tue, 04 Nov 2025 08:54:12 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCnp-0000000BTUm-3BtG
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Nov 2025 08:54:11 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A48qYtt028441;
	Tue, 4 Nov 2025 17:52:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v3] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Tue,  4 Nov 2025 08:52:27 +0000
Message-ID: <20251104085227.820-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_005410_014885_5FBE8CB0 
X-CRM114-Status: GOOD (  15.49  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, detlev.casanova@collabora.com, quentin.schulz@cherry.de, sebastian.reichel@collabora.com, damon.ding@rock-chips.com, FUKAUMI Naoki <naoki@radxa.com>, didi.debian@cknow.org, jbx6244@gmail.com, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
should also act as a host. However, currently, when acting as a host,
only self-powered devices work.

Since the ROCK 5B+ supports Dual Role Power, set the power-role
property to "dual" and the try-power-role property to "sink". (along
with related properties)

The ROCK 5T should only support the "source" power-role.

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that on the ROCK 5T, with this patch applied, it has been
observed that some bus-powered devices do not work correctly. Also,
it has been observed that after connecting a device (and the data-role
switches to host), connecting a host device does not switch the
data-role back to the device role. These issues should be addressed
separately.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should also be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- Use power-role = "source" for ROCK 5T
Changes in v2:
- Refine commit message
- Use board-specific dts to describe (try-)power-role
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 4 ++++
 4 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 3bbe78810ec6f..7aac77dfc5f16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -331,12 +331,12 @@ usb_con: connector {
 			data-role = "dual";
 			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
 			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
-			power-role = "sink";
-			try-power-role = "sink";
 			op-sink-microwatt = <1000000>;
 			sink-pdos =
 				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>,
 				<PDO_VAR(5000, 20000, 5000)>;
+			source-pdos =
+				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 
 			altmodes {
 				displayport {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
index 5e984a44120e4..07a840d9b3859 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
@@ -110,6 +110,11 @@ vcc5v0_host_en: vcc5v0-host-en {
 	};
 };
 
+&usb_con {
+	power-role = "dual";
+	try-power-role = "sink";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8ef01010d985b..da13dafcbc823 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -49,6 +49,10 @@ vcc5v0_host_en: vcc5v0-host-en {
 	};
 };
 
+&usb_con {
+	power-role = "sink";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
index c1763835f53d4..0dd90c744380b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -130,6 +130,10 @@ usbc_sbu_dc: usbc-sbu-dc {
 	};
 };
 
+&usb_con {
+	power-role = "source";
+};
+
 &usbdp_phy0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&usbc_sbu_dc>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
