Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9110C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4yZ6ay1JicGAHNRDKGP3p9LqCGmfdhHv2osC4jbRSw=; b=qlD1yQMOxzl7P3
	swpNJfDphW/HZh8G6tJDIZAsJw2tFpD4UnEo6clGwUwExOgdQvKK2iUee48oO4g7nwriM4xeepEQI
	AWq2p/jC4gSKeSIxnN7pINTUnHZbD9WdCq8IsSfx9CfJQV9JcZRCyuQFBo99ck+YhO7kdCEL0Hfby
	cQGvcoHLeOigsq5RL6dwmLZ6iGS2RK/d2O/6lp2FQddQT7zAGdOScjVNV1xdQdSCW3K9LQr9+GWyS
	6zY/4xNU5MGZs4Tkl0zbiLhFVZgtCCTMjUZrWWPHs4/IS62yz4I7YDGgg1Bx17lM+t4IbaBM0OmMO
	oTRJ7uNubmf+CpCsQzow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCcR-0040vi-Rg; Sat, 23 Apr 2022 10:03:59 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niCcL-0040qL-77
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:03:58 +0000
Received: by mail-ej1-x62e.google.com with SMTP id k23so20738405ejd.3
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=0Icd0QAbAtveEL91sUdo5gIKdYCb50RUGDVuACnzMBA=;
 b=y0U6kKeTSJrRSx3RwWcQ0eQL1CpI9mjhmBG/0ir83Tb/3Sauck6I4DwtmPT3GdkTEM
 TEff/fbyESPUovuRvnrVa21nS49D6kctnFlvdJtJ/UA+aLOez9oCL7OQCK4jKpCmSQj3
 v6qTIkhxDTPoWAXQUOxfzHkr6Kj6vVHIMZYE7404AUgjroqkDNZhtwGmp06SGYIEVp0a
 Nj37KgaVzGivlCYYk3c8mq0mdDvBxGMKordQJoxkFliqPA2+TVFfPxmzf0AfcPOY8b3R
 edjDlnq0ZusqEQfdvu9VCC0Zbx7uoTPRUEKJQ3xKbOypA6S02LhE2Na9Z66E0Aibb8Ta
 1Otg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0Icd0QAbAtveEL91sUdo5gIKdYCb50RUGDVuACnzMBA=;
 b=2WLefEUnKigKtrbdUmYi3tGEJwr1MLrukjwDkFHz58eUmZoNMOM86ylltEbdUH7CW9
 tcimSkLnejXmsB77EsJqvkctkbszCHY9JjbvBXYSru0BzUTa1a3yT6CiAXGoeltu8Dg5
 /Xq/ZpRLuSZbilWjdlGNJsewxt6sBd4WLfHrfFXsTXpvXr8FVP2g64lvzwCbpKho3ip8
 gzmjV7k5SUMNH9MGSVnzqLQL0UQ3USuRemc0NtTSGT1yyemtsas+UWKIYARZ9F8o53zA
 geSRDI5vxySZ5AF37/wS/Vwv+4BMoQGBxO3UCKoOSf71zkpIfo669RvnrORnbWr+vpdu
 Y8nw==
X-Gm-Message-State: AOAM5325Pcpqcwj4BUOJQxvQtzrKAfnq3RlpZZdrY0I+BIl1/lWFF+fh
 AH0xlBISSlGAvVer0DRUof47aA==
X-Google-Smtp-Source: ABdhPJwwvzUM3czsC7y+DnJmlUATBP02rRRtHr6o+QLgSRIt2B1L09BhY9Em2/0XG1XFFaH+X/rp5A==
X-Received: by 2002:a17:907:168a:b0:6da:9177:9fdd with SMTP id
 hc10-20020a170907168a00b006da91779fddmr7833441ejc.757.1650708227007; 
 Sat, 23 Apr 2022 03:03:47 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 g3-20020a1709063b0300b006e8872f6585sm1564265ejf.175.2022.04.23.03.03.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:03:46 -0700 (PDT)
Message-ID: <2e2f5a33-0286-7a89-3842-10d8cd3fdc65@linaro.org>
Date: Sat, 23 Apr 2022 12:03:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 16/19] dt-bindings: soc: rockchip: add initial rk3588
 syscon compatibles
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-17-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-17-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030353_359167_1D005740 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 22/04/2022 19:09, Sebastian Reichel wrote:
> Add IOC and PHP GRF syscon compatibles for RK3588.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

You don't need to adjust anything in allOf:if:then: parts?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
