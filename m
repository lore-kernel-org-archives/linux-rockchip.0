Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20450C61D97
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 14:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/I79GRX5XN1IO9lOSu2WXSO4N1ZwJ9or8hSXqVH5Ogc=; b=Kgr6HEaIp7I6Wn
	i3r48TydN8EGMbJlJoE04uNdmlQwALXTnWofi/CK4JBIPzzj9DoMWOSKLohYV1ezMdYmjof06wpqk
	+jqwNR3BLHHxgZDcZob/31lq54+ZWCJgF8UE3KcJG52oP6SabrU2zEZEJ9RIQfJMkGKjJ3ar3Dbqc
	0w8HSYAsu1Qja+aMCgav+G825UkT1TdUk0vZFW+akxEtgc5lHq0aOZO511FINdT8IHEQEGJfKe6Pm
	y5gNagoEPHQlqyjlftPZpijcDPXTsgoUWQmg3UF3HtGVz5u8pdJiAVGglAjdkytulRpg+/wOGwAx4
	uN7Zrqnl2s4FvywMGcAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8iz-001ZoY-2E; Sun, 29 Jan 2023 14:32:05 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8it-001ZlP-RH; Sun, 29 Jan 2023 14:32:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id me3so25233769ejb.7;
        Sun, 29 Jan 2023 06:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SIsYvjDlZhXseIBbB+cVw5ndep5LtZPlaWmi5dbOsTU=;
        b=MG0zYJDEuwdAIPlKTrUz/tAIjgDecO7da5aOjlPCt7ezTnZ3WgOceJliclMU9Pazqn
         L5dGHo3y0fEB15rgAiisrsMFa+3jXGtLedc0ONf9sBkC0778amcL2vHCDKkUxC4jdhMT
         L0rdAhvn8wVieQsB1oAkRsDJ3Nm+CF1BtUuyHf7VPOdNSRzLqHzgv/SclP4Frd+cOG6i
         X2ENBpIDZWQgCSXsc7QISY2Rh49PaEbED3Zf2tNTKbt5TzReV7RmffSXlgodgbATqjEb
         MHDIrbXq6HkYyWVfAE2XkUFSTeoREPo5WWPDuDI6ENlcV3w93U76jE0ms0yYIo2l/e8u
         a3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SIsYvjDlZhXseIBbB+cVw5ndep5LtZPlaWmi5dbOsTU=;
        b=HGnMNOSAiSv7VXU7egKsJ7Cx7VVJWpINrhGxQO3BhNj4UN9nBpDm71Ktr4+FkVOzpP
         CBGMcOABcTvGac21KrzJbreqJtDDwMjIbzhWGdymljLP+o5MAhhtmjfM0mlvGjeboTOe
         sRxXTuYykaUanc5A6kS2QFXGXjmlKpMKvP4m0X133B2/FirJ8DCTWNPog6ySdsDz3i62
         FRywiueOUiVfUVgXuog5UDLf90XGqDLjO+eYh1DRE9i1R71qA7So+he7FBhD1pDLma3h
         kQeyS5/Dpn7S6tcno4oO7t+aqA31o2Su6+4xplI8KdEYHJl6Jp/z/TuOYdU7jgqkZOl5
         tpvg==
X-Gm-Message-State: AO0yUKW2S5mSW2gdRQprf8O9+f3QLJtuK7LNhrzjt8R6DEBkzBlAQJL6
	fI/z63PpTS/Q9yYUYSjvWQk=
X-Google-Smtp-Source: AK7set9Opdxx1Q5nZgj4I7SG11bJhP2LKEKpWGGYInJD7QBsb0eZzG8RWYkwDjUBL0J/cY+nvl432Q==
X-Received: by 2002:a17:907:6e90:b0:887:915d:7502 with SMTP id sh16-20020a1709076e9000b00887915d7502mr2229039ejc.31.1675002717970;
        Sun, 29 Jan 2023 06:31:57 -0800 (PST)
Received: from localhost.localdomain (83.6.123.74.ipv4.supernova.orange.pl. [83.6.123.74])
        by smtp.gmail.com with ESMTPSA id jr23-20020a170906515700b0086f4b8f9e42sm5410128ejc.65.2023.01.29.06.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 06:31:57 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add display support to Odroid Go Super
Date: Sun, 29 Jan 2023 15:31:41 +0100
Message-Id: <20230129143141.173413-4-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230129143141.173413-1-maccraft123mc@gmail.com>
References: <20230129143141.173413-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_063159_999042_752AFDC5 
X-CRM114-Status: GOOD (  11.58  )
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

Note that orientation property in ST7701 driver is currently missing,
And that ST7701 panel driver uses different regulator names compared to
driver for Elida KD35T133 driver.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
index 842efbaf1a6a..1b9769ccfdeb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
@@ -142,7 +142,9 @@ button-sw22 {
 };
 
 &internal_display {
-	status = "disabled";
+	compatible = "elida,kd50t048a", "sitronix,st7701";
+	reset-gpios = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+	VCC-supply = <&vcc_lcd>;
 };
 
 &rk817_charger {
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
