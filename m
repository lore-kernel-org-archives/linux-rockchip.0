Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F10DAD3C526
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 18:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i8WSBhhBQRCazeDW7sit099Tp5Wkwfr+6he5zmUrXJ4=; b=BZ1iH+cHMdNG6b
	M0tK2xNztldcadtVZVzFoqmf449eaclLpkPjnuoV4HNp4f2+m8un/EEhoErLH/KIpr1HDfHYpnnNt
	fwsrzKucEvW1Wp3CscaGRAFb/TTJVPmW+KlGAHz60qaRtsQmcTHiVYLl0UE9d2apjejkaJ00ngFqo
	0PiSMMQ+WLF9MJPizHqVpuI2GUKScnFgymU3IRTftUzVGbi/uoGHsoDqnYpozzlr+aCnYVz2cTzkS
	YJAw/icbXXtFabw5GrP+dPVu61anNLszUXbE9nrJu1CJFXH7sTCEF4oPjis1jYyZzMT/hP3uj+v3g
	PxiPK/Ad3TVXRflglPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1VPK-0000000Ftmi-0Dyq;
	Thu, 17 Oct 2024 18:39:34 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1VNO-0000000FtWz-1qSl
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 18:37:36 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-539f0f9ee49so1554035e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2024 11:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729190252; x=1729795052; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=shUsrE0U6Ism8xV7T8jvrxBc+yHbE3QtMiBXDOtC8xA=;
        b=gb3Qj3e9JwApYEoS4KHbHgtcXkKIUxMPC7bO3p0FzNsxhTzNb9ZlO1ktSKm8JCVTt4
         6V/b/tmKe9KzocFcGAcX3zpDK/dHdcMmVf9HCfomiLwYfk3rWvDYPEvgv4aFMH7rnnKb
         hPAP+U7FlfwEtK2aeFEZ8wQtSypCeMRL0OTiuA7OunMeq3pk36d5P8CHbt34GDsGQsae
         V2n7h8kz6XK4WGY8QcyMaMjlTDw3swINKPyeAw9u0pJLi9ifowVzs4Cb20v/IDydFrNM
         w9axsXUzNAgD+K906gTzQ9GyXhSRqr6topxzGKkzIDqjPJPMuGXpFTtPqa3T0E6y+GME
         pYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729190252; x=1729795052;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=shUsrE0U6Ism8xV7T8jvrxBc+yHbE3QtMiBXDOtC8xA=;
        b=WOttpgvogk13YSYioFSNIq+BH7OBn+68Hf1pE2KKHeHXlafemCGQc0vdE8eVdTC7hS
         W0KTCWHfSnpYqC1JlXy66miIfcHsRjibnh4L6E5e67lL48gWbTumdfom9oMATS8LCM6m
         l9lfWH6rpZXPoT+IhZ65J0wCvN+igJm1b2/NV9N4jPYm1Z2Jy+K4YxOJGONVC3+iopcm
         l10luMP8n0qN8Ioj/A6jrcnDbmCbXyQLdZ249PQXW++Ne+WH1gmdp5Pq6eptfMf1P7z7
         2qbLLS0YatFUTbp13jcUJqeokFigBWbE55IyXJkEYT9qOWJc4z2Wd8xrjduIMbzSRYsD
         /URg==
X-Forwarded-Encrypted: i=1; AJvYcCXI28tVyfxDZC3KCITLUtZyb1DY3obOGucfBlgmRYFFTIzoKxPOoZ2C9gLE5C8xTmiiAeoGUpzbg6ZMyCAGkw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrZ/zLlgCuCMXQuiLOcaaII+XkGq+krsPOYcIqm9x3TNjN7JTd
	cV+2pzIu5zBT/0Z9pd/vr55sA7os3WPthQVHDAiysiGz59js1yMr
X-Google-Smtp-Source: AGHT+IHhBzPjkxhlbfY6H4Eei5Q77fOwDnyHdTDBz+JMJFUw9lIwDAYZZXy5mysMhlAATzd9pRSapg==
X-Received: by 2002:a05:6512:68a:b0:539:e776:71f2 with SMTP id 2adb3069b0e04-53a03f82444mr6217384e87.52.1729190251921;
        Thu, 17 Oct 2024 11:37:31 -0700 (PDT)
Received: from razdolb.local (static.40.223.216.95.clients.your-server.de. [95.216.223.40])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a0000abcdsm841221e87.210.2024.10.17.11.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 11:37:31 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
Date: Thu, 17 Oct 2024 21:37:28 +0300
Subject: [PATCH] regulator: rk808: Add apply_bit for BUCK3 on RK809
MIME-Version: 1.0
Message-Id: <20241017-rk809-dcdc3-v1-1-e3c3de92f39c@gmail.com>
X-B4-Tracking: v=1; b=H4sIAGdZEWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Nz3aJsCwNL3ZTklGRjXWMLCzNjoySTlEQDYyWgjoKi1LTMCrBp0bG
 1tQDo2FVYXQAAAA==
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Mikhail Rudenko <mike.rudenko@gmail.com>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_113734_515553_8E5A608C 
X-CRM114-Status: GOOD (  10.17  )
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

Currently, RK809's BUCK3 regulator is modelled in the driver as a
configurable regulator with 0.5-2.4V voltage range. But the voltage
setting is not actually applied, because when bit 6 of
PMIC_POWER_CONFIG register is set to 0 (default), BUCK3 output voltage
is determined by the external feedback resistor. Fix this, by setting
bit 6 when voltage selection is set. Existing users which do not
specify voltage constraints in their device trees will not be affected
by this change, since no voltage setting is applied in those cases,
and bit 6 is not enabled.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/regulator/rk808-regulator.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 14b60abd6afc..01a8d0487918 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1379,6 +1379,8 @@ static const struct regulator_desc rk809_reg[] = {
 		.n_linear_ranges = ARRAY_SIZE(rk817_buck1_voltage_ranges),
 		.vsel_reg = RK817_BUCK3_ON_VSEL_REG,
 		.vsel_mask = RK817_BUCK_VSEL_MASK,
+		.apply_reg = RK817_POWER_CONFIG,
+		.apply_bit = RK817_BUCK3_FB_RES_INTER,
 		.enable_reg = RK817_POWER_EN_REG(0),
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC3),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC3),

---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241017-rk809-dcdc3-388632b4da03

Best regards,
-- 
Mikhail Rudenko <mike.rudenko@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
