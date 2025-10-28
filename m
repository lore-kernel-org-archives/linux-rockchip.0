Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0FD9CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 11:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmYfU1ZeYtBhsOho0Y7p+HmPA0aTsASC9HiX5uAledQ=; b=RqpkK0+1vjy67H
	Cfg4UqRFueyOhQ7gh/0p4ZF3y0OQLoYy9AYklqQx00g9CPrYW+0z8J51iPviZrR95vHOe0/ig8ouN
	UZ5D2bVDlj2C2wKZfJtLWHOTLwlWDROY4sH0Hw+pTlzDpyBqrN1FHbCAbiZktFskPdPg6bUkq3MYC
	6ZdeyUYo+HoGqVfUYeJKLOekQrNAxMGFgTFErBoD4JnT7VUiCKpmEzXRg9Xm+5jPsWRWuBnPM+zW6
	+zTtBDQ+iv6JEcEAGm7mgdYdkNxjgrqRIoKCxF6oOEg3fZqeX3gm4tP1fI1Xcp3fxFymzQJ1wmZTm
	hLZVLMOjvuYupL4BrddQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiEN-0000000FsFG-03Gl;
	Tue, 28 Oct 2025 11:51:15 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDiEJ-0000000FsEF-3m4V
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 11:51:13 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59SBollA002909;
	Tue, 28 Oct 2025 20:50:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
        jbx6244@gmail.com, detlev.casanova@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5 ITX
Date: Tue, 28 Oct 2025 11:50:40 +0000
Message-ID: <20251028115040.101156-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251028115040.101156-1-naoki@radxa.com>
References: <20251028115040.101156-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_045112_158047_A3F1C369 
X-CRM114-Status: UNSURE (   9.80  )
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

The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
and Dual-Role-Power. However, currently it cannot operate as host/
source.

By setting "power-role" to "dual" and "try-power-role" to "sink"
(along with adding related properties), the data role can operate as
host.

Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
device's orientation is reverse, the root port is detected but the
device itself is not. This must be addressed separately.
(USB 2.0/1.1 devices operate even in reverse orientation.)

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..1664f85db4aaa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -484,9 +484,14 @@ usb_con: connector {
 			compatible = "usb-c-connector";
 			data-role = "dual";
 			label = "USB-C";
-			power-role = "source";
+			op-sink-microwatt = <50000>;
+			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
+			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
+			power-role = "dual";
+			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
 			source-pdos =
 				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			try-power-role = "sink";
 
 			ports {
 				#address-cells = <1>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
