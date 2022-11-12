Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A4AC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 11:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSCpIUmirYD0gc+zgov9BpHxYbveETQmgGh8vmZzDF8=; b=PHNCtAGh0FaGG0
	jecFQ/Ntu86fyFF2uEA7rYdOqEyQaW6ioTTDub89td6fS2RoVge7+5E0rg+ETTPY28CMHpSCNjRJH
	2n+QfpUUPQc9kAyRRG9oI/U148XkGCntjVAUmiNTEmI72y8aeiSvJsbkyB2UIfuYhjAxFp+N2Nzfu
	VINl+MRgvewbMrfN++nvSEWnv/mAmrAq9gI6sQPp7Mp8xlRX62kQUJKcs0HxOrxh3dQdoJI2DQ2Nz
	YEodUfoZpu3QWHeCQHaJBXCEp7ECOyxUUpE8aY6aNQLsuh8ntW9O5WK0Y7ouR4vR7jXZWHTItM11Y
	YS1p6iNEtaqpm7Sh2CfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ototx-005Mnp-4A; Sat, 12 Nov 2022 11:42:21 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ototo-005Mj3-0T
	for linux-rockchip@lists.infradead.org; Sat, 12 Nov 2022 11:42:18 +0000
Received: by mail-pf1-x429.google.com with SMTP id k15so7033108pfg.2
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Nov 2022 03:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=omnom-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+8ovGggxGWxSLRDlpHhaP42GCe1Wrk8yvHSpDQauLg=;
        b=ItZota3pW1Oe2c4ew1z447dprDKVkB8hghHN+fvN/Ifs3kXDF6TpITAL1ImlfU4joI
         u18gsuiWh0slYSFiTwJXgfG1OBx4XpKP1JNmX2P4V64szjJvrKSZqVO5OKxbdbr90b+F
         gQJUrwdljt/HJX20hVazQ/48cpC8RZBzNUyDOEwt2w9xK5oKHKANjoP+PO4T0oRT+wkW
         D3XmDOqj8FXuSD0M6ZwTRar6OXv5S078RJgYwqq0PiGsKbk0Z4H5VURr5cZ8TThMBTmW
         5ciUe3H725WvqpkNAzIukKed3+DUIPil3DaCg5lcOjsbzwWNJD74IrVHU0/PEpqnAuxD
         OxuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j+8ovGggxGWxSLRDlpHhaP42GCe1Wrk8yvHSpDQauLg=;
        b=ohnGPfuf9hliCUKCES2zUF79ovypm/M8KOGAtG4ID7glKtsqwPd89AQ9fWvqZ6etO1
         Q1AYxu9i57Oqk4eZ0Sqs8ssy9F4JFq3BaRswAqxUvzsC6/IlVhOqgMi1RncfYAJAIMZk
         mchVhoGAv62xhPnHr9CSrVp3vNqavORA4BUz+nPbXZYO1Kvl4zEJ3NnlkfNDrzJnF5Vg
         MAr8HgTj2diKecAEJiDNNNqnyXkS16g3p8zDa9LwK3NE9+hVxUC2/2m6tD55Ra3FQSOK
         N3/SD1ZpkJw0DjmPLW5L28ZxUqEFBJgZQJ5/dSq6ClQEoSFRQPfhGqB6mtm4zdjci9y9
         HaIg==
X-Gm-Message-State: ANoB5pmUHgWNC0qUKPwxipTvcns1GGGClNL4PomkFmNqyu+yTyZkFZpj
	wsfh2BZhowyVuIQ2R5tkkjth3AHYAeqxTFj0hGM=
X-Google-Smtp-Source: AA0mqf6nOSEjLFrPtAFqvBC3Fe4L+65alGC2VEytOGlQYBjRUwqw8lkeqaDbR1I7e0tXHv17EffEHg==
X-Received: by 2002:a63:4a06:0:b0:46f:469a:249d with SMTP id x6-20020a634a06000000b0046f469a249dmr5221652pga.471.1668253330801;
        Sat, 12 Nov 2022 03:42:10 -0800 (PST)
Received: from astraea-lnx.home.neggl.es (119-18-16-128.771210.mel.static.aussiebb.net. [119.18.16.128])
        by smtp.gmail.com with ESMTPSA id e2-20020aa79802000000b0056e8ce106d1sm3132091pfl.132.2022.11.12.03.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 03:42:10 -0800 (PST)
From: Andrew Powers-Holmes <aholmes@omnom.net>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Robin Murphy <robin.murphy@arm.com>,
	Mark Kettenis <mark.kettenis@xs4all.nl>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: rockchip: rk356x: Fix PCIe register and range mappings
Date: Sat, 12 Nov 2022 22:41:26 +1100
Message-Id: <20221112114125.1637543-2-aholmes@omnom.net>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221112114125.1637543-1-aholmes@omnom.net>
References: <20221112114125.1637543-1-aholmes@omnom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_034214_309228_E4BD5EBA 
X-CRM114-Status: UNSURE (   9.85  )
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

The register and range mappings for the PCIe controller in Rockchip's
RK356x SoCs are incorrect. Replace them with corrected values from the
vendor BSP sources, updated to match current DT schema.

Tested-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Andrew Powers-Holmes <aholmes@omnom.net>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 ++++++++------
 arch/arm64/boot/dts/rockchip/rk356x.dtsi |  7 ++++---
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index ba67b58f05b7..c1128d0c4406 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -94,9 +94,10 @@ pcie3x1: pcie@fe270000 {
 		power-domains = <&power RK3568_PD_PIPE>;
 		reg = <0x3 0xc0400000 0x0 0x00400000>,
 		      <0x0 0xfe270000 0x0 0x00010000>,
-		      <0x3 0x7f000000 0x0 0x01000000>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x7ef00000 0x0 0x00100000>,
-			 <0x02000000 0x0 0x00000000 0x3 0x40000000 0x0 0x3ef00000>;
+		      <0x0 0xf2000000 0x0 0x00100000>;
+		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x40000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X1_POWERUP>;
 		reset-names = "pipe";
@@ -146,9 +147,10 @@ pcie3x2: pcie@fe280000 {
 		power-domains = <&power RK3568_PD_PIPE>;
 		reg = <0x3 0xc0800000 0x0 0x00400000>,
 		      <0x0 0xfe280000 0x0 0x00010000>,
-		      <0x3 0xbf000000 0x0 0x01000000>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0xbef00000 0x0 0x00100000>,
-			 <0x02000000 0x0 0x00000000 0x3 0x80000000 0x0 0x3ef00000>;
+		      <0x0 0xf2000000 0x0 0x01000000>;
+		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x80000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X2_POWERUP>;
 		reset-names = "pipe";
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..eec1d496c617 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -951,7 +951,7 @@ pcie2x1: pcie@fe260000 {
 		compatible = "rockchip,rk3568-pcie";
 		reg = <0x3 0xc0000000 0x0 0x00400000>,
 		      <0x0 0xfe260000 0x0 0x00010000>,
-		      <0x3 0x3f000000 0x0 0x01000000>;
+		      <0x0 0xf4000000 0x0 0x00100000>;
 		reg-names = "dbi", "apb", "config";
 		interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
@@ -980,8 +980,9 @@ pcie2x1: pcie@fe260000 {
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
 		power-domains = <&power RK3568_PD_PIPE>;
-		ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
-			  0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
+		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x01e00000>,
+			 <0x03000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
--
2.38.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
