Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A7D4C27C44
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 14:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gpuqj025szAuVs+Gw/QcnLF/HLg2xap2oLLXWxLXDSg=; b=Vh7MUwwTbiEqy6
	Z1IdY1RW0O9je/FAgJdQmdTyD+LUBxOBQhR+cpRyA9ERHUruAIu1duh6kn/UfTpuSlIHqfiewYmEG
	PDcokpJ1uo7oY7DtkI0h+yVgEzDd1XDmnFLb3aZGeftfpuUaZeLAo65cur7SsP7aggouRr0JV3F86
	972fOChZxWB2egw0U0yGdqIxcGNvFH0vKWn9yRytSTYSid+bd/Tntm5aZGVQdeMS6xKo0xQXPRjgg
	V7wmemxhBDhdRMnInoEOSGszk3JslPRR+/Et0LjvaCh81d8eWRDHUpqCl27Lp8foXHaFwbiief3t5
	tDzEvbQvdzPpgF6cR8OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXy-00000004XEV-4C4h;
	Wed, 29 May 2024 14:44:59 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCKXk-00000004X5q-1Ila;
	Wed, 29 May 2024 14:44:45 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5238b5c07efso2480029e87.3;
        Wed, 29 May 2024 07:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716993880; x=1717598680; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+U+yxJOgIgs6wb05g1Hac981aYp4kXXW0AHwE6o7pS4=;
        b=JOsiV/tCE9wUKFbY7/JmcRnCKXvv05hcuTsK7y33vjrRUZfoxKwBjzQHbnn9q8PM5u
         52Fu3ea67xlmSZOIZwtrEwbDC67Ugkuci+IUUrUcc9ddnw2oIz2MvHRoNAQr/9KDMFMZ
         okZzNELa/0wl8qt3jFOnB6lAepswS+lyGm0l6W/4tmTAB+/ddKSvVYZVHIePzFxHKKtv
         Gkt2RDNxI7WzDMp/rywLQb5Nz7xSxt4oO9npRKxDos9Axff8FaIXgt+CmTuhv9kGxDyr
         u92Mugfx0hYOZyv9RY7BoxHtR2R5KlZ2GBCXUE7p7Q5Wj+myiavk1fqRsvT/hVxGRs8S
         VeVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716993880; x=1717598680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+U+yxJOgIgs6wb05g1Hac981aYp4kXXW0AHwE6o7pS4=;
        b=cKfyJPJLtY2VBzoS1tFcs7IfYtThSEtgGKO9zzgK6SHuqnYj8YkBXCX3wg64gl95tc
         IrM2LV6oz9UgI8HXvUvJmlhkQUiGVB0/Nhh2wyEPiInzpPKqEVLoTt3gCaS8oFrEe/W6
         y+8Zb/l1DquErPMfDtL4pUIUW5+lFtzjPcStpxUsZN9mMZrSxcDY5J8ADgfO1s4yFkwB
         su3zY9jZu+wuKUHH4DtbJKoLh9gMRDrGMRlgQABy9VGGLOCQU1uZg078amswpcYoXNEh
         Hg3oM31huqIpDqIFcBcRzeaG369Ki0OqJf0MxGQoLb80p+LF3SkFKC5MN+65OVITedGb
         9uLw==
X-Forwarded-Encrypted: i=1; AJvYcCXdajESWGeD6mmEkKrsLVQtocdJYHSoYj5MDh1RkqQw2Gi5KrAh630hn6grpnOq7AGOwi/Fdq061LZKN9Kkseq8CxRWMqYDjc/zJBmGosmvbgA6E+T5NjOTjicTsZZaW7Q7OzZpsHoZ/lkmZ3UG9ftMM/sEvBDomEg=
X-Gm-Message-State: AOJu0Ywjne7mfAsb2DLgrIuqiLrTuulWk96vmIbNVH1N+b68lWW6OnAU
	QZuaPQ/S6DWuadX3gOFRxV86af504fFGvlrlEuqh+g0Ue3w90hYZ
X-Google-Smtp-Source: AGHT+IGXSCyoFfAW1lwdv04gyPkv0INTSF/iy4XiFcyte8XtFbghK3TSuFG3iUHYLLffXAwnLyDcLQ==
X-Received: by 2002:ac2:53a5:0:b0:51f:463c:c577 with SMTP id 2adb3069b0e04-5296410a5b4mr9026686e87.4.1716993879835;
        Wed, 29 May 2024 07:44:39 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-529ac903bd9sm928915e87.236.2024.05.29.07.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:44:39 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH v2 1/2] pinctrl: rockchip: delay recalced_mask and route_mask init
Date: Wed, 29 May 2024 19:35:33 +0500
Message-ID: <20240529143534.32402-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240529143534.32402-1-dmt.yashin@gmail.com>
References: <20240529143534.32402-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_074444_379383_B9CE0F0D 
X-CRM114-Status: GOOD (  15.20  )
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

For some SoC's like rk3308 additional runtime setup needed, so delay
recalced_mask and route_mask init.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 52 ++++++++++++++++++------------
 1 file changed, 32 insertions(+), 20 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index cc647db76927..c290c755b4fb 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3170,6 +3170,36 @@ static int rockchip_pinctrl_register(struct platform_device *pdev,
 	return 0;
 }
 
+static void iomux_recalced_routes_init(struct rockchip_pinctrl *info)
+{
+	struct rockchip_pin_ctrl *ctrl = info->ctrl;
+	struct rockchip_pin_bank *bank = ctrl->pin_banks;
+	int i, j;
+	
+	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
+
+		/* calculate the per-bank recalced_mask */
+		for (j = 0; j < ctrl->niomux_recalced; j++) {
+			int pin = 0;
+
+			if (ctrl->iomux_recalced[j].num == bank->bank_num) {
+				pin = ctrl->iomux_recalced[j].pin;
+				bank->recalced_mask |= BIT(pin);
+			}
+		}
+
+		/* calculate the per-bank route_mask */
+		for (j = 0; j < ctrl->niomux_routes; j++) {
+			int pin = 0;
+
+			if (ctrl->iomux_routes[j].bank_num == bank->bank_num) {
+				pin = ctrl->iomux_routes[j].pin;
+				bank->route_mask |= BIT(pin);
+			}
+		}
+	}
+}
+
 static const struct of_device_id rockchip_pinctrl_dt_match[];
 
 /* retrieve the soc specific data */
@@ -3265,26 +3295,6 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 
 			bank_pins += 8;
 		}
-
-		/* calculate the per-bank recalced_mask */
-		for (j = 0; j < ctrl->niomux_recalced; j++) {
-			int pin = 0;
-
-			if (ctrl->iomux_recalced[j].num == bank->bank_num) {
-				pin = ctrl->iomux_recalced[j].pin;
-				bank->recalced_mask |= BIT(pin);
-			}
-		}
-
-		/* calculate the per-bank route_mask */
-		for (j = 0; j < ctrl->niomux_routes; j++) {
-			int pin = 0;
-
-			if (ctrl->iomux_routes[j].bank_num == bank->bank_num) {
-				pin = ctrl->iomux_routes[j].pin;
-				bank->route_mask |= BIT(pin);
-			}
-		}
 	}
 
 	return ctrl;
@@ -3403,6 +3413,8 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 			return PTR_ERR(info->regmap_pmu);
 	}
 
+	iomux_recalced_routes_init(info);
+
 	ret = rockchip_pinctrl_register(pdev, info);
 	if (ret)
 		return ret;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
