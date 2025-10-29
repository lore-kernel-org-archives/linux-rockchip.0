Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29C9FCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 13:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMPn5oZkzY8exO0BXREwhCnV6cwDg1ZhA96H1N3PBZY=; b=k9TwqyK5eHWCnC
	zqKlwnnDGvUgKvsgvPo0rSriIoca3ZpJtZ85LLo22E0++HxBnqIukwtiq/8tlN19ExAGCAWDwi+Sy
	9Mc0LLF0zLF11GHaVXKyNN8K5ruUzKgU1uIMA6WsXhrGz62PTNzsjsi4r0QxfOfKAhwKnAKo0xv+L
	nR0MxHmgvpJX5yxttKacFKWPLyI3/svhJCsTbHnqtPk9m6RPiB4mZ/Cr7zFWR0fJdlGYlyw56ap4j
	lJ6Lm2ThKUcWl3uqa0676mo/bjqEzKDbuZ9TB1vTk5ouDYFINOzK4GoNOMxQ+XoDHp/Nbu5e1wjBS
	RL6Ho/I0EyfFsBCVVxWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5q3-00000001H9u-2LI6;
	Wed, 29 Oct 2025 13:03:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5q2-00000001H9P-3hVy
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Oct 2025 13:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=JGRwqNVmgv0z/7g8vC3vTYudIk6vvdaBlmw1NK1O4RY=; b=eMS5gSiBbQdQ23hyfrpjGeHFDZ
	n8cyFVDKos68YaEhNRiRFyQ1S5LEw/xOYy4zTAod5oZpal69cx64fqAkathALLSsfjx1vdSPLxNpK
	uL2Wq4SH8bw3Hd8bwSRg+q8F7X9QBS9XTY5r3A20UH3IPaohPkPeGrFNdkqIEgcvDTKz0xXlZ4YAi
	kHtF33fv3ygdGeSSUlcqYLaEBKWfu/0qI9LSvqdQ02ZgxVL/ugWjx4MYtAyOTqdwiyD0mt/qzkwCY
	XGozbVy8BWNq39cQ5EryNmaOv4+H/C10qvIkQY4eZV989k9NuEvVMD18j6RM0CtzvfjMuPZgAHs85
	Edmm4uEw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5pv-0000000AkJ7-3dWn
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 13:03:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59TD27WF006853;
	Wed, 29 Oct 2025 22:02:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Wed, 29 Oct 2025 13:01:59 +0000
Message-ID: <20251029130200.987580-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_130337_694130_1A460C4B 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, detlev.casanova@collabora.com, linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com, damon.ding@rock-chips.com, FUKAUMI Naoki <naoki@radxa.com>, dmitry.osipenko@collabora.com, jbx6244@gmail.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, didi.debian@cknow.org, shreeya.patel@collabora.com, nicolas.frattaroli@collabora.com, devicetree@vger.kernel.org
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

The ROCK 5T should only support the "source" power role, but when the
power-role property is set to "source", when acting as a host, only
self-powered devices work. As a workaround, set the power-role
property to "dual" and the try-power-role property to "sink".

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 67b2c15d8fb3c ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Refine commit message
- Use board-specific dts to describe (try-)power-role
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts    | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts         | 5 +++++
 4 files changed, 16 insertions(+), 2 deletions(-)

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
index c1763835f53d4..96ffffec7e05d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts
@@ -130,6 +130,11 @@ usbc_sbu_dc: usbc-sbu-dc {
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
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
