Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A03DC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 20:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zG5hUQLgyLbgZhP5rDtOGqNQKRdc5VqnHw/1ZO12xRw=; b=gzllyyYTOzpZ55
	jfaeFotus+ewEPUoctR2gVw7/E9S56odVjXYWsgfBN6Z3StZMHzpI9CacftPYfv3axJNz0apuIcZ/
	pbFx/RWCwgt3R9MUOu0byZNjE5trVxPvg+ffWQCjjU920IY4izs4F7mE4CcJEwkpptQp/YMWfZUhI
	Qm1rBfgLJ9t30sC1WtDXoLoiaaanYQklStps4uyqFiqL7wl0QmHJn7io02LP5a6xGgA2wg3VZGrNY
	FEJLbNdMgqzgX49udgiXvHhwzjfNulxlkamukyGIJEHHqGOcJT/rD8QU2yKdb4Ts+8TIYpVbyv4j+
	vvV8zlrETUQrE5Gkl2JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAc2i-008MzQ-2M;
	Tue, 05 Dec 2023 20:29:20 +0000
Received: from mail-il1-x134.google.com ([2607:f8b0:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAc2f-008My3-2G;
	Tue, 05 Dec 2023 20:29:19 +0000
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-35aa6107e9fso25319485ab.0;
        Tue, 05 Dec 2023 12:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701808153; x=1702412953; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7MBM4ZA5oNd9/yj6ChXURBgLtdL7sP8s8g23+U8L60Y=;
        b=UCR1982XNoBYaQxjHZM0RDGwRDGVZYnZvbQ1LKTTPjUrTtniz1/Evz1Jq6gmbwjUdU
         Q6+G0SZjM3SLpPNGE19N3rOhGeqxGex6zm8I9epCZgeXpcRc/kfRWaf7r5LsOdQ0+/ZC
         QEOuJs58u1GcCmAMRbEENq6QKYahTsJOb00g6d74Wy8gtQJFQwQikbvL68ByskYcMkRo
         2unDHXg6gJqzRO8ZRTQSd4HJYOsAIzgnEqza4uRP/AqSfCjBVKX+9do0Jlg9QFfTGTXf
         Zv9Z1naaTzYp5VF/iP6g7fbNdosxO0hI6iWZTvNCO0E5PJIS7WyvmHtdEApQ0Fu4CqkK
         npOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701808153; x=1702412953;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MBM4ZA5oNd9/yj6ChXURBgLtdL7sP8s8g23+U8L60Y=;
        b=fhfG+i1HMHxtaPJZhu05JlR0uWby8soZn0F/wDAnio42PD3VjZ2/RqptefMUfb4ePg
         zz6FtdaQ511+OUqmxwaLS2mMEfeR8Jwt/YMPN1CagzlIersMpnHrWVsG+sGC+svaM/dD
         VTfDM+0YQnVFI2HYSnymOkkqDuPfk2dkleMsnRiZbMKWs7A7cSsPWO2RXMCb3phy0Sqn
         NEJjsIn+EZJGvdRXYj+Xip3OwFfIl1JpCd+Wg6Tg9jHmnpY1ewc/bXRXxomVmDxoUXhe
         lNhM3710uXlhB9HEQCYDKxEcrAGtCxs7JkRZppcGalUxg1UBjBtD9BtzfCULnF/UYqV8
         zVSA==
X-Gm-Message-State: AOJu0YyCLxp1986UV5Y7XGXVfH5IsaKfZqz5HRzD2KAY4Zg+/xq3M5zj
	ciomirjc7G9SdtV3oWW9ny3DydbUCk0nSX+4
X-Google-Smtp-Source: AGHT+IFSuXyE46UX/3konTQtWRnivgvUzbNkI7eysY6+/pVHYGf+RIpa/OB7avY+BS52+PvkyBGOcw==
X-Received: by 2002:a05:6e02:1d12:b0:35c:f2f6:7b1b with SMTP id i18-20020a056e021d1200b0035cf2f67b1bmr7324672ila.26.1701808152987;
        Tue, 05 Dec 2023 12:29:12 -0800 (PST)
Received: from celestia.nettie.lan ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id cw2-20020a05663849c200b004302370a169sm3296320jab.157.2023.12.05.12.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 12:29:12 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [RESEND PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Date: Tue,  5 Dec 2023 12:28:59 -0800
Message-ID: <20231205202900.4617-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_122917_738776_32DD0678 
X-CRM114-Status: GOOD (  13.11  )
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

The RK3588 PCIe 3.0 controller seems to have unpredictable behavior when
no CLKREQ/PERST/WAKE pins are configured in the pinmux. In particular, it
will sometimes (varying between specific RK3588 chips, not over time) shut
off the DBI block, and reads to this range will instead stall
indefinitely.

When this happens, it will prevent Linux from booting altogether. The
PCIe driver will stall the CPU core once it attempts to read the version
information from the DBI range.

Fix this boot hang by adding the correct pinctrl configuration to the
PCIe 3.0 device node, which is the proper thing to do anyway. While
we're at it, also add the necessary configuration to the PCIe 2.0 node,
which may or may not fix the equivalent problem over there -- but is the
proper thing to do anyway. :)

Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 9570b34aca2e..129f14dbd42f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -214,7 +214,7 @@ rgmii_phy: ethernet-phy@1 {
 &pcie2x1l1 {
 	linux,pci-domain = <1>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_reset>;
+	pinctrl-0 = <&pcie30x1m1_pins>;
 	reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
@@ -226,7 +226,7 @@ &pcie30phy {
 &pcie3x4 {
 	linux,pci-domain = <0>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_reset>;
+	pinctrl-0 = <&pcie30x4m1_pins>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -245,17 +245,7 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	pcie2 {
-		pcie2_reset: pcie2-reset {
-			rockchip,pins = <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pcie3 {
-		pcie3_reset: pcie3-reset {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		vcc3v3_pcie30_en: pcie3-reg {
 			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
