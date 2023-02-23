Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83D89C61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 19:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zVVC/YbnZgLqqwUVHRY/yUISxQnUTP7uQm8PPkUG8c=; b=PP+XexgxC7epVA
	rdQqh1B1bCu465YLIxNO6D9gHpRFflY95kpBiFN/HwL1i2ARFr29O6ubIGJ3taRfz+EBqPPsfhm/0
	u/IHJv28fvJzQeUeCGXBbb0Z55Kn+0OxwTNxFALrwS8GGH3y4mPDwhXueXuBp4uH8ALYyAFrtLb+T
	bNVXvafGrXMPZIpwVMoO2T/nAQqW9leRl9I84DBMAl3f4mzRMsFY0/AbW57wo9dVi/9aSHTv0BRdy
	G0eDiA7tE/unfTLC42Ml1YB/LpdxSOGvTYxvYaGDP3ziLexzAVTfkOTBijMtXSU5f75s9qUeWk41G
	z0bAHcMETNe2p5ZBBOkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHYZ-000987-IK; Thu, 23 Feb 2023 19:47:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVHYN-00091z-Ta; Thu, 23 Feb 2023 19:46:57 +0000
Received: by mail-ed1-x52d.google.com with SMTP id cy6so40866174edb.5;
        Thu, 23 Feb 2023 11:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ef/IxwVqWizxA0usa6LnkU7NUiiONXkz62uBg/LMdV0=;
        b=DHpjhYh63B43zvg0u2ye7FkhNr6DMcDzU0v8Dm1bTpckJKsmkMIGJv7V+rPcmepQBF
         udAz1vgLNTHQ1dYC5ct/f33z1N0ny5xl19DFfnNqaRrwms/gFmhzEr+C1G27iZh/G4bF
         mCboVX629DJzjaVurtnSsxSaY8E+bKxPVavDvzvSh6Fv5sll6lbR9bohhdYkuxpr2Uiu
         90HVob01i3LNMs8l0dC6hjfMEq0082vxUez3MpadcZSr6k+fKGoNis0jyHwSf6c0xCsO
         OBpsX8C23nhLDDSrXRnp2AUIlfOVF9f+q6U4vst7em1X9VtWmNl3BJOgfaX/4MVmFKw2
         gLow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ef/IxwVqWizxA0usa6LnkU7NUiiONXkz62uBg/LMdV0=;
        b=isYYYZrpkJT1sTfIdDSYkf6hcMAeGIXeXqv8aogdSD/ivHLXBATt9Z2Pm4gAfcmKTe
         1d2w6NHhKshjmxdjBD6A2FfCtxE2QXU+D7aqE6lnwNT4HVaux5VyuwXWrIHrGoT2a46X
         FsVM2FYD6vj2NdkNl53/tmv1Y6mIdAkMh8souYsPoSe7KF78TTx8U1UdYurp4hKy8mJB
         HBJZjA+x1uhmqozs75uyVv+D6W8lzun+RxzTrdzCKEzE6jvlBBHjFQ1F4a7ch5LNGvl/
         dIR4qe3yLVgU/zoCv9YKo/tIJYV5NOkN65pw4BFEVW+7apKM9+XRncjeyXvkAKIKjZgR
         gf5A==
X-Gm-Message-State: AO0yUKUiLYmTuAsG/mH6+uYTTzLcMe82ugTRUlBOyf0mANfpZR7RB67a
	L0qTPx3oAomauQ0VUhdWGUQ=
X-Google-Smtp-Source: AK7set/31K5DJ6qn1JJs6uRxQx06XyLdkNkcHNdxs6bHWakbmS54DnLSUgse5hWxoGh8etM4sdztuQ==
X-Received: by 2002:a17:906:d118:b0:8d9:383a:be39 with SMTP id b24-20020a170906d11800b008d9383abe39mr14476208ejz.41.1677181611487;
        Thu, 23 Feb 2023 11:46:51 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g3-20020a170906538300b008ee5356801dsm992464ejo.187.2023.02.23.11.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 11:46:49 -0800 (PST)
Message-ID: <4a18d6b6-a8a4-a2e6-6841-fa78951792e7@gmail.com>
Date: Thu, 23 Feb 2023 20:46:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 3/7] gpio: gpio-rockchip: parse rockchip,gpio-controller
 property for bank id
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
Content-Language: en-US
In-Reply-To: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_114656_000711_015FEC19 
X-CRM114-Status: GOOD (  13.68  )
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

Parse the rockchip,gpio-controller property in Rockchip gpio nodes to be
independent from aliases and probe order for our bank id.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpio/gpio-rockchip.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e5de15a2a..47e45299f 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -702,24 +702,38 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
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
 		return -ENODEV;

+	ret = of_parse_phandle_with_fixed_args(np, "gpio-ranges", 3, 0, &args);
+	if (!ret)
+		pctlnp = args.np;
+	else
+		pctlnp = of_get_parent(np);
+
+	if (!pctlnp)
+		return -ENODEV;
+
+	ret = of_property_read_u32(np, "rockchip,gpio-controller", &id);
+	if (ret)  {
+		id = of_alias_get_id(np, "gpio");
+		if (id < 0)
+			id = gpio++;
+	}
+
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
