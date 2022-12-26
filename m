Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9F5C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 06:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueZaZ9czFrt2VQkJtgPfonXviAXVu+G8I6ss/3HbuRk=; b=26S6Abnv1oS4EC
	3Ou6YYr9jYTDRuF+7Riv+Nk/yTUIpJueBdmZv7bRWZjSI9Qe5D1vMLJx7BbVoZJfDkIQZAqqx6FnA
	D/XCrah7Ur1A+v2w4DPWVQ2yLa4AC/+gKlQst7BPPpYYfRx0PpYula4NnFb2FTh0UNodLm0GY1Vqh
	E5fKrBLmYCGTtYgf5DCAQsmMsO6fJ0s7PLquP21mptqopE3YdDjwSOdZq0bQTA+ZDEeBATfV7tYbZ
	Q3pisnmrffFz3mdNDEoZkx5DzEeIdq92j1W/fn1P04CYML6MoszE8js32lhRpD0NB1zA43BSOAe7F
	4tO9pzfEtIJHnQaQjm/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h7s-002JEm-TS; Mon, 26 Dec 2022 06:38:21 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6W-002Icj-Ru
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 06:36:58 +0000
Received: by mail-pg1-x52a.google.com with SMTP id h192so1897437pgc.7
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 22:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rW+W8L4hEp5lOoEXBkKxHWasEwBBhWGhqBiD8Bx3Ygo=;
        b=voBlDzsBgXxobxqDnz/UaPsHRfWs7i9nstSae/q3NRBCxfuyzy1+Ep+jWlbAoD5jYA
         WyNKywWNaYysqNCSjfSzZ7829lKS+/ZwXBDxovBWTxNi7i/8FRCN23iXQIYQVCpN53dG
         E+Yvfbq04uqXoW60RyAOQasa+JXJmKHyQZ1hBrjR8Dbky8ygnPj9oC9pmrpqKhk4ieHT
         59pb3fUEa7iub7UP0FS3vBZix9UqCdmOqWAHl23ywrlGWIvbjLAZu2PQV9i3it0S5XnE
         iXEOb8VGVNXQ22Of6JxWEUwcvWDsGHwMvmUsR4K5wuZ2LN932Cx1Ij3+lKvrFOti5Fnn
         DSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rW+W8L4hEp5lOoEXBkKxHWasEwBBhWGhqBiD8Bx3Ygo=;
        b=gxkNFD7xqj4p6tqNw6D4RJ9i8B3US4IP1B67IJSmp9g9D7FsKjKb1Ac1ak2tBijYWD
         zfFcdTdb8nyhWhYzac1k3hOit9hvFTUATfkK4S9los7U2BZbt1ysPTuBAv7Y4g5GJNPr
         ch7QmZWB9fItwRxB4x5IjP9bezNnn852Zt+wi6eSSFEdyJwcH2gNBciaEJL5sPzZOxHS
         vBOTiA3xjkE/ARo6iXaNFAfs0OXbvO/wUgHL4CsgvgYLlxeKKcpVQL6sBcerI7v9t2ht
         3aaW0vEUpdoEoneIP1kN+Xlbphr2EZ4JrjF/f8j8HvloG/sZeYhJlP4NAYtmf5AVkW/H
         rfPw==
X-Gm-Message-State: AFqh2kpz0lOhJIRPylXAFYijP2o6q4PAVT6U//gNANhp1xsNk8DlQscJ
	l8wi0fVH+/17dSXvfLIZVKgO4uMkRSln6n2vhuc=
X-Google-Smtp-Source: AMrXdXti84xoOVGf5X7VMNv6CCR7z2+EuYq84JZ3OTs8Oj1rP2mwcDoTDui1+Kx1tgTYoaNYTs1+JA==
X-Received: by 2002:aa7:9f8d:0:b0:57f:ca45:66c9 with SMTP id z13-20020aa79f8d000000b0057fca4566c9mr20282753pfr.13.1672036615502;
        Sun, 25 Dec 2022 22:36:55 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:55 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Anand Moon <anand@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date: Mon, 26 Dec 2022 06:36:22 +0000
Message-Id: <20221226063625.1913-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
References: <20221226063625.1913-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_223657_055318_3598ED59 
X-CRM114-Status: UNSURE (   8.54  )
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
---
drop SoB of Jagan Teki
---
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
index dded0a12f0cd..bd592026eae6 100644
--- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -22,6 +22,43 @@ chosen {
 	};
 };
 
+&gmac {
+	clock_in_out = "input";
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
+	phy-mode = "rgmii";
+	phy-handle = <&phy>;
+	assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
+			<&cru CLK_GMAC_ETHERNET_OUT>;
+	assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
+	assigned-clock-rates = <125000000>, <0>, <25000000>;
+	phy-supply = <&vcc_3v3>;
+	tx_delay = <0x2a>;
+	rx_delay = <0x1a>;
+	status = "okay";
+};
+
+&mdio {
+	phy: phy@0 {
+		compatible = "ethernet-phy-id001c.c916",
+			       "ethernet-phy-ieee802.3-c22";
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
