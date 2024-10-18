Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4DA4D2FFE1
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 09:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OgJTONbimYXI1YIQpxxm9OD4XFQckOB5YC/2y55UKfo=; b=RYD5+aYeVttTDu
	RYpgbPaMHI61wOXwEZrBU7LyITzmk/0/hLI4Y6MFSCFARD/rgeorpx3XzbKzzcEdOYj+8hB2vbqB+
	rjy1mEhlu4CHeQHbHUxvwutWKuW54/OEpLqmdxpuB7v4inBU+71zCPd2x4PKcxr7ycswaG7pnx/o9
	JrU7jGJzwJDZvU7bFGpzbXmMF4+HdGwqZxpxtGYunkuiWYg/tKdxtNc2ELgRCnX68/s0cTu4tZmsP
	UKloQ1MpntYH9EnKwXW2+9YKgeGdPs446xWGSypibVqToBIV0lpTvSy2ftdxI3i2p0feDQlwRSQZE
	eaqSnHJrSnQdoaaowyAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jHj-00000000C14-2vu3;
	Fri, 18 Oct 2024 09:28:39 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jCG-00000000B3q-2kBI
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 09:23:03 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729243376;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yPWX9mnHF8dLFEMgA3FdWK9Mm/mngUWWAofNS10id9Q=;
	b=qjJc2l+GGaJm72JmtKwzwS0EMiB4dtw0Z5gmx6TAMjvGOe3JfcbjeYWnq9eqV9rW5JKIJu
	9PUauhgQI2LmVYgv9q7cfMLjGBGyFl0fxWKeNboGfYy0fpmChgblexG9rPd/OPB7T7afwF
	DwThEEDwt1ZRycE29hbuwKLR1DTC2ezg65mF1Hr0RDzAdhFmExlBc5Mk/mrTkDYpEuHR7O
	hlzJ5nzbM3d3tlciE8/f+5vmNTx7c9yMEL1sx7+JVFf4YfdRcIV20iHLHa7aBm69KN2f21
	o7at7raJoTd6SxldQBRrlTFSz0a7KqURvu2r11e/iSUUvu/KYgui4cIUCPLSFA==
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
Subject: [PATCH] arm64: dts: rockchip: Correct GPIO polarity on brcm BT nodes
Date: Fri, 18 Oct 2024 11:22:18 +0200
Message-ID: <20241018092237.6774-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_022301_046729_79C615F5 
X-CRM114-Status: GOOD (  10.09  )
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

The GPIO polarity of the 'shutdown-gpios' property needs to be
ACTIVE_HIGH or the Bluetooth device won't work.
This also matches what other devices with the same BT device have.

When changing from 'reset-gpios' to 'shutdown-gpios', I forgot to also
correct the GPIO polarity, so do that now.

Fixes: a3a625086192 ("arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
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
