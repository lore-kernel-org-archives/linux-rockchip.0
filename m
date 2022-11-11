Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B265C43219
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DIJVvn7qE4AjVtwUZ7BMEJBw17BMpBSKMHODrBh0lAU=; b=2PAQR99jlJ0kz7
	QFaT6UT1M3GKwx/Xci02QoKpolzbiMw4jtaIv/f+MKE0jz8M14l0BKT574KNC0rcXN82TGulKZY0G
	KwgObAb39LXqJjuj0B8g9Z76JFZ1MK7P2pyJT2Bj9yFPGmfGjuU9LS5jtVQxtabqwjHJx4vEMHwx3
	Z/DlnTydNA2d3ENeqkwY7kLB/DLtpvv63c+cS9osrx40wzQAuB1w1gMIC/mv4WdwQk3RZLy/xezXN
	bbqm3MfjjhOO3PgflsRPSeoXNlpfoW9Ao0t9a0Mm1+D0g2qVLiEny0NdUn2iPVL/nl01oMzwtsb/I
	IkvkLToD/0a+JYfp/auw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZP-00Eg7d-FJ; Fri, 11 Nov 2022 09:43:31 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZ4-00Efna-3d; Fri, 11 Nov 2022 09:43:11 +0000
Received: by mail-pj1-x1034.google.com with SMTP id m14-20020a17090a3f8e00b00212dab39bcdso7350061pjc.0;
        Fri, 11 Nov 2022 01:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pyDKQpZMzsEhp0LAIu0OPkD/FuQNGjCcyBUAqhhwqak=;
        b=XRP4geMZx6kjuwTuwCzNE3NGQvZSPEpgUGPUs/on8NHxBiXRo40j+eGI6CUVyRP1vh
         QZPNUwTxiNDvtyoAg5z8UV4Tiye9mGB7m87FISgzUQdPRGluBENb9zLf45DZE3LcOmdu
         mCC052P4k0Zu+R8hCZqYWXdOvMuJk1LNtYQaWw0Y0QuPXRsihOdIAyH6ZEuGipMuOHzR
         0DINweUKaO2BXGVbpj+H3C5I0C5ZURPxqV94G4YeixQ34BWrKbUubzXncGEsrdxnUXGw
         YujkS7lHGqU8R0QeRZ9N3RsYmsU2Fg7GMI7ChqIWsqmA19VC1JU2dcSRshVUe9D8R4nq
         P+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pyDKQpZMzsEhp0LAIu0OPkD/FuQNGjCcyBUAqhhwqak=;
        b=1HwnNbI4Itif0IBBRQePHieV1WfvqwcJ+3lkmbvhS3Pr0x7m4BC9SYG2D+KD7vYc4c
         nhNUswvRQXtl3NNJs8rRZ+wshs3ugA883yZwp+C3Lk/GLn8Z5AFYITRm9DkSlpp1avqB
         pWXQvA+DigIfFy1pKYZDqfAsR0e06VRy/n94p8ng6NAeHh9HuerW5blwHRmUGx9G9JHu
         UFsiXAg/CSRCYEW0S0cGPDRqW+/P2eHtFrdtTDMyIiqK+BBG8NrvAJgwLUGRV8JV3Mlx
         7mJktca6ePwayw3NY+sK2gYK5bvOiayOhEXcv17RzJW00mn3IEJxzBUedVnbuPjnlIax
         j6MQ==
X-Gm-Message-State: ANoB5pkyl3VoEKmP7H9IYZWsk7eoOQp6zZbsi8LshD6yBUFaxUgWGOpm
	zcJdE5txjq8L5CBmdMpLgMg=
X-Google-Smtp-Source: AA0mqf5LZt+ozbN3nDo5HbA+lemE2vIe5kztiCD5WFbcQhMyUR9mVULYpLTjBSnRmgtRuSJOVTckPQ==
X-Received: by 2002:a17:902:e54d:b0:188:4ea8:a685 with SMTP id n13-20020a170902e54d00b001884ea8a685mr1521777plf.71.1668159788465;
        Fri, 11 Nov 2022 01:43:08 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.74])
        by smtp.gmail.com with ESMTPSA id fa13-20020a17090af0cd00b002086ac07041sm1188450pjb.44.2022.11.11.01.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 01:43:07 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v1 2/3] arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A sbc
Date: Fri, 11 Nov 2022 09:42:34 +0000
Message-Id: <20221111094238.1640-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221111094238.1640-1-linux.amoon@gmail.com>
References: <20221111094238.1640-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014310_168937_536D5FCC 
X-CRM114-Status: GOOD (  12.66  )
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

Add support of external clock gmac1_clkin which is used as input clock
to ethernet node.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 72e410e3aca8..16fff1ada195 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -32,6 +32,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -249,9 +256,8 @@ &cpu3 {
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
-	assigned-clock-rates = <0>, <125000000>;
-	clock_in_out = "output";
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	clock_in_out = "input";
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
@@ -259,6 +265,7 @@ &gmac1 {
 		     &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
+		     &gmac1m1_clkinout
 		     &gmac1m1_rgmii_bus>;
 	status = "okay";
 };
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
