Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9E1D10BF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIFqPDrvalM6EtIjADGGAzzP7hCR5GZ8d+yG4QZERpE=; b=mSkOGj4/SHrMxC
	q1r3eRQuCEFc+HtrgP435L3pTHCAqNP8XK6gLDL4Kcz1LF46HHRUsEFpsSzVYvNB+j2xWFEU8MVOC
	XLlKhtD1BBtL6PFLLrRN6H4oe93QtMmQqLqd74MV6wLwcciqFpewdZlDXemE+CtORrIvEEOHbWscg
	gJq5uvwic8bUZkkxUSfPIz7es8DjmUUgP4eiz2Vo8+aFh7TK+sC+vCpauJOtE4lTdpiD1fKUGo7oF
	S4+NR/WbEiSvZLKi86Kmo8ejFdNVXF6HOvnLMxKTAnRj+8USCuEJJSseFdtoR8VLss9U0a7TVlON8
	PWae+qEFz59/SO/Yo6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de0-00000006KqF-3jyX;
	Sat, 26 Oct 2024 10:03:40 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddx-00000006Kny-2hrB
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:38 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-71808e95ae2so1578837a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937016; x=1730541816; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vln2kjvTiaEnEIV0ZkT7Cwe0mJcBgbSUVXBSCAwi4P4=;
        b=Tjz9JFs6Cl7XVCxpPug9g2q7ej+6TppKrakjZwE8UF5UZwRdN1AcfIoLS1k0ylicSR
         uHvbBurjxTO6mHiNlVHMqi97iL1eTBohzo+IPzWB7IYtpuCSyEsmu+FAoh3dNMcyrmwo
         tYxYD/z/lFTnErrCI8idSFe2GwbCaonhrstkI3OQn203SVXJkJLPiqepxRq1UH+0ndcq
         P03OkmOnB9nxHM4HITgsLXAXNtMLgXXSfagik5hdlgp2bEE21P1kiw9VXwrj+fPnajSJ
         d6T5meo/cgL0yijj+u7pvUhtPi/OK3PmYIaJPZELwMm5731RXVeYYejjcnUAfQ6nN46H
         ajYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937016; x=1730541816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vln2kjvTiaEnEIV0ZkT7Cwe0mJcBgbSUVXBSCAwi4P4=;
        b=vTj0UK9rlkdoT1LZ7beABlJ/kSdkIi1ZNFS3wNqnDYUQ2WirZw6xgJgANJRbkFkhMk
         prlFJYsYeYnsvnGippPR4ttiVtTTP1TThJJK0S9jCnqh8W61Tho0EcSQBPZXSaki7hRO
         WmUOn188mJaFBM/HG92MmI9OvWOquzn6UuMbKONcy5DOXE7XASNaag4NYWAp06gXnEnm
         tbvhfWI4TlUo5ZPlkcOCnmgKZdn7k0kYgCFfzgeKBASOiw65JLu+L9NpqF7Fsm7mD/rB
         ILddo8+TMG5hnU1QMOYSGV1dN7GLEYbS6/VbgX8G6kQL6fjtNtZj85eQpFqUZ//aNXAg
         IZjw==
X-Forwarded-Encrypted: i=1; AJvYcCXKrR3djByn/9/2V08/QAiuFVMa77QE9r5CT47Ehe/URhKADrcCVhx29PO4SJxCcOcjSUDkHc1052JSMl4RfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YymXLevNTpVSvsLHsxGNmAgiJtXLg4BCglYywn1ZSvrGUkaTn7A
	iTJEJhVC+QTv8hhFGCcHsrS6fMVI1kNEdbXXGSHDEcltTUo+n0Bw
X-Google-Smtp-Source: AGHT+IFbn26hcInv+sOr51oPcQ7mdhPnCT+vAxzb2EfKGgUeU7wx1hDR6Fd1fmsBokWFc0LbcgfHYw==
X-Received: by 2002:a05:6830:2648:b0:710:f22b:c825 with SMTP id 46e09a7af769-7186801ce8bmr1201710a34.1.1729937016432;
        Sat, 26 Oct 2024 03:03:36 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:35 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 04/15] arm64: dts: rockchip: Enable RTC support for opi5max
Date: Sat, 26 Oct 2024 04:48:20 -0500
Message-ID: <20241026100310.52679-5-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030337_730501_A168D56C 
X-CRM114-Status: UNSURE (   9.23  )
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

Add DT node to enable RTC support for Orange Pi 5 Max

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 83a118e52bb0..961f9271d0f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -150,6 +150,32 @@ regulator-state-mem {
 	};
 };
 
+&i2c6 {
+	clock-frequency = <400000>;
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		/* RTC_INT_L */
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC4 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &pwm4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pwm4m0_pins>;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
