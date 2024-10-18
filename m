Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E688BD30016
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 14:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4suxbbymvwkyDwFJ9B17HjTXds4wvcqH2vAR5289p5w=; b=jOiNfoTYP44U+Q
	eVzXAXGDr6RI99CD6FLRp82/+GPf2J4iSujinsTqOu1oBDFGE2UpXjzqsf/DxWTmLXhMVFW712BY0
	zi05CNifABRO0EALSw79EolSmbigTPkHPXshWZCAraFZyh0UJEM86Uln1oKOsbIjlThL8D4GyYzBW
	O23AiGfocF9gjtxKov1xHbQMqUQxaPv0Me7BrmjyR0dOyfrslEvK0aquyWVusSZh2RkRoA9+Ynpx5
	vYR/sIyytVUgl9wEdNnLSdVxpb3VXyegX8lFKXPbEENnLIFpuOkNQJnatqNKnTlYEE9XeNB42ya1v
	m+a4zb2nMxZiVByKzT+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1oLE-0000000170G-1zq5;
	Fri, 18 Oct 2024 14:52:36 +0000
Received: from out-182.mta0.migadu.com ([91.218.175.182])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1oLC-000000016z7-1bQD
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 14:52:35 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729263150;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6Op0z2Z8YZdmLDf5Ekh5OWfa4CyRppADnsh714GMqJU=;
	b=lrX4z7cNsWFHB1b4QGI0oeP4D0vNqiylloxToHWTN/qBJa5G2aydNc7ejWX4oJPgcfkrKb
	QG4MvU36zsQLG9PozbCDciiMDf5CkaDviRvzgV32H7cln2zacvnn/RKTfVXb3Clnsqef8W
	S+Bs8IfyPIEvJ87Ou6JCKk+FGbWOg6KzsdhT37kAgtq2XcKUPNfR4AZHeskHi+ryL6rcCS
	XK5pDSTwfz4k7Jo+BIn+R2xpV2syQQQp0Ws0gy5idSfY0lDp9YtEb5Lr2h6E+/mgDBuJtU
	6raG+qwTFvb4yWIQ7H+Ou6zrXGKwlVmVYq0E085B2dY2lqGeRiCU+PVyJWln+A==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Samuel Holland <samuel@sholland.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2] arm64: dts: rockchip: Correct GPIO polarity on brcm BT nodes
Date: Fri, 18 Oct 2024 16:45:50 +0200
Message-ID: <20241018145053.11928-2-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_075234_696779_531C3ABD 
X-CRM114-Status: GOOD (  12.13  )
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

Paragraph "3.4 Power up Timing Sequence" of the AzureWave-CM256SM
datasheet mentions the following about the BT_REG_ON pin, which is
connected to GPIO0_C4_d:

  When this pin is low and WL_REG_ON is high,
  the BT section is in reset.

Therefor set that pin to GPIO_ACTIVE_HIGH so that it can be pulled low
for a reset.
If set to GPIO_ACTIVE_LOW, the following errors are observed:

  Bluetooth: hci0: command 0x0c03 tx timeout
  Bluetooth: hci0: BCM: Reset failed (-110)

So fix the GPIO polarity by setting it to ACTIVE_HIGH.
This also matches what other devices with the same BT device have.

Fixes: a3a625086192 ("arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
Changes in v2:
- Better commit description with references to the datasheet
- Dropped the (self-)blame as it's not useful to evaluate the usefulness
  of this patch

 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index a477bd992b40..0131f2cdd312 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -688,7 +688,7 @@ bluetooth {
 		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
 		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
 		pinctrl-names = "default";
-		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
+		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
 		vbat-supply = <&vcc_wl>;
 		vddio-supply = <&vcca_1v8_pmu>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index e9fa9bee995a..1e36f73840da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -404,7 +404,7 @@ bluetooth {
 		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
-		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
+		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		vbat-supply = <&vcc_3v3>;
 		vddio-supply = <&vcc_1v8>;
 	};
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
