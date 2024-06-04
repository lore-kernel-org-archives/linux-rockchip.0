Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B604C27C50
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 14:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/5bAm1sn9l8VSxj2pXk+AOIV8ohxj9X8LhFE0R6n8I=; b=ISZH2JsSUBKF2T
	0ehHnCDvkTdYI9p5f0CsKy39U2cdm1wl5fhcbbu6L/oXQVVDSGso9+LqfwTlfXjmN0+D/DJG7/5p2
	HO8cNREc8YRhHF38ZUNdaT9F0qZazbD/DCoQhpLty1h1NpkI2qdVAm+gkj80zBhbvwVcxxZXHKGjF
	crOEUU5BwyhpyKUSr6LSJiSXU1X0PpASnoU8Dh01Jd3y3zQ+j+GvMtBCrsASjWXQIzaA54nIODOFw
	rTD67PtVPlQ7XZBZsvjgdy3c2q/ag34CVskaGIv7DZ6uaK1D/OU6wySj5LkouuxypcRwl8XMA7lo7
	dXyj3VNj4Icjv99gb7fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEUtg-00000002ds5-1xHr;
	Tue, 04 Jun 2024 14:12:20 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEUtb-00000002dps-1txa;
	Tue, 04 Jun 2024 14:12:16 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-52b8d483a08so4545518e87.1;
        Tue, 04 Jun 2024 07:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717510333; x=1718115133; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SmSb1T/VVTzErPc/hVH5RhenzFyIr1nmaXQZzXj2G2k=;
        b=ARzGibrrmjizPHVbxUxJXjYNCJw4Zo0nVQ1JHK8kQU7Fl5BfdKRG+boOzkSZhFLVFX
         yozQybg5Zxb65igJOG1ByonrPeRVxI9GS7s1XiSUtAvOtH1pONhGbU77cMBeXOT6//+n
         bMTXfzoROdSUCVb5bRUTUqBkw+5McmrzTZtq3o4mDxdwqonry46XhU2tdfcBE9czbt9T
         r6XsrOF12gBX8t3AVl7lo1QwKAL46ivBofK68XlPBPj0+TXuF8ATeT2b27jhQSyCNcw8
         i7YHf6+oMswdr3/324H0F4KFHqmy0ouYIUDZd1GmnMBpGCRWP9GouX53dHdK1J7xct7S
         IZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717510333; x=1718115133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SmSb1T/VVTzErPc/hVH5RhenzFyIr1nmaXQZzXj2G2k=;
        b=e6A+azTPNyH1mZxDXRzZkGbzXMCBOqEt+Wj89b7IlhBxN98mnmNacEGtQJo1eO78mO
         Vt8h4uWnSuc0jM9UgQBnjzTA+qoSAxcEl3HX1nL9IzMPOFJ8ot/j9aNiitfhTzdLjoOQ
         K0gN/p83yngGdzYCkfaVAYsB15+cw4FwQCLL2bI168vg1l1Z3AkM7b/jJMbfBnrKiRzo
         Qn5mC9jB50+GLfA/RKodjGf0PCZ5GZ3oT7aPfReEHi0R6jTY9U9hq802qbZbN249SJ+f
         lhJyeBWQMm6qdPa+O/xJ3Vj2TDwATTd8PV3SGQw/igtlcuoe0S0aHSDpRWoNSxrcIA7h
         d4GA==
X-Forwarded-Encrypted: i=1; AJvYcCUudEe7mj7MwN+kNbpETT4qwqVFeKno0JOSobJ1VSJJbki3vL2E541R07fgf08rwLsIPFcwaTjEr/oDCB1sDw4nqsKr4aN3R1VWwJ4dTwMWj2QRXFLPdQOCOSJFIAYicjGoLsrjhmPp/iqHyRwXZEJaIa0QdsXhTpw=
X-Gm-Message-State: AOJu0YyJUlcRsfs5bfq1y0zYOUbWYLUkQMUa6oMqnCWFc2TxXhgTeq3e
	YQ9En+o4cLwqL75x1XXLKuYPhKRDdWnGIrhq52Wt8TqE92fpLwer
X-Google-Smtp-Source: AGHT+IHYQNbt+cYQfc7+Uhr8tfuad6kxVxl6LzEFNoBOEmCGkZdeactT1NLRjFLrcC/X7wM3oRe0vA==
X-Received: by 2002:a05:6512:7b:b0:52b:8843:b084 with SMTP id 2adb3069b0e04-52b896bfa33mr8318743e87.47.1717510333160;
        Tue, 04 Jun 2024 07:12:13 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b982d3de7sm742743e87.2.2024.06.04.07.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 07:12:12 -0700 (PDT)
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
Subject: [PATCH v3 1/2] pinctrl: rockchip: delay recalced_mask and route_mask init
Date: Tue,  4 Jun 2024 19:10:19 +0500
Message-ID: <20240604141020.21725-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240604141020.21725-1-dmt.yashin@gmail.com>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_071215_518895_4B6579CF 
X-CRM114-Status: GOOD (  14.78  )
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
index cc647db76927..b252d1454ce0 100644
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
