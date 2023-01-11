Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08A8C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfsQqHIjzzmqOYscJNW4yD0LmMtgMalxEB18noaxLvQ=; b=u1WwHwBIh1PSym
	Aj80LG7+Zj0koKG8BDAYGzIIpUdNfkj5cY+X54yVg7xiS0CSCvpUbSyHnS+fLQC8lwDHUL7b/kObu
	8kbs0UmhI1l5d9oWsSRdDqdRWeRZcuGlxexHe7O9hP1UKtxDKdappzy0a4e8MpWv0UohNmkrXjDhc
	m+EgrtWJ4A5QJ2uJXkDNkHsObDNruzPft2DpHXiTqHh9lkpi6n/ASemfPiyMrrI0v9HrVvo5txLGf
	6iBYdzDcilz3tqQ608ZPQJLqY1ElCtwbkp/P1bJA2TAWqz1sdDMOzgAxk7hjTvuJOOjgZPBv1931Q
	jm08MP8qOVef3dC/tLqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFerX-00COy5-88; Wed, 11 Jan 2023 17:26:07 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqb-00COUk-N9
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 17:25:12 +0000
Received: by mail-pj1-x1034.google.com with SMTP id z9-20020a17090a468900b00226b6e7aeeaso17983569pjf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 09:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/CxlYBi388NDPbDSoqcwBjvGrii9x3/S/0h+i6WeGA=;
        b=oo0eRw2g8jOAp10levb4WD5yMGtiaNPRCY0wUJNOLxMJq7zYYsp1Bf5FKtN/+8sx0e
         P2gv1oxrqaat+lnipA9FvzPpxUaGPxq0jV++nAKm/MqRpYwScgH8VshqZDpyS+S9VRRy
         hV1H+B5twRfEZmpY8NF6oVBprMp37v5ntum8Zf8e8UDmKUmnjl2WPQHWfl8qhIuubLI6
         GhCb/ddxSjDY+oeBOUHCi5DSgBcjDnwE7Q0JQvLxIuz8eVbfuO0mgIENwqTTgIrBx8kU
         bL9k99XLQNeXpnkSzSC0wrARqfWSnvQRrhnBsAfZJCwyH9oA6JXXed0KLsvWKd5TE0HV
         PK8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/CxlYBi388NDPbDSoqcwBjvGrii9x3/S/0h+i6WeGA=;
        b=269AH8KUym5HokIXrJZitqgw/MzjClT2iuLUEVYgnRrUI/qdnvkF8C28CC1BP1VHMU
         Xjmdkqi9lEO+0bFlz6jyaR11OtYuTb2RZlBeS3bKLnM6gVAydxDXu4rNeJadVw9koO/J
         rq5KNw+Xv/OfrlEdND5q+aEdrNQp/PWXctaC4CTwJ7bCOLfw5E5uRjJ3il7Rc7QK6vgS
         eebjDfKLygn/616t0VqgLKv1Y8hQL1c7/ghTWZo2UIWW1n/XQxFSS6pafdHUYpmdYqfs
         ag5Udovg+BH6r1fUlcFHrpfLUw1mHTox01hviG6wLlhaixBWKhfsIKL0HwgsKMNaL8W6
         QaSg==
X-Gm-Message-State: AFqh2krEpLKYXyMLNV9jba2zPz7w8pF2m6PRhNQrCKUBr47bmM/4W1wH
	nR2QQekOjCguGBdxY6ogA1p+VQ==
X-Google-Smtp-Source: AMrXdXs7OzbIhx9etHa36fQ9ETAVJ4i9nKt/8w1rFjvuwXDA0rzizVgdXyi7HaHdKxCzwFVrpb9iKw==
X-Received: by 2002:a17:90a:558c:b0:226:1189:ad3e with SMTP id c12-20020a17090a558c00b002261189ad3emr51627132pji.27.1673457905925;
        Wed, 11 Jan 2023 09:25:05 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id rm14-20020a17090b3ece00b00218fa115f83sm11110722pjb.57.2023.01.11.09.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 09:25:05 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date: Wed, 11 Jan 2023 17:24:34 +0000
Message-Id: <20230111172437.5295-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
References: <20230111172437.5295-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_092509_798989_967E7131 
X-CRM114-Status: UNSURE (   9.35  )
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

Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
Enable ethernet node on Neu2-IO board.

Co-Developed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v5: add CoD of Jagan
v4: none
v3: Address review coments from Johan and Add SoB Jagan Teki.
v2: drop SoB of Jagan Teki.
---
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
index dded0a12f0cd..3340fc3f0739 100644
--- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -22,6 +22,43 @@ chosen {
 	};
 };
 
+&gmac {
+	assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			  <&cru CLK_GMAC_ETHERNET_OUT>;
+	assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
+	assigned-clock-rates = <125000000>, <0>, <25000000>;
+	clock_in_out = "input";
+	phy-handle = <&phy>;
+	phy-mode = "rgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	tx_delay = <0x2a>;
+	rx_delay = <0x1a>;
+	status = "okay";
+};
+
+&mdio {
+	phy: ethernet-phy@0 {
+		compatible = "ethernet-phy-id001c.c916",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy_rst: eth-phy-rst {
+			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
