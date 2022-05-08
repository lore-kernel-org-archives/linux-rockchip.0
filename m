Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E91C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVHbKh5Eht6Ql1D9vlvHkBXwjTPgzjTnQ5c+RENVgcU=; b=tcxquhEl0o0Thz
	Alc3003FXPh7354i0FPpvZvusbWvSrL9Htx1fz1YSBEQK/M4oawUyaN9OojF49F+E+QlBoVIUa49e
	T64ii3wJtDKfuY4eZ6GPu9kOFuWnr/N5ZRmSZjKCKf3MmYd2tjFMOWLv/d0b/P10ulWN7uyg/l0lZ
	oL4eHWu14+5OS/Y3bS4H6fVpZl3Mthj0VbWZ6FC2CHE4rDufSj1GejNJmgVnANM3jL2Ry5zoTTnQp
	2FVcm3R/i6Sr2xqijzeKTbmDWYCYV7X9zMJIKSQ4Pa/sxhty0r2ZD2IuduNWEZl71egLXAAIVYHk6
	yM8Ej2HuuHaxtDzaidvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnkh-00BU9w-R9; Sun, 08 May 2022 20:43:39 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8x-00AyV6-4M
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:36 +0000
Received: by mail-wr1-x435.google.com with SMTP id k2so16697087wrd.5
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mMwemA1KBr+zaynR0+gGDDohbL3jNdImjBWzdvOknd8=;
 b=EKtj9FmoJmyr7uYOyeb7nMFyHdD1zia/sjrPRiCyT+J8yo1CQN+YccLI1tcJSuVl10
 y2M02JQk1GHo8X7n1gMYaNNIbnaDELayQurEp9mspRqcXxrLxRJoaDhqXpGmclwy193H
 ow/LDsq2FlBGJqO+vn4caA5HuaIIY01+rzzlsBlApA39FLqyQo2ftfoVO6WG4OoshcWN
 amj0kDQCe5XquyWjqcR0i86Oce3A2wsz1O3Of2wmAF4QpMIsFNN3MQ1M0uvO/KZ5miwh
 h9V6LKleVlcyueROSR7e9v1LLkni2viH+sGl2ehMGnqtfY9KbqdeHzMKYv7cuU8Gnj8U
 rw1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mMwemA1KBr+zaynR0+gGDDohbL3jNdImjBWzdvOknd8=;
 b=opeqBv3YIyO0O75xlNnVyr0hU9jmWdtcol8P+Aspmyz3N/yCblzJU8MqA/hvaGuPPK
 lmjO6cC0L91ZurT0xi23AtqykwIc9bmxVQfEi6irVXaeTWqd4vdJx0sTn4IIlngBz+il
 2kpncq420DdJ/baNwci9EBnLUZ62vQV9Tq1RGcnUgg/nuH+EgwXOnVumYxzs+z3XqImw
 d5NKGZqMI5W+FzEOuojUT5xNbUSgoKtWysXYRFlZoUxRnVpqCOdvj7BlYbexWHCN5D3K
 BSfJ+H4GAWvNV462LmSB/cnmopp72dpKk4RLbacHmqD5uFhp0uSME0qGcq7t3rMhCtd1
 SB4g==
X-Gm-Message-State: AOAM530UtUR61sD9ZLMSBFnU5IAcGp8Qk84gH+OY/f7xld+o5PK/BeYm
 bYy++r0CTV81RFUGvLwpFmsL7Q==
X-Google-Smtp-Source: ABdhPJwn2fQPOM2L3JnuiJ6deNhGCDHhqvrOJr1Y+w1dWYse552yfSIZSbwVBC26KFirLL3OjH8A8g==
X-Received: by 2002:a5d:444f:0:b0:20a:cd55:8c32 with SMTP id
 x15-20020a5d444f000000b0020acd558c32mr11382140wrr.586.1652036434655; 
 Sun, 08 May 2022 12:00:34 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Sun,  8 May 2022 18:59:52 +0000
Message-Id: <20220508185957.3629088-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120035_613811_3631E69A 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 8db8b2dba12d..27ab2c377140 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
