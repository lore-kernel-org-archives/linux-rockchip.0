Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB8BC54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zz3OCtAGFxIJQYzeS/vMNrXgON/mKF/HMbCgeKMBrPE=; b=Ak9znFmHhmcXXx
	+OBwnDZLD/mD1rL8lto4NSvu62TJgFfCaQhRbISBpyeK2ANbpeBkqIL0zE6DBGh4q61x4SrqvQCqp
	LN/xBOisQsSiXwJrw/BpyQFRUANZ0bZhROtfXT7vp+MbrFmMACxeFq4GP+Nshwvul3kLImPNRxuac
	A8opQjQ4kT616twMIa7eMtq6hNRCbSOWMBuBT8a+dwbliJFXyuOjY4/AEBJuXI8/rQIdx99zYcMBL
	kP/puEVuXW3gbyDeV6aI0LSJbBuBswSQhzH7/vh5S2zZP9ZMne4/2MOmSkwTwmGM5JMwzL6fT9A2U
	Jh5ODJGEFq1ORlWOCWeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJaV-00000003JCv-3x3Y;
	Thu, 21 Mar 2024 14:40:11 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJa6-00000003Ito-0tIx;
	Thu, 21 Mar 2024 14:39:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a4715d4c2cbso86399666b.1;
        Thu, 21 Mar 2024 07:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711031984; x=1711636784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LydLOROwhTaCdZynw6Kh4hckrTZmMO+b98vvkEN6A+s=;
        b=X61b++q9nDN/osaR6fPJZRNDyTrQxwsPwHsHJpLsuZaTevHW4eggNB7cfnK80gOjbY
         agvtBCWGJjxRwV0MP3/ordYA1qb2a4PgO5NRX6E0N46QdzFryJH3/g1s4RivV05ywkkN
         mnZCF4LVdYX+1oreu1L8oONNWmOvSQ0yWxempmW4S4ip/qyayHcffzaot4xZhtMps1tF
         mc5SAVeLNa+h9OgCsEQz41JpOfukh6l2AfQusCuCkDhWRYzSUvyjXM8CNUvb0z4g0fA0
         ZsOUPkHxpnl4QcNh4eYSu0HASEr5d7/22NrL+/437PSfB7ocs0cry5KWWhAhIn2heUiS
         uwnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711031984; x=1711636784;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LydLOROwhTaCdZynw6Kh4hckrTZmMO+b98vvkEN6A+s=;
        b=YSLb/MvMEQhYRfr5FzkyJXiTwnTe7SPVJNSMhxBBhZubyqvnAv/EGgmlLy/uYkt4j+
         YUZBl1QC7ZMU5kABSdAAOZ8UagmSuFXajR7C+zumIjthDNfpU/OZPvGEuJprEJjUmjZG
         ZZAj+dIruB5JqL87zLN/qh9zJ/lS0Y9JCPjGDClXAbSAX9mD0yERlgI2XwUzkhDnZkBx
         bDsXC0H7iWhPDMOvPcY4Q/CJk8s3PmD8MVZpOClouBQ787adQDds1zYFM+YQrLBqL2yg
         defz9uLcqsflL+ObyLTJXNiEqeVJIELj890Eqg7gd5GJa/DtYpSOGzOJzoPrjs3OyieP
         4tsA==
X-Forwarded-Encrypted: i=1; AJvYcCWMK7xniHt+cAIextbBCVn+zrCmSgf51slRreGGzgrmZvPKfil1lXRUAlmc1PbQi07XfpOel3PMUomGTSMi5LDOyAjzBCQLBYQMWqqlFHRgP/TaXH/L0kCI5I18oW7DCYJgyL8a3WY828BD9KxSKGAXDOqFi8XVXfM=
X-Gm-Message-State: AOJu0YzjuAF1HHnbFUHyoHCjwhnszf+Wo67hhAtZ71Ksz1rH/p/DI+5O
	vCW9IyOqCWiE/5/FE3fNODrKCu/U5HBdtnRICiIscJ2ng9LjFkM=
X-Google-Smtp-Source: AGHT+IHH3uZgNQyrPnC5b0jWraJRMEbzRmtQtPcEw0er8UiT9MbitrNSKUukclX6EZyeBR499tLRkg==
X-Received: by 2002:a17:906:f908:b0:a46:ecdd:6a2 with SMTP id lc8-20020a170906f90800b00a46ecdd06a2mr4149893ejb.53.1711031984307;
        Thu, 21 Mar 2024 07:39:44 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b39:dab4:8e20:e918])
        by smtp.gmail.com with ESMTPSA id e3-20020a170906248300b00a46abaeeb1csm6147923ejb.104.2024.03.21.07.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 07:39:44 -0700 (PDT)
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
Subject: [PATCH 4/5] regulator: rk808: Support apply_bit for rk808_set_suspend_voltage_range
Date: Thu, 21 Mar 2024 15:39:12 +0100
Message-ID: <20240321143911.90210-7-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240321143911.90210-2-knaerzche@gmail.com>
References: <20240321143911.90210-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_073946_491268_938EF434 
X-CRM114-Status: GOOD (  13.21  )
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
