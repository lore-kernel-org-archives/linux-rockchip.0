Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14472C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 16:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=whD+Nhm9T9t9loomMv1b/YL+pjS+yP1rn11akh4LP/0=; b=351unnde4xv2GY
	mzGCwxtpCkttLjrwgDsIkOTNAs17dttuNIXLip2khs12/qsAjc6AaTre8GCfS75MRchSSWjB37bvb
	ErPmZWy8kDrsrWRwxxdo6p0o5J4zf+qIV4B8DwJ+S0fQ91u2UT5fQT/5T3ZYNnmqs4ArHzthm3zso
	rXBuMERCMjChYEjlL7jDw/HFTucBnxlJQ3W/JP7jvNlEBX6/I5+oGHZii+mavr8Bm9nHHz3zIEq5F
	7+rtL42OBeFKIeMr9/+ZSe9zkXgPJTNKMKgM3h0cM8WgYtsuLwnaFzziuRWTQ7uiP/dabTd0v+L82
	CEtcfiZKCTcsjZ/OPF0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5734-00DBDN-0F;
	Mon, 20 Nov 2023 16:22:58 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r572w-00DB8S-1S;
	Mon, 20 Nov 2023 16:22:55 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6ce2d4567caso2714978a34.2;
        Mon, 20 Nov 2023 08:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700497368; x=1701102168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KX9CLwN26iToqKb73jn+BjvpZIdQqDvo/75oK/Q93bw=;
        b=iEveCOK5l2xk1pmYWuzKPWSOvwT7hJlpPDCmqdgSOqTxSwepM5s4i+6o4tEaCuqeob
         008fQhBiq91aT3iD+9VUDGES4cFdndvFXt2nNTj1gqQ2fpF0CMboqqAWwl1q5Up4qmQr
         iTeEzFztxmfe4lVGSr86oDFAsFxceuvZsLk+51PWFWvst5CUkjWvogPm2fi0uBiQkGBt
         DwytmYg+A/s2wxp4HMiy2JU17564PHnvqW1qYmnrLGiwraDt7i312ecauvsD9t4YFlbR
         Q1w3BM46WVuAFS9z8SDrga4a3Gg5K70IjsILqe0GbyBCgOAPgZGOcwKZsN+M0LjYickC
         lYYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700497368; x=1701102168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KX9CLwN26iToqKb73jn+BjvpZIdQqDvo/75oK/Q93bw=;
        b=aoSBx+bbd6Ky4FO08zlL6y8iLPA7VyvOU+5p0b+AUKKAqdG9RJGms/yXLXIEcCjs/f
         VZ2WMBJJ9Gf5aJ113fMvBdV2Zijom1drG3k7buA3jiQgbgWpVNKU9A7O1IizQH1frDW+
         B9AaeYNHwzF81JaDYajXsSdJfhHy9Hf6Nw/vUhhjLh5K0ZNMiiYNnBVibtDIuWew0KTi
         3a0S5xK70OQn1/u8vSSa8Trf0CFMJMrEVfeQ2Dj7eHBU2znF/gh5QC42rwHbxWll05AV
         HS/X8zKezAbSnQhtp+uzTvXyc/poj1Micki+vWiLCubPsN6xS9uvOp1r5yOyJC9GM63k
         JSHA==
X-Gm-Message-State: AOJu0YyIQ2W6DcNrzZhKHTKFndvqO/1S20Yw/UvMRH3dxvaVyZHj6A0Q
	aNzFw7uAF0QoJ2GDe/GZkEZABI7XVK8=
X-Google-Smtp-Source: AGHT+IH/2OyWscjqAAksdhRQNOC4OIoyyN9RuP98a7Vj+dPJakNfOV1ajfMkDjXARNt4yZcnpyz/5Q==
X-Received: by 2002:a05:6830:14c2:b0:6d6:53fe:2181 with SMTP id t2-20020a05683014c200b006d653fe2181mr8180371otq.26.1700497367786;
        Mon, 20 Nov 2023 08:22:47 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z13-20020a0cfc0d000000b00677fb605c8csm2549561qvo.55.2023.11.20.08.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 08:22:46 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: rockchip: dts: rk3308-rock-pi-s add gpio-line-names
Date: Mon, 20 Nov 2023 11:22:32 -0500
Message-ID: <20231120162232.27653-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_082253_553540_5E794971 
X-CRM114-Status: GOOD (  10.76  )
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

Add names to the pins of the general-purpose expansion header as given in the
Radxa GPIO page[1] following the conventions in the kernel documentation[2] to
make it easier for users to correlate the pins with functions when using
utilities such as gpioinfo.

[1] https://wiki.radxa.com/RockpiS/hardware/gpio
[2] Documentation/devicetree/bindings/gpio/gpio.txt

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index e9810d2f0407..f2d7251de298 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -250,3 +250,61 @@ &usb20_otg {
 &wdt {
 	status = "okay";
 };
+
+&gpio0 {
+	gpio-line-names =
+	/* GPIO0_A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO0_B0 - B7 */
+	"", "", "", "header1-pin3 [GPIO0_B3]", "header1-pin5 [GPIO0_B4]",
+	"", "", "header1-pin11 [GPIO0_B7]",
+	/* GPIO0_C0 - C7 */
+	"header1-pin13 [GPIO0_C0]", "header1-pin15 [GPIO0_C1]", "", "", "",
+	"", "", "",
+	/* GPIO0_D0 - D8 */
+	"", "", "", "", "", "", "", "";
+};
+
+&gpio1 {
+	gpio-line-names =
+	/* GPIO1_A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO1_B0 - B7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO1_C0 - C7 */
+	"", "", "", "", "", "", "header1-pin21 [GPIO1_C6]",
+	"header1-pin19 [GPIO1_C7]",
+	/* GPIO1_D0 - D8 */
+	"header1-pin23 [GPIO1_D0]", "header1-pin24 [GPIO1_D1]", "", "", "",
+	"", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+	/* GPIO2_A0 - A7 */
+	"header1-pin10 [GPIO2_A0]", "header1-pin8 [GPIO2_A1]", "", "",
+	"header1-pin7 [GPIO2_A4]", "header1-pin12 [GPIO2_A5]",
+	"header2-pin46 [GPIO2_A6]", "header1-pin22 [GPIO1_A7]",
+	/* GPIO2_B0 - B7 */
+	"header2-pin45 [GPIO2_B0]", "header1-pin18 [GPIO2_B1]",
+	"header1-pin16 [GPIO2_B2]", "header2-pin44 [GPIO2_B3]",
+	"header2-pin43 [GPIO2_B4]", "header2-pin28 [GPIO2_B5]",
+	"header2-pin30 [GPIO2_B6]", "header2-pin32 [GPIO2_B7]",
+	/* GPIO2_C0 - C7 */
+	"header2-pin34 [GPIO2_C0]", "", "", "", "", "", "", "",
+	/* GPIO2_D0 - D8 */
+	"", "", "", "", "", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+	/* GPIO3_A0 - A7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO3_B0 - B7 */
+	"", "", "header2-pin42 [GPIO3_B2]", "header2-pin41 [GPIO3_B3]",
+	"header2-pin40 [GPIO3_B4]", "header2-pin39 [GPIO3_B5]", "", "",
+	/* GPIO3_C0 - C7 */
+	"", "", "", "", "", "", "", "",
+	/* GPIO3_D0 - D8 */
+	"", "", "", "", "", "", "", "";
+};
-- 
2.41.0.327.gaa9166bcc0ba


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
