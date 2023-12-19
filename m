Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B60C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=leV33dPoqc8XC+R4TrVW/TTfqMNKIgJDe6CdmTsVjKA=; b=wpKmgzpbv5MnlO
	RdPRDqzltOXZFv7EFOf5XaFdyRmJgkS0G9ds+/YqRY+/j/VM57eS4iDMtjR5cwgz21g8agA1ynluQ
	dCnQ4da715RHk+NRcAvrbTg8j0T8g4tnx5HVEnb+BPXh2DrovIc059bXD+aRYvwLVERp/yqC471ec
	LrFL+kD5e9YaQlOuqFKpKQQxPek6CPOLrEJFmjfNVD+WBGK7dNuKhNSXiQAwC7IAmHk6NhCWKvOdu
	FQzv73i9ARkuK2SvieqvCcyn5Scv/uF47FxKsMDRrTJslcVdGMcAHRC9I2PtxLP7i7D+h7vLGuVcT
	i/jm6lNB8ED924TA0ftg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFe36-00EyIt-2s;
	Tue, 19 Dec 2023 17:38:32 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFe32-00EyHr-37;
	Tue, 19 Dec 2023 17:38:30 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-67f296ecb2dso26167656d6.0;
        Tue, 19 Dec 2023 09:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703007506; x=1703612306; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c7o02eCOkYV+S238EYknUAxPRBxnSpRC9xTw4EPIh2A=;
        b=Jpz7WwCjurwZeEr6egeR6L1d/bqmTrQQ+CoVbChjf4lUGd8A8luo8B9NFBTUK7Ymos
         TvXW/tXdYX7GBwPwVoo5LnkC+sKip6Mp0VjqUGsPTtt6iEOley4cQOWWmUiJMfEEF9au
         KMmTyRu1Y+9kQXoxLlE6RtzxR5+GE8KRb9CrEvWMtc1SaofpW/XxFGHRsg22M8WwJTjd
         ZkmcYG1ITNBbl4U762LJX4aNo7Ln7+b52ooJQEIuEzynkaImBRZvkEF+wFc/VtdGJU35
         TD4pvlAMFaZOwml15TPehEvkeJ58BQcyR4yUEvGPmMUk7YfbjiUk2b03ydXBNxAcyLUF
         ZBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703007506; x=1703612306;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c7o02eCOkYV+S238EYknUAxPRBxnSpRC9xTw4EPIh2A=;
        b=R7SEr0gtdnjAbRcSpLpHsLRXe/KkHg0V7k/vCtjVG5ceUpfJD06Nmul1JSsfkX6PxM
         hZ8IQXycEQw0UtdFkNrkkSBI1P94n8ypB5/VLNpHNW5Wl8eXTMoWggVsFg9k8zkCUmG8
         d4R0InM7iv1173fwbPmIvOdET5Daasb7kBzXDNp5zRlJU0+xpT4z5o106+q6HsE9jxKf
         F7IUMMn2jKoH68nSEXs8psVgCa6uqW/uV77+Rlozp3oC6sgZejYvCFv+RpQEiVN4OBDb
         SrB0Xzaq6CNzPDMDmyG+u7nV6gb6Qwg7TY+AUixQGz3Lxzw9BR6GWhIXZuI1Jg8ePiAv
         +5Xw==
X-Gm-Message-State: AOJu0YzmEEWrlXyKEO4wD6bboynNZPYqjsQk+w1zsXICRjcrp4r0wvD+
	tvGSzKWKyGp+96EhSzHqbgo=
X-Google-Smtp-Source: AGHT+IGFrVq4h1xGJXazAoP7IjR55HBym+DCtCxrj8jynZNeImVv5OAXSEP1v42Dw9qSJ/fMld4Apw==
X-Received: by 2002:ad4:5ca6:0:b0:67f:26c9:ffdb with SMTP id q6-20020ad45ca6000000b0067f26c9ffdbmr2385556qvh.22.1703007506353;
        Tue, 19 Dec 2023 09:38:26 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id w12-20020a0cc24c000000b0067f056e121csm5472098qvh.97.2023.12.19.09.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:38:25 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: rk3308-rock-pi-s cleanup
Date: Tue, 19 Dec 2023 12:38:13 -0500
Message-ID: <20231219173814.1569-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_093829_027746_FD9C82AF 
X-CRM114-Status: GOOD (  10.78  )
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

Perform the following cleanups on a previous patch:
- indent lines after "gpio-line-names"
- fix D0-D8 -> D0-D7
- sort phandle references

Fixes: c45de75d7a9a ("arm64: dts: rockchip: add gpio-line-names to rk3308-rock-pi-s")
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 120 +++++++++---------
 1 file changed, 62 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index f2d7251de298..b47fe02c33fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -143,6 +143,68 @@ &gmac {
 	status = "okay";
 };
 
