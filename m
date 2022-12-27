Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7CEC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 10:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sdn6OncmENzipOHJ9WrU3fSPgFLsAVzA83naQo4rOAE=; b=yy2Kjbrud8V4Xa
	GR+wFpnNB2OQ3Rbhx+vzQUthHlIwFDdqmC5TUX288nNzSXIZEFjqAyZ2EgrD1FDNJ6nMIAYtIohRj
	B/Te+8SeVm5WIHJS6aEcr+e7DdJsTJ/kLu292/KXxUGpE+uGL7BQAI93PzLRkYwK0CyfT10ZBcEQZ
	MocNtdgPDjLHle2GqKwk2u2eP+N/AxMIge14PG1202Zll4cg30cPXG20cB6/P5Bc9QvNVCAJ83JUA
	98aaVaYSsgGGLoWuDwOiFMLUBuKqbHAG5FoLa5F94ROx3EPCED+HfEToZMO1FG8I4sJospvWg6/SK
	kDBa4OnbiWFwMBqcyqdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7YN-00CEaN-Qq; Tue, 27 Dec 2022 10:51:28 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7WH-00CDi1-6v
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 10:49:37 +0000
Received: by mail-pg1-x531.google.com with SMTP id 79so8554018pgf.11
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 02:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qrV1+U1PAwZ8aTWO8bBklveUtfQ087C4HvxRsD6AFI=;
        b=NvCaXjgDKWKtWlc95hAFYPXcCwPA9WeBpX1HYoJN/cl0qlOl6DGWpIRxQyHPxAqFeu
         g04Nv3vIFE08OuhA9lWiKnBrL1v5GZF8Pca2ZDPXsQpEQfWqiAh4jRGF9ltlwpWFdtnn
         LM5f3xpVELdN1bgcHFygF1VDtNJPTCDdU7awX5EzPw/0s/4VtAEOOkzM/VsrxLYnHSvD
         ORg1aMjTxO/qu2LzIGkpUHnkkCa4m8Ax/yOv79Cgth2KdJzauoWkc4YMFhmhHaZWTDOW
         qmJe5Wf1iyBEvb4/aWBqJ/VrecnHg4jYrzm+Jpj23saX6vmZ/dnVjHuQ9X/65Gir10CZ
         H89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8qrV1+U1PAwZ8aTWO8bBklveUtfQ087C4HvxRsD6AFI=;
        b=W4P5VzmVP+W+1JMBrJ/CyQEDSZYFaa7pBx33wuNb7QEQDygG4XmlOZKYxSuUDcxxgv
         IxePXZ3mwRBQTWVPN8/R6P3vQz6ODpNWqMAiVUd/dlmFp6j4BX33RBt2YoQCfOzIsdPP
         QaJBnA1XIpJ7uEz+Z8LucnUC3CPutATazVEpWmqJtsGvYvO9wBYHV2nH22aH6MXKKAIC
         I1gLD7HrdST69QpwV+/xqf7eznh8pgqLkTx+vemynXRJ83GYE7bSDNxTXoloijoxBx8b
         KW4eXrhqWH7JkkbiYKRoiOzw6mZmhO2TBxIsYxLaZAY6iiwcqilXAy52FVGgK0j/WEC7
         0FZg==
X-Gm-Message-State: AFqh2kpRbNR6f3ziKyprFyG721Nu6MckyJNIdWN4i1SOvd5OgzkcUv4s
	F1RjnghRyigoBREJxd4dbZA66Q==
X-Google-Smtp-Source: AMrXdXv2wfHzBIqnNINzqCh5/AyiZtGFRaCSje/rvCO90gqbx2pedSP4FM+WHmcQDleDMO60b82ebw==
X-Received: by 2002:a05:6a00:3027:b0:577:8d87:d8f4 with SMTP id ay39-20020a056a00302700b005778d87d8f4mr23836820pfb.34.1672138155421;
        Tue, 27 Dec 2022 02:49:15 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id w18-20020aa79a12000000b00581816425f3sm194809pfj.112.2022.12.27.02.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 02:49:15 -0800 (PST)
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
Subject: [PATCHv3 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date: Tue, 27 Dec 2022 10:48:34 +0000
Message-Id: <20221227104837.27208-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221227104837.27208-1-anand@edgeble.ai>
References: <20221227104837.27208-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_024917_683845_43080D07 
X-CRM114-Status: UNSURE (   9.30  )
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

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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
