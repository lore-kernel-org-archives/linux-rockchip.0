Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126D9D735E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 01:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igHyacsmpiM/ZXbb5shJhy+QnXyx46ImDhm+5B9WT/o=; b=IIxkfZKl+YGW9r
	NE+w7GBOQd9l0gpSwtzFga9+QFSAu/gHGN37yweSpQ1bNiWBRbFkylYYYFJUWTyIxQcvn5eAGsWw6
	fQx+rAU1hFjyWmag0YPQAYk+9f3T+iitcz3uYA6LHxTToD8otSFKss8PD3U0UtJTZVKbUatMzq0be
	xDBBVk5w7PWEpLnuqp2oa0cs3V6NwWaj+TjsTtUS5AZFwRRfXnB9rN5nYjuGaL2UX2CbHHFD2fmWJ
	IQzyWuRtmbuxJixyN0XgAAEw3aVFNVZjoxXkUZeJ/uUjLFSmBYfndbxZlmLKOhlFmvGeAGxoRL/0+
	/QRbDB5l3iqhC+1c1SAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHCTk-00000001EKL-3Blc;
	Sat, 30 Nov 2024 01:41:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHCTh-00000001EJc-1fcd
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 01:40:59 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU1ejXv024551;
	Sat, 30 Nov 2024 10:40:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: fix USB 3.0 bottom port for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 01:40:43 +0000
Message-ID: <20241130014043.12942-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241130014043.12942-1-naoki@radxa.com>
References: <20241130014043.12942-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_174057_646536_0E578E66 
X-CRM114-Status: UNSURE (   6.92  )
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

add rockchip,dp-lane-mux to usbdp_phy1 to make it work properly.

tested with ELECOM U3HC-A424P10BK[1]:

$ lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
        |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
        |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
/:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/5p, 480M
        |__ Port 005: Dev 003, If 0, Class=Billboard, Driver=[none], 480M
/:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 5000M
        |__ Port 004: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 5000M
/:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 009.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    |__ Port 001: Dev 002, If 0, Class=Mass Storage, Driver=usb-storage, 5000M

[1] https://www.elecom.co.jp/products/U3HC-A424P10BK.html

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index c5776e3b4aab..43fc1f24dfc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -918,6 +918,7 @@ &usbdp_phy0 {
 };
 
 &usbdp_phy1 {
+	rockchip,dp-lane-mux = <2 3>;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
