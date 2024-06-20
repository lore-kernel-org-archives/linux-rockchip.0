Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD2FC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 01:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=npFCNqwY68QUBLCNb6wsb/k12qJ4NsARvfGuvaKlAws=; b=sej84qALCQgDYs
	qoNG3MqCc+Cm0qTlt6jkwCXPzMUlAc2c/kkJ1cIYOkzBc5gJfGJWT3QWhMpleCWFTT+1uDF1LPy5O
	1gcNPvhd9rbyUXbrOhm71Wfh4xO4/aPKZDl9YxyKxBJSEDOOQGYkBQ0wlEUlQeWc9X3yrfCsR1zZn
	ioRuiK+uNJ+l8TaqzoDreoluhZ3i9T2IwE8WwEjZLLKxWq8FVD25yCmJf+U5I1tbVMehj/dQYSfNw
	xWeLrYJlQDbhfgjKrbNhe4I9jXqn18hhuAEKrplCeKf8q+xdqrxV8kdEIpcVPHVlOJYib8PCsgGFN
	6agE5B9oWe6pOyZuqw9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK6gT-00000003GWD-1LPu;
	Thu, 20 Jun 2024 01:33:53 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK6gP-00000003GVZ-0uOT;
	Thu, 20 Jun 2024 01:33:50 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4415e623653so11121771cf.1;
        Wed, 19 Jun 2024 18:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718847227; x=1719452027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5HikRv6kiIPMm4QeUn8QwCXDOdRpGxbqfkwLthijeI=;
        b=RXI4QOcbVoE8KSVbFA2JOSKfvxhtkKtyTbzvlT8KnwLYAHjyGjgvPHt1gqOsri6vQH
         Pfn0vxYBmJqy0Jt02xhdqzMMUpCsVI2Mk9UN2WnecRuQm/E3JmSdED3WDIxC1K5JjfKJ
         lk9VuP+oniD7300ctC1uV2kZ8HhbZrXo3qg6OvHiXAWS/HF54lWHAaGdV/E2gg2ZZm9C
         9MFCJCxlP8naHjfWvbzkoxyLnK7ifF4Ksd4xt/l6+UHSyINN/dmPshl6lbKN2MwwUKY6
         tVbcrRvX/WiMTKH76UjaZj2AUa5Alf8NEDz0iBR+PrrXIx4XGQ715X0YIBWZ12/32mgV
         KqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718847227; x=1719452027;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5HikRv6kiIPMm4QeUn8QwCXDOdRpGxbqfkwLthijeI=;
        b=ZYnHSq9kjYVUzdWXww93V5Ak53dVX4MIj2cWdlGuuABb7QTItqodw4VWhNdjkcNtqB
         titRqbne5+ibT9ROhp9fmjZlBwr6HHsR/hvQYfJo+t41met7P+9grn+YV0Z0HXgv22nd
         NOBC+LTlDKSMcqdwJFBoSsRrCuBtKnmNLNTh751t7xX58A5qrjg5I5uWFRvVgNxi6E1C
         zTf1Au9qchQXgnDAsTlUdv50spncRCXJMlKxXvloO2tN5eQ7xnIQNUMM3H1AHwDgroTg
         e7klvRC2m7c55oaIxDMjNpil7sLAXlHznZErvtnJcfcD0v9XHdXWo1UZC7OSuK5JYqcW
         kLSg==
X-Forwarded-Encrypted: i=1; AJvYcCX3xm5Tog2Uo62rZaALKA+Gm9gBNeB6MxWNPJ6Sfq7HkOietZLm97w+c4zdkvQXxFUm7R8NcArMtf1fpCuJR5KT4FeLkDpi0MR4Pngd+rz/KU3Ue3cmwAVb6I03zqHEvhkhw0hqP52uJxhyJ+fIHHUJlNNZgIBaUAA=
X-Gm-Message-State: AOJu0YwlgR2PKxaDPeIfVWvxqTzd953G6Ke0Ri5gZj5KRZT87hQPPfxZ
	ywfTbzJG/pPCDePymbtTQKhxzIFMQlF7cvtfYDWTxbyWdD1Cbnts
