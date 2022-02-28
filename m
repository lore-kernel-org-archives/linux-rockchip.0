Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DF0C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KxCqUP8KHtnT5cH1LouzM0lxrfHva+JudWjCieg+KU=; b=QFTVPzK4jNgYtM
	3WiJs6JlWXVZrR1/sY/65ZAtav5kThP04WZONQlQKWRw6IXoLME4oPML2bmV8fnIm5HHX6AQlBmng
	nGv3Ueoblk/rHIG8E+GdCkZWjFdLn8FvkIuRTzz2JhDYAr+22E4cVSlcX8OSk2gYpkZUaC06qDvMv
	rqHe6PlynFuGyLRPkiUw03DxUb3XLtLZ7UNrhryCVZ8uFXOuJzqdaDI7zGywJMUbNeAe3YRQ687Hs
	Te1qUP0e8V8jk78f762+tigEzMTA1AE7NTGHpi20vuZ7y4jdqVQqt1CNqTO4/WkpVV46E472tiIuf
	b332QR0QgN1UuIZrtHAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgeM-00ClQw-6N; Mon, 28 Feb 2022 14:05:18 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWZ-00Cike-RW; Mon, 28 Feb 2022 13:57:19 +0000
Received: by mail-qk1-x733.google.com with SMTP id z66so10303252qke.10;
 Mon, 28 Feb 2022 05:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=Vzhk/l+RrcplqcRl2cXSbNL0mIvK0CRqty0syf5bQQUmHMjOBGQmTZCuabndtJHS36
 xXaS4lzWK+xROz5TJtKNdPabb1zD5XMcj4+8BJ5pRW46wRhJ+pp+amtp6rm129LF0Z6P
 7ztxky6Yjxzt3HkgcC59vTDSAEagAB5PTSfMz+Df08fUXW1QA8QCZVkc8XBylIYP5kdJ
 J5nblzMm70KMGgf8Gy5HTHfnfzsopKw26AIwtBXz0ZgsHC2XSeecPMN/tspvdph4+Jwi
 NspRDdkxFAH/8L4MY1lUMC/CNvDJN+Ru3ekvwruL+yW2a8U0nPvi6Pt4ggbw0GI9+zNl
 eXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=kr/gxacneBzH9XVzkKJu/sGJKdOKO0DEvEihMuYx6l5q0ERpNLUW6oPiz2OtpDw2Id
 tg4ugtLu0JujUMc5Y7WD78gbKurugGEXQ+AzgYFUhjy8d93LjykVa0JWRtSVIwz1o5AC
 HgtstiWwDEUGqGnloOFlBlLUvDb6mP3QnphknHFAKBtkDqHfWYOC6yJ/wSDVgelBL5qG
 bEmSbM1V3H3WAwptd85F8dEEiae5yaJ6KK8A2f58aa6jqU3FTMZPS4lfZQAI+K3m52M7
 g/8ZVGUDWVGzP4aQi8XBsyLMA7XebQvRMrDO6SA0i+Hz0woSXjlrtXtM6BQbgbShWPCi
 1Vng==
X-Gm-Message-State: AOAM5327MSwoH2rgz1ZuiBaubYFLO5ad/zptQtYl2vqn1mC3QL5QzOrO
 QJuO0nOF/DGfIRnJb+aauPnMuesx5zsbbA==
X-Google-Smtp-Source: ABdhPJzISx6l4WShDyY6KCDsf7X9XfgYN06iL4IV/tf8V+edYxOG/JAz48GCLYEo1nlBEeZAzQqvNg==
X-Received: by 2002:a05:620a:8ce:b0:60e:1351:94bb with SMTP id
 z14-20020a05620a08ce00b0060e135194bbmr10731362qkz.63.1646056634470; 
 Mon, 28 Feb 2022 05:57:14 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:14 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/8] arm64: dts: rockchip: enable dwc3 on quartz64-a
Date: Mon, 28 Feb 2022 08:56:58 -0500
Message-Id: <20220228135700.1089526-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055715_989415_74831B57 
X-CRM114-Status: GOOD (  11.18  )
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

The quartz64 model a has support for both the dwc3 otg port and the dwc3
host port. Add the otg power supply and dwc3 nodes to the device tree to
enable support for these.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..141a433429b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -151,6 +151,16 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc5v0_usb20_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dcdc_boost>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -187,6 +197,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -672,6 +686,29 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	status = "okay";
+};
+
+/* usb3 controller is muxed with sata1 */
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb20_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
