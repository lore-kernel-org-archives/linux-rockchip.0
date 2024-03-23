Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61518C54E67
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 08:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stn+OO0dsQmoKE9bngTNYweX5U2C9+lCG0JvGHS8EG0=; b=JaIDDz+0fRmGKu
	z69q5Rp6cSpfIyhP2Dz1ksLYlMTc0rTP+yKDlCToR7aBPsIvgGqMSZ19cNtDsYCsFHFo6WFPcZROp
	6OsB45KBiHxpyvk3pFRNGX94fUfjpNkk3UuEQHfQhleIb1hedlFPeAHkZOYHpoIokeOMHB5CdmD2i
	cPowEsxLMkJDTClAE117VOCz9qbkNtdZLWUfJTtrM74M86wHWoEuHNKVZu4R7nLBZGEgcboTH2EXe
	VeSkY5bSKcmqrYVDf+w17wSJHhtWBgn74U0d6VqooTzClybYp4B6f1xrcitNu9DLUw2RqevYk9k2V
	siRlSMy6AS6+hkc63P9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDw-0000000A14i-2yQI;
	Sat, 23 Mar 2024 08:59:32 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDb-0000000A0s9-3Rst;
	Sat, 23 Mar 2024 08:59:14 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41484f67d07so85945e9.2;
        Sat, 23 Mar 2024 01:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711184350; x=1711789150; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=ek+97F7ucHlgYNm68gPaAs2e9Jl1lPDZkI7YvZArwZTay1asG2HjEMExFw4wqa61Oo
         w21H04kbRpk1azKDJeW4KYpDlTCGCFWjdlWMzKasC1NWlwUrFiZBfVkoBdIEt46EZowl
         /amgbnMu9SWXC3QELzqVXX7U6p+nzZ76c8tVK63f0fwyfTDH+qrBfm8HVx0EDK8HJOcx
         MPCXTGUuRsR1UqaYYo6oeL9wIHki+jMC6bnu5NTC7S3WC6q98ApgAOmqQ12URy5JBbyo
         PbCU6hA8hR6Xq95kk5+2TSsbV8SMo1p1RGz+Mo8hyAkfdxjnj1lzIiGOuUO3Z+gJixop
         oJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711184350; x=1711789150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=jVGQ0r/gYC226oZmE1BHHTcd4nsJmb15mSeZ+UfpPO8JmWmL+auzcsKkLYFcKyJ0WA
         gxBu5VCuVcQQm4IkNQrUgyGaf+ZALJv07N8ntliwg+Ox7pniaoY9S2EaZ8AKt80kIYpb
         oEtgPWVNvx241z3RDJwOhSNpcpbgXOA2KCAK9oStP8Z43LWzXdtKCm6Lf5Pu5rii0msg
         4+depP+uf9OdoRVE8sc9HdZNK9XMAHOd3aOjyHN3MrOYSaDt65w3p+1FxcPNjGLH+aCk
         Ajq20yyhlqPBZhIyCbgauKf9wVkDy0Q0aib7LurlNChtRH0p53aRAYh3C9vyEiPAwrKL
         KZcg==
X-Forwarded-Encrypted: i=1; AJvYcCU/BcmWH5Slzj6MkXhfuOBE6/QukUMzCG0p5d0q82iWeRXLXiy0K3rbZ2+z0Tb85HU3vgjLl2uNamEhi20DYWgTgfUWcAMlQU1C0RoDv0WmNZ+8i6m52PA4q435RhgP9M9Dq16cJ0SZO50KhHOfHn8VAHpslokT8BI=
X-Gm-Message-State: AOJu0Yxo9d6MF2NeJX9SWb/m6vlpWPqee8LQUzhVwwiY6Hu7/bRiz5nt
	0y1AiO6xXmAJsTlvAJKWbWTL6ijAy+QPQ1UelOLXJjM2l3kQNlQ=
X-Google-Smtp-Source: AGHT+IHznD+9+YL+PhMqu1olEuo7dDG11iwTI/3gJ3ZJPkykeHsdd1UQWmv/cHmdTlExvD0zfoxT+Q==
X-Received: by 2002:adf:cd0e:0:b0:33e:7065:78f2 with SMTP id w14-20020adfcd0e000000b0033e706578f2mr1187446wrm.40.1711184350521;
        Sat, 23 Mar 2024 01:59:10 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d6b50000000b0033e93e00f68sm3965031wrw.61.2024.03.23.01.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 01:59:10 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/5] regulator: rk808: Support apply_bit for rk808_set_suspend_voltage_range
Date: Sat, 23 Mar 2024 09:58:51 +0100
Message-ID: <20240323085852.116756-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323085852.116756-1-knaerzche@gmail.com>
References: <20240323085852.116756-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_015911_976585_00C7204C 
X-CRM114-Status: GOOD (  13.02  )
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

rk808_set_suspend_voltage_range currently does not account the existence of
apply_bit/apply_reg.

This adds support for those in same way it is done in
regulator_set_voltage_sel_regmap and is required for the upcoming RK816
support

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
  - none

 drivers/regulator/rk808-regulator.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index d89ae7f16d7a..a6a563e402d0 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -534,15 +534,25 @@ static int rk808_set_suspend_voltage_range(struct regulator_dev *rdev, int uv)
 {
 	unsigned int reg;
 	int sel = regulator_map_voltage_linear_range(rdev, uv, uv);
+	int ret;
 
 	if (sel < 0)
 		return -EINVAL;
 
 	reg = rdev->desc->vsel_reg + RK808_SLP_REG_OFFSET;
 
-	return regmap_update_bits(rdev->regmap, reg,
-				  rdev->desc->vsel_mask,
-				  sel);
+	ret = regmap_update_bits(rdev->regmap, reg,
+				 rdev->desc->vsel_mask,
+				 sel);
+	if (ret)
+		return ret;
+
+	if (rdev->desc->apply_bit)
+		ret = regmap_update_bits(rdev->regmap, rdev->desc->apply_reg,
+					 rdev->desc->apply_bit,
+					 rdev->desc->apply_bit);
+
+	return ret;
 }
 
 static int rk805_set_suspend_enable(struct regulator_dev *rdev)
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
