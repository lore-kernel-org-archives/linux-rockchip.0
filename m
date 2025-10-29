Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29621CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 13:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM/WV7y8Epd6OXJM4TYrg/ixBViMNbgyWtBm8kGxKHM=; b=LI3BR7MCkSYjWT
	bWfhjaWP30uIqdKRwiafNoq6ZgzeL0Ca3QndSlD2aJ0hYxVMa0doRRAvRDWJrSrMFm93RhDIH2YzV
	8xPRrlAAzmHxbEW23ZpX6BBf83e8zk6//HUTWDTRX9GUIZvgFjWKTfTTLGuVO8lFol9i+Q3XWtetu
	E6DV6V5tDfWkHffy6wx3Ymd5fO7+s4wr6+crlWL8dttbdVN3CmN3KIP//OoVj3eTq/+UQRLNxhxEL
	wFD4aXdrbBQ9bo7LcPjX36Plf6S09AOzDZxWkKq7DTWPFrvitHRrQo9yJl1MftQbU8S7T50WqOp38
	ICy7/qotm425N9dXDgXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5q3-00000001H9n-1HSg;
	Wed, 29 Oct 2025 13:03:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5q2-00000001H9O-3hVs
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Oct 2025 13:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZF2xGv1OFUDrnvTsT2eAh8BJY+L5Q4GeBOAXtj6WJ1Y=; b=J8hvpPesGibHvZaukjv+5anc63
	+ltmJY9V8mtBaNAt7bUCOI4g7BJX2Y5SrlteOyVVxbxDR/h2i3Sh+hBUoWhmZ8e2+/93KPQvAYPXN
	ZJ5702/PIXcfs2pE004t2tAOSDb4VKDYi2jRdZuCMMzurgsicqLcWoC+qkTan2KOJLM0TgOQwAHNg
	WX1YMtjYkTMWvs6Ly4XCBA9uNC7JnMEsJ0MCNcgUbKHY6d2lKXymYgZeo+6XlnBPD5BoIKJeJ3Vro
	g6dZAuWxVeIEM4G7SfCyJA8QVUUIc9DFGInkrPqe2X8mSepf3MDvmQ8J2rIT0odPZlPoxCWDGSmlo
	aVR+NEVQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE5pw-0000000AkIM-0H7a
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 13:03:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59TD27WG006853;
	Wed, 29 Oct 2025 22:02:10 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5 ITX
Date: Wed, 29 Oct 2025 13:02:00 +0000
Message-ID: <20251029130200.987580-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251029130200.987580-1-naoki@radxa.com>
References: <20251029130200.987580-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_130338_019074_1AAE55E3 
X-CRM114-Status: UNSURE (   9.98  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, detlev.casanova@collabora.com, linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com, damon.ding@rock-chips.com, FUKAUMI Naoki <naoki@radxa.com>, dmitry.osipenko@collabora.com, jbx6244@gmail.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, didi.debian@cknow.org, shreeya.patel@collabora.com, nicolas.frattaroli@collabora.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Radxa ROCK 5 ITX USB Type-C port supports Dual Role Data and
should also act as a host. However, currently, when acting as a host,
only self-powered devices work.

As a workaround, set the power-role property to "dual" and the
try-power-role property to "sink". (along with related properties)

This allows the port to act as a host, supply power to the port, and
allow bus-powered devices to work.

Note that there is a separate known issue where USB 3.0 SuperSpeed
devices do not work when oriented in reverse. This issue should be
addressed separately. (USB 2.0/1.1 devices work in both orientations)

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Refine commit message
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
