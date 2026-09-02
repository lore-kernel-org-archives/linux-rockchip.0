Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6F2C624D3
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 13:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HCwY5MZXwgYApF3b+Ow/ALD1jGcDz4T7Ip2+AN7co4=; b=X16guS3Eo+ok39
	fmlPjQh3RkqlUoUrUTBhUaN5ScSyIJ7Ecaf8XSnE+bdKlWQBbPhQmS/hF5+11D4bLP00cdV1jTOd2
	TOxXQs2dFtTAaMm8/WSgqHL3pADHDy3NNzTumoIgGbthFryWLvBrpJsQdhjn+wsFrTZkRvIs2ySKd
	kFuj/OaYlDCgXV9RsZ0IqlMK9lQwDDfHg+azsEHPm9j8DulLP6YaFgY8/9DlNzcLvCAUpjn3jcB6o
	TDAtgwVjUpTCkOQNR/rAyb/tI9ufnUdEp3hFiPYiCulZs8BVfiRhJ8AlIG5JScnA1mimgNNte0aBB
	6eyDZ0w3MlmUBMoW7uCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khV-0000000ElHg-2EJG;
	Wed, 02 Sep 2026 13:08:25 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khS-0000000ElD0-2BiD
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 13:08:23 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-4843c41f35bso616851f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 06:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788354500; x=1788959300; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+GqdLb9S+dkzyo/uMEE+zALrMBgJbCVE5U0lvdKhWKM=;
        b=MELTE8ISbB2kETzqmLyb1P7azUEwgZXAslVSVG+oxnRQcamLBjTO9/P2rzzlH27Eqd
         hGMdikA2mjAK72R3EUoAHCeHchyqAb29KWuohCVwbwFwSl8BaPcbTy1FplVFiPg1iZZy
         48w22EioFCJEWFseh8hlNsKuk1RhdoZU/5ekQir13Nj+8MrEpRQxfrOkKJYWudDcxEh7
         ZvJdQDg9eOWA5d4e4P/qK7T9gAn7tMrwIVE8Hn0ceLhfYlYOVq5VR8TpXCpIe0SJ6E6n
         CkhNoZtI02KAifjYFWiFSrZXwpA74fUHf8htaa6ZLGpfbdM1DPXeBcJvUeoqXHQXw+7+
         O4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788354500; x=1788959300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+GqdLb9S+dkzyo/uMEE+zALrMBgJbCVE5U0lvdKhWKM=;
        b=V6ei3JB4Hotvu2kCWUr5TLd6dVLDqadKK+aApmY1nQCglFVt4/aMo+QM0O8yUKcZJR
         GDRG6zbt31EH+4I01pt6y5yIQaHpyDlehAr6sRD6dfXEQk/7O/t8PVCB/Wyi9Nwct2rK
         2KeiCSHQ48n0iN/Xf4nx233FH6f5IGS/aNtFQenVZMitDD+9vGUZOJzWIga/vKdAsVPN
         WINj5DzO0u0PEzCM8y6dfWkFBKSxyq3Vc2DzvDwU8SkP83wN2SmSbo5jVyKscJ0x02a2
         jFcVwxf8RtTFnF9fdZN9k7StIp8aKkMabWJgZpbv7Pw+yTpX8iCdTv7R0lN1fZ1je/uQ
         gATA==
X-Forwarded-Encrypted: i=1; AKwUvBz8lHVROazUrQcu6fOBjUuSqKCCnUgq6OCjiG78vTtY/1tKc9YkePn3oFptCLHmAQLBYEHWeZ8t5pOiPhCneA==@lists.infradead.org
X-Gm-Message-State: AFuF++k1G/8EYROm5q2F4zQz6GTWaac+pYrLpZSD2/UPGyF8Zxmyifq+
	JSq0HeDKV/FMx5pZYu6V6I6FUcA14V2yo5mQbkFzpE46AF43HtgcgZs0U3Ft5LpuD8M=
X-Gm-Gg: AYBFou0eVfeqGsYGi0AkkgkQVa5dPveiyPgxkxdAXTkDZE/szQTfb9ziiKY8Sq48Brb
	RGVWBipLqwKNb7mZsja59W5Kly+j9+QHWhLuszlPbHJprPzaQdyzYuSJU4UaQt3tX48RcE9FaPC
	moC6bW7eYu6TmYxXlPvUOnwWxNpWePP6Gp5LPtG8BQEjY/2hgRngs+0lh3u4MWpYJszALo+Fcrp
	WiijraN/d5RRcEuBFk1zo7EJExAAZnC1I0wHbMQxSRAxh8E6XxotOLLMY7XuprQgadlEmi6deLI
	5ufAeDAduRQd24yZ74uflc+XUkMwz/fEHqRG2a0I9xo8AjDDhcSmi4gBCwNaBJfL+TcEE7F9W/K
	fpCARgdKzNfMoAFpxMv1VOu4aLQxvcIygeG9CQNNbnJKTvOvjtI3uEfAlX8t2CHhyUC1EkSBupE
	38NNDe+NcxYinvqFtomlvltMm06rgIPNxRBUL6g/oGlDs1h5Meof7Vj+XrbEKNY58BOqfyp/xEH
	AhBgALGBj3ygAR5WKQS7BRr+w16Nw44vwAHS6f1EA==
X-Received: by 2002:a05:6000:387:b0:482:ea3e:882a with SMTP id ffacd0b85a97d-485781de9c7mr5755351f8f.6.1788354500289;
        Wed, 02 Sep 2026 06:08:20 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e72b5bsm6385800f8f.4.2026.09.02.06.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 06:08:19 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 02 Sep 2026 17:07:55 +0400
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Derive GMAC MAC addresses
 from OTP on RK3576
MIME-Version: 1.0
Message-Id: <20260902-rk3576-otp-cpuid-mac-v2-4-e4b7fe2ab13f@flipper.net>
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
In-Reply-To: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
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
 h=from:subject:message-id; bh=92HKX+rJXSdlXE5EQ1Vyyu1clzsl9p8JunUiEHK0e+k=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTNkN+stdDlfUizrGpdwOQDO7Wsb6x5/WrOvdW/mBVvR
 Uo9dBd26pjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DI10jHWMGLg4BWCqP59mZHjJZMe74LTovK18N9U/6Wg8Dag9/iaBV+x//f7tD2Qtl7Iy/M9OYIj
 4m7OmNjlfYPKW1exzZr8VEjH38ol2EzqvYtedxA4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_060822_579678_301E13F2 
X-CRM114-Status: GOOD (  11.92  )
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
index d418bfc04097..aa6d867b5a30 100644
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
