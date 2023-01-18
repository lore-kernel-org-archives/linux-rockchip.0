Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA7DC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 12:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntE2phcqMiUdl/l+KpNknuMAt2lTOm/P+Zbji99twrI=; b=lIwXH8tp3DSC9u
	/4vTkx5gx2HhCBqrnoCdAqa1KZsehvmVcv5/trJSaspl5hlJnePlFLTEFYyseKgVqw8pTGIoXCNop
	7FKDYnZ9I7I9Ruy8/1T3aqBIWP9ClQD3iKbVoTnJfMd9TRsyfI1ij6s8RPlGaagKfvtFUWIa+Yk0a
	vsUcev13CJO1X+VjcXOxjBaKFrjiYfNfYokanbhe78/VI2UfqLsNRlGWxq6q806nWrynKdVO1I70V
	5kES3KxciD4t/Km7eSzFlgFzLBWrUf1Rn9kfKmHy5LCAwcSCBpSbAaLkqCY01dZABw1XK2cgjAio6
	zzKLC2RIqBug+JpiNepg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7LM-000iR0-NA; Wed, 18 Jan 2023 12:15:04 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7LB-000iNu-DU; Wed, 18 Jan 2023 12:14:54 +0000
Received: by mail-ej1-x62c.google.com with SMTP id tz11so18352331ejc.0;
        Wed, 18 Jan 2023 04:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wtk2BXPwNgByM5zuDKe4rCk59dgrkS/p4SHrhV34oT4=;
        b=dRbLYQYxGRZ9Qu14o1s800Vn/SHB+wdv54SmGe1yNc6KvREEPnXhkbtebRRmvk1H01
         sLNE3xiLyhr1qi4t3owWDec2qXeSfbaFyLSyKiuXv1066wfMg6cY4OrdgbJXX0+g/2QO
         V5G1W6BMQCdAL6+T6kdEyaXFs684e6roz1FX3O8VnY4iSiJMeX13W3Y39q4jnmyz7vj8
         g6frVN9d3Vzb7E/IQP6PM8gLuc9emKDFQg9dqix6PiXtyyMvarllngsiKid65dWz6mh3
         qhmXv/vtUUkcYMs0Dm0nOEhjb4pDkuu3XykFnZvryWJIsycHJixvjhNROFo6jws7q00Y
         mRag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wtk2BXPwNgByM5zuDKe4rCk59dgrkS/p4SHrhV34oT4=;
        b=XL2lej+0mDa0US1q/v5wjcyoiP02IqtPDaXVEgPY2OTKgDS7UOdh9eQlPkYcPXiNLg
         cjHJZpgZVaurynJC1YXul+KmYizFZLuoeIpv8tOO3uc7gatRKQp27Lu80l6522hVVuB/
         DSKdCD3LFi1Xy5pfkJgkUF2M6R7F2QTcKfvhJIbc4YWus58642GyoioDY52xLJFHPifi
         7UihtMdJyQuxhl6zvPByUEn6uEFxoKQStV9daCkoCSReihh6WxTlWvcyt+qhNwdizMSX
         pZ/h5o5vzsjH/S8bj5L04tZYdXutQ+0PjCh2uVopYS74pshcyRKf6I+gJfy60dLvNmBz
         CYEg==
X-Gm-Message-State: AFqh2kr3d5jbAJM49DhJeiyHGN5Kq7Fhk/5nArtPvDn1U7m0Zj49JNd2
	r9goXJCnPmysS8Yz/CqcLjYGF6NpYQA=
X-Google-Smtp-Source: AMrXdXu3ryT88FGN3wUf7V2cIxHrNWhBqBVLCkTTIVRybrZmip9rTMuXztjMFNnmW2eoyyhhuHQ3xA==
X-Received: by 2002:a17:906:dc44:b0:86d:abca:3f55 with SMTP id yz4-20020a170906dc4400b0086dabca3f55mr14748187ejb.15.1674044089413;
        Wed, 18 Jan 2023 04:14:49 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id 17-20020a170906059100b007c16f120aacsm14448690ejn.121.2023.01.18.04.14.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:14:48 -0800 (PST)
Message-ID: <1510c02c-f640-9924-e42e-fa34e28a580f@gmail.com>
Date: Wed, 18 Jan 2023 13:14:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/4] gpio: gpio-rockchip: add compatible string per SoC
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
Content-Language: en-US
In-Reply-To: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_041453_480454_A2A0AFDA 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

Currently all Rockchip gpio nodes have the same compatible.
Replace all the compatibles in gpio nodes to be able to
give them a consistent ID independent from probe order or alias.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

For now only add new compatibles.
No changes to rockchip_gpio_probe() function yet.
---
 drivers/gpio/gpio-rockchip.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e5de15a2a..493207de1 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -790,7 +790,22 @@ static int rockchip_gpio_remove(struct platform_device *pdev)

 static const struct of_device_id rockchip_gpio_match[] = {
 	{ .compatible = "rockchip,gpio-bank", },
+	{ .compatible = "rockchip,px30-gpio-bank", },
+	{ .compatible = "rockchip,rk3036-gpio-bank", },
+	{ .compatible = "rockchip,rk3066a-gpio-bank", },
+	{ .compatible = "rockchip,rk3128-gpio-bank", },
+	{ .compatible = "rockchip,rk3188-gpio-bank", },
 	{ .compatible = "rockchip,rk3188-gpio-bank0" },
+	{ .compatible = "rockchip,rk3228-gpio-bank", },
+	{ .compatible = "rockchip,rk3288-gpio-bank", },
+	{ .compatible = "rockchip,rk3328-gpio-bank", },
+	{ .compatible = "rockchip,rk3308-gpio-bank", },
+	{ .compatible = "rockchip,rk3368-gpio-bank", },
+	{ .compatible = "rockchip,rk3399-gpio-bank", },
+	{ .compatible = "rockchip,rk3568-gpio-bank", },
+	{ .compatible = "rockchip,rk3588-gpio-bank", },
+	{ .compatible = "rockchip,rv1108-gpio-bank", },
+	{ .compatible = "rockchip,rv1126-gpio-bank", },
 	{ },
 };

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
