Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF258C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7qZWxnAeYC+D3PTtcUotffpCuLy/5MhUaKUaZBCm/U=; b=no9njetTsj0FKs
	S7cw1cMqEzgwEswIW9K205RzjFw3pnkh2jBTBU7TKZH1RZS/iLb6aDVZhy9kb2t7DzvC5D657ZiZT
	mERVLJUfF73USQALxAlmAJLlZXtyj3p75woTXu1N9Na2iySYzYIHhg1cRXJGtQXIIk5FfzcKVE8Km
	+f3hVTWz1ugYpau1QslgW/xVyl3qnQQb8RfaYFWCml+cKPmOYj4o0TDh8RPk5ACeGlayepjK60Heb
	fIiylwr6PTUzG5U082o9s/Pwo7JKFZMn2xQvOTiy5ouBlZkqVoXIF7khDHF3hOGPCt7xla00gc8aZ
	E6oalk5n6D5H9vdS84Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWZf-004KyA-Li; Wed, 02 Mar 2022 21:31:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWGA-004BuM-Kt
 for linux-rockchip@bombadil.infradead.org; Wed, 02 Mar 2022 21:11:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yU7CqFvzpVzQFrP6rEr/Bhzc6ZJQDR+Dmhlj5y/OH6I=; b=nRD846yAuKPwsD5YVC4GjhefQa
 /sRu27IvBcuopd+wmYNq1vXzp2/6QXnI7o6at/ZyMjK98IWJQY54di/SfNg70mCPm5RcCQSUM8WST
 mlEVm+5azKg83KHAZPr/5vTdAraHC0aASXIJCSD2+lE9Js1JVq6wZACltZFAwEi7nu3xyF+C7yMRp
 QYP/byUo6IIiJb5TPkaHPAVb3wwIrPnfvDnvkWll/GiCrQn9xyIcd/YKc1TdeHtnBlP8/8xlJHtAJ
 9OFUB2u0J8nbFs1sJS7sleARTSHvCOyKcN2qgZMC2t1aTdvxV+tl5oEDCaAo5dVJigw+csSuIU2cH
 CIqx3wIg==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWG3-00Ehqy-MM
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:11:43 +0000
Received: by mail-wr1-x435.google.com with SMTP id b5so4761816wrr.2
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yU7CqFvzpVzQFrP6rEr/Bhzc6ZJQDR+Dmhlj5y/OH6I=;
 b=TMtERDMNk0h49/DuSa3frpY0if0OvMgZ0PREwCrp1rvaLH3NAWecqH7EbcJiRNCXOU
 RgEzeLPbWEcp4lG4ZnM57udFNbTd+0IPsH3XxqsbMUWS3YK2k+o8zMcMFUH4ne9Eoz3U
 sGdy9FihjYCkwn6UC+xI6AdwIE1hQyljtN4cAkKQgjki9qoGOaNh8vkRN1Tajd8BAhP2
 dXy0LjokoRjBz6odSQJsFIUEOdKUwtf94XEoH3fJ/+JJnq0ze6fkZ78H4pjSteSt51a0
 /taWhgW61sNbOpia8hPuN8yqXQrp4YPBT0Zph5ymjRPA/FMK11fUyu//Sfq9B1+bsgns
 O75Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yU7CqFvzpVzQFrP6rEr/Bhzc6ZJQDR+Dmhlj5y/OH6I=;
 b=FKa9VUiJG90mUbWi7GJQttuM6WIfwZCQeXDnv157xO6KgU/T6+zosfmOdzCQNyCoyA
 wtSZwHONg+3T+3Oz73kkwNmgwRMcSRHJT8WHv7cqxcEIWkxuqw/nWxJX/CxF2bQUVVJt
 f0ufOhLoBglGu4GL3VRtawVQXHSC1T4XbmzYRnOotaIy2N8BxySs2xUT1qAb316T4iPv
 oukXMfuFQOsS3Z0P8DG4OnxMZHSebUVuDpY9EIpoydlUKLpUTfeXJaJXhJMDKZJArsqV
 eoB4XAJvXiYgVOL9mKezhREQZfvBdmxouXSMDcblccwI3avucDA4/VjERgUkHZqm/MnJ
 GayQ==
X-Gm-Message-State: AOAM532W381QIgjRz7oXsmuz812KhGLcWFXpEB/UVkmr5JczbPdj20z0
 xs262Ljalq8iR0LZrL16WFWseQ==
X-Google-Smtp-Source: ABdhPJxFTOh58gQ2ndNAUkR0yVFJwyeB7NYgvg3saDQPoU8XkYmSDEmJ7uSqfjrhka3jzj9BoGoUAQ==
X-Received: by 2002:a05:6000:18a4:b0:1ef:f017:98f0 with SMTP id
 b4-20020a05600018a400b001eff01798f0mr10184765wri.39.1646255495146; 
 Wed, 02 Mar 2022 13:11:35 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm145776wmp.44.2022.03.02.13.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:11:34 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 16/18] arm64: dts: rockchip: add rk3328 crypto node
Date: Wed,  2 Mar 2022 21:11:11 +0000
Message-Id: <20220302211113.4003816-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302211113.4003816-1-clabbe@baylibre.com>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_211140_118362_ED5D912F 
X-CRM114-Status: GOOD (  10.58  )
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

rk3328 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..1cff94e6ee10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1007,6 +1007,17 @@ gic: interrupt-controller@ff811000 {
 		      (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	crypto: crypto@ff060000 {
+		compatible = "rockchip,rk3288-crypto";
+		reg = <0x0 0xff060000 0x0 0x4000>;
+		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
+			 <&cru SCLK_CRYPTO>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_CRYPTO>;
+		reset-names = "crypto-rst";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3328-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
