Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96A90CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 21:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7xv85+h3NWN5XIF4lAhJonuJqYM4DQO+R/BzhJwwvA=; b=dekycBv8rfW7jI
	5yoXwvriX/UucqAmi0SaeOZlZHJZpcVm0ygQeYJv7QK5rtPlXT3suqszAp83FzB26S3q8m0sZfgJ1
	1T3i2W4EjN9EH0e5OL34ENptuqnqbNiDOVDKLcFnSwl0lyB5MASBSfsQ3yZ8DWxhetK+H24Xlv7VQ
	VH2umX9blOzoXASGiT8jTcMwv8Fa34qOHUrw2J9VKMtVUc75EWvqjh1CmDHlIuI7ll2ZgOPGlKHc5
	Qih2Vy5eowloXZwsrGb1UinzBrj/NYfuHDu1rCjHWkJxhtPYymI89+tOjOTBMkbqUmqLi2bg65r7Z
	bevZAVhBlM67TY1OX3FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkjz-0000000ESlz-1FBc;
	Wed, 05 Nov 2025 21:08:27 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkjw-0000000ESip-2pXE
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 21:08:25 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so46810366b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 13:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376902; x=1762981702; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4/N5rROtcnxc6d5f0IUPrUWxw9x/K7/M9hcGw0GwgYE=;
        b=ezpn6I52yd/QnaXBR7R7+7kiIavPpI4Z6GiqBe8xIGocZKDUHIsxkcPHnyuCC5fOOm
         kzErvxQi1JaPi3NbVaGMOjcQqymRhAhO+FgYD/gTztubC8mn7ILcqr/ehaAcePkZcQcE
         j6tKSNPl3BEhqDEV2tvt8cNujIT3tSMzVQWN9qV/aI3eEen4gK1m9/Sln+jacdoLNzBX
         eROexM4hJmlmsZedTq+hpEVl/+b2b2c3QLRf7Og2TGReLPt0/1fTbSdTdRf19Nw6a88L
         sZS+JoCGOmQ4x5EyoVD2tSwwMOtbmFIDqkdRC5+Bzaq7bib3yhoNrKfE814B+V9O+5cv
         rZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376902; x=1762981702;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/N5rROtcnxc6d5f0IUPrUWxw9x/K7/M9hcGw0GwgYE=;
        b=MPfIpnR9I4O1fJ4LbdbDQArrJ5CPQbel0LPTRGedmkzf7sffN0VKRbBe04yImSkxyv
         HLGlmlZho7lK/7MBweoH3iubSZum4/ifr4TnYnRB0eEzSbFuLNIR/w2xRPS542xkXhFR
         nchhk3nW5MCOCQMKyRGw1GUYWxcrQYMZcssSWCC98upebhinp/K6ZU9iKZQF/D9sxkgD
         59G0DE70tKxH+N0X9yHw4bWiZI0WnTpc9RySHw4ukPkpdQXAWcw6lNr+T2tJLSXI3Yt1
         HCZAz+UdU8RQ6EFVLzGv8LZp6b9hTc1DgwPOYSF+M80UB3G+S8jACpdQFJjW94XxfBSC
         wW9g==
X-Forwarded-Encrypted: i=1; AJvYcCVS+p5F3n0MQfriwAjtJkzfqJtrCoSrxPpLcl7ekR9iucfkXAtWStw5lQbygVxlT2rcQ6CvHRoYtpoEgqfU8g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3C3sj/dqk0nlqGNiRzk233bvlCJJhvbu0uGzNWenXlEBrdU/y
	WYRR7smr8FznJWM3/IfH6IvccFIa6IidFfqLuiV2BCklW12dVIuh+iQ/
X-Gm-Gg: ASbGncsUnPO1ZGk9M0PZbhU1dy6yx1Qi5phzpjqZhz5e3KhsTULDb7z5d5JdcbdsEvB
	ylEGk6gH6kzn21rwOH3OB9w7CfYXst5uWft4x3kgrora/MoJWbxLWdu8K7nEwJtp9gUH0mWy5kL
	q70gsSwTVKL4FKUlj4mrxna9QJxxZxGqSSQzdyjPEmIce2YnCS7sr+5D/10mVG33NDxQXdHh835
	PT6KY6d8s/IR/I2zCH4zUqcvI710yzhzKGv9PwLsskqTWLtQcbDlGzDAVabJUGwiMrpsjg1WdEY
	fkDK+83BHgLR02sozE6xhZZ5oIje0l2YXgs1sA1kiFe1BbfSpiONlzXxsx9ScpfoExWK7MyNYbu
	laZIRJ6dTvijle4kpAmCSB7GKNAtD3ovdzqI1eFCuIjtIgho+jQQSviX5m2GPEI6c5ZOfz27UtM
	IxQikad2lyE95a6CKYBR44kz8qq5G+a5Hx9KkQnAGd2WaobA==
X-Google-Smtp-Source: AGHT+IEQN8LEBzg2FibdPs1zW7myIBbg1Dg3RX0BLIHipmkT0F6MtRX6Fdv53CQhOLloh0SQE8k81g==
X-Received: by 2002:a17:907:968c:b0:b72:5983:db0a with SMTP id a640c23a62f3a-b7265297e0amr437027566b.15.1762376902297;
        Wed, 05 Nov 2025 13:08:22 -0800 (PST)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b728937cc8dsm54005766b.17.2025.11.05.13.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 13:08:21 -0800 (PST)
From: Andrey Leonchikov <andreil499@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Fix USB power enable pin for BTT CB2 and Pi2
Date: Wed,  5 Nov 2025 22:07:33 +0100
Message-ID: <20251105210741.850031-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_130824_743492_FFFFE297 
X-CRM114-Status: GOOD (  10.04  )
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


 Fix typo into regulator GPIO definition. With current
 definition - USB powered off. Valid definition can be found on "pinctrl"
 section:
 		vcc5v0_usb2t_en: vcc5v0-usb2t-en {
 				rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 				 		};

 		vcc5v0_usb2b_en: vcc5v0-usb2b-en {
 			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};

Fixes: bfbc663d2733a ("arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2")
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index f74590af7e33..b6cf03a7ba66 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -187,7 +187,7 @@ vcc5v0_usb: regulator-vcc5v0-usb {
 	vcc5v0_usb2b: regulator-vcc5v0-usb2b {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb2b_en>;
 		regulator-name = "vcc5v0_usb2b";
@@ -199,7 +199,7 @@ vcc5v0_usb2b: regulator-vcc5v0-usb2b {
 	vcc5v0_usb2t: regulator-vcc5v0-usb2t {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb2t_en>;
 		regulator-name = "vcc5v0_usb2t";
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
