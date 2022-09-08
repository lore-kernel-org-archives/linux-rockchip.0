Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3388BC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 08:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b26SlW2xYtln8AWz73RfUYD4qcud0o/4hmSd/iqbp9g=; b=sX9mQPppanUD+2
	JMD1cv0XuV2YA9ejyBBQsM+IVIkbXA0ANdhSHBD7uiEReFiHQoqIlTAyS1PFC6bx3d7VQBUar+Xu0
	s+Qy9/y8xPKuCOM4tmQKZl6VDWPFxHb+ByphFZfb9NV23qwYZr9KlzcEKb/aDp2min18505SLDlSM
	wQOSM9tkray/yoZuspWf+QSMEHPyzGMZ2F2QsuHHPb90lnfnyV+9FQfo6e838KlNSuz4ZPxodWOvJ
	/zAbtUEBRm6/te1gyxcV+YIzfpfPAxYyrqwbtlcvMoHb+7JCRC2QZMRk4TZjqZKgmPgQ9Qoq+Nr2U
	TAE1/qHv3eQWa/lxhDdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDGb-001B8h-Pj; Thu, 08 Sep 2022 08:52:09 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDGJ-001B2c-Sa
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 08:51:53 +0000
Received: by mail-lj1-x233.google.com with SMTP id z20so19052125ljq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 01:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=EwWxrorUf0t5RelWvYwxkGlKAd06wzLiUvgHfS7saik=;
        b=V4ujnzw8vMuY/a05YcTrFpZgg/5LFWS4wW5dJiv0AsoB4o63I5VUBvtF0SNMRRsD4T
         P+iIMwIHS5+xR0r1Jp5E6vuIDEktjNeuzhWABTroJ3cjo1CgBxgXCWPqCjOLIsYXRJu5
         67C8s/Q9m3Qnh3UnzQT53njfKnfkqsVxPSvnlFxsMyhTFTwj46+voSNUFSH5pn75T0Wy
         LrNkEUc6vlp0csIHShHvS1fkFYb+t9NKThJv4Cqi6Izg+K14Kn3y8oMIqkFN+PQeg43R
         34S/RGduROl1gmzE+Q4C7ZAU+gAlGUF8JqnVR0tdPPn1XgQ12rax/1e6kEM3mCIb4Kqj
         vW+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=EwWxrorUf0t5RelWvYwxkGlKAd06wzLiUvgHfS7saik=;
        b=F8PUnFHPLFY8g02qGlYeWUuEHn1yffaVm9R9b8zFv38nsaXZQ0YLl2SYxaFEAS8NnW
         UFdGVP2G2kZenwmhYed8rMp95HremUxRObb9LMw6xbauINTzhBIK8I3EHnyG9+kfAvk/
         tWt4nOvHL5G7jkjFhgroHNQr2ax9z4/K0+DrcwcqCc5YCD8wUF61nh60Zo+fT7iV8XFU
         QwtapBJ/Sfm/sYn/ngWLgUnL46ww2fq4U1Xzrq+QZBwCGAXiY3X1bxgYlomoGoRerX/o
         AscPGqDWBSiKDwrugTZEGhLzTZaR/+7C1kxrbb4DFUpYo9gt+QQbAcXe8EFYzubH92d8
         0Diw==
X-Gm-Message-State: ACgBeo0YvwtpAmFEKO11Uu56GfUFL9GQKIMpvuKxZILJE4K9UonXJDbn
	uu6UTN9YUEuSMilWOxLcGmPI1A==
X-Google-Smtp-Source: AA6agR4H2rl5PlGAfHTnEpgX47j+gq6PJsyRerCQ8mwff5P0b7qJAm8bn2Htk9/8uNc/bXqX49eWqQ==
X-Received: by 2002:a2e:8181:0:b0:25f:e028:a67 with SMTP id e1-20020a2e8181000000b0025fe0280a67mr2269290ljg.89.1662627107903;
        Thu, 08 Sep 2022 01:51:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f10-20020a05651232ca00b00497ab39bcd0sm695212lfg.96.2022.09.08.01.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 01:51:47 -0700 (PDT)
Message-ID: <0a977d86-e137-c328-ce7f-ef7941860936@linaro.org>
Date: Thu, 8 Sep 2022 10:51:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCHv2 08/13] dt-bindings: mfd: add rk806 binding
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20220908003107.220143-1-sebastian.reichel@collabora.com>
 <20220908003107.220143-9-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908003107.220143-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_015152_013070_64565E1E 
X-CRM114-Status: GOOD (  10.66  )
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

On 08/09/2022 02:31, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Thank you for your patch. There is something to discuss/improve.

> +  vcca-supply:
> +    description:
> +      The input supply for pldo-reg6.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(dcdc-reg([1-9]|10)|[pn]ldo_reg[1-6])$":

You still have underscore in the pattern. This should pop-up during
test: please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
