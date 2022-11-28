Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808A5C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 23:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LDnfVWxURZK8qR1agGvJIA+Dk3fgNrbuZRzPrhnTDas=; b=n7e7uHgJ9vLXcf
	cS4cOETV2cVq0I/HJLpoeXAXORz1s17DO96bpGXxyDz05vgA9HuQg+qUWZdDGlaKqlY8BXnJbrNgG
	46e3wrO1dCDmQOqzO7xYSTv4iHqF4W6lyTa/qo9Wxvea0R7QI9ldHQVWMoDOPPXQNa534XOt3Z9k+
	FuoL899Cm+f2HUTc/Dij0sgj5nnykFPRcNw8blzXBeGIJolLfTctrZ6Yw43VNByF1dqCYxfwBtx3D
	aAFt8woqls69IivRA4jwf4WIDf+BFX7WnHBVVBN4Acwcq2qT6M8bp/4AP7mg71o2nPH1bz69BKiCk
	1cnedv+PJRYIXrEwngcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oznLh-004jbg-MP; Mon, 28 Nov 2022 23:15:41 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oznLe-004jal-Lo
	for linux-rockchip@lists.infradead.org; Mon, 28 Nov 2022 23:15:40 +0000
Received: by mail-oi1-x22a.google.com with SMTP id n205so13383930oib.1
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 15:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bWNRuALmHlwLd0dRUdqiln4ovyKEQnyJm0QeKTP9aLw=;
        b=APYByxRI8ZPATkF7/52v9TLTYoiqE1Q6QlisijbujmPQJPwdjDitAFv+sScKTCY3fP
         Aztb9gIXpjABiZjVXn+p1n8YoNUhKpgnPpiEOEDo/lK6H1vyZVIJp7M+ACcxQxgvop6P
         DXssE3RKTHuvvlQ4YUlGMbynBpU4tUSwuivrocPeK4hmMPObZlvsRPWP2lhu7m0pAYDg
         h4gXX0y/txvKAN2fe4tVmB3OwklRrFltElmqtMav9BvKaG+kfw4+7ZXX9ikqbcyzE4Ta
         F5kkdyKjNuzrTm6JGWY0cnjrQpryhNxE0b6o6td+HT+kWsbe25/6IeIu4pGamqCI4zc3
         perg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bWNRuALmHlwLd0dRUdqiln4ovyKEQnyJm0QeKTP9aLw=;
        b=YbU76MeWKDU423nrfBzMOwudRSTqSleCkUbWV4svGuQyAzteTjZ/GQ7T2juLD5hscP
         jBRw1Pr69W0k/uj+iY2uey1w4Vhd3VuprGkyf1Oe4g+Jl+PEKrnj2CpBN1prsxFqV3m1
         j6Ve0aM3elOPWMykacPJOATv0Q2RESg53HiE/W6aHyk95DEJTIjdIjnyCsKh0MlLdS5i
         bpDjbUB0b7Zjg9S82hSixTIjTfOJun9Swa+6tg5WpMAnzdGd2eSjtpHxYETW1aKQTCSX
         eM0p90GYpc7Md+EVKZNxGthk3J1y4bbgQxbdZoVlDVAyuXWSbVs66TjmXaq9KJcn40rT
         npeA==
X-Gm-Message-State: ANoB5pltMa/RCmWhMSNEejNQYX7kywBlujM9JQfcnGOh011tO3BylmQh
	eDDqISlOqv3AQI5doqxNrW0=
X-Google-Smtp-Source: AA0mqf7ReI0qcY8TmYUaUiBnsbgDNabFtEzzOXK/7V3nr4Fasxg8TBOM5N895HzMlvSBlze7bhzGjQ==
X-Received: by 2002:a54:468f:0:b0:35b:872b:edfc with SMTP id k15-20020a54468f000000b0035b872bedfcmr11117477oic.187.1669677334248;
        Mon, 28 Nov 2022 15:15:34 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i2-20020a056871028200b00136c20b1c59sm6521865oae.43.2022.11.28.15.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 15:15:33 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
Date: Mon, 28 Nov 2022 17:15:28 -0600
Message-Id: <20221128231528.23360-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_151538_776953_951D71AD 
X-CRM114-Status: UNSURE (   9.71  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Hynitron cst340 touchscreen driver to the Anbernic
RG353P and RG353V devices. Note the RG353VS device does not have a
touchscreen.

https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/

Changes since V1:
 - Removed 'status = "okay";', as it was never disabled.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 19 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 12 ++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 63cff402f3a8..8aa93c646bec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -95,6 +95,18 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
 };
 
 &pinctrl {
@@ -104,6 +116,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	touch {
+		touch_rst: touch-rst {
+			rockchip,pins =
+				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &rk817 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index 885234a023e1..f49ce29ba597 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -82,6 +82,18 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
 };
 
 &pinctrl {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
