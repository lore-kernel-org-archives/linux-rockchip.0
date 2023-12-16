Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B546C41535
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 21:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iuL3gOtl9nzpXt4X6MhVV4cmK5pCq4kAWJhkutgF//k=; b=3sOv/9zrz5fWto
	9iTCPpdWBu0+oieq+zz73hXZLvwpoGyKFy6vJIQfmSP482SnP/UmEaH9wmsw2B/3SMnyRdL1AVtKR
	+toSPIHrnlzYjYjJlc8exSh7uq/9LV/rBAwX+nGGdTf8uMKT+RLryxAOu+tx/7nS8PEdxzEzlYO5X
	XRALJLshIlBYsk8ZfZTfiU206y4CvryKykUJNghiEnSXtdQUZLoSOV1bZF5kxG8C0gUfWX7VMgiO0
	QNkAiesb2+0bZ8YZ2U4oJpzs7+KtiEe69E8p/xvb8Q1yvnwP7mMtNLYVjFj9nbNHC/ErbOPYtODbu
	JGY78ggjvP50YbGTDtsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEc6l-006jo5-1E;
	Sat, 16 Dec 2023 21:22:03 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEc6h-006jne-1k;
	Sat, 16 Dec 2023 21:22:01 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c41b43e1eso22388995e9.1;
        Sat, 16 Dec 2023 13:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702761716; x=1703366516; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ep6QV7S0LD+l2v1oGCSbwLCeiUsCxqLVqe3qakJ/WRg=;
        b=l2OgVZz0r9hDsbabTThfZiuDf6OuPUIO6kRt5iy6QUKfC5zEnbqb32i2IpZ4cz8f/t
         oDrBui02E09zq6SMEct4jYYBC8j2rRjaWUtzUzklpjbO4rFwZ4cIiMU+YHIJ6NiSypOl
         y3xkRVmTLFP54vJsM8LYxb3MFiDsACgk6GjBspVDDuDqEe/JuQ6IkLetMhjslJWAx+3n
         fIUEz0+8TiMcxxZ6Zr1q5Daz3wihOg+3M3qNVXRqkT6xy4wb6SY82ig1C3P+aBnGEFWY
         /mY7cuCNZWnyFY1n0oOMpFAtkbVa0D3mxeJ4w1ERrW4SMBsXRcX4AovBiuTi6gQJENgM
         Wx0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702761716; x=1703366516;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ep6QV7S0LD+l2v1oGCSbwLCeiUsCxqLVqe3qakJ/WRg=;
        b=mqwKFZaqe4UlDyilfQAk6RiJQBuSeWdfVpj6x6DLiShOrTGR67q4LfG2APRZUav8EK
         5791ptIdV/ACgel6zBdvXcuq9Kh2EfKyOJlPwsx7xMmXzXCEnzPLy+AuJE02V8KtQVdY
         KxKgf6I2j8MUZQWSg+xjDsojyC/ds+AQz1oD4h8+8WJSikSBGSB1iZjIzi26+s84eCRP
         RwA0pLpA2SajMlNuNWsrL43U1OwEUFBIQqSkGDu8IhZLc5H5qEDqN3KpaxRkqj0F0TPr
         M3BMf+ZW9tWD4IEOebv+yLWQPac+x4H/dCL62EaifsopdB+oGoukUgqLI9p3ELq3GhXY
         mkFQ==
X-Gm-Message-State: AOJu0YyAKq3KVjqWTVRprWAXGNyzw1DuD5vLcmI7eQSy4LyV8W0RRDjg
	5ZTB4+ak1Y8jSLI5VQ5jsMU=
X-Google-Smtp-Source: AGHT+IG7B+FTcFzeYXt/n4qfZysDGamT9Gb/+0TSs44EIYdfPhgymDIRV2BJdHte+Snez1QdL4VB3A==
X-Received: by 2002:a05:600c:444a:b0:40c:6e2a:70b with SMTP id v10-20020a05600c444a00b0040c6e2a070bmr1307239wmn.12.1702761716244;
        Sat, 16 Dec 2023 13:21:56 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:c984:6cfa:50ea:c4cb])
        by smtp.gmail.com with ESMTPSA id j18-20020a05600c191200b0040c6b667dccsm8166767wmq.25.2023.12.16.13.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 13:21:56 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Support poweroff on NanoPC-T6
Date: Sat, 16 Dec 2023 21:21:34 +0000
Message-Id: <20231216212134.23314-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_132159_603130_F206AA0A 
X-CRM114-Status: UNSURE (   9.44  )
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

The RK806 on the NanoPC-T6 can be used to power on/off the whole board.
Mark it as the system power controller.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 612107615e66..0fc48fb0d34d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -569,6 +569,8 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc4v0_sys>;
 		vcc2-supply = <&vcc4v0_sys>;
 		vcc3-supply = <&vcc4v0_sys>;
-- 
2.39.3 (Apple Git-145)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