X-Google-Smtp-Source: AGHT+IEN53ttccCe1IOgM4GHOIP/75gthbOYHPruIhVGqJeLAJFFAeSgQqBm0F4DE7g+E2ACCcWemw==
X-Received: by 2002:a0c:eace:0:b0:6af:7b2e:1868 with SMTP id 6a1803df08f44-6b501a07c22mr84110066d6.18.1718847226902;
        Wed, 19 Jun 2024 18:33:46 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5bf2546sm83012256d6.14.2024.06.19.18.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 18:33:46 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] arm64: dts: rockchip: add gpio-line-names to radxa-zero-3
Date: Wed, 19 Jun 2024 21:32:49 -0400
Message-ID: <20240620013301.33653-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.44.0.501.g19981daefd7c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_183349_320414_4D8B4114 
X-CRM114-Status: UNSURE (   9.91  )
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

Add names to the pins of the general-purpose expansion header as given
in the Radxa documentation[1] following the conventions in the kernel[2]
to make it easier for users to correlate pins with functions when using
utilities such as 'gpioinfo'.

[1] https://docs.radxa.com/en/zero/zero3/hardware-design/hardware-interface
[2] https://www.kernel.org/doc/Documentation/devicetree/bindings/gpio/gpio.txt

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 623d5939d194..b72d75b908a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -109,6 +109,78 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&gpio0 {
+	gpio-line-names =
+		/* GPIO0_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO0_D0 - D7 */
+		"pin-10 [GPIO0_D0]", "pin-08 [GPIO0_D1]", "",
+		"", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+		/* GPIO1_A0 - A7 */
+		"pin-03 [GPIO1_A0]", "pin-05 [GPIO1_A1]", "",
+		"",                  "pin-37 [GPIO1_A4]", "",
+		"",                  "",
+		/* GPIO1_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO1_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+		/* GPIO2_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO2_B0 - B7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO2_C0 - C7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO2_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+		/* GPIO3_A0 - A7 */
+		"",                  "pin-11 [GPIO3_A1]", "pin-13 [GPIO3_A2]",
+		"pin-12 [GPIO3_A3]", "pin-35 [GPIO3_A4]", "pin-40 [GPIO3_A5]",
+		"pin-38 [GPIO3_A6]", "pin-36 [GPIO3_A7]",
+		/* GPIO3_B0 - B7 */
+		"pin-15 [GPIO3_B0]", "pin-16 [GPIO3_B1]", "pin-18 [GPIO3_B2]",
+		"pin-29 [GPIO3_B3]", "pin-31 [GPIO3_B4]", "",
+		"", "",
+		/* GPIO3_C0 - C7 */
+		"",                  "pin-22 [GPIO3_C1]", "pin-32 [GPIO3_C2]",
+		"pin-33 [GPIO3_C3]", "pin-07 [GPIO3_C4]", "",
+		"", "",
+		/* GPIO3_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
+&gpio4 {
+	gpio-line-names =
+		/* GPIO4_A0 - A7 */
+		"", "", "", "", "", "", "", "",
+		/* GPIO4_B0 - B7 */
+		"",                  "",                  "pin-27 [GPIO4_B2]",
+		"pin-28 [GPIO4_B3]", "", "", "", "",
+		/* GPIO4_C0 - C7 */
+		"",                  "",                  "pin-23 [GPIO4_C2]",
+		"pin-19 [GPIO4_C3]", "",                  "pin-21 [GPIO4_C5]",
+		"pin-24 [GPIO4_C6]", "",
+		/* GPIO4_D0 - D7 */
+		"", "", "", "", "", "", "", "";
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_npu>;
 	status = "okay";
-- 
2.44.0.501.g19981daefd7c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
