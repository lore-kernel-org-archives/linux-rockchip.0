Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29999C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 13:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4OOZGtQf/HZkDJb+R8VoMSNh8yNiPiayECNGJkx9TGs=; b=WC/soXyhrnXldW
	ryyxSrDGMY/d3dY+T099hM/IRYUqz5LscYcUReKk8EtMSkXyN0Qc+ToLLXTzx8qNcFO12dPGE4D7c
	soiwxFu9OzNH0pxkQo+tpj3gyKwEn1YdFaSof6TJgc4fpdCsVR0JRpWMqJ40B5D4yWRyiVPFe/0/l
	A+NegT5MkyTsqTMUo6vSWxAAlV6Mqv9VZfp7zAWtN3veIOFaCQrv5O1uXxVIDetBslTQbreueAU5J
	0N9vaOgn1yeuusnQiFavYCFWnBIjbB6ljESd55qMcFBKOrxDNJh+STzh6naDlGQalfKQmBJx7IdQ7
	xZRgMQjfF5qBULkSuPew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDP7v-00Elyg-0d;
	Wed, 13 Dec 2023 13:18:15 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDP7s-00Ely3-0F;
	Wed, 13 Dec 2023 13:18:13 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4258c2e2ee7so50673671cf.2;
        Wed, 13 Dec 2023 05:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702473489; x=1703078289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i4l/5gRXaP1+RfdbJslxJg0fd6YM0cZ5wR9VCW+0Q3U=;
        b=NSXl4wJpkt3DhmG1yqywJ4AEV7DktvD/B2cq8La12DlAZ7x92xBpJasIZKocelruzz
         pWyxVHZ+myf4z9hfqPVF3UTb//pV0PilH8M8jApgbD+10q42rP6q/x5hLV0Wvn7FI4oZ
         jhJ/DoVHYJdKRZB8rVX5Y+c1WGG1dfW871OAUP+P6WC+HDWLydPxWwwcNnFiJy9CNWza
         F8IH5ASDc6zVmTqHamW4hQvFv8FyAJc3FkPOtD7UME+zsxdtM9xcJfzSHZQM+4MBZwC0
         fo2B9EiCxBEY2woMg8dTgvJB0iyt6igJUhnF5n5KeG1oSXgCwFfDVe5JpKyyMberkEn/
         8D8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702473489; x=1703078289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i4l/5gRXaP1+RfdbJslxJg0fd6YM0cZ5wR9VCW+0Q3U=;
        b=bAltXJjfyyLD3WhGn0k8tFvPLI0g1axJgPZ0nzG+m9RUeMW9ElNOkWrvKh8oUFrTY8
         CnIcLTNqVhvWkciDYb4nvRvGl8rcYm+Zu/EwD/B4CiXgR5JC4+MUG4a/TYKUwUBVZQET
         z97hYOpiO3vdt4tPBhjkLVSP9mmKmMZ/wmpMqvD/K8el6UiNQc+SketMhgNjewdCBEqq
         QTGF9F0HnfOqMPZLhY6FkKZ9tErfYTMMMHM8f7zS9IHL8u/7gab3cHaLxe3L4nzSMnjN
         +BmeORqBnAUUdHN2HJahLBzEli8JyWgUzdyzsef1NWTvhnnJ3tl+3OAQ5QI0kp2eN7FN
         5miw==
X-Gm-Message-State: AOJu0YykwGbfbvunXLd0MsInHfqNdF3LjvrlS/zpov6AHACz9MwayKUd
	lQfxP4JSJD2lqHAAipa8lHCLvtX0v14=
X-Google-Smtp-Source: AGHT+IHgcLpgW31VJbUwq7ETCySFb7UPpGI5z6ixSKAzF4FLXtqxQsOZnFRjUpq9Pkp2L2oo33Hu0g==
X-Received: by 2002:a05:622a:1708:b0:425:4043:18ca with SMTP id h8-20020a05622a170800b00425404318camr12136045qtk.125.1702473489392;
        Wed, 13 Dec 2023 05:18:09 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id f21-20020ac84995000000b00423890096afsm4889400qtq.2.2023.12.13.05.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 05:18:08 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] amd64: rockchip: dts: rk3328-rock-pi-e add gpio-line-names
Date: Wed, 13 Dec 2023 08:17:38 -0500
Message-ID: <20231213131739.13900-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_051812_113381_9F08185B 
X-CRM114-Status: GOOD (  10.22  )
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
in the Radxa GPIO page[1] following the conventions in the kernel
documentation[2] to make it easier for users to correlate the pins with
functions when using utilities such as 'gpioinfo'.

[1] https://wiki.radxa.com/RockpiE/hardware/gpio
[2] Documentation/devicetree/bindings/gpio/gpio.txt

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 .../boot/dts/rockchip/rk3328-rock-pi-e.dts    | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 018a3a5075c7..3169c0854061 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -388,3 +388,56 @@ &usbdrd3 {
 &usb_host0_ehci {
 	status = "okay";
 };
+
+&gpio0 {
+	gpio-line-names =
+	/* GPIO0_A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO0_B0 - B7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO0_C0 - C7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO0_D0 - D7 */
+	"", "", "", "pin-15 [GPIO0_D3]", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+	/* GPIO1_A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO1_B0 - B7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO1_C0 - C7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO1_D0 - D7 */
+	"", "", "", "", "pin-07 [GPIO1_D4]", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+	/* GPIO2_A0 - A7 */
+	"pin-08 [GPIO2_A0]", "pin-10 [GPIO2_A1]", "pin-11 [GPIO2_A2]",
+	"pin-13 [GPIO2-A3]", "pin-27 [GPIO2_A4]", "pin-28 [GPIO2_A5]",
+	"pin-33 [GPIO2_A6]", "",
+	/* GPIO2_B0 - B7 */
+	"", "", "", "", "pin-26 [GPIO2_B4]", "", "", "pin-36 [GPIO2_B7]",
+	/* GPIO2_C0 - C7 */
+	"pin-32 [GPIO2_C0]", "pin-35 [GPIO2_C1]", "pin-12 [GPIO2_C2]",
+	"pin-38 [GPIO2_C3]", "pin-29 [GPIO2_C4]", "pin-31 [GPIO2_C5]",
+	"pin-37 [GPIO2_C6]", "pin-40 [GPIO2_C7]",
+	/* GPIO2_D0 - D7 */
+	"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+	/* GPIO3_A0 - A7 */
+	"pin-23 [GPIO3_A0]", "pin-19 [GPIO3_A1]", "pin-21 [GPIO3_A2]",
+	"", "pin-03 [GPIO3_A4]", "", "pin-05 [GPIO3_A6]", "",
+	/* GPIO3_B0 - B7 */
+	"pin-24 [GPIO3_B0]", "", "", "", "", "", "", "",
+	/* GPIO3_C0 - C7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO3_D0 - D7 */
+	"", "", "", "", "", "", "", "";
+};
-- 
2.41.0.327.gaa9166bcc0ba


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
