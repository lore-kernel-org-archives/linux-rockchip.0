Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55923C04FF6
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 16:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stn+OO0dsQmoKE9bngTNYweX5U2C9+lCG0JvGHS8EG0=; b=gV1g7p2T8SY0LV
	vesZH2yi0vHNWVuOyQUexGy+rSAoeG8nThMebAFrUMQ+4SrUtYVLW1Htm5MROlGpB/cnfTBj5kKh/
	aIzLRjlLzBbleE2QQW2yYhi6J+NwYkVMB5wwkVx9RdkrZ0bOAfkStlmb3NnMSJJZoGF6tCSep/djM
	09WA41y64OFalIjpZrcckeox1w5sxFcYw/JA98ku75MOOIRTrj0h3KBAuyiYaexoXYja90Sqxcqk3
	YN12wsDpr+hNWExEu+czlSYOjwGae7LIOaNQT+0at/wwViGc62e2FmJDC+5+l9n2S4uHud2yp8gut
	SpAxeKaKwv79e2IWtl6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQf-0000000Cwhg-0dfL;
	Tue, 16 Apr 2024 16:13:05 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQX-0000000Cwcn-3udX;
	Tue, 16 Apr 2024 16:12:59 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-346b09d474dso4394044f8f.2;
        Tue, 16 Apr 2024 09:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713283976; x=1713888776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=dR7lMGhSfyeM1x8r7cFyN26LfF/kymXmTwgoLuwBsXQvNqkFHe/X3cap9ntqp+0IWG
         PpHYCN1pwNTQZbi7mryTmUMufCWCywmwbetSHk3mFz2QxWT0vT/8L0SGKnV7NF6INPWz
         jOqViRmnwNMV2MYE72p1p+qdt4bN8FaS5I7iBna89bObyYegVbsEuojCrPfa15apMRgP
         2fz31c0pGbT+F243Tk1YcuB5NH3IxUOw/Td77Hs+jAIZ1VnZQ8QQ9sWaFQOfMPOCuLOu
         jlwRKqJeAqyhgqMtFBwBJbwlqpvLdEhd37ZkNiFn9xDtqQd5rdv+hPI4FPqab5AUT78Y
         wrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713283976; x=1713888776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8zwG1vyYusOfDUs/yU9E4qQ9XIYsM0NPCoK6QrfbLsc=;
        b=oaoPnSmsMhIQBO0MPkJ/Ll2IBHUtbI+cqtmcx6f3HWxphdP+/tFadf8Az/yn/gkMYw
         /2h5UI7CoYTfc/hnEo4daDNvuJ8IDem74oqMgwsbc59E08uzJ730MsRJnrduxdXNv3hy
         vQQasuoyqV5TpmP71E1xh5udCKpGg3Id/0MMhD0ED6ruQZlSEJ0tgnYkzZMwG2h/AilU
         gG2gqKIGo1THrqDgfzbG6eJdzVpFKxIUgQ3+LXnHjZSnb9D6/iLf/ZSf/gdTOTg7gB9i
         dFLfrdCdNz0gnHPiKnO0KRDAe5yIF1h18g6QZcQJen+4GFKEvxVgm/yNBYKE+4uC4CGc
         rtng==
X-Forwarded-Encrypted: i=1; AJvYcCUDh0xhRXEjFWpA2zm/lli4txi3EqMtszk5lZHcolePMVdrkDd6nETNZMS8a7UMhZvwW5UAylT/B9VnlyNlgA+n4tiekH8/HlWb6mZdKrNKVwNCKqmriY/IeEKe7TM6D+1iThkCKua3l159FR3RZF9zBHdhDizmEjA=
X-Gm-Message-State: AOJu0Ywguhd0ZLWF7gb7PStulM0lDSSTCev6QLs1C1IMwNvGyKgJZr87
	QJYptZblsTMRFni/wedB2bf0qZWaZNEfwjTH4GFeoF1zIDU+9oA=
X-Google-Smtp-Source: AGHT+IGMe+iJYkDGt1YjasP0yrXzRUUjO+gHKNh67XOXBew5FKSvCvjpXXd96vum10Rf276woMkZ6Q==
X-Received: by 2002:a5d:6888:0:b0:33e:cf4d:c583 with SMTP id h8-20020a5d6888000000b0033ecf4dc583mr10316960wru.16.1713283976632;
        Tue, 16 Apr 2024 09:12:56 -0700 (PDT)
Received: from U4.lan ([91.66.160.190])
        by smtp.gmail.com with ESMTPSA id t7-20020adfe447000000b00343eac2acc4sm15350743wrm.111.2024.04.16.09.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 09:12:56 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 4/5] regulator: rk808: Support apply_bit for rk808_set_suspend_voltage_range
Date: Tue, 16 Apr 2024 18:12:36 +0200
Message-ID: <20240416161237.2500037-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240416161237.2500037-1-knaerzche@gmail.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_091257_992718_F94A14FD 
X-CRM114-Status: GOOD (  13.43  )
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
