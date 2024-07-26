Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A810C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 17:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLe3lV6j2cB4a78rn1tGiAGOlEmOr5BiC29tfB2m7fY=; b=faYIFcHFUIlWqx
	LlTnd4Hv7mvaCuWubzRLSRwigeZSjjVAePUQ6NVOdbFHxzQ04krOdqv2GvVZKG4yHGF/fOWSff/c3
	PqfiozdFDBfHlHwuLdE6gptVhjldORtK7HI/fQRXc9Eg8/XBZr1V70k+wf2qNzbnKMUpDacqoi7fq
	70TgFMgTDbrMwxFubruM3heRjol1mK/wMYHwEgv2iG6rBhlUVzyA2LANfCdiZO4l3/Ibo9OYVzCaK
	O8Autpo/b8jKpSHh0uC0zR3uBbO4ZVlTulf3rqdCXWmFHCydqfOppcN7mjCNx+qzZyhykfPb5+6b4
	YlpApikde5fGU/+6FQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOXT-00000004VPQ-4ADF;
	Fri, 26 Jul 2024 17:15:32 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXOX3-00000004VH6-0dO2;
	Fri, 26 Jul 2024 17:15:06 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-70ea93aa9bdso991438b3a.0;
        Fri, 26 Jul 2024 10:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722014103; x=1722618903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hG+eB5Tfylkp1eYxbyQ+cx5mDv2otnbkmfTzAe9Peb8=;
        b=XhWxmcwi6ZRLYpc5LGXcDmc1tggVMthI+R40Zx4I4lE3SYM5RFLeisHokIdM6Uflx6
         tZ7Ph8FHzGzaNzqIKDyUgOSRB52QXBK7IWvEYz0AML3omIo+upArfptYGTZtQnbu8CPr
         sX+6Kztg/V4QYgvmhf9f1+vi7bPHG3Dube5vRz8tPORmym3VD37PdzkoGuN7YfELH8KD
         EX3lKrL3lWNCQP5pOC16XnGfxXcy+ax1spkvRH/hga4huGTGn7hcDeVl0Kpxd5UJlP4U
         05ucgT59JHuugK+WYWXQeqvHZAQgLhUaKm9cVzTbHf3IHIdTqvaBtljq3C2rg01RpZs9
         uzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722014103; x=1722618903;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hG+eB5Tfylkp1eYxbyQ+cx5mDv2otnbkmfTzAe9Peb8=;
        b=XRsTOWS/laBsRM9OmLPFsJ94ha81aOTDeLMd65jU6+JG1MPaZKOnHn3T+ERgwbruag
         zRgTtdhxdvGLpTf1a2alEf9NNKFS2KKqcqg9C4SB65AxDSfKV8ugDVLhwVTeETOhhDT2
         QSCqm9B1OX3n4AqohhKlPqhwSNG0WaWDqQKCFM6NDI24XUj9kdB6rxSFAWzxP1g54YTs
         mwOMJWxdS+tarZHBTrty1VbiWdOCCwKMZ9NLXQJSyDkjuxO5KmA47/bZDovZEKoJS3tN
         sCAkxE8V4QD63xAuzaO5yT1jc6OrSMbfOSRfvIWYJOnpvnJdiQEgGiNr6ltiKRpbrNgy
         fVlA==
X-Forwarded-Encrypted: i=1; AJvYcCXS1CcEcSgpd2fp20exgLgKw3jxnof751OyGFrM7RC44DMpEQx539hrY9ElfjrG8rGPFC4tey2AGXTxlWuwmxp7YzJoyXVQYmMgsKCq+t+cuTFJiu3mlavjTz3Ycr/pADM7AJO2dYdxvSqoOjW03XXcVA1bHkwvL6I=
X-Gm-Message-State: AOJu0Yz1slC8TUMSEWzY0z1F2UyU78lGI+8HL/qKGh+/iwCI+CzlIsQQ
	j/0qonPgc2IvLSC9Fqj+3bNJWelAUqPTi/bEJX1iCJgd6z6LgV4T
X-Google-Smtp-Source: AGHT+IFOFTaHck9MrdAuCfkbyfhyFt1R2cNP/jjGLOySlT+KGHPdNpj2HnEBVu6jb7djXFd9HeK9zA==
X-Received: by 2002:a05:6a20:7495:b0:1c2:94ad:1c6a with SMTP id adf61e73a8af0-1c4a13a356emr200628637.37.1722014103343;
        Fri, 26 Jul 2024 10:15:03 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73ededcsm5718855a91.31.2024.07.26.10.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 10:15:03 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Fri, 26 Jul 2024 16:30:44 +0530
Message-ID: <20240726110050.3664-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_101505_217591_C7AD577B 
X-CRM114-Status: GOOD (  16.82  )
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

Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie3' to 'pcie30x4' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
number.
V3: use pinctrl local to board
V2: Update the commit messge to describe the changs.
    use pinctl group as its pre define in pinctrl dtsi
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 966bbc582d89..1c7080cca11f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -338,7 +338,7 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4_pins>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -377,14 +377,20 @@ pcie2_2_rst: pcie2-2-rst {
 		};
 	};
 
-	pcie3 {
-		pcie3_rst: pcie3-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
+	pcie30x4 {
 		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		pcie30x4_pins: pcie30x4-pins {
+			rockchip,pins =
+				/* PCIE30X4_CLKREQn_M1_L */
+				<4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
+				/* PCIE30X4_PERSTn_M1_L */
+				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* PCIE30X4_WAKEn_M1_L */
+				<4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
 	};
 
 	usb {

base-commit: 1722389b0d863056d78287a120a1d6cadb8d4f7b
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
