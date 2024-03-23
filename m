Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4067ACD11BF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 13:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stn+OO0dsQmoKE9bngTNYweX5U2C9+lCG0JvGHS8EG0=; b=Z+FrjAVmXlv2dw
	753G6iFVv26wJMdra+t6YaaaTB/gZMAEX0KOOeQEwsQWTQoyj34hF51kq+5wOkrnr7Ps3fxo1uKnJ
	003iJsDgS8CPw9iiKEJkbb6zAcUkU8Ij9L3/WkmaY6jz6NB1tu3PzCa8bwnf0gKMY9lnTX5IjH0g+
	zVAu7yS8r0VMr+XAuhh4oYRdZQTLY/KzlhNsdqwzHxuBxrJaSQhOCRs0D2n01UFlfQfzACVQyoYXJ
	hoIArLN3ZKIscv3TcEJRpY0W8kyjDqAryLiNEBFlwi+vnyKzL1ocqDrJ4J9vEQge/R9QJPuRIt8+S
	wZmMMC81gdFErX6Fgf0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1RA-0000000ASyU-2L53;
	Sat, 23 Mar 2024 13:29:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro1Qg-0000000ASiC-147C;
	Sat, 23 Mar 2024 13:29:03 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4148581945fso290205e9.2;
        Sat, 23 Mar 2024 06:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711200537; x=1711805337; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=UXxyfAok4qfCVG5RDnsG0KpxyWSyn6lwZxwK0t23SzN6RnAnc9dq21cNF8S1wRb732
         QMgsGCrlTTdu8Wt3ixz/u4Pb95f3tIYvot19BJ+8fngOpSHsf0xWgg1n3B6a3zwWH54g
         Jp6BPn50K7m2N+YNI6J5WH6EUF0kWfwr3st0x1qpbe6qsnH27KkJdiwCb6g7xHuYHgWr
         HEjJZWCOBZhLT4Ys+N1ny064mLQRruipqh9T12Yutq/syGSnM7+ZN5Ogh05U9zl5X8Tq
         RZj52dhvG8x/VuctEy5+2K7VEo5y3MkkXPhKcmvg0c+jRw5K+DUmkDesjUL35irdMFCF
         WpFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711200537; x=1711805337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=n/Oo/H1qziJrsTMQZWRbt6Bd6hAnFfNxix4NvO6ULQYsC6/5CZEtrzK8NTulx9CK9K
         2pv20ZiuGSLeoTUnlWqsKwwxRVliheP8PCQyPoqoKyxLxZW3BdunJyGB77giTLgCB4a3
         bNTAL920bX8dfB9aUAwMPu3Z2iacdeuxigkXPMTiqwtae76l2Ok+ZVKc5+p00o4LOzdJ
         wMb9jlNWjOGrxez/VAaLheI/lUYIOaBo2+mRLvrULqCTptdRxbrMOKaJMiouQMHCZ/g7
         ihzROKXZXi5q8iecQGUYQbMGS0eL+7YfMGQ0wNbhcvQOHherrC2JRJMl0ThEaz7Ussh3
         Nr6g==
X-Forwarded-Encrypted: i=1; AJvYcCVaYEp7rbKTs6kQJU6BNqZTaHaTcS+Gt2OmwAcIt28HbwQVU5i3iJ8iBSxvnv1qMlfY58qxzoRmRLZCmC+hD//NaPGUkpzxkdhMGkoZPgVTnFIskv+6nILJT6dFrd0EXkqTQJ8iycriX/wx3LnXiFCwAIg39/uduUk=
X-Gm-Message-State: AOJu0YxxbeSfA0cqaZnJqeYzK0+lk7VhE1EG1VwLPULBbTvpXb15u1y0
	mQ/NfhuW6Yht0oBetJ1+0kZ+W8CNQnRaB5gS7VCS67iWzq6JLEk=
X-Google-Smtp-Source: AGHT+IENR8QMP5qQWKeIGQ/4dPn3qxLpYPx925ZdrXpFlIgCRoyh0lnIm76I/c23VHjVPV1Fe41R9g==
X-Received: by 2002:a5d:5486:0:b0:33e:d461:6c1c with SMTP id h6-20020a5d5486000000b0033ed4616c1cmr1316456wrv.21.1711200536763;
        Sat, 23 Mar 2024 06:28:56 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x17-20020adfffd1000000b00341babb8af0sm3076061wrs.7.2024.03.23.06.28.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 06:28:56 -0700 (PDT)
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
Subject: [PATCH v3 4/5] regulator: rk808: Support apply_bit for rk808_set_suspend_voltage_range
Date: Sat, 23 Mar 2024 14:28:01 +0100
Message-ID: <20240323132757.141861-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240323132757.141861-2-knaerzche@gmail.com>
References: <20240323132757.141861-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_062858_506630_165F9F8A 
X-CRM114-Status: GOOD (  13.01  )
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
