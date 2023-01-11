Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E05C46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 06:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4nlORmYwVwmlwGU/N1wUZz1U7ryH0H3otUxfl7M/+8=; b=W4MwCA5Lw6fy5y
	dBKW//uNnGimOjpqQDVEz9LfUWfKLEWgMdZB5fHgc+xGBy2d6Yseb7m0QLNTBpFVhapqgkc/RlL6k
	hdxSa9Tms4Mh8k9zvGQQmDiNyFjtAAxQOkSub/wChkCNEN/7Do9YsIj4HYVVChKUWAEPbUjukfjV7
	6K8pGaJydNngM0G7/826WXpuXctH855kxS62afbkOVkQh4jTCtUuVNbH1wcS59nazad3aRqc7tfBR
	1/pdUDWp7DxRH5xREvoj+5uoZzKiQr4hTAh17AeoGhfmVjsXnfcO3BmDIZ6lWc4FtjceiAI+PnlK1
	FSv4h1oYHIoYYwlQY5hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUvO-009txb-SB; Wed, 11 Jan 2023 06:49:26 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUvC-009trc-6K
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 06:49:15 +0000
Received: by mail-pl1-x62a.google.com with SMTP id v23so10896870plo.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 22:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6O+3B9iJZ9CCy3n1rtb8gBedSyHiR9ZlkmoYj+KH2I=;
        b=zQ2DBcbnZdTbmpOaEPsOOBckXPH0aYxDabSHu23Nc64Lg6WTcUjYacWJ49000sRqj+
         MhGW/GZ9sCOJkKUXv+BQ0lvm10570rB5uHq0W+Z2HImh2ZvA6C3r1+0kdJ4ZOb5wNil/
         IcCHfp1sgDXmCXkBV8AEscRjRBZCAKN1rvoQfFcDZ4lhZTQP6gCRMVRTGaGag9PrAA9o
         xYJc6g55cZ9KArT6N8bqOo6/YqaEYfrNhrpwKEsKRVisgF/jD7ZczNOa3tcar9q2P9u9
         FcCk7yS6qkNSFcL6HLfw8HF473ixxhXl5i5OkJRIhzhw5DyZhgpHJBTmLqfl0DGZqS/+
         SZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6O+3B9iJZ9CCy3n1rtb8gBedSyHiR9ZlkmoYj+KH2I=;
        b=G4SqBWuMVy8YRMw5woXSUHFb4Esf5mBEp6s9P3iEaxTdwi/NmBAeX00+bY96p2veVr
         +HBp5vmzdv/8j0vcRsch5qCmLKPpuSFtE7xlt9uf1VCCShuCC6D4zLljIOIuuCkXHV6p
         ccUTRgGVCToc+77Z09enNLPDCHhJbqEn9UqPoYx0gVeH+nbABisWZ6Ml+lT5KyKyfSQb
         4WwuSmPr+FvyBYtly7yAhWn2UnvbTyM9vQZFVGY8Toi9FK0oQcEPWJfMzfikP4lIpQup
         g+E6FonCpJVY00LIegf5y4WAYq9TeBj43vaFOg0kRUmrYHV5LtwLBzQvODMKfaovA3nR
         +N3A==
X-Gm-Message-State: AFqh2koRWUUHkIZLdF+Jl7/yV0WdO881fOkpCn5IF/BLY839sGBvRpQK
	oFqdiYa/Yy97vejTesoSLbejzw==
X-Google-Smtp-Source: AMrXdXu2dxbPB5QdrNT/INy7sEKaWL92dHycLBjLklpQNgTxNQwGwtqj58osfflnN9NidTBsLaWW9g==
X-Received: by 2002:a17:902:eb11:b0:194:46e0:1b61 with SMTP id l17-20020a170902eb1100b0019446e01b61mr2895869plb.63.1673419753115;
        Tue, 10 Jan 2023 22:49:13 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902db0200b001930e89f5f6sm9301861plx.98.2023.01.10.22.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:49:12 -0800 (PST)
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
Subject: [PATCHv4 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date: Wed, 11 Jan 2023 06:48:39 +0000
Message-Id: <20230111064842.5322-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111064842.5322-1-anand@edgeble.ai>
References: <20230111064842.5322-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_224914_256906_D7F6C678 
X-CRM114-Status: UNSURE (   9.94  )
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
