Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7812DD10BF5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpt+0hbYq6tnAZr2fXLxq0SQ1MlMcBcPiZzmwK+MxGQ=; b=asw/4PcKFsr8nW
	w+aiENWDpGxY3QW4yZAsQOmzbmj57s0g2xTjvdQchoZ9NFW8yNNTGGyRmZYwB7OTUfKarZ9t9hOln
	AMOGEgf82prRXdxSD8MV1rp+8EaH3g9Bz45dX02uU7reEStmU/LLWwYjllOdMUTZtMvvlBZFNuRCT
	6E6A62rpiv/OKSGwSqYCofM4ES9Cf9Fsd5vulDztB9cgkjwBvS0KwHWA98Q+plU6Ib/z6ym/nlwXk
	I+LY/Dp2b6tkTBlwRulF1VsfURqcadXjse3oey+vyVMsdssXFy8IGiFWnicBA4A93Q4VosIHfmjXC
	axpsvH4a2fJrj27FjcUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de6-00000006Kuh-3eNB;
	Sat, 26 Oct 2024 10:03:46 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de3-00000006KrU-0oLW
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:44 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7180cc146d8so1597534a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937022; x=1730541822; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2l6vOKakYNeXOr7zjY0fTfuT5/i3Z+JBIc7TaDmx38=;
        b=S/w0VPrjiMc8ibKn4vjnH8qwrpCk980bXv4dOcx8kmqN+i/f5oRyUVMvLdmLJmR/OC
         /6JJJWe5sQcop0IasKkf6ri8TPUjcUsczizQJjSdFgd4/6UwuIbhPaeFcA6SgCaFWh+V
         3n29emwlkSljbKxmb2u2ZeQvBot/3MFZcIkolrMPfPMfABifBDZ4NUe7c26qwaNCqwA6
         9PhGdZRE/ddySJsg7JYX14sFgghdoSgrbSRCaLp3lwS3mkuOrDqzN19y4eVfIdYQktWd
         mVfqEeO8hAjt8FbQu8WG9o3pBCzZdpUmXp0nQPwaE6O8tfCR6XYYHnPSJhjjLYsSE2NY
         UOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937022; x=1730541822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u2l6vOKakYNeXOr7zjY0fTfuT5/i3Z+JBIc7TaDmx38=;
        b=I9bac4M+j2+tplXw14eeVrdPfpGRLgQQHJ7AALF+o7l0hLUHFPVVlb/qNm2egkNx7V
         hF2xTI6U8amH8H3w62huc/afLO/I68G2eUxxi65OyrjX/VmbfnDVumo5adWhCtqmdxFo
         5d3TjJw3CC6F0ou4NBfSEQ6emhTebYrht9OxOuRssDb0V9fIxn90ydIFQhJwstEulnuv
         Ru8gg84Ckfl9lwGwyg6f/qYQnZ+Dtrzyuzgi94zdBpJ0+91ya8g2YgvTdv2dzTETX37K
         j/jrbahxDTtRJCgztCRVWY+hM6PwJnERjy1erEBqE5Iss0Grt1qR8wvxLmjUWgJsYvGi
         UUjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgx0hmg7Xa0map55iOffJ6LLwXV+VYd0hmDjBCNfWmVacmqBAUzRo+rw+D1Zkaa4xM8uPZzYnFTrkFSAwj/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAdzBuoEMshXwiaiO+wf9FdAKeIBx/K1clazeX2YENCPslhLbz
	iulQtI6FgqDYwBb17yEB5FAin+/RnsVg1+5dkUR5gbCrboLGaz0v
X-Google-Smtp-Source: AGHT+IG6Mx93o0eCB/55OHY7GgeQtiaGJqSLVXU5hactt1AuSxY844vkHuu44c3UPoMgoTWbuMn+CA==
X-Received: by 2002:a05:6830:4410:b0:718:728:8ff6 with SMTP id 46e09a7af769-71868229ba8mr1769187a34.16.1729937022454;
        Sat, 26 Oct 2024 03:03:42 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:41 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 07/15] arm64: dts: rockchip: add fan support to opi5max
Date: Sat, 26 Oct 2024 04:48:23 -0500
Message-ID: <20241026100310.52679-8-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030343_275587_0CD47277 
X-CRM114-Status: UNSURE (   9.37  )
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

Add changes for the Orange Pi 5 Max board to enable support for the PWM
controlled heat sink fan.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588-orangepi-5-max.dts   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 5c4390ac3f8e..03ae3564b8f4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -20,6 +20,15 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 70 75 80 100>;
+		fan-supply = <&vcc5v0_sys>;
+		/* FAN_CTL_H */
+		pwms = <&pwm9 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	pwm-leds {
 		compatible = "pwm-leds";
 
@@ -233,6 +242,12 @@ &pwm5 {
 	status = "okay";
 };
 
+&pwm9 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm9m2_pins>;
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
