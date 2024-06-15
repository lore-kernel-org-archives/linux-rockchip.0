Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44661C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 07:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0YfA/5kR7Pi35mWneQywZdyoxbfpKcwodhBn8VcgpQ=; b=P9zq1u4h9ppwhk
	JIjFVn2oImmNmLdErKwmFmB1A26FRU22aNY9Dwn1uvw/3nDEkgWnPGk5n2N75D8ObxOSAph+UpW88
	M3l7sTJeWOPqQaUyiedrkpN52RC0gANztAwGro7RhoR1sF87E1EGgEw0kD4rw0x0G4WSi/UNiqiyc
	gIba/ITVwwG88F8jHxPnPku7rD/Gb/Pc5xX/+msECHPpnJHJU9eja/D/Cn14IXZ3TJHeA403fsM9e
	0mw7QrS6vIIAhWzPKDwycqwM4SoCElYZGYpQogMR9xvgOjZa+LsE5TAcsYA4j+iVJCVF2Sop3lyvQ
	C1ij8xHnubP4toTnG7Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINb5-00000004s1h-38tq;
	Sat, 15 Jun 2024 07:13:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINb4-00000004s1A-27PO
	for linux-rockchip@bombadil.infradead.org;
	Sat, 15 Jun 2024 07:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TyHewpZaU/Dow9lGsoT7ux7bkj8NWsdDz8kiWmS0hT0=; b=tIXPWe2syBMoYwG/ChZIvhB6qt
	x3yUEMLvQVdM4pe9jNFjapQGQfeWkRDGFabYIB69hxARNGrhxIIZ1hNPTZxpguNP/aFaGMWsXJrq8
	e60ePOf5Gg1NJOnLqakyZHaQqL3L/jRDwQjKbo9rLbi1MPgssIT97SJRWcHSHEkDY7ThMv8Kc6dFP
	EJ0KrdT+ZH7GeP9lX/8Gs9CHSK5XtSD9FkTefMa7etNw6GWiET81+Xme9ABo00W9Tdm1IKzSOzTQg
	gXDwwgOQsg8IxHOpjmSWE+RquDlMZaAsipxf0v2RPlo1O/5xhLvgEhsCYURRCuEVIedKnJD9kTiWY
	FY+aWaVg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINaw-0000000059v-3gpt
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 07:13:08 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45F7985j009715;
	Sat, 15 Jun 2024 16:09:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC 2/2] arm64: dts: rockchip: disable USB3 host port on ROCK 5A
Date: Sat, 15 Jun 2024 16:09:04 +0900
Message-ID: <20240615070904.625-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240615070904.625-1-naoki@radxa.com>
References: <20240615070904.625-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_081303_450514_51AA2747 
X-CRM114-Status: UNSURE (   6.10  )
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

USB3 host (lower) port on ROCK 5A is not working with USB3 devices.

error message:
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
   :

$ lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
        |__ Port 002: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 480M
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
/:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M

Fixes: 0773a4a199aa ("arm64: dts: rockchip: add USB3 host to rock-5a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8e2a07612d17..a43de7d56bc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -755,7 +755,3 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
-
-&usb_host2_xhci {
-	status = "okay";
-};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
