Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD242C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 16:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIYbYNmG0+BF341QEg/EcSaUViKFzI0qxvs6meBw67Q=; b=3AifrC/dQaoOFy
	nW26+Rq5SiLkZG6fkGCc2zpm5kIdfTm7HGhX+QboG/S+0jkJe65/SRWRHTUZrhlVqPxjNnnLQ43Xn
	7QnWqLDUF0Knr5t72GxEpHV1G03PDuHKY7Ybp4LF1l4Uym1ql7cdDTmPPEOJklFnQ41gIrqtLNscx
	QNClJZqLQTwWVjScWl+rtq1ZhurGfjWpWGpJNzTHKhQarUvl7ZhB5wAFnKfYMNYafcySsH4USrl/1
	MyHGRMNbwCPkZVLvpAq46xxEwciT7s09U7Iy+nUdAuuGbCrvRn0HZGjnigi50KW4lUrAAG4vLYisY
	LkLXxwW/f7LyhJdXn4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDRkj-00FOeT-0v;
	Wed, 13 Dec 2023 16:06:29 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDRkf-00FOdG-37;
	Wed, 13 Dec 2023 16:06:27 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-677fba00a49so55262056d6.1;
        Wed, 13 Dec 2023 08:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702483584; x=1703088384; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mV7pcScjZucWWRXnAxSJek2hZSxOGAqXVzogrAoZOIE=;
        b=lJobPim9vQJVVi6FWE/l6kY0Dy3ZAFhkTt93NFHhfYEobnk9juboBfjf73sCofqEom
         c/s7RuUvxOdg8BsY0cLICs9Ik7uMt1+eHUwJE917znxdoVM9WDPU1E1uiRZOb/M4ave2
         Io6FrtfZk1tKBEWY/w8R130Wq8v/Vh3/WI57cu9CMQ++7IKT17Dm3hw29YoJxVgR/rfm
         gEc8M/FSlEVg8k2OckLJHdpGXXyoJmKsIBK7yFvjvNib0F46oLIilliKRu37xzfttMHD
         jULG5ZoD9QFBVEfCxCkqMQQdMn9WNSEgwoSZ/agQRb+BpMoRyn0zyZWhLISF4x887A6K
         cwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702483584; x=1703088384;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mV7pcScjZucWWRXnAxSJek2hZSxOGAqXVzogrAoZOIE=;
        b=ve67bSn032iG0s2pK+Us+c95abtEXxHMAevsrhSufBD6ciYBFjZ+hFTjOve/Nc8S3t
         lgI50C7ZxD/awyV8+H1pgPHPg3QKeq4l6nwKMbKc0GGlEM+3C86kCLNWTns0FcbD6DtD
         bGZWMladx16OrpyD2gOThRVEmrGneXFRN8F12F8Qyvbi18FckOxTuLf9u5JQk37mbHk7
         uViSVp4Nr2eifbRdpWqqrzsc0ZzX4eC0DLWQ5YxQLuntfoWP9PI3s/e+3PR8bSo9iCRC
         e195mHntHh3hZe9gbp+7PZPDgirDon6NtUgGQrlzejurAlfAfrhWXiWPLoXKVL0pZ7bH
         9bQw==
X-Gm-Message-State: AOJu0YzNib08jVyXBt8OZ/oiguGGrblyeidH85s1/G/7oWV9SjvnzuC5
	k0EptTH/Qaz7L6ZywoESEv8=
X-Google-Smtp-Source: AGHT+IGXmvitHaimiJfEzIE4bQb1b+g+FbM+iFhthTlXcxDos1V7s36HFzw+7/wuVmnwUsuUirgsWw==
X-Received: by 2002:a05:6214:5e85:b0:67e:f80e:56db with SMTP id mm5-20020a0562145e8500b0067ef80e56dbmr1520364qvb.54.1702483584629;
        Wed, 13 Dec 2023 08:06:24 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h11-20020a0cf8cb000000b0067aa2d86ce3sm1720378qvo.52.2023.12.13.08.06.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:06:23 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: rockchip: dts: rk3328-rock-pi-e: add gpio-line-names
Date: Wed, 13 Dec 2023 11:05:55 -0500
Message-ID: <20231213160556.14424-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_080626_007906_1DE56D7F 
X-CRM114-Status: GOOD (  10.98  )
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

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v2:
- fix subject from "amd64..." to "arm64..."
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
