Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D747C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 20:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kam86JUpaZyI5pgG5jLuaCgC/KeVRcaK3QivbFjgP4=; b=h5oyoExMikiv9N
	42PIxPW9rsXr49C4zNPdJdiAm0I9Is6u4Wjtsatft/5t2GjJvFMHp9r2fJFxrom7g1AH4ygJwQMDQ
	9NT12K6w8hE42crxhw5kG5lmmeaPfS+MvPmVvWLkoQyoELvO9S41Acq4a3lFfk/2b3fJdFtSbpIOf
	ZKH2AYX6MsQaOLOsAwZaWnKiTJbvw13VputmQL/rl0L4i3nW4Q7ZBIDYTyE/4xJAU14R/8CyZdQda
	KdmonWNzCmaf60a9h3w5iYr++VEm3X+gqUXU8+ZNKRfUrk3YvJYSbY8R8UkNZ3ZPzDe7guSqZF4C+
	Q4jAmENcNuAZZjuj4GwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPqFX-00DUQI-0g;
	Tue, 16 Jan 2024 20:41:31 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPqFS-00DUNM-0D;
	Tue, 16 Jan 2024 20:41:27 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-783310bd2d3so789497285a.0;
        Tue, 16 Jan 2024 12:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705437681; x=1706042481; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=StKRXgnZGREhQExaCuJaYVjX3Jya2+71hiETmJNExMg=;
        b=KmUd38ueCdUhHRS4AdpIJ9r+UuSwKuJs9Oe0DgdeqxdR2lGxdEOki6FC6+GLHplmp5
         7gqZOnnpjL1GqbYok0VIPAjJNfU6ckiirRMxBsxYigNcH2X1M5ZR2y3R63nZ4aJBlQF/
         fX/ObuTWgJT11YoLAEq6nYRI4yVzWrqop9qpHap14wANQy9EU3ZUDCyRF3UoxJb1CRhg
         dzQ7jwQSSgcj6uHX8nlIqxq9iDtzRf0UlIPH9cl1EEgZ9R5zgSVjnBxvDZ/Cv4ug9TFM
         RCqxKsd22OwuKthYrmrgHcDHDjnxVDue35nOD3fXMDXiIG1yakLb51OtV+LZrGZXNMVs
         BndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705437681; x=1706042481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=StKRXgnZGREhQExaCuJaYVjX3Jya2+71hiETmJNExMg=;
        b=s36ylFVj5kj0RmD+boCMjyF3F9Cvwx3AdOLUyVn5h2dr5wnRUQb3yUlC2l8dex+8RE
         Q7kj9jIcgxyqJqVera5C57IjV8fd5aeayaq6LXUtvolw2tAB/EkMm4mxjnNNasVomONC
         ZN98F8JlWNqBFb0iuLltF8Bmolp05EhfskcKuX+HWYvAmOLEcdewby3fOMAs+Fisyvio
         UDbdpcWqFkf7YTWv+fFDEekXH33X0Lw+8ddMT/i99Y7kAkqs7Vh/hMUvwxWtThnzg/ox
         LYkl9lbFCC4fmGlL8NOxZEhi0gntSQvPBE2BNwqVOxqbdKbFsXgZU/mVgwT15w/hb0ER
         +Ecw==
X-Gm-Message-State: AOJu0YzFChhLHEMRsiLoqwCy0QY1LiY8bwjyrKHRiRmPQsiYpYeNKdBL
	fumvLPau921L5XhirVyDADE=
X-Google-Smtp-Source: AGHT+IH3Ja1QEZGR+NYI54PmP6WRhDaXVNnXOfiQFtZpqhul+4levY2faChY02X4/rctxREEh2F8Ew==
X-Received: by 2002:a05:6214:262c:b0:680:3ac:2415 with SMTP id gv12-20020a056214262c00b0068003ac2415mr10417737qvb.120.1705437681591;
        Tue, 16 Jan 2024 12:41:21 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d10-20020a0cfe8a000000b0067f454b5307sm4419061qvs.108.2024.01.16.12.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 12:41:20 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of snps properties
Date: Tue, 16 Jan 2024 15:41:02 -0500
Message-ID: <20240116204103.29318-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240116204103.29318-1-twoerner@gmail.com>
References: <20240116204103.29318-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_124126_102387_FB51FA35 
X-CRM114-Status: GOOD (  12.28  )
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

A number of snps (Synopsys) properties are not in their correct location.

Fixes: b918e81f2145 ("arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E")
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 096cfa19036e..0739b8fec86e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -150,8 +150,11 @@ &gmac2io {
 	phy-mode = "rgmii";
 	phy-supply = <&vcc_io>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&rgmiim1_pins>;
+	pinctrl-0 = <&rgmiim1_pins>, <&eth_phy_reset_pin>;
 	snps,aal;
+	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 50000>;
 	snps,rxpbl = <0x4>;
 	snps,txpbl = <0x4>;
 	tx_delay = <0x26>;
@@ -165,13 +168,10 @@ mdio {
 
 		rtl8211: ethernet-phy@1 {
 			reg = <1>;
-			pinctrl-0 = <&eth_phy_int_pin>, <&eth_phy_reset_pin>;
+			pinctrl-0 = <&eth_phy_int_pin>;
 			pinctrl-names = "default";
 			interrupt-parent = <&gpio1>;
 			interrupts = <24 IRQ_TYPE_LEVEL_LOW>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <50000>;
-			reset-gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 		};
 	};
 };
-- 
2.43.0.76.g1a87c842ece3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
