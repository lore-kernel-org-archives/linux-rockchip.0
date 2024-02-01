Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC35C4828F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 15:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ALwlbQQ90AnnWjZuOAQG4WH2+JKIAF1db6w4/YXDc+w=; b=cOhcn6jy19JAZC
	PofyEDVWTQ882oH3cVyLYQ0ErkGu822Tuk/RqyhMqSGzDcFTsRkKWy2LLjYLuaF/ed8rNrORnmVTy
	OLjOolwJgyXDMAnlwn8dwb9kHebuxnut/eQ0ABn1Ql9MQKoyVDzHwa3x5o4tpLMjWxyrTb1l2C3Bl
	CImJNfMrpcX/TWTDRszAhN/zWvPFGc2/DXk30KEhW7JqzB2tJf0J9oduGYmAYwZJVb48zyD6CiJfe
	Whv73TOHZ88RjqeSgld4AOA7NCgyKn8kc5Y4f+eVlxAs9z4L6BCBqEBHp5seLV2g6TgFP7rZOC2hX
	AfHH/tk3RY8sBQJlqUEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYeE-00000008N2C-2N1i;
	Thu, 01 Feb 2024 15:06:38 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYeB-00000008N1V-21j3
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 15:06:37 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3bb9b28acb4so714221b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Feb 2024 07:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706799991; x=1707404791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7V3dhLDDeVG0FMkRqXcHl9bSwZHFa+HO/bVpbOmkDAE=;
        b=NYMHlFDjjb5KkQAG+qsAOfngcUDX3SJ9fBN65RfOr8EXJOW9+xd2nY17iPAZhjeUzo
         M8zZOI9oV0A6WR6lah4YEwos/BwxUJjONPz9ltjXWzokUVTIYj+u0BfSbEVG/8CSEyJ4
         3WzYDztTZLC8iil4L6EBBRvzHQiCmzOZjWBaS+ekfvSZV0eeTrTnjfJsg2G3W6dJHKDn
         tOlsU5SpUu0lTVCgfsCUGWLR0Lv/KSIucP/jbhr35Yc5tYeke5Ab03YtFO2xW/Z+G6a1
         9YFLquPORmw2+CT3OMcCJbycP3JA7OBYjqJY43y7rsGyF5HvJEro/cYzBRElLzHUo4N3
         SP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706799991; x=1707404791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7V3dhLDDeVG0FMkRqXcHl9bSwZHFa+HO/bVpbOmkDAE=;
        b=L3mE6HsqhvkGMEtvCCLzjYrcuDTj/bsfxeYRbHsNdT9rhwjZLiiUNg/dUYM37EmxWX
         cW2v/FXGJ9XlFZeQM/xIXM67kUiO1n1Sm5ozk22uspD4kIhJGJokhE02RC9ccRv4fKUD
         E1eFyGEYXB4mQbOy0SGZaNU4zr2TIX6Fu383jKkVkn2Do2P4XxdC1lBop+/bwWAJX2Sn
         c7Wa86m5G4OyfH2PdPJN7BNIzseB9cycR8TJdjfkr4rGqRwDCOgMTo3Kw1bRYsfsIeXZ
         WY1EbsaprydpbTRCvRnisnaqKej7MLRsMuAVLhLBE6DQlEZwh6M+NjQTpCFi18tpnD70
         RjhA==
X-Gm-Message-State: AOJu0YwxG6KUZsJbeKSM4aqx6p65fabessqN5bqP3RJDJ0Wwrf+p4WYu
	DyZ3Zldhn0xk6eLrygbOcAtr2KluNvLCD58WjE7VLdVX9opvDOxJxKUr0HVy
X-Google-Smtp-Source: AGHT+IGMGUKsarRxxcCpyIike2J4WFPYe6V4xaPOmR6nyzgtWgMYvFvdhO6ZHxKZn5TeppPBYnwzSw==
X-Received: by 2002:a05:6808:3020:b0:3bd:da5f:4af7 with SMTP id ay32-20020a056808302000b003bdda5f4af7mr6148649oib.55.1706799991502;
        Thu, 01 Feb 2024 07:06:31 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXUvo6+Ulg6dUlpLnA3DRlGAzIKoSEz87rQrf3YKiKgRG+yLbuPxUzrLlwkHPxmROKNKZY3ZwC6RSV0AU/GIHPDeIA8uI+vJMqAGAnmNta8WqtA2y/vgHYKQ+O0b5meRh4rEI7T5SnoKMTww2PjzLzKDXv0x1jfScKZqh7xwtS30egJXcXI/LKJvosoBGwlINm9LaOrJBSMcvkKhLmpB6MBQF9hNAELU7XBY+WEhSUoRNwgMpK4i8O1eco=
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h23-20020a056808015700b003be8122a4basm1184437oie.27.2024.02.01.07.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 07:06:31 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Trooper_Max <troopermax@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
Date: Thu,  1 Feb 2024 09:06:20 -0600
Message-Id: <20240201150620.886786-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_070636_657190_4F55C3C3 
X-CRM114-Status: UNSURE (   9.49  )
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

Add the Goodix GT927 touchscreen to the Anbernic RG-ARC D.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Trooper_Max <troopermax@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 26 ++++++++++++++++---
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
index 795fbedc3c1b..a4e68e82fc06 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -19,14 +19,32 @@ aliases {
 	};
 };
 
-/*
- * Unknown Goodix touchscreen at i2c2 0x14. Needs testing before it's
- * enabled.
- */
 &i2c2 {
 	pinctrl-0 = <&i2c2m1_xfer>;
 	pinctrl-names = "default";
 	status = "okay";
+
+	gt927@14 {
+		compatible = "goodix,gt927";
+		reg = <0x14>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&touch_int>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+		touchscreen-inverted-y;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
+};
+
+&pinctrl {
+	touchscreen {
+		touch_int: touch_int {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &sdhci {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
