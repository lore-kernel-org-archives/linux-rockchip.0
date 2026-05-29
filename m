Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CC94CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 15:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkQzil/26KvOSqsQ/VIGAcq8AH14AKn6LudsPIpqXbg=; b=bPzBfHEfHdNCEk
	Jh0wIbsGLXrJ9vncAaxQnnx8i9HId/8cCo/+m3jmAcVZCtJAqOAwTwDBWTompB5dU1YbzdWgKV/k4
	XpVvlAEd8ZEwh7btrt2IXZVOOztTM5z9qkia9ecuoLtoyxdO0gVOCXAJigE6ND9Q96TzSOfzORg3Z
	1y7lDImQ9PHB1eslm9b5MrJjpLbNKSvS0S9iaV9N7zY0RCQj33rUOvBn0mXNFd4OC9j+5rpFUVPru
	lWw0v7J+Hdv5ht6d6amVQXCiovA8qzBwGXTqJ4uXkW8ciX/0c/w2HoS23qppcGzHN0zx1vhIkpVde
	rm23Pgys3Igz+xI2FT5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzBQ-00000007hk4-0394;
	Fri, 29 May 2026 15:31:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzBN-00000007hhx-0EDA;
	Fri, 29 May 2026 15:31:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 33C9D43DF9;
	Fri, 29 May 2026 15:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DC44C2BCB8;
	Fri, 29 May 2026 15:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780068692;
	bh=YXvNousRoGDqwqdFEWiYKe9SC5sclogXBwxPuNZK0+A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=SxtO+T9L9YhtKBy6lwm8MY69wUzoqWiKsR2DnzlBGvEs8Ev0wMKEHp8vAx3Sk8+wc
	 zULFulnP/A3fN8Ao6u828WtioWLxmYa4DupgccetcK9bcp0Ptc1RcBwCk4O+h3KdD/
	 9mOvjuOJkDLkeCDF4Hh+rsZwTlyeHXCCXsfdIYtNVbvxT86zGx7TjZVDkc8VPnZXhC
	 CPxxGk0yYg5jzYYzZSugzAoxqoz82ycWgDiGoDweyMlwglVjspIRIa31YVezvF16qr
	 LgoQ5KCpH1/4LkAxi6wI/37W4VRxufzolsL8pVanrt37irrkQAdlrrisHqZ1k3/89/
	 Xv26fRYRaCAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05C67CD6E4A;
	Fri, 29 May 2026 15:31:32 +0000 (UTC)
From: Ricardo Pardini via B4 Relay <devnull+ricardo.pardini.net@kernel.org>
Date: Fri, 29 May 2026 17:31:24 +0200
Subject: [PATCH v2 1/2] arm64: dts: rockchip: describe PCIe Ethernet
 controllers on NanoPC-T6
MIME-Version: 1.0
Message-Id: <20260529-rk3588-dts-rtl-eth-describe-dt-alias-v2-1-49700248143f@pardini.net>
References: <20260529-rk3588-dts-rtl-eth-describe-dt-alias-v2-0-49700248143f@pardini.net>
In-Reply-To: <20260529-rk3588-dts-rtl-eth-describe-dt-alias-v2-0-49700248143f@pardini.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ricardo Pardini <ricardo@pardini.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1935;
 i=ricardo@pardini.net; h=from:subject:message-id;
 bh=2PbNzuIjWPVmiNZE+VGSo9E5JFZNjeHgejELWlx8zA0=;
 b=owEBiQF2/pANAwAIATteP+Oex+3pAcsmYgBqGbFSPJENa/7M0hIsX8QZTVDKL5ybziDJ32Mcv
 0CUdDRXgfOJAU8EAAEIADkWIQSsGCMM9q/qytxIiJM7Xj/jnsft6QUCahmxUhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwwLDMACgkQO14/457H7enxQwf/f4efDbsFjixVgO0r+qirfD7qwBnLeRi
 +T+sYVCzBeLicYRWVses2atOVpWutNM6EPMYL9DcBsdrMuZkCRm7a2HVTQJ0Q1eqRP/qBi9RRvi
 pfqn6tfaduxxSvKMl1JI0/SGeYLTET2pQXF/aeQLjjl8Kr7ve6a0KDRo8l+loFH0BNWzQGcQleY
 oSL9DCAyMYAsTjatOIX6lhslGtVSToxmfezDpvQ9N8Ss+KF57Chv2zeAVuwQn61dlqj1KQXqsGA
 qKsdlfK1W2omSV0sY9Xa5mBakuqRl7zkPIT0BF9K98avb3nAXiTg461fGtw3X7DNMVLOqHrlWrg
 JEMpmisjdDA==
X-Developer-Key: i=ricardo@pardini.net; a=openpgp;
 fpr=AC18230CF6AFEACADC4888933B5E3FE39EC7EDE9
X-Endpoint-Received: by B4 Relay for ricardo@pardini.net/default with
 auth_id=588
X-Original-From: Ricardo Pardini <ricardo@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_083133_138817_5FA00AB2 
X-CRM114-Status: UNSURE (   9.62  )
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
Reply-To: ricardo@pardini.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ricardo Pardini <ricardo@pardini.net>

The FriendlyElec NanoPC-T6 carries two on-board Realtek RTL8125BG
(r8169 family, PCI 10ec:8125) NICs, each behind its own RK3588 PCIe2x1
controller (pcie2x1l0 and pcie2x1l2). Both host bridges were already
enabled by the board DT, but the Ethernet function nodes themselves
were not described, leaving the kernel without DT handles on the two
NICs.

Describe the fixed PCI function nodes and attach ethernet0/ethernet1
aliases to them.

Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 84b6b53f016ab..04c4479f08170 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -20,6 +20,8 @@ / {
 	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
 
 	aliases {
+		ethernet0 = &rtl_eth0;
+		ethernet1 = &rtl_eth1;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 	};
@@ -635,6 +637,20 @@ &pcie2x1l0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_0_rst>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x200000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x20 0x2f>;
+
+		rtl_eth0: ethernet@0,0 {
+			compatible = "pci10ec,8125";
+			reg = <0x210000 0 0 0 0>;
+		};
+	};
 };
 
 &pcie2x1l1 {
@@ -651,6 +667,20 @@ &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_2_rst>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x400000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x40 0x4f>;
+
+		rtl_eth1: ethernet@0,0 {
+			compatible = "pci10ec,8125";
+			reg = <0x410000 0 0 0 0>;
+		};
+	};
 };
 
 &pcie30phy {

-- 
2.54.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
