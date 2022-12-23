Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 167E2C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 13:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHVx0r1JWryALoAV6HDqc+jsaB5QLYsDZ/EZoWnZ4n8=; b=shaiafjcpRYwxI
	GBfSgmvUG6wvWN5CJeImrXFY6e2ABfxTm1EPGkxgiOOkpd8GTYykr0my+Z6TMHEc/CF90o3EzK2Xe
	19Idc7LkoKBlwI7x1OdppBnza4mkQ8O/UAqos+dNWZ3ZH4nV3bfW2yY6fIQ1ulF4Wgo/p2Uuff6Ll
	Eo2ecjA553lu5NTQvdPuLDG669zqd/sUdQJjUezC4v2e2moxn4A6cA/C/9faa3Lc8ADysqo/PvZGD
	3I3skvPbox09Ci3/6kKAyb0CTZ/ZlysYXkeTSKL3OdqmsxGKf8PW++r7N4coSaJZga3oKvIl8Z8SY
	aEod0G5+p1ykkAU0SLKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i5P-008OWs-Ms; Fri, 23 Dec 2022 13:27:43 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i3p-008NjK-AC
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 13:26:06 +0000
Received: by mail-pj1-x1032.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so4984285pjm.2
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 05:26:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D5TFO0ecJqFSWeM6hfq5fazXKqNWla1DOE+uuMQWKOY=;
        b=ViC80PP7cGI3SuzqsLmaZkriwH8PZ2Rr5Z43TW6yM9dzuazu5i72v0cVpLoGaCUTE/
         05ent5zVCkvpf5ukQpViSUjVbFaH/Vy4kN2X+iBjaIBzDF79S8yWw+gq6YIl31Ql/zaK
         idc0YyA7ll7XkvsdLXYMN7zk23bpDuKyQvpT75AHW+jH7aZi5DinOUxqjZWR6xQpgTmJ
         OVZOpTQ6t5V+OZ9miatjXfLmfxz/7wJW3bi8xi950JIHjptkSqrr3eO0NM+EpNaTrzxh
         Bj4HDhZ3OgcwM23Td6x0y+siDQ2aeosbVGFEP3zV3J4w4y6anJqRXSdqn6gyVZLWuOqr
         /FEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D5TFO0ecJqFSWeM6hfq5fazXKqNWla1DOE+uuMQWKOY=;
        b=woRNPGMvRMoo9tQ1gprxU3vxICM/rKkam+LFOAhA4wbGWTEVIIaGb4wOKINQ0F7Stu
         0sE6JpcTQcd9RdPiPp16Ma+Qjy86IAFE/8d5qis/beqNYzvhdb8WdedlejN+SegEouuE
         bIoKGP8AcPXgaRpnsT565wCW9eJ4Azdm7EWr0dyfZBambIdMGknHxWvB4Zm0WWZz+G7R
         n/s+IBon/T9zx7CQI59gy4rHMlPpkwdOMOFdxEiKrUkX1HkTWijmfO0WMK5rN+YBfavx
         tEbg7utud+6EKd8tsNOrnz0XKJ8EOf3OezQZbn1URzMX2yg0BHsevSQrdYRlH4z6g8vn
         fHEw==
X-Gm-Message-State: AFqh2kqO0ZIHhSxoxq7XdHrgiyC+e7+sWGp2wLdgrs9trMrhNl1MDNF2
	+44iBmrfIryXjCezWrQKat+rlw==
X-Google-Smtp-Source: AMrXdXstf28lz6wStpgfgaW5YWmBqBdWkZ+eYdz5G3cg2Jyd9tAARuoLOZ70D/dM8etR+9KmRD+8sw==
X-Received: by 2002:a17:903:18a:b0:189:b0ff:e316 with SMTP id z10-20020a170903018a00b00189b0ffe316mr15049545plg.38.1671801963795;
        Fri, 23 Dec 2022 05:26:03 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id m3-20020a635803000000b0047681fa88d1sm1308587pgb.53.2022.12.23.05.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 05:26:03 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv1 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable Ethernet for Neu2-IO
Date: Fri, 23 Dec 2022 13:22:33 +0000
Message-Id: <20221223132235.16149-4-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221223132235.16149-1-anand@edgeble.ai>
References: <20221223132235.16149-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_052605_417897_564DCA3E 
X-CRM114-Status: UNSURE (   8.65  )
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
