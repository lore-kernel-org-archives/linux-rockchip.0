Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FCD1C00A5A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 14:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XMtgvovTDm74oQ3WjVt1/vTBe05tclYsxswh73raMgA=; b=blSypV9lEo3Yvo
	zkfnchFNjAhVFt4Nev4oJNsYa8v2hOo87Bgw6OVL/j+188aMXdfb7PAOyvPOfBtOnL6Yowj9GqnWU
	SujeKkzgoNQX7mwAORUmSbh8dK59EBpP1lQRBdWexTqGrweXiLWI4aVQIfq7q6Vw8EuM93qIV4acy
	YHYUjK3phw1yW2mtTCpou97ou8i09D3jvId3+9Np82f85kLmEH1r/UnWjsWB6fHmjmsXXSfTEOj/B
	nKwxBVHlPv10gLwT+mDkNpZ2MY9wIZCLbWc+PXiuU1IP3P1byAULDV4wmKfM7XbcjY/264JEvIkcj
	NyOutDig/LVHzBsJx9bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVT8-005CYl-N8; Thu, 19 Jan 2023 14:00:42 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVSx-005CVw-Bv; Thu, 19 Jan 2023 14:00:32 +0000
Received: by mail-ej1-x62c.google.com with SMTP id ud5so5914364ejc.4;
        Thu, 19 Jan 2023 06:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5nhXtkwWxCqczJgyl/G+oVIZHRqmQUVsu8qAe4yutDM=;
        b=qRn/j0NfPcUBhFkrjwPaRG0kfnyqomU5L8Uu0C0yP4/kno4f2gKw9fqzUnwuLa0u2d
         LpDpaY1Z11XegkqV+ezn5bg+YcrB748Biq2Lm2W0GKovSY7MfAgdMiNU0+OFgbM0KLnL
         T1si0aFYmOApa5wDuVDy4YpUuUHG8o2qwYhvmpjNINmyZUkbo1JxVUzKG+gsXK7e8/SP
         ShenOdA2tPFvW96PkVDjZirvLbw6x4eWLFSug8CUqGocAgmnGMQe2o0yEreu/gJCNNVA
         xV1pwTO51DTg2JbLQsmQyR///MwV9MkLie8263npBOnYvvU6VHu/6a/N7Bq3HMppRhK5
         Z7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5nhXtkwWxCqczJgyl/G+oVIZHRqmQUVsu8qAe4yutDM=;
        b=qq31u7n0Ql2/vU8t3xkeISsQer3jm5xslXi1N58sZzfj+NW2FqK018ZXlS45dCP8Rv
         /BAjnBgcPJWmPQ+m9Zw9h4IhAXut9lcpGosBTc9fSH51WjnxLdDPpm8g7rWJgpjZjQA6
         V1S21oCpoQ+MEEwi3An/YrXrLp68ONCzdp9oIcDH3RXkgWf1kFxHuEmCxqzo7MBe5qkT
         TLTT3cVVuXb/402zjThzzlnEptusIiI/i5xIj2KYcU1BOtr0YDYgzViCVoJrlQZ+TqHD
         us95JGrxigT1uM4FAPrs8H7o2CQWlnPVf7B/Dt6EminCZtVZXUpV5rNlK+jl7lsm1it0
         +uWg==
X-Gm-Message-State: AFqh2kpFXlbf1L3PHBHkYOVNEUaVcrXqj9tUM14KrmJWp8Cz6omiv1Xi
	Z1y9Q2vG9H5chq8gf42SjN0=
X-Google-Smtp-Source: AMrXdXufIwdwaQ4Q6337XG0zwWnwHq5J4E6m2rvnrrrcYS8U7J9jbLgUuUFelGA26kq69th2z+hltQ==
X-Received: by 2002:a17:906:b806:b0:84d:430a:5e63 with SMTP id dv6-20020a170906b80600b0084d430a5e63mr11123910ejb.27.1674136827752;
        Thu, 19 Jan 2023 06:00:27 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id mj19-20020a170906af9300b008776e2fccfesm1105409ejb.72.2023.01.19.06.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 06:00:27 -0800 (PST)
Message-ID: <91a339b3-f233-d7f6-54d8-061b1cd6a6ba@gmail.com>
Date: Thu, 19 Jan 2023 15:00:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [RFC PATCH v1 1/3] gpio: gpio-rockchip: parse gpio-ranges for bank id
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060031_453606_691C94FD 
X-CRM114-Status: GOOD (  12.98  )
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
 drivers/gpio/gpio-rockchip.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e5de15a2a..3eaa1a5de 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -706,6 +706,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
 	struct rockchip_pin_deferred *cfg;
+	struct of_phandle_args args;
 	static int gpio;
 	int id, ret;

@@ -716,9 +717,14 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	if (!pctldev)
 		return -EPROBE_DEFER;

-	id = of_alias_get_id(np, "gpio");
-	if (id < 0)
-		id = gpio++;
+	ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3, 0, &args);
+	if (ret == 0) {
+		id = args.args[1] / 32;
+	} else {
+		id = of_alias_get_id(np, "gpio");
+		if (id < 0)
+			id = gpio++;
+	}

 	bank = rockchip_gpio_find_bank(pctldev, id);
 	if (!bank)
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
