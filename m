Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68369C25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 14:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GO6IGAe6/o58Mq0BIKC35TidwbOnH0Ek/gCxZ+nh0aw=; b=erWhcKUQ0mqsaF
	0OaAqoF20WaLnBnPjgfJXVQWT7gTFqBI9gjiV0ndyk/dxNv6NqB9eJO9tiUpIVuyBHNF1beuP8o53
	QGBC3qRX7lPR8hdJa1JUF7hEsZgc3iuIvfufC/daXk5gUImlmzeDhWUBRoG8nTRuDDaXC/I3Ganf8
	bKr1oX02gHYKXkWojMwlF0Sikzw1IIQ++u+r0bn8SHq4WUkiG8VlqrsCiiduKEDsV/OgV6zNB1tWW
	F81PgwqUHjXG6gRwe3bSjmmtjurLQ4nJsNIGlNB1tZMYLaLlyH9f7vHGPst8kSlTzQFEgX3JNH5BB
	kWpqzL89sx0YUvI/ME0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54Qt-00000001fei-2qCY;
	Thu, 09 May 2024 14:07:39 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s54QQ-00000001f8E-1474;
	Thu, 09 May 2024 14:07:13 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-51f60817e34so1124287e87.2;
        Thu, 09 May 2024 07:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715263625; x=1715868425; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BojjtcE4PW8Jg2RRLDbuh20R8FtUvCT6KeHyvo0GHNo=;
        b=M6eSanCUuPvVxP0FaX0As51nXgg541G0efGv9T0XmpLh9hYKsZ/Kgfiin/bwUshDJs
         NJzgujYJHk5rBrfqNOZR7HoTaY3wmEOyMovn4A9k2Gg7U+iz2PJ33C1wLb5oslJr93jc
         SpWf0ZpKFMsZDx46+r9R6pCmu05hp9wbyCGrUHgfpCGNS3spbAVq9lgyALltAOW4h1/L
         oLR3LgfeJcnx8Cl++kWsBfVYEm0xse2j3njeZ1zBJC+urqYylZnOGrP+Mml9TpIrAntS
         2opOowB0G6L42O+BS4Ci98oc2C/YgymhztaawhxHnqm7fu+GqHl2ZLvXO1S/3a8BMHhY
         aDyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715263625; x=1715868425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BojjtcE4PW8Jg2RRLDbuh20R8FtUvCT6KeHyvo0GHNo=;
        b=lPuClECj2eDt++3J5lnMbaP7sWrMCfDKDJSiZi0nZy3hl3Jtsdsvmvzu+XCLQt4iCe
         z6SqcKQvAHFDI4s3oh6bapWhP3doJI7mMY6BUeJ/6eTx9zN0Cv2OMxoNk0G3hNreqZkC
         F/UHGl7PiaH+rg7udaV9LlSNSmDOqvavAzDNiIbiLa07V1/rZtJgKcARsEtPJ/shaNuM
         EJMUfpdCdn7pmHVdxrteZ7Cm/qqBtJ/XvSSXnExWbmkYe7EbB+L5i6106QLI0mG0d4MQ
         7DrxiqnoOFNvhklX4Y/taZOS/dOEWDxjHGdHS8FU/KQCWUmdIzd37fHyiLeNL49ZPIFd
         XKvw==
X-Forwarded-Encrypted: i=1; AJvYcCUs6XKWCQgWnjW6f1+XTo87kAmE06eMYrUQ/gP/VLLWturcSIrwDX/8TQoHomMSKXnrszPxo8k6qDch6daVkU5myTcVXVraXBeIKzqkH8CBFZ5zT61ambe/kQAKxsBWAd6TFupJ7GdpT+f1Db8/RxuPOpKLJGM6HaU=
X-Gm-Message-State: AOJu0YxBKsG51pAGN8dPU8zcKnVxdFU9PX7YXrnj9ppDwvYPHt+VQZ2Q
	cxO+vWr1ULer/nXXz/nxs6tsjyxfoRaVNvFKoKxX3+uZyDdQZn+Z8eyt
X-Google-Smtp-Source: AGHT+IHh+dso5MhBn431TAWM/uD/cNhYOwNyyWPRjGSzNSz1xBMrETqF5hbahKDBfppAyPHSKftcWQ==
X-Received: by 2002:a05:6512:40a:b0:51c:c1a3:a4f9 with SMTP id 2adb3069b0e04-5217cd48861mr3707317e87.64.1715263624613;
        Thu, 09 May 2024 07:07:04 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502baad058sm1793311f8f.66.2024.05.09.07.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 07:07:03 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 6/7] ARM: dts: rockchip: Add D-PHY for RK3128
Date: Thu,  9 May 2024 16:06:52 +0200
Message-ID: <20240509140653.168591-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_070710_402571_CBCE2D85 
X-CRM114-Status: GOOD (  11.52  )
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

The InnoSilicon D-PHY found in RK3128 SoCs supports DSI/LVDS/TTL with a
maximum transfer rate of 1 Gbps per lane. While adding it, also add it's
clocks to RK3128_PD_VIO powerdomain as the phy is part of it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - also added SCLK_MIPI_24M to powerdomain
 - reword commit message

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index fb98873fd94e..fbd95bb08cd3 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -216,6 +216,8 @@ power-domain@RK3128_PD_VIO {
 					 <&cru ACLK_LCDC0>,
 					 <&cru HCLK_LCDC0>,
 					 <&cru PCLK_MIPI>,
+					 <&cru PCLK_MIPIPHY>,
+					 <&cru SCLK_MIPI_24M>,
 					 <&cru ACLK_RGA>,
 					 <&cru HCLK_RGA>,
 					 <&cru ACLK_VIO0>,
@@ -496,6 +498,18 @@ hdmi_out: port@1 {
 		};
 	};
 
+	dphy: phy@20038000 {
+		compatible = "rockchip,rk3128-dsi-dphy";
+		reg = <0x20038000 0x4000>;
+		clocks = <&cru SCLK_MIPI_24M>, <&cru PCLK_MIPIPHY>;
+		clock-names = "ref", "pclk";
+		resets = <&cru SRST_MIPIPHY_P>;
+		reset-names = "apb";
+		power-domains = <&power RK3128_PD_VIO>;
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
