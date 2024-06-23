Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 388C1C2BD09
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 02:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=elhrhkrKX/7jpDvJwku/TbwT6FR8zbM9fVqzqjW/xIg=; b=h8TGafey96TehB
	quI4F4XLWaEPbJ5aEL88joJr5nmv8pkxmZ5yHvGveGW2NQKmIeMGcO51Ut4i8bGbxg3QChM2We5vf
	mpqNo7MiLgD+7IFVsmF2Dc8/Y9cVb6zbnExlUSEaSfjjk2e/sJKbd6KRudcjnHFcqS9Ts5tfDQhdE
	3thxrnr2nsgpOv1CKgTxremugKGqRewyzczJjhXFADXrqDhH4+25FQx1gBpOKyKLQ4EuLIdlHeNYM
	qgxhIRt4zI5AXB18Aji775D6JF7t/RHsDAPOAYT9xLYqANNIMKKFNJbkZHGPOcsrBya2fplPkCdXg
	orKtlSD07u8Dis+ECB/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3z-0000000DCGe-1dOq;
	Sun, 23 Jun 2024 02:34:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3x-0000000DCGN-3AQ5
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 02:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2LOM0ji64H4D6ppo/JJOmQaNWGkuuXAGDDEtVHopouU=; b=RKtpu7V8uwYpAI4Nb1z+7oLOUF
	0CbpnFUS2AAS1y28u6E7xyCWV1OazkGpkwPrGidzm41+Ti5+Vc+LnqIo+4M4RjXi+aiAYZp5z4JQH
	Y6NBAsbH1Gqfy4I7ckf7zcIqxTz9+uFtrUsL6wgoxptP49lQrJeQzVIWCSu5A4OXOeeJ/NDBLG2Ye
	sutnzvCjcCfuoixUQy+pXwyp+Ga3obdRSM1whLFpwahukAA3I3lUfTPA9Zhsh+71yTzJlcIUnT0oF
	VElhUa5mGHmIyj+u2b97l5zBt41CAsQKSvXndSX6zLi8/gHjgZkUaDmYdRqJZPzpYs9OZwtTq1QJC
	IDzDzbJw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3q-00000008kOG-3kpy
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 02:34:40 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4I004959;
	Sun, 23 Jun 2024 11:33:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
Date: Sun, 23 Jun 2024 11:33:27 +0900
Message-ID: <20240623023329.1044-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_033435_446694_3F218EC1 
X-CRM114-Status: UNSURE (   7.17  )
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

This commit adds support for SPI NOR flash on Radxa ROCK 5B.

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 6a3fd6be1793..966bbc582d89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -449,6 +449,20 @@ &sdio {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim2_pins>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &uart6 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
