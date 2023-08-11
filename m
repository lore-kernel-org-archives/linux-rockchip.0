Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A482C0015E
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Aug 2023 20:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YihdNFWPfoG5JcZnWj9f2pFFg0uUpehy3cyPWEVp8eI=; b=DgRB/zh8+oEtcY
	4CyyDAxhkIZVnrUUjdSnBoL5kWKS1zRwcx2JiW72ozaxcF8Jcbz7xIDKk6AaMEz2Ptx53cRqay6lz
	q+ugxFPBDE262oC1ud7Ibc1whqbXB5vbvkDTiNUqKeHZRKoxzuAvhx7dIH/z6E0ZbV3yWZuNxMwNt
	+PxkFUTqNBOhMZEd4cFV+g/PPgwXl8oc5tffq8OKoS9i9M4zmBK/+AnKopYBVJ5UvXgtRW7FfSYYl
	LRQ2Es52mA1kg7lCfnuhFdvolxUWtM4nzJRhSMrTHC70YhsHBHpNVA6KLigUTzyTxpkhwYBnMSy/P
	vWi8S4NjEqMdUosJ0DJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUYU0-00BXZ4-2W;
	Fri, 11 Aug 2023 20:11:40 +0000
Received: from uvw.ixypsilon.net ([81.223.58.118])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUYTx-00BXX1-0M;
	Fri, 11 Aug 2023 20:11:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ixypsilon.net; s=20210903; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uqx6rDb8lMrAoJhRENG6RTKx5+D5I6ScWaggeCDeSQA=; b=o1m9ZC1XiE7aZ9IizgMJJlCLJx
	YsgqpnbKq+aODX69GmvhCq1GDXjHu5b+raVOUwG7ee38mYiGadquBPk+dI1PntkGMftMIraw+zxdg
	i7Q1lNrxQpiei8Pfy8uZl7AwCQydaVs+9UBFD7NIf1mjn2uVrIWWErLN3RxR883d/ypB24BlgDGUO
	9gkkxcixFc1bxWmsLAD7NIL9TRtk2DmtIHaXkE5tG2HdvXT4QUzxbJFtXljjSVuZtkkKNODg2IHzA
	dfx4+Fr3BdD0Le40fO7Gq+gY7Y0M6mGihFVcTD/4afYvxLhY44POyWCD/54E0ez4dOUBeXSh5a68H
	oSYhRFbQ==;
Received: from [192.168.0.1] (helo=librem14.Hitronhub.home)
	by uvw.ixypsilon.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <stefan.nagy@ixypsilon.net>)
	id 1qUYTn-0000uL-GC; Fri, 11 Aug 2023 22:11:27 +0200
From: Stefan Nagy <stefan.nagy@ixypsilon.net>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable internal SPI flash for ROCK Pi 4A/B/C
Date: Fri, 11 Aug 2023 22:11:18 +0200
Message-Id: <20230811201118.15066-1-stefan.nagy@ixypsilon.net>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam_score: -1.0
X-Spam_bar: -
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_131137_444224_86DB4511 
X-CRM114-Status: UNSURE (   9.52  )
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

The ROCK Pi 4A, ROCK Pi 4B and ROCK Pi 4C boards contain a nor-flash chip
connected to spi1. Enable spi1 and add the device node.

This patch has been tested on ROCK Pi 4A.

Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 10 ++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 10 ++++++++++
 3 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
index 89f2af5e1..4ea4bec95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
@@ -11,3 +11,13 @@ / {
 	model = "Radxa ROCK Pi 4A";
 	compatible = "radxa,rockpi4a", "radxa,rockpi4", "rockchip,rk3399";
 };
+
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index 080654592..84b9d8b3d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -30,6 +30,16 @@ brcmf: wifi@1 {
 	};
 };
 
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
 &uart0 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 4053ba726..39917f987 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -42,6 +42,16 @@ &sound {
 	hp-det-gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 };
 
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
 &uart0 {
 	status = "okay";
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
