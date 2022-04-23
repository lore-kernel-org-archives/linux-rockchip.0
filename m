Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12551C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZdCekhWQmqtz8iapV8b3SmO+qJz4JTyEMbylo+i2M8=; b=n9ZDqTxNXhHYzz
	fxekeYugmRZ5xfH+JSNe5rnliJqJS8j+1Z9uHFwpyTZXxhgSB2aTLkLenPumMys9f2tC7mEYy6kvx
	H0TBlfbGB7zsEI5aJwm2HHZmbWFts/BN/Mc2z/OPbxafl8ocozRlw32ejCPDEf7JCCeJQJAmPIZJS
	AmpmexP9mkY7/NCF2WXkvWEXQWY1outPVI+34rNzTZZTBdKOVGEnvXq+gZpx+IpErbFGbzipw4fkX
	tYuGAuIe1I9ZuWetFThfPWLLVDYyA1LmH+UQyGaWWXsHUKsRYx/lPRfEZscWIMoV1Cn5K7HTiAIeG
	vzkwcFxgakzDrg5u/aUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCaW-003zvt-9n; Sat, 23 Apr 2022 10:02:00 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niCaE-003zlU-6r
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:01:43 +0000
Received: by mail-ed1-x52f.google.com with SMTP id a1so7502596edt.3
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=hwSE7TDc6cFAJaZEfJMscDdMHu75MY/lCb9p7EVlJQM=;
 b=eKVlG0S5gFmB0DrWoxFQqgFXu+ghvX31Kgv3S3YxydkVIY5AIvTvSdjBvZ+mM/GI0o
 m1a4sM4CX2Ajaxzy4ED8eKYeoP5MQokiq4IyLjpvUbjVAiDv4AAR3ymDYwOV1YsEoGht
 eV1HZImAsWkTLH04ic5Z9s540rwlVpVuugWpY94GOcXM0ZZSNYB9aDQ4h0dD+Go8Q3aX
 fdFBTjXp9eQ6GoRDf8/1fs8z0DzE+liSWz2iyjWjPOVVjtvOKS9LmpchEtNSFjggePgZ
 QY33TmJGbtURKKG0hbMuwHpsfW+RrrrSJegkYNXmyqT/c7S17sMBeZ6a4D7EabN2uJCT
 ezsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=hwSE7TDc6cFAJaZEfJMscDdMHu75MY/lCb9p7EVlJQM=;
 b=JciDsq7/dwyzOLU1HfOWrIRNYpL3pT2zLcLOekd6Hpaw/8IFdxzfiOcF66krJt47BY
 OPNBlr60AILEfMT+r0PTSLulbDWyDlhgQ3hzuIPk+pZzXJBuU7byM2ML/lXcUo6NPb2g
 tux3a6rE51YsUVfLsrVY5AojT79xnbwL7X7+Ln7kh1YpaKYXSBVLsLQUn2tjvI2LuImJ
 pVSGX43FGDD7Q+wbQBP3tbyINukeXGCaox4CVbhXm7giExfioJjsnB8iHjCsiuLMoPU4
 DzVZe5QOiLQavr43TSw3gZcL+GcTZeyDiSz3R3c9TrUCj4oOd79tSg91ttJh3BD7Dcsu
 c3YQ==
X-Gm-Message-State: AOAM533bhVCAYNprL8lva+ZBo1ZK0uhN/INmSb7v9DamyTmwhlOvLT/Y
 /bir4wANC1FwQnFYN8oTfsV+NA==
X-Google-Smtp-Source: ABdhPJzENh0r45+mF7Yc1XCr0LaVa3RPTBAzJvk8WTJfvb2ZwRvgYOxp/O+nQamFJVQ3evuGuO+cAw==
X-Received: by 2002:a05:6402:254c:b0:423:e51b:e1b2 with SMTP id
 l12-20020a056402254c00b00423e51be1b2mr9448917edb.161.1650708100556; 
 Sat, 23 Apr 2022 03:01:40 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 r3-20020aa7cb83000000b0041b573e2654sm2003756edt.94.2022.04.23.03.01.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:01:39 -0700 (PDT)
Message-ID: <38c0cb0d-a678-d249-5d90-ea55a95a3898@linaro.org>
Date: Sat, 23 Apr 2022 12:01:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 07/19] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rk3588
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
 <20220422170920.401914-8-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-8-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030142_278895_2465CB7B 
X-CRM114-Status: UNSURE (   6.39  )
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
> Add compatible value for the Rockchip rk3588 dwcmshc controller.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
