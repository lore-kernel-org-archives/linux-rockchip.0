Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8401BC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLyH9nmbfJ7Ld6wAyAG8+hrqiiZLN5jB1H69YyBk1b8=; b=xjPHiUj0XhAsxm
	BggOkUtLPXt+53G47kmokjWEFb9iobvusaUdJeIo0gQUJWsEtmurn644PjeFAgNtXnN7cK2T6nAvY
	W6mJgGr4LR/k/fV0euVdHPsLVAUYJJXPo4zalg30OUQEYbJxngoPaQhGIOdTo3xDHKz8Ov1NvlMuU
	oThCoDweB3DMk1HkKH9Mb8lj8PPLZ2gWFlhJrJYc21B2qoWQ/0782LPU/6EIEjuubw1UCEAgt9yhJ
	uBUc+SIlxACqFB605RiCH8bDHCkj/soNC8Sxyj/wTdVJ86Y+VhO7Qg/DPJjHDtmNEhkisE3srlt16
	XDONSPQEkwgLS082BGbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PKB-00FhJ3-0m;
	Sat, 02 Dec 2023 12:42:23 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PK5-00FhEE-2M;
	Sat, 02 Dec 2023 12:42:19 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54c1cd8d239so3228739a12.0;
        Sat, 02 Dec 2023 04:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701520928; x=1702125728; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mp5m4S58xFYf/pPupXKRpoAWOKmXYjV8KokdiBbVmdU=;
        b=ZHgQ+/A9AdDyQgqtWfpkeT2ytYgQfRFWWEI19s+gVo1ZyadXnw5aiRo0+9j+P1exen
         DojcHg/QzZ2LWPbphfy6t65b9OF3Jpm/N3pjxjPxD2HNy9CqvMXrTT00L9lhmqHa1hy0
         bsqWE9QHZVLCZhvAF5gjl01gcZhiAw4PSN1i37bmgeoIDVN7+zLOKjYU23LT1TYQVtQl
         qay5hRFeTGLXN30wO/EoVjbhCmb/2eXibNf/FJP2NsbuKrM+FnLXDv5Jo3z7TGSyHPUl
         SFANDlVgBgUJAllHmXAuxUyvNTI/+sfrb9yOiJ+Vd4S63glawLWiqhZ4yGK5xWx4+ul9
         UBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701520928; x=1702125728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mp5m4S58xFYf/pPupXKRpoAWOKmXYjV8KokdiBbVmdU=;
        b=eFtIED44xPL8mFOoHsAl9efT7i5mzAWDM038BMdeK8t9T86ZwC6lsLe/2wwy/g0YUL
         gaUrklFVZYbsjFaEYJ4Atu6SFCe47pC5chUYF9qBjla9DygJjbPK0QgNgxko1kv7R98j
         SkBv7M9AGyJ2fRA5eftjqkmvb7mznVN5cSwGH+kaaDS0tfcX6Iahxx43UniiAbZGHW+L
         b7a84LNXmGErUaF/2Eq2tD1xX209G8zB078iXT/boyKuYMaaiDNxbnc64+rPW/vL59o5
         vluDiv9HcO8Le7SjQofgAjlB1DcZucS4XrroN0bP8QV2r4EfdEHzj6lRBzmnM6Ttlk4P
         uEow==
X-Gm-Message-State: AOJu0Yz9+nrVJNtF7lOjsZnRpdVPY4LWEN29sI27jJkp26ATCQ+UVHG7
	X2VXq54J86F0DJJHIl7AWQ==
X-Google-Smtp-Source: AGHT+IFCBdPcJSe8T9O23Y89jCIHxaJaMUXndtVnA4rBtUOnvJCImr6VCsKo/XMoFtC8T+88bYhlPQ==
X-Received: by 2002:a17:906:51d0:b0:a19:a1ba:baba with SMTP id v16-20020a17090651d000b00a19a1bababamr1018772ejk.96.1701520928353;
        Sat, 02 Dec 2023 04:42:08 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id q19-20020a1709060e5300b009a19701e7b5sm3009602eji.96.2023.12.02.04.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:42:08 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/2] ARM: dts: rockchip: Enable gmac for XPI-3128
Date: Sat,  2 Dec 2023 13:41:59 +0100
Message-ID: <20231202124158.65615-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202124158.65615-2-knaerzche@gmail.com>
References: <20231202124158.65615-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_044217_771728_C649C013 
X-CRM114-Status: GOOD (  11.62  )
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

Add the required properties and enable the gmac node for XPI-3128 board.

The minimum reset timing requirements for the phy have been taken from
DP83848J's datasheet [0]

[0] https://www.ti.com/lit/ds/symlink/dp83848j.pdf

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index 61b9f069c8a2..e979425f11a0 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -11,6 +11,7 @@ / {
 	compatible = "geniatech,xpi-3128", "rockchip,rk3128";
 
 	aliases {
+		ethernet0 = &gmac;
 		gpio0 = &gpio0;
 		gpio1 = &gpio1;
 		gpio2 = &gpio2;
@@ -255,6 +256,18 @@ &emmc {
 	status = "okay";
 };
 
+&gmac {
+	clock_in_out = "output";
+	phy-supply = <&vcc_lan>;
+	phy-mode = "rmii";
+	phy-handle = <&phy0>;
+	assigned-clocks = <&cru SCLK_MAC_SRC>;
+	assigned-clock-rates= <50000000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rmii_pins>;
+	status = "okay";
+};
+
 &gpio0 {
 	gpio-line-names = /* GPIO0 A0-A7 */
 			  "", "", "HEADER_5", "HEADER_3",
@@ -315,6 +328,21 @@ &gpio3 {
 			  "", "", "", "";
 };
 
+&mdio {
+	phy0: ethernet-phy@1 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+		max-speed = <100>;
+		/* T2.2.4 min. 1 us */
+		reset-assert-us = <10>;
+		/* T2.2.1 + T2.2.2 + T2.2.3 min. 6.05 us */
+		reset-deassert-us = <20>;
+		reset-gpios = <&gpio2 RK_PD0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&dp83848c_rst>;
+	};
+};
+
 &pinctrl {
 	dp83848c {
 		dp83848c_rst: dp83848c-rst {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
