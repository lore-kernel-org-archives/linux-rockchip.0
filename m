Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C507C624D3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRaF9XNDyzHIPcm6cqsnhk09W4jJ/sZ7+MzxWVY7pik=; b=3Rwf/mEQ9rh3eS
	sIwkeplkprdDWx+peN8SdORRcEEnLgRxZIBWTRtOV8xwRS/W0/8e5ktuBYpLh4Dxc9iY/Q99y2Kac
	W+VYkY72Ok03daJjiQtArRBEotyDTz00zcsgQYdQOrRtPLd0PwE3Aw40CILk9oYv0QrXYZyh15bR6
	yY2h4fi0xzaoy+Lt7TC2TpxRqv4bhPk35pDRhMUUnFyjW3I2eN6nKjpT1PS4NDCRyZKj/fMEGeXI8
	+CEXMsUqZTw7aGiGC2kKoiztf4u0a6LNWeAjIPNYxNjCXHd3nHEfDuaSv8tIacW240dmiv8RaMXLK
	+T8gZyAKo85BtJVtWhHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUW-0000000CVsO-0cGT;
	Tue, 01 Sep 2026 15:33:40 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUT-0000000CVos-3Swf
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:33:38 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-49b8be0409fso8629905e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788276816; x=1788881616; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BlRBTnAxAr5Mr3h2Ki5AWmuYRNMm8WhwP7R0oNWZa10=;
        b=bKhoJ3foHe6mHE8OpJMp8tdd74Rb2zgnj7Xg6dv/OnguXmRowG57JqDFegIAXZ7Wgl
         KwZS1wD1E2lhD7L+IrUXgtJ88huZxCjV+1auZ8+G346BcBTYRDVF9ic67rXh6rdsBw8R
         YaHt67nZiHIxFTu1qG6KW1Gm9+DixzbssoOlJS2gv1fh5XUX8T0XA9BghDH2hixNfsDS
         McrZ7RYsEDop+BSRd8ofrKLNXoLmFVMd2k+rgryLrs8Vnqs93ORfG8iiZVV5cPmxJJpA
         JdoV+BmhVSZWp2bdpKpqNLmoZzeQZGNZR4tcXnqGizjnFRsEupcbObIG7DH/4+XkVvsx
         PHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788276816; x=1788881616;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BlRBTnAxAr5Mr3h2Ki5AWmuYRNMm8WhwP7R0oNWZa10=;
        b=si20mxWXcVKwEyjumbLzmlxaWL/nQ/8jgPUI68zGPsmcN7mOhFqwO/kTBO7bn1ggOo
         IsfRLodrN8SXhC99nDQfICiXmkl6j+KSB+lOcsq1/Bzc8NsIjjSXAK//+xiA3+zoYYkm
         Lj+ryoTGLPfDlST8ZNa3SAsHPTUfjbuOZ3mPs08aCr3JGcCJKB6auO+NhRLRNoHTG+r3
         OhWZ+G/fRn3YHV9yHOn9SzGfPLVmENnTFreZ3vySAh3jfnPBnDw+Pee6TKFQvP2Xydvv
         kROFBtfxG1HMxnKJFwu7Px0urPlQR/eTa2C084jMDcDj6w5sxwSkt86ai8QCQMqV3VsC
         pxmg==
X-Forwarded-Encrypted: i=1; AHgh+RpEPYpFN/TeMBLD9itqQV2puNfhrU8TN/s7X1RLz2hCx++ojiaP+x2kp8oSZytcwpDgRHSzJdYnpmupHSiGwg==@lists.infradead.org
X-Gm-Message-State: AFuF++kQRfa5UD58JM7PXyxOol2UxcoScNLA4PMzUWXiKNKnK8gsJ+Eo
	NqUU7MVQZ0/kEeUSh66SnnOnk+TrjPa9xzJRMZ5QUpLxIFYD8hw9ElGv1ptJuDzOfUc=
