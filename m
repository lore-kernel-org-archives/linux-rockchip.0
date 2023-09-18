Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B076CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 17:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuksy62d8UFMI250MMhbkC1snvF5APQiwscFqJekv2I=; b=wDPtSyzESW2A8g
	ppRply3D+foSDkzTiFE7PI7m1Dxn1rD80Zs8ccnciHtasVH5Ls7teLxhu/6BGTggcWGk6zeKhXvID
	RnK3ppC/y82kv/BlOUZ90fU5smCUO8+iWjdGeI/aSnMcBmfLRtOxZAoIMCmSXKJGxgp0R3oSHneqf
	nllEgZxX8UNE9dq66+ynzKyR9RIsGayRvMivXfBgaffXkfjm/xLA4vzs6SchmHe8yB3+KpSpFrV+E
	/S+AFrb0W9IEGK5x5cwC/GtzzyqYGLWadWAvBknj0TG0IazZxmUA9hmn6CZHpZrk/1kxSpgr/9Co2
	aNO9UxJhbjPb/lRF8amg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7S-00FzkA-26;
	Mon, 18 Sep 2023 17:33:10 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiI7N-00FziR-2y
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 17:33:08 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6bf01bcb1aeso2873616a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Sep 2023 10:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058384; x=1695663184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XK3Zx4cA9xhlrAxpKhxgK0rFJrxd0HOs9F/T85uolkQ=;
        b=MG4vvIO5JX+pSee9ibi3NWnkkuaP0fsjmJORjEcCiB9EoBEIwTdvlsSUHmaidBXLmG
         z8VnUt3UjxSVMRKhXQJ4Tcuq/PBRlradiTu/Rz6fznlip6v2kCFx+UaYiQnl/lENYL6f
         0w86/3yJ2z4wSzpgfdWFvFAl19HjwyyS3l7kRAczfuSn55rjMaliuKpk7aLktWXwGxJv
         PLLSY0e2bj6dJPmx3gfw6I/laHeuX4NAG+RX029d9jiJwb7v8uRX9Wv8gL1R5T0eKQfZ
         dnAzzK2HobFcko+rDUgokvDvvP5c9u9j12bzjEVZ5Tqf2dRv+/v2QeMx6knPfJeRAonX
         i4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058384; x=1695663184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XK3Zx4cA9xhlrAxpKhxgK0rFJrxd0HOs9F/T85uolkQ=;
        b=n/20JDMGMt/3tDqFyvCWZzJ6tC6i1Jr4Rbpa6uWvMwPZJPeY/XYZDgEzwGRTqMmgyG
         vdVk3m8OemW1LDVW36p7dqrePk16o0hNKdR05lbTD+51QmpXXYvvPz0HqomYIixtsxyr
         n0FbVaz+5Zs/Z7vaaOZpEn+wc6NNbuox6NtcPpSp+9hDSd5xEsTkRNYbfROwbXv1OPVh
         nVmz+aylsczbBKzM9pbg8TGWEUBZ+G++Z6PhP4OtE7SY/SZ9NVngETwuF49jc1UbDGNC
         KCsBLjS4QfvJCNwB0eJwWn7qNqv0lXrrRlROEXKJJZE6DsOHDboZUF+9F3UOnoKUi2mU
         A71g==
X-Gm-Message-State: AOJu0YwT5UNnsXGppg9cJFh5lM7l1+PYi/rK8rTDiZmBeaBjJ6eVhgvB
	MNh0Fm6yvjlD5PByEy7vSas=
X-Google-Smtp-Source: AGHT+IG099pZXcuRlYWQ4u4WN0bBrYtPwrlrp3XmF1JITM2fdMwNCInhOudAchYGgcQDm9Og8WM1Qg==
X-Received: by 2002:a9d:4f0b:0:b0:6be:c1b:ded4 with SMTP id d11-20020a9d4f0b000000b006be0c1bded4mr10608390otl.3.1695058384590;
        Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Add saradc node to Indiedroid Nova
Date: Mon, 18 Sep 2023 12:32:55 -0500
Message-Id: <20230918173255.1325-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_103305_958821_2315AE88 
X-CRM114-Status: GOOD (  13.14  )
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

Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
found on the device. The buttons are documented as "boot" and
"recovery". The boot button is used by the bootloader to boot into USB
recovery mode. The recovery button use is currently unknown.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1e2336d3065b..60f00ceb630e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
@@ -11,6 +12,34 @@ / {
 	model = "Indiedroid Nova";
 	compatible = "indiedroid,nova", "rockchip,rk3588s";
 
+	adc-keys-0 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 0>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-boot {
+			label = "boot";
+			linux,code = <KEY_PROG1>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
+	adc-keys-1 {
+		compatible = "adc-keys";
+		io-channel-names = "buttons";
+		io-channels = <&saradc 1>;
+		keyup-threshold-microvolt = <1800000>;
+		poll-interval = <100>;
+
+		button-recovery {
+			label = "recovery";
+			linux,code = <KEY_PROG2>;
+			press-threshold-microvolt = <18000>;
+		};
+	};
+
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
@@ -410,6 +439,11 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&saradc {
+	vref-supply = <&vcca_1v8_s0>;
+	status = "okay";
+};
+
 /* HS400 modes seemed to cause io errors. */
 &sdhci {
 	bus-width = <8>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
