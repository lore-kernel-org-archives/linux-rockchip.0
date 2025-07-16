Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B27F2C83F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 08:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kVp81djhYIyCYTBcncVZX7e13A25WjDMYDIWr/4979U=; b=b47RjHC2uGSKz2
	Bd+3/xSghQIFTbf0R5i3Um1SaoywuU/mwiaqavbSYYRtyGEYo6WIcd6Kbf5S/xkbBY7aQQnHhYNLh
	Rk/nSa+FdSkpK+gf3eM/E7Ep/lJX8b18OENOAREhKx3sZFSJIwFI4R9qcvkmaS3J2HhHTNfgXEPjo
	Dr772yBSYR5oVY81rBVhHuSBwKF65nhcsMuReeVlUyE/KGYshZiKo33RQSYBEbM6Sal3y9NqPJGBf
	ti/iTRzo7wEVRfjR4Udqw036rdY44vTQ0CbuED5KzmKecCgW63gsDD776hn++8XXgyTfNJ7i+uK5a
	0viRxedUTsrbBZH1SlBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubxqV-00000007D3N-0EnI;
	Wed, 16 Jul 2025 08:50:35 +0000
Received: from out-170.mta1.migadu.com ([2001:41d0:203:375::aa])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubxaW-00000007BS6-2cd6
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Jul 2025 08:34:08 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752654842;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=S8/W6hICoFcDRQTv0VXVXPyibPJUZoDyo7YncpLNyV8=;
	b=kw8DYr/sutCa5fwfr6RBJuRaN41yB1dumvTFOuKWQbwfa+vZLP1kHi/Yw98H0V/KPPKjWI
	VGk4tZGFrnwvKC+9z/or9CX1k7C9KLok60tEV1p2jaXj442qKUwgwShGgTBmyWsOe0Q6Ur
	OmdB889BCa9O7qG07r9Jhg0RB3hSdhOOnS5HvmYKYI2d/baPI6iqoev4tCgMj/d24HsKXD
	piGKGzmy3L7avBwIf6jeLjMuiMAnt4jRI5N9D46DrBL4Motlt28K4xMuJ1Ws38MDyvx9Sf
	a+Wcm/rIPrAQSfVWxz4klgccZUdFjGhOE+3UKe8idfrkr5q7y21MO+YiW5lEFg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add maskrom button to R5S + R5C
Date: Wed, 16 Jul 2025 10:33:35 +0200
Message-ID: <20250716083355.327451-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_013405_060924_C9ADE682 
X-CRM114-Status: UNSURE (   6.91  )
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

Both the R5S and R5C have a MASKROM button connected via saradc.
For both the R5S as the R5C it's described on page 9 of their
respective schematic, identified as 'Recovery'.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
index f4d042bdd328..e3f44ea4eabe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
@@ -25,6 +25,20 @@ chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 0>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-maskrom {
+			label = "MASKROM";
+			linux,code = <KEY_SETUP>;
+			press-threshold-microvolt = <0>;
+		};
+	};
+
 	hdmi-con {
 		compatible = "hdmi-connector";
 		type = "a";
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
