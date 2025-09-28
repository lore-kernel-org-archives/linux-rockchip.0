Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10696CAC5B5
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Sep 2025 10:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j+v+j647A7cgJdAxh/MBpaayPLMXGMw4586bmCXFiu8=; b=hS5VAVNXrYrPT0
	W9cTmErWlujr/CItpdhMg1Fay6YdyBPYcEQXgkx+nSqvItjCOjZaoIrIvD/6DpdNG4G7M+UmTexku
	K8agaQXsqPnwDv2cFLTE67KTYdfXCDmhPM3Zj9dj8jgWH3BraH1PzL1wA7fz6PaULcSSBYnuP113V
	FaKPS6TJBg3XceutKwoSznWQnl8dzv2FKdotSryfhSSYIWKjm2rIoMU+27+4D4ug3Gt7C10lqMODH
	socXTdfzKikGEP1uXWPcZRgP939VNvLO7CkFkJbJ5wmxUbHCFk9tcFrS6aaZWSQB9KnAVVBW1xutK
	6vEQz57SnrpYI16lomiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2oLf-0000000Erbw-2mwo;
	Sun, 28 Sep 2025 10:09:43 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2oLc-0000000Era4-3u1k
	for linux-rockchip@lists.infradead.org;
	Sun, 28 Sep 2025 10:09:42 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-46e2e363118so35646415e9.0
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 03:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759054178; x=1759658978; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=O7VH5GloSW9zlV5MKDiGfn6qUlpNBb/HaUQn6uAJYa0=;
        b=EbqnS8etNO6LUFrT/FIwkBsHfn3oT0kcX3am0n3oRhQlawKBO6p/i85U9cU8OZh1Mz
         8TzTjf9Iz6cDjti6AfswsbZjhP5tXEqGm3BCiflaqxxJSdjh1K6Jo8XngJ9PfABX7GrF
         3S1OfH3Aq4y6TqsK+9DglV121I1ZHsnFikxYqkV4z47UZGKOwEWffJTdBjHtbeoSHqai
         kuxup+7617q+mB4nMLIMPZ6wnJTcAvkV4UIZ8Lx4oJSCJ8nIDlXXh4eYji2veUCwlnG1
         wdZtNvuOK2cYPexjr9erfyNWFj/kJn5Si+Yh1QlkJmy8CPo5GFX9fOq9IUVA18R0bO2V
         pJ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759054178; x=1759658978;
        h=content-transfer-encoding:mime-version:message-id:subject:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O7VH5GloSW9zlV5MKDiGfn6qUlpNBb/HaUQn6uAJYa0=;
        b=G8+sKa0Vv2KfjTCmlJemo+4OnX8VRdl3Cv7k8S6kd2HGwQlJN1JlXy5H74mRXBZ/4V
         N1et9IyLtRemRurnUeoYERMcBw4514NWr4zc4ABnKkfJwIGKtqMWLOD76a2R7UwyNdp3
         aMye4ktn8vsOEGQJQ00K6xhBJj7AHJ0gXGj7GnkUxqk8+gLzmyGZlo9glxFn8IkVq82R
         T8HuSVbNM28jH/zGc30i2FONfLKAO1Ev96vt8dpYISS+OoGAT34VPSd+SY80+u6zSVcM
         wtW51S9c1VPrDAUSio5L36iWzHU7xpyIoFmnMsrG1diKGBeWAPZbCkQbCUWUgUppO9qj
         xzHg==
X-Forwarded-Encrypted: i=1; AJvYcCXUpYFjIlSlizt7hW40ZMJt5E6ZHkTNtSGT4p+e9TxK2+yvJEQ8Tzo8jfcp5o2dqZ33KomewneNufObdiEI7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YymUxwClZn+p8HdAuYI6SJM7y0/bMNUvZGsr3/K8nvfUBkIFooY
	q/fnr3cFIvRVdQ3OpBoilS9IKqzsD3qp18M2VQSraWEzYcW+1yrH9Jte
X-Gm-Gg: ASbGncvE9QIPqnDoQdsLeI5vXqja2TtsMg4QZmjGHBeniZJAIIbPsFlhjZgSrrMQfIV
	JMmh8m7Jr2YjnqKL9ylwFGO6YsyZGr2DGKgNDfzmfvraySpTKR7r/sVSkK2INGR1IepottxKgVU
	uP3xzWxewZtM7HpT0elhBl7hEWoic96cJGwNOOY5slnGNsWL53YsEqVfxUONehx6eJQU0tbaZcf
	i640dApitA4HfTy1gZT8NmiovUvxn64Hl8rRzGJqvcxRsZkoRYQuKIBmiij6s+JtK3RYeUWwhdk
	u7qeefOVbXrWphPUNgw54Xd1MLsl6I2OYB3+riFUwG0g44usQRq6LyfIPkFtdXnCufOwLsPGNpw
	C0P/d7q9iiOn+7t+PtuMSWYZCTsrWUvfIYBgHiwU0imUdkcNb7fmODMmf3h2hhC22EHSHl9CcY1
	uSF9A=
X-Google-Smtp-Source: AGHT+IEqCtc23uR91vJX1oENcguv3h+oXK5yd4n5mW5QIEhXCja0/eHYFgJA/f94YSrqA0IKGpmApQ==
X-Received: by 2002:a05:600c:1508:b0:458:c094:8ba5 with SMTP id 5b1f17b1804b1-46e329b62bcmr82520475e9.12.1759054178464;
        Sun, 28 Sep 2025 03:09:38 -0700 (PDT)
Received: from deskilmich.example.net (host-79-36-214-146.retail.telecomitalia.it. [79.36.214.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm185811095e9.1.2025.09.28.03.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 03:09:38 -0700 (PDT)
Date: Sun, 28 Sep 2025 12:07:49 +0200
From: Michele Zuccala <ardutu@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Alex
 Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: add hdmi simple-audio-card for RK322x
Message-ID: <20250928120749.36df6a8c@deskilmich.example.net>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_030940_992024_CF7059C8 
X-CRM114-Status: GOOD (  10.31  )
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

Add "simple-audio-card" definition for hdmi-sound. While at
that also add the missing #sound-dai-cells for i2s0 and hdmi nodes.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Michele Zuccala <ardutu@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi
b/arch/arm/boot/dts/rockchip/rk322x.dtsi index
cd11a018105b..a6b3c934c8ab 100644 ---
a/arch/arm/boot/dts/rockchip/rk322x.dtsi +++
b/arch/arm/boot/dts/rockchip/rk322x.dtsi @@ -108,6 +108,22 @@ arm-pmu {
 		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>,
<&cpu3>; };
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,name = "HDMI";
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0", "arm,psci-0.2";
 		method = "smc";
@@ -156,6 +172,7 @@ i2s0: i2s0@100c0000 {
 		clocks = <&cru SCLK_I2S0>, <&cru HCLK_I2S0_8CH>;
 		dmas = <&pdma 11>, <&pdma 12>;
 		dma-names = "tx", "rx";
+		#sound-dai-cells = <0>;
 		status = "disabled";
 	};
 
@@ -732,6 +749,7 @@ hdmi: hdmi@200a0000 {
 		phys = <&hdmi_phy>;
 		phy-names = "hdmi";
 		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 
 		ports {
-- 
2.51.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
