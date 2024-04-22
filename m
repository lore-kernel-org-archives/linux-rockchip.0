Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2074C41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOrKx9Wl5wa/QvtNG6mGzUu0NfnAOkmdvAzstJP2bps=; b=cGDVEIMinkZ3C9
	pGnd3EUn3WbYwly9M8XkTm4IKBfq4XOQDU2z9QkHQ4Ql9H7met7n4i/El9dYD0YF1DApBPdk3Lo5p
	mRgWBqTpClerlO0WeMU/NtSnrZcew8hJYjt7yhr+JbHLifxZbLBeSo9faFIfZeJIcDn1n4e5DldTT
	URQvjcdEwiG7p3hMPYYXNgSgl9e3kXdMpCSteSKvFpLjxNYLquIlud64+z1PYDG05h8NvcvUwsydf
	hSKifSqK0ren28tKxxYY+jw9aWWltU81p5WLV61j/redCNPRvnlvd2043AuvZkxpRMxhvg28p6n0P
	XE8AeDNAS5iB+3Pttpxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywi4-0000000EJuk-14n8;
	Mon, 22 Apr 2024 16:40:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywhw-0000000EJnU-1QgZ;
	Mon, 22 Apr 2024 16:39:58 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rywhu-0004gq-0t; Mon, 22 Apr 2024 18:39:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: fix comment for upper usb3 port
Date: Mon, 22 Apr 2024 18:39:49 +0200
Message-Id: <20240422163951.2604273-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240422163951.2604273-1-heiko@sntech.de>
References: <20240422163951.2604273-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_093956_444969_BA6DA43C 
X-CRM114-Status: GOOD (  13.32  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The comment for the host2_xhci points to the wrong port on the board.
The upper usb3 port is the correct one, so fix the comment to prevent
confusion.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 9bdd14799eff..2aa43e7430e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -239,12 +239,12 @@ &uart5 {
 	status = "okay";
 };
 
-/* host0 on Q7_USB_P2, lower usb3 port */
+/* host0 on Q7_USB_P2, upper usb3 port */
 &usb_host0_ehci {
 	status = "okay";
 };
 
-/* host0 on Q7_USB_P2, lower usb3 port */
+/* host0 on Q7_USB_P2, upper usb3 port */
 &usb_host0_ohci {
 	status = "okay";
 };
@@ -259,7 +259,7 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
-/* host2 on Q7_USB_P2, lower usb3 port */
+/* host2 on Q7_USB_P2, upper usb3 port */
 &usb_host2_xhci {
 	status = "okay";
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
