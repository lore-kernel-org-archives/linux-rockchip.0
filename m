Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC46BC6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6By4HQc5WCNNwcgrbTPTqkJhhr8OBKrl4o6Ua1S/xA=; b=moUreFYqevXCAm
	YyIulUbqMrqxZo3bNvrwB9C5wNi95d0zIwRIIv+sgLopseDrsUP/WVckn3bamhm4JPInoPucHJilW
	qE6Bsjd3Ifvjc+umtoauHUmJrpxlaxBhy8kTQPBH26SNw9pPgY6Ud9cNWHtcbcheH3NzzO6mXyhxM
	QgZpAWCeON9OQFSCPUGZwwxvHnigdAvClMEB4u1iGgI8PUfH2lZeJ8D2bvD5UKjPuUi1IKQZxFRJR
	y5reT51HDc51Ps/rVoCYz292UZWxNJ6Lofk4vKS2NeE0CTTujfIidbXLgLKEsW2QxLoMhVBXnTx2y
	29vqW3swcHBZYUWJ/6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pci20-00FUrR-0q;
	Thu, 16 Mar 2023 07:28:12 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pci1y-00FUqP-0P
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 07:28:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id x13so3921322edd.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Mar 2023 00:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678951688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bsi+JLbKWkbl2/O2F9F753mkheOOmEKDrBc+HCXXLxQ=;
        b=uVGMUCCtabrj/ysa78tkpl1QNPZ7Z+i8KUxLerEiMBDXf30AkAPuV6dGj7j1/q2A9c
         uH7ZyfnwhcMsUEKPEjWk0FdqKSWcjIh1r4YuhkLU3EPn+R0vJRQNyjRm/eEMLhC2WKg5
         xZfJRF48EeMwqyJM/baWInprx6p/kG9ct3fF8PlsPxWQAv9RQb/KNHwshjs9dB1oFsK3
         P+XD0mfuBnPV9PYO6I8rjOCnzHVAWSe3y7jV4blWpdP831e2SU7nPIYXTiemkEO6QSKU
         CDkXn8QrDEe6083wz0BJX9dfuwH24GVhPO48JJQQJMdxaSijT4wCCvy0u5PZ5LxvVxM5
         jUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678951688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bsi+JLbKWkbl2/O2F9F753mkheOOmEKDrBc+HCXXLxQ=;
        b=XpNnVMOSsmtlR39zkYLpO+NN1NRJQeWZxa1rl03x/nUY2xVVwqRwAh86iHfhiVhCCu
         MDmfBmAJQN3oIYBZHXv++vzytfgSVh3KM8ihWXVK9alBqiwbs9tetiqHVpav4jml5w3f
         w4iNhYlqTVYFF2H141+4LceTph8Y5bkRFvdJ2JTsZ6tRldGTB5mmj7GOLKUkNMX4kYTl
         Um90bN5F5d2EncuqLMh8LqtcDHL5ITGHVLCax21S54mOI3tV/u1oqpt4gzvb6iqQJcxW
         nzHanoojDe6Iku0C1ohRN69R6SSxxcMc3z2nJFqbucBZnp6lfFa53fzhm32lQCb5rIY8
         g5NQ==
X-Gm-Message-State: AO0yUKXYySxnw5FThTu5NTvyDMiV/skSt/EpsA+70Dxqv3VtxImR8QNf
	gjlIVviDsNg9zekyDozqEE03IQ==
X-Google-Smtp-Source: AK7set9UpAUpBs5fKHC+6wkTYq8jFs+DftAa9ByGu2cOZjWvf9e/znTZ/UlTzvCyaLx2OWCd1go65g==
X-Received: by 2002:a17:906:2b50:b0:8aa:c2e1:6a64 with SMTP id b16-20020a1709062b5000b008aac2e16a64mr8965947ejg.61.1678951687751;
        Thu, 16 Mar 2023 00:28:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id cd3-20020a170906b34300b00921357fb28csm3416958ejb.123.2023.03.16.00.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:28:07 -0700 (PDT)
Message-ID: <a25ac419-5b20-d762-93a5-28cb2ad09ea5@linaro.org>
Date: Thu, 16 Mar 2023 08:28:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/5] dt-bindings: Add doc for FriendlyARM NanoPi R5C
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Brian Norris <briannorris@chromium.org>,
 Chris Morgan <macromorgan@hotmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>, Michael Riesch
 <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>,
 Andrew Powers-Holmes <aholmes@omnom.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230315160228.2362-1-cnsztl@gmail.com>
 <20230315160228.2362-3-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315160228.2362-3-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_002810_164277_CA3B5FAD 
X-CRM114-Status: GOOD (  10.33  )
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

On 15/03/2023 17:02, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5C.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
