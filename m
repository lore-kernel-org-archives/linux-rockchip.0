Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5A2C004D4
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jan 2023 11:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvlBb1pgfXjJwb3t7sWtwXGsdaYfoWApPDH6eK20gCY=; b=E1F2tce/QK42iK
	qZDw0emlaT7GwJNfkwIWksKpI59XwhEzNXJRZzUwEZIYBXQNfE3cc8KE5KSUnFuJO2Jlu86nCBZal
	n8+WlKnrVxsp4IxDMShuQwj5pbk7LazMXfAwVES07qYAb3mqDJap2fK21UCg2ANx8xheLajuiQk/B
	IMNarXsryXdtWilPigFHOB+6Pzn6igG8x37UapD6xUGtKfgAuLJBImDy0w8E5ajxN9gy4BcTW8wEv
	AlgEMsei2SvPT0bpzTrpf4vepZSXtvuTkgDZ8c4TqsGYhz+3rOXp7/B1sHyFpdDdM0pbmGeBBocL4
	bwZ/Ugfhj/c8a479C5Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBk7-00DjTU-0t; Sat, 21 Jan 2023 11:09:03 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJBjn-00DjO6-PD; Sat, 21 Jan 2023 11:08:45 +0000
Received: by mail-ej1-x62c.google.com with SMTP id u19so19816895ejm.8;
        Sat, 21 Jan 2023 03:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v3b7+rhgpzwNviPg8rPLBXq+7U8FJNnHoMKxitjzZvU=;
        b=lLQotlq9YYZaxdFooJZBoQlundnE/fFNTBIAufPgr/zxzvpq8RhkaAMbyjX8ENQCop
         tODPr0V5RMIZq/b5tIbV3IsWQRH6obQHk+BNmMuhdk5yAQ9btE29bAlUeR6HOtpgCuBC
         6eXGrsSfDpkHEnVPCFyumF++ZUi7v6uwIHKvnF2AhVAslIstX/Oqwir4n2aOqy1JKxkx
         EBy0n2A+hY6c8mLUaSQNtZRIZ2RSPYnCgkgS4PmDKxG5z1nDlraagUPFNHiHexp82r8d
         1rOTi8wtBlShKMGtZG9xUY/j7yOH546QcLdreQyhXrcTi1wTVwp2+6JvJrPz8S+HtGXZ
         pi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v3b7+rhgpzwNviPg8rPLBXq+7U8FJNnHoMKxitjzZvU=;
        b=kBZT7x/bdndBw2+RCpObS90rFz73gDq9KjxiGszjDbl3BY4GZt06J9P5trcYYByo4N
         1VSKZF8n0fheyckJiH1jxWOckJ5DzHrJJ7U34X4ebkgTo8m9lQoPw8Hpla3xJ5yhcMTz
         3nCMuV4TC+9vTolCp8RuNqbEjXmSJqU8TqgaJWb0iKUtxZDTEDrp6ytPgeRoiM6Niv+H
         iddZIcY2wVsLjPISaWHoCODESBFXVFKHNTZm3AlvU75ufifa8frOTZwW1I0dz148A0o2
         3y3jV2va76CX8fqoYasR413QtWE6/cJUCoCW+IpbEg0bZR66j40xEfooloO9N676QOmz
         etaQ==
X-Gm-Message-State: AFqh2kqrXKDeWCYjIfRfYyI3HCKv5kOtjTaJPB0AAHZQ5yFS61QG+9fZ
	jaCg0g4ih2ByAVl9eFoTz9o=
X-Google-Smtp-Source: AMrXdXvnOIE3+iioq9IO2ZumHcM3PA+mj8N56wKlF2oayqC2u2XW5HIy0DBO2GVHGowlLY8GH4BASg==
X-Received: by 2002:a17:906:1605:b0:872:41a5:7c78 with SMTP id m5-20020a170906160500b0087241a57c78mr23807819ejd.3.1674299319795;
        Sat, 21 Jan 2023 03:08:39 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id vo13-20020a170907a80d00b0086a4bb74cf7sm11582476ejc.212.2023.01.21.03.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 03:08:39 -0800 (PST)
Message-ID: <890be9a0-8e82-a8f4-bc15-d5d1597343c2@gmail.com>
Date: Sat, 21 Jan 2023 12:08:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 3/8] gpio: gpio-rockchip: parse gpio-ranges for bank id
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
Content-Language: en-US
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_030843_864296_A9ED8AD9 
X-CRM114-Status: GOOD (  14.67  )
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

Parse the gpio-ranges property in Rockchip gpio nodes to be
independent from aliases and probe order for our bank id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpio/gpio-rockchip.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e5de15a2a..df74b71aa 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -702,24 +702,36 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *pctlnp = of_get_parent(np);
+	struct device_node *pctlnp;
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
 	struct rockchip_pin_deferred *cfg;
+	struct of_phandle_args args;
 	static int gpio;
 	int id, ret;

-	if (!np || !pctlnp)
+	if (!np)
+		return -ENODEV;
+
+	ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3, 0, &args);
+	if (ret == 0) {
+		pctlnp = args.np;
+		id = args.args[1] / 32;
+	} else {
+		pctlnp = of_get_parent(np);
+		id = of_alias_get_id(np, "gpio");
+		if (id < 0)
+			id = gpio++;
+	}
+
+	if (!pctlnp)
 		return -ENODEV;

 	pctldev = of_pinctrl_get(pctlnp);
+	of_node_put(pctlnp);
 	if (!pctldev)
 		return -EPROBE_DEFER;

-	id = of_alias_get_id(np, "gpio");
-	if (id < 0)
-		id = gpio++;
-
 	bank = rockchip_gpio_find_bank(pctldev, id);
 	if (!bank)
 		return -EINVAL;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