X-Gm-Gg: AR+sD13rMsqTwf/3uT2RxiHktLi03EhxjZEiq9DkOLk6dhh2kCw1xdn6ctEk8i8zQQK
	d22exSQWJE03OKz4FYnD6IABn2ZvB74AsM4vy2jX4KXHwH24opI8GXLNqfgsJhUEDH5BuFQmhor
	bO4aLDxM8d5oLPaggODhXNqGQ+jK4TZJ4npjUaOsAnWYMZoRfKPXmCyl/kxX0Z6affmkZkiXdZT
	paLbJ05DV84YqhvMujOrUhyF+zFn/bVsndY3V2Sb/kr4f47+JxKQOTFL9coFPogG4qGuH37f3GS
	O9kgsX4y1+yhj92RsW08CWcptGOE6rXDmf6OP2ZGF9brStxnugznJ1l45EhOsQ6BRCBeTQHZ/a5
	RWF1xuybp18t07pf3C/zQX7hpxGfEvAGmTNq0si+B9GbQ/TBEXuX86yDmhTzXcaDgWEQf4P5Xu9
	2G7Nfgm8a7JOLI0j15jurM1JwRDZ75r7LnbN4hF1E0eAt9Py77+SuSUsPggGRzfnwZTFLQbyJUu
	P1o++b2uh8tkFRuOZGs5+4RhDeqkIAldXKvlC51
X-Received: by 2002:a05:600c:5288:b0:499:84fe:5f3e with SMTP id 5b1f17b1804b1-49b91c41014mr616951295e9.9.1788276815737;
        Tue, 01 Sep 2026 08:33:35 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b91c5790csm314541845e9.0.2026.09.01.08.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:33:33 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 01 Sep 2026 19:33:14 +0400
Subject: [PATCH 4/4] arm64: dts: rockchip: Derive GMAC MAC addresses from
 OTP on RK3576
MIME-Version: 1.0
Message-Id: <20260901-rk3576-otp-cpuid-mac-v1-4-ea9135270fc2@flipper.net>
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
In-Reply-To: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2071; i=alchark@flipper.net;
 h=from:subject:message-id; bh=7ScGxa+8+RlYUQcbDyTy3K6G/E2mZ7i4yB4b0QAxXtI=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRN+2Bn0+oxU6P3qU/7I7eGFXnGf49KT7dMO7uyUF1W6
 rxyqMHyjoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKa6W5zhn97ro1tSdDtDJG4wGubZej43tPqwU1bkr0wH95UzN2IYrzEyPHz0dy2
 bQNfGDaf/3zEQnXryvurGjW8ropd8La2Y5dtUwAkA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_083337_882749_65E58657 
X-CRM114-Status: GOOD (  12.12  )
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

Rockchip SoCs derive stable MAC addresses from the CPU ID in OTP memory,
which a bootloader would normally process and patch the live device tree
based on it. This depends on the particular bootloader implementation
though, and the derivation itself is not described in the device tree.

Add explicit nvmem layout for the CPU ID derived MAC addresses on RK3576,
so that any OS can implement the same derivation without depending on the
bootloader used.

Boards which store a MAC address of their own can override the reference
with a cell of their choosing.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..0012b45ef426 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1845,6 +1845,8 @@ gmac0: ethernet@2a220000 {
 			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_mac_address 0>;
+			nvmem-cell-names = "mac-address";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC0>;
 			reset-names = "stmmaceth";
@@ -1893,6 +1895,8 @@ gmac1: ethernet@2a230000 {
 			interrupts = <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_mac_address 1>;
+			nvmem-cell-names = "mac-address";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC1>;
 			reset-names = "stmmaceth";
@@ -2131,6 +2135,14 @@ soc_tsadc_trim: soc-tsadc-trim@64 {
 				reg = <0x64 0x2>;
 				bits = <0 10>;
 			};
+
+			nvmem-layout {
+				compatible = "rockchip,rk3576-otp-cpuid";
+
+				otp_mac_address: mac-address {
+					#nvmem-cell-cells = <1>;
+				};
+			};
 		};
 
 		sai0: sai@2a600000 {

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
