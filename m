Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80420C41513
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 07:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7s6mTCDGypBgYRW4M2Rireu+J2qeb5yugnw57SVR1hQ=; b=0huOZJbvEfCKkx
	CIo7Gf8u6xRfmahhOoGQ1nycpLo50hZt29W6fSynpGB3tc+cyiI8hCb2bxLDT7IGeQevHXg7TNxfa
	/8k6JtyJuSc1MnuAKRGjzBWh6Im7tOgL8Q3T8ToddCvxiM1RpJCgubY93MSCDE/i1sPbV4h+e3Y1L
	adLP3KRLXSZ38j+eKrZ2bmwD0AtdIaf0P/DvzVJ/8JjqmwStUwTjDVP29HOwJOlcX/sBEOsmJnxEu
	Iji6pcSFkvViI9uyttcULhziUXNH/mQ1GFfKs29l9IYqoiPFU4o3e0hktvcNN+lBVcx4xoJcRd0Bm
	9DfnFD2fGGWmu00CREwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINb6-00000004s27-0iRo;
	Sat, 15 Jun 2024 07:13:12 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINb4-00000004s19-27O3
	for linux-rockchip@bombadil.infradead.org;
	Sat, 15 Jun 2024 07:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=i38hq4Wv2z78Y7+TXFqBDzHQ6RolSOZB4VbnU4hK7c4=; b=R2VWIPl9Kjovc0tHwTvLmSU3o9
	dJt39kq1o6f5h7aXMN9261cIN2KvKDai0jxU0TxWOpk2y0U6R2gn05M8PfPvdVCb4CzV4C2tSdxIj
	ae5WMcmPvQHiNUt3NO8KcIL7Nxn5ytuSTvI7hisxcqgwOi2cZPoVo+8OiQe+BIHsF8QrxupSl5djH
	LeRKzu1cEMNYljSmE/rg/7nMhSpQaht1JTPKD91OypcnQOHGbeFDZHRvIZ3cH/lNlPDa2ZvKPJXUS
	13NQEPyoVMFsodqbEAf9BG/cExS3ABZ96UmoGosBCD3IR5pw6Oc1NPa+03w0xQRremA45xDWWAM9u
	biMeeC1w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sINaw-0000000059w-3nKs
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 07:13:08 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45F7985i009715;
	Sat, 15 Jun 2024 16:09:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC 1/2] arm64: dts: rockchip: disable USB3 host port on ROCK 5B
Date: Sat, 15 Jun 2024 16:09:03 +0900
Message-ID: <20240615070904.625-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_081303_462202_648B2F61 
X-CRM114-Status: UNSURE (   5.64  )
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

USB3 host (upper) port on ROCK 5B is not working with USB3 devices.

error message:
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
 usb usb6-port1: Cannot enable. Maybe the USB cable is bad?
   :

$ lsusb -t
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
        |__ Port 001: Dev 003, If 0, Class=Mass Storage, Driver=usb-storage, 480M
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
/:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
/:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
/:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M

Fixes: f97d78b9f6cf ("arm64: dts: rockchip: add USB3 host to rock-5b")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 4e2bf4eaef2b..61c7046435cc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -805,7 +805,3 @@ &usb_host1_xhci {
 	dr_mode = "host";
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
