Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41509C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 10:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FqKDSRy/BMpV5JWC4IUTfiJqhy2ZPPs4PamyCuGP+Kw=; b=pI1a9vQzS03Zbe
	PqCJJmcBo+LO4PLu1Mi7gx+F7nG9+Efy2ufjXH33Ofd/A2rO3CnQR+OG3MMI10bcMTpjs6w8fQgmN
	Tf+xIAkio+N56LcczjqLwT/wwvDFTc8HDY+WwyFS7CrImp9poeum6zctg6rVqp32+KQrwCbEyhjCH
	1Ay4w70qtgrl3zJhrKoiJkx5xnCRng9vGd74k0XlrK06JE+F+Vsam5QR4U0ZxexYoqcFtW4zk00lY
	5dZEkecJosA0Hwv2FaZV1ceho0fHVRvhcktw0evU7mnhnRqoy+RObJs1UTreUznd6iElonWBZpZCy
	K+jaLQJU+QKlvaUYOBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmsdJ-0000000GvN1-41ov;
	Tue, 25 Feb 2025 10:57:49 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tms3M-0000000Gngo-1wWd
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 10:20:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-abb9e81c408so93185866b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Feb 2025 02:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740478839; x=1741083639; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMAiIGxOhs/NRNnqxe1Q5w1Z2sjpATlomzVPp7WhyYE=;
        b=O+TJwKwuQLfhV3ffFjxTdEsKR6MDyomwP3MOAcIbU2bMq89i3LDdKF46iQzGNcGB7S
         z0pPyx6CiIKROnzygVCU4xB85cVVJUpLzFV8Q4hPBdK2SAPBknr0TcRhJAS0F1/WULFC
         2cH+96cN5/bnsz+l+acG5nW3jem7KAndsRsVPu+5zd3KQ8B1Rnw2IJ1rld7jLEpZshKm
         y5iBFtBx8dtFnPFJLkoiPXgmBUPr6wVdUjRZjpAU28g7E9mlVCQKybaFjQ3WziUDAmrs
         b1DauYlhZl7MontWNBInAop7zJgxs73KIWKyOwB6peJvGEuAv8XBGZnTwm47uIWgM1PO
         Rj8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740478839; x=1741083639;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMAiIGxOhs/NRNnqxe1Q5w1Z2sjpATlomzVPp7WhyYE=;
        b=lC74lphNlj7VFfRnjUU61nKy4otlsswU8jEa1WDSrJHGkwVmC+yoZ4g9QHfFYiN1YB
         iUhaQBkRlOz9QLAJ2f8UDrLXm8kLthSN6YI+x1WLnHZLeFLiIby0Zv0i5xFsY26RAGZC
         U5ny1+mrtIjU6ZdmYsOMgJ1oNiE3ayp7I2RVeHydBH/e98ZBrROyk0+Jbi/pD2c4eRu3
         6l9XZx7mC5qyM9K2qbcfb5aSry51K/w58nh3mbf6JbvnZIWpGrqwmptr8O3y6XmlnYXd
         ic4x7wPzhcjPOfIOendY69eqgX6shfc45LqsR8dJOx+7HMPXbhlImO7yAm34+15vQrle
         sB5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXdJJOUGXVgcX58+/y/s9fBw2Jm8yBpQSRCs9F2QHW2Cm4n7mMP+u79qemDjlzQASABItYWY7B9yzEnBkx0CA==@lists.infradead.org
X-Gm-Message-State: AOJu0YznEOotNScfNkqvK/C8xFy+I7ZAsQ+vXdt5Lvck0g8gPrvfRq2Y
	D5HRa5OTwNAZFw9zY98QCnx41A+rhcvYOXvO27qfdLHgPQyNOPozguP8k06hXZ7+RnvSiGoae85
	9n0Q=
X-Gm-Gg: ASbGncvYg+ObPnB5RgEvLmYp0+TzRGxziATFi6R2d0RwU5sYozURWiOKucTOHvPH1h7
	dMLC2wWLU1s03HDCdVWhvLrXnQrrOjRFkyg9DKQVTpUApbiNrXXWjl5NMHfbeZ4vqZ5lBZKoq4X
	YtgRGS83vMtfhklKbgZSFP/vG4rbn2ljQJAkFyIyUXIUURezIlqbqiRitN+59hsev2iukfdQuHT
	5fWuDul9q/bODUsunAdNLUUNXPpGGEvdjhou0DDlXki0gOML3E5ZE+4W2Umoip6E/+TLuuJxjAV
	VE66HXvqKcjSkl1CSrG2zVbAM/zEKMD88ArgyURAUV+wJmYGFwgPFDcvNBmTC0pKzoNN79/nC88
	=
X-Google-Smtp-Source: AGHT+IEZErkXFchQBHcjhpLOcz0ntlnRWjG+dqb6HL0cgbpdGQt3G9rUQQ9bKlCBwVV+K4XlTqA59A==
X-Received: by 2002:a17:906:fb09:b0:abe:9c69:b71e with SMTP id a640c23a62f3a-abe9c69c1d6mr280644666b.3.1740478838702;
        Tue, 25 Feb 2025 02:20:38 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed2010decsm116931666b.98.2025.02.25.02.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 02:20:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RFC] arm64: dts: rockchip: Switch to undeprecated qcom,calibration-variant on RK3399
Date: Tue, 25 Feb 2025 11:20:36 +0100
Message-ID: <20250225102036.107913-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_022040_497962_D6BC1559 
X-CRM114-Status: GOOD (  11.23  )
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

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Dependency/RFC!

RFC, because this should be merged release after driver support is
merged:
https://lore.kernel.org/linux-devicetree/20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org/T/#t
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
index 9e4b12ed62cb..be3ae473e562 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -36,6 +36,6 @@ wifi@0,0 {
 		compatible = "qcom,ath10k";
 		reg = <0x00000000 0x0 0x00000000 0x0 0x00000000>,
 		      <0x03000010 0x0 0x00000000 0x0 0x00200000>;
-		qcom,ath10k-calibration-variant = "GO_DUMO";
+		qcom,calibration-variant = "GO_DUMO";
 	};
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
