Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F79C4167D
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Nov 2022 01:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yrU9ep6B57Ib7ec+vwmrxIOwz3JWAZPnSb38iaDrgRU=; b=aHQwQ1HNjUbT5+
	Phs8b8kqSF6K5ERndErEFDmhsJ1VRlvwF429gDYIv/cklxrkURidJRvoF5/ne9GDjRzTaFc69/sty
	LGOiTaWo2LN9JLa1HHzW9TwmGelTBb5ewr8hY8MgBvHyajEs/irkVHX+/pj3McyV8ryvkr0cZWEve
	eDMpEOKZMrP1f7N0+PdzBu0V77ee+2X4X4Y7C9suCIi9A4Q6iF88SUxdpUaWSu+yDJ1mj8HCEKA4e
	vrdVkg0gyd6YljrN444JYFjryOVDko0PS/s4KTx/47qAPGLsh8PTQb5v4jfLSQKeFlLHYl6ErAHy3
	mhrMG8LUS8p8dvpx2WPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyjmJ-003JRj-Ff; Sat, 26 Nov 2022 01:14:47 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyjmG-003JNX-Nf
	for linux-rockchip@lists.infradead.org; Sat, 26 Nov 2022 01:14:46 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-142306beb9aso6896247fac.11
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Nov 2022 17:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AOsNWoagzgRZODcbmXOYo+O0l9ki/Luu3MhVCoRxO4I=;
        b=gz4YAyXMWnkDMoS8FoSujGQTdDxbYNBTRT7Ck/9I64JMuecdiuBroS9+Vac98ZpnDI
         rQLX01ZyFwT7dKOVKIYdT0D7nh2NOPPe9j9fMwPiqc/GCe8ndkFRA/5cdxvx08qGc6j7
         suY3SVzryAs0NBrh5fYJPQ+mjt9ucN06Zpi/BMtDhqHHL7s6aVptWySYxV/rWNK3gGP4
         5BHjx2LR43cFRQpa/kFEdkNsEKWrbOwnRVIuebiSAHmIYkkb8K0tx7Q8tzYTH4cmESs/
         ZcgSTMLy/sa+9HX8P6m2CW5vwtNTWtDrnjeLFpCI074z/k2OJNU4Lps+vJW/nyFI6gIk
         OIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AOsNWoagzgRZODcbmXOYo+O0l9ki/Luu3MhVCoRxO4I=;
        b=L6gYtT4wcnkTVuPZRABs/i88gPtDD9YTpXtDKpIKMARtEDQCJB6gMc0zK4KiZQ3ZcK
         7l2DWY/3GXo3QTmr0Ap624CBM7CWTPoJMC+6mv3Yw80RKWxrFwujjuZGEZsH822JbKTV
         kdMpg7peJ5jyaf0UjejWLFAxZlUDjJ3cC5iuyr2e/okdtjZgk2/CjF7kOiH4EI/5+S1L
         hk2QmUFbD6uPJAJB6qTQvcC29dM5IuLe0mS0AoI1iKqaReaBDNegx4VsN/IG6mdQG3OM
         zY8MLeJnzZtslsZFMf7/JwRR3+O+B9pkvMnaV8ICw8VHMMr23jgEZnOnOvae9TDMfDky
         Sl5w==
X-Gm-Message-State: ANoB5pkPM4A7ERPA6sjwZQZIYsHH9A1P1FW6Szx+KEi7Ls9dxoYuQ0tj
	SVi8xcPyOTVLr/OTuaUC07g=
X-Google-Smtp-Source: AA0mqf5UNLW6ajg22soHrRtX6fbml+/xf79Ypr1Yvrbl/wTGQgPbIsguE1qdaszdxWWzj6KwJYTweg==
X-Received: by 2002:a05:6870:9f8c:b0:13c:5763:9406 with SMTP id xm12-20020a0568709f8c00b0013c57639406mr14829608oab.200.1669425278820;
        Fri, 25 Nov 2022 17:14:38 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s191-20020acaa9c8000000b003546fada8f6sm2066177oie.12.2022.11.25.17.14.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 17:14:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
Date: Fri, 25 Nov 2022 19:14:31 -0600
Message-Id: <20221126011432.22891-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_171444_789173_FAA40189 
X-CRM114-Status: UNSURE (   9.52  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Hynitron cst340 touchscreen driver to the Anbernic
RG353P and RG353V devices. Note the RG353VS device does not have a
touchscreen.

https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 20 +++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 13 ++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 63cff402f3a8..06222dead921 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -95,6 +95,19 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+		status = "okay";
+	};
 };
 
 &pinctrl {
@@ -104,6 +117,13 @@ spk_amp_enable_h: spk-amp-enable-h {
 				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	touch {
+		touch_rst: touch-rst {
+			rockchip,pins =
+				<4 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &rk817 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index 885234a023e1..dc3fc67f5853 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -82,6 +82,19 @@ &i2c2 {
 	pintctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
+
+	touch@1a {
+		compatible = "hynitron,cst340";
+		reg = <0x1a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-0 = <&touch_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_LOW>;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+		status = "okay";
+	};
 };
 
 &pinctrl {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
