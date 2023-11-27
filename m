Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2C3AC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 18:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T5o58XsxCq+w73theIS681YZtx+OGfHMXHaLBpNnBmA=; b=C3r4qSzTl1ToOr
	gHZTUxTxfqwjIrlooTKL1Zz75DCXhi43fQjeJyxmUFh9Xmv3wlNjqEDOzRp6P36el90y4zHC7F3KG
	YcUmLR8F8ZPUIUfaGZ7K3iZ0oCuGPdSxmKkfHkp7JSIvGZkfeVUWF/AyO7ocpHqa8avDu2a8t03Rm
	8M2oP38fbRejfuFD4usGO7Lxe4fsuttzeWcGwQtT/hBk3/h/UNqnDwHPx1WlLcHsgrjKXTck+5Qup
	EWIkVPqNyFmOftdxtg2xwUpsCS3c3wwo+NCyYsiz+jD9dstuqnosso2XYRgr4AExQtRDzRKKqcdIj
	L8Y50NxdfKcu2bbyBzlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7gdx-003FtO-2f;
	Mon, 27 Nov 2023 18:47:41 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7gdt-003Fst-1f;
	Mon, 27 Nov 2023 18:47:39 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a011e9bf336so635287366b.3;
        Mon, 27 Nov 2023 10:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701110856; x=1701715656; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=feoucnNh3cnG002IsGWyER4iW7pfsWcNc8v7OfR+1cU=;
        b=bRRn6pOc36HXHbLUTbE0g9buog45a5mWEZd6w004/w/QjYWuQRROjdHMD0zxp4wRAL
         0NHTzdg28zJKrALUFEPyJiIaOhz1/EIclaOA9wQf+YHe10qiJ/Ehmfo1hBQ/hCoqip/y
         SNSajxS2om7dehE11tu3gZ7T6kjbmmORgQNPqZonm0G6Z6n1wWX+tI2FM4/f1hzV6n6v
         hDyox502p/VMxWe9K+aV56nT4OlVvAgpo8QykKUuKHUL+37y1Nin96oWXAIhxcxUrBJ2
         zR0k98TrsxNs5Ro1oFtyTAIFf0TIk2KxhkeY9LCLgC2o2C41H1G0wqjgKwRCs1gXyjC1
         T8PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701110856; x=1701715656;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=feoucnNh3cnG002IsGWyER4iW7pfsWcNc8v7OfR+1cU=;
        b=XJfW1CX3U8l91gfLBr00kdpXVqhpcC9H7kQPmabBQyBaHlbFG7tTuIHjA08IoaMTJk
         x5HY0kr6jR8CIJDwdA8MIIgP6xXdOZT7jvw/H41dNcfE5g/ONSS9k8JOxFDsEQkmbmVj
         tk1esphTEvXS8vN8LXIdvq+KFTWbOjC8+m+nWJGtUFxAMuymyzfrtp3ft/PMSMRbN2Zu
         6v/c6QrUa6/okmuMhmn01J5FpiSyXfEM+Wb2CiJZ6vu8BO9x01n02tl8pbcDZfPe0vhc
         oliUDm7cnQi2Ul84PZvNY3k5TxRpBDPGvn0d3Q5uU/6iUA0pQYh+W4Nhst4fCidmME/n
         FvWw==
X-Gm-Message-State: AOJu0YzjGIap3QjuC3UH7uYQVIewq+5od3BXqeYaiccai11FY5rdf45B
	ITldNipenG8Dikr+gXoQYQ==
X-Google-Smtp-Source: AGHT+IGNIXVWpAF/Vtmt0THD1hdYjxHh9x8U6OL7SM2ONORvUymzeJ5XQxWTJ/AmZWmVtFH1/xe/cg==
X-Received: by 2002:a17:907:a092:b0:9fd:ab4:5859 with SMTP id hu18-20020a170907a09200b009fd0ab45859mr10100668ejc.66.1701110855697;
        Mon, 27 Nov 2023 10:47:35 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:370c:d8f:2dce:7367])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906009a00b009b9aa8fffdasm5907725ejc.131.2023.11.27.10.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:47:35 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Fix sdmmc_pwren's pinmux setting for RK3128
Date: Mon, 27 Nov 2023 19:46:44 +0100
Message-ID: <20231127184643.13314-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_104738_185723_A74AF665 
X-CRM114-Status: GOOD (  13.81  )
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

RK3128's reference design uses sdmmc_pwren pincontrol as GPIO - see [0].

Let's change it in the SoC DT as well.

[0] https://github.com/rockchip-linux/kernel/commit/8c62deaf6025

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
This should have been part of my XPI-3128 board submission - it uses this
pin as GPIO and adapts the reference design in this regard.
Originally I had this as an override in the board DT, but later noticed
this relatively new commit in vendor's kernel. I simply forgot to add 
that commit.

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..b16786e81c08 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -859,7 +859,7 @@ sdmmc_wp: sdmmc-wp {
 			};
 
 			sdmmc_pwren: sdmmc-pwren {
-				rockchip,pins = <1 RK_PB6 1 &pcfg_pull_default>;
+				rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_default>;
 			};
 
 			sdmmc_bus4: sdmmc-bus4 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