+&gpio0 {
+	gpio-line-names =
+		/* GPIO0_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_B0 - B7 */
+		"", "", "", "header1-pin3 [GPIO0_B3]",
+		"header1-pin5 [GPIO0_B4]", "", "",
+		"header1-pin11 [GPIO0_B7]",
+		/* GPIO0_C0 - C7 */
+		"header1-pin13 [GPIO0_C0]",
+		"header1-pin15 [GPIO0_C1]", "", "", "",
+		"", "", "",
+		/* GPIO0_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+		/* GPIO1_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_C0 - C7 */
+		"", "", "", "", "", "", "header1-pin21 [GPIO1_C6]",
+		"header1-pin19 [GPIO1_C7]",
+		/* GPIO1_D0 - D7 */
+		"header1-pin23 [GPIO1_D0]", "header1-pin24 [GPIO1_D1]",
+		"", "", "", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+		/* GPIO2_A0 - A7 */
+		"header1-pin10 [GPIO2_A0]", "header1-pin8 [GPIO2_A1]",
+		"", "",
+		"header1-pin7 [GPIO2_A4]", "header1-pin12 [GPIO2_A5]",
+		"header2-pin46 [GPIO2_A6]", "header1-pin22 [GPIO1_A7]",
+		/* GPIO2_B0 - B7 */
+		"header2-pin45 [GPIO2_B0]", "header1-pin18 [GPIO2_B1]",
+		"header1-pin16 [GPIO2_B2]", "header2-pin44 [GPIO2_B3]",
+		"header2-pin43 [GPIO2_B4]", "header2-pin28 [GPIO2_B5]",
+		"header2-pin30 [GPIO2_B6]", "header2-pin32 [GPIO2_B7]",
+		/* GPIO2_C0 - C7 */
+		"header2-pin34 [GPIO2_C0]", "", "", "", "", "", "", "",
+		/* GPIO2_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+		/* GPIO3_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO3_B0 - B7 */
+		"", "", "header2-pin42 [GPIO3_B2]",
+		"header2-pin41 [GPIO3_B3]", "header2-pin40 [GPIO3_B4]",
+		"header2-pin39 [GPIO3_B5]", "", "",
+		/* GPIO3_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO3_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
 &i2c1 {
 	status = "okay";
 };
@@ -250,61 +312,3 @@ &usb20_otg {
 &wdt {
 	status = "okay";
 };
-
-&gpio0 {
-	gpio-line-names =
-	/* GPIO0_A0 - A7 */
-	"", "", "", "", "", "", "", "",
-	/* GPIO0_B0 - B7 */
-	"", "", "", "header1-pin3 [GPIO0_B3]", "header1-pin5 [GPIO0_B4]",
-	"", "", "header1-pin11 [GPIO0_B7]",
-	/* GPIO0_C0 - C7 */
-	"header1-pin13 [GPIO0_C0]", "header1-pin15 [GPIO0_C1]", "", "", "",
-	"", "", "",
-	/* GPIO0_D0 - D8 */
-	"", "", "", "", "", "", "", "";
-};
-
-&gpio1 {
-	gpio-line-names =
-	/* GPIO1_A0 - A7 */
-	"", "", "", "", "", "", "", "",
-	/* GPIO1_B0 - B7 */
-	"", "", "", "", "", "", "", "",
-	/* GPIO1_C0 - C7 */
-	"", "", "", "", "", "", "header1-pin21 [GPIO1_C6]",
-	"header1-pin19 [GPIO1_C7]",
-	/* GPIO1_D0 - D8 */
-	"header1-pin23 [GPIO1_D0]", "header1-pin24 [GPIO1_D1]", "", "", "",
-	"", "", "";
-};
-
-&gpio2 {
-	gpio-line-names =
-	/* GPIO2_A0 - A7 */
-	"header1-pin10 [GPIO2_A0]", "header1-pin8 [GPIO2_A1]", "", "",
-	"header1-pin7 [GPIO2_A4]", "header1-pin12 [GPIO2_A5]",
-	"header2-pin46 [GPIO2_A6]", "header1-pin22 [GPIO1_A7]",
-	/* GPIO2_B0 - B7 */
-	"header2-pin45 [GPIO2_B0]", "header1-pin18 [GPIO2_B1]",
-	"header1-pin16 [GPIO2_B2]", "header2-pin44 [GPIO2_B3]",
-	"header2-pin43 [GPIO2_B4]", "header2-pin28 [GPIO2_B5]",
-	"header2-pin30 [GPIO2_B6]", "header2-pin32 [GPIO2_B7]",
-	/* GPIO2_C0 - C7 */
-	"header2-pin34 [GPIO2_C0]", "", "", "", "", "", "", "",
-	/* GPIO2_D0 - D8 */
-	"", "", "", "", "", "", "", "";
-};
-
-&gpio3 {
-	gpio-line-names =
-	/* GPIO3_A0 - A7 */
-	"", "", "", "", "", "", "", "",
-	/* GPIO3_B0 - B7 */
-	"", "", "header2-pin42 [GPIO3_B2]", "header2-pin41 [GPIO3_B3]",
-	"header2-pin40 [GPIO3_B4]", "header2-pin39 [GPIO3_B5]", "", "",
-	/* GPIO3_C0 - C7 */
-	"", "", "", "", "", "", "", "",
-	/* GPIO3_D0 - D8 */
-	"", "", "", "", "", "", "", "";
-};
-- 
2.43.0.76.g1a87c842ece3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
