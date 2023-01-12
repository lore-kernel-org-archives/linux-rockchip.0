Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73DA6C54EBC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 11:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lpfkx/YE78zwd4OpjAzFDLH8rQT7P05AfGXuo5aFcAI=; b=aeeYASb4RIzRUu
	EnEML/RwOjhFx2xIoircNUxQyocRBnLhmsklec/nbN9zPvi5AZxgtOL5jcWlAlK87DdWnbSF6iRFw
	GI12DIAIlXoM0ZUwUK7YsJVFqD7uFKHvfoHDZcKrUwftENiC1W39SIj6G2mRqLyN2pYOXa6xF+z7o
	lv710lP7k4rVFTqnlWmJg4ugR6lhNiJlhncPypYnCu9XR3kCe4tbm6JSB1uopOkjlFEmLAFEi/FnA
	gOQaTE0rN0s/NvEQ1N06X3eedWhfx6oXhDXJMf0yyAXNQLNp+YYf3RGuCV6Kfk4YcoEjZ0tEDqv0E
	c0067ogLP1s8t3zgf6rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFw1W-00EtPC-8l; Thu, 12 Jan 2023 11:45:34 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFw1S-00EtOF-VZ
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 11:45:32 +0000
Received: by mail-ed1-x532.google.com with SMTP id b4so6920248edf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 03:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x4LA4Q8/HHLhGLaT8XU0nK2e9i+YSbZwOJxVCpmHI0I=;
        b=bpOqQTYFDGDl7PIgL42MAbC50CiOdPxbgmWL2zFCPINFYf+rlyiMtYAlJ1vbk0D5hy
         vNzg2J21f1iGfNp2GsropFmdg4gCWsKtLD2nc6D32uG4DuEw5x+oncX7/xi4N2ChTsVN
         1hemOIk4Du3QqSNoVQRf/nsnbkRotAhS6doE1lBM33FukOEmiZ4/5PHrRC5ta/Wh86m5
         PIBj+hrdLZteETDPxDeOnLcw7uWE2mJIsJUQDIZkqbWTJVJspjIDcHeadBga2kP2JBCr
         nkbdt5hTvWgmtHsSwZ+SgOHURX5qKe9hFA/1fBTPmOah4rKrN2W4WdPvr9NpfohQaph1
         EFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x4LA4Q8/HHLhGLaT8XU0nK2e9i+YSbZwOJxVCpmHI0I=;
        b=dHok4yBU5TqbtQuhf4CKXnTuKoz87S1jZposONqSmtXgsWxKGDAkBflD+lgpHhWoGT
         CmBf1xIMm8cVyehAMIeN5nGlEdrv2aOOW8YNKZ4N21Jlql1AJ6S/vX6UFycey+E5EKkc
         L08HjVfQJ1e5z5pTFgPTslm05GyGLrWr8jVwq1KYQhjnFnypBAr3O7ol/7c3jYb94lt7
         AXJpWMlw+COJv+rXnrPYtT85GyDJN7FQLNFYsqbIBWj0VKadEkoWjCZLGXJl18N6xVBh
         ATnCJgcOg31vF78upZ+sDF7/Z/DadHZ53vpgyImSrlBcHc7d0nAXWK1K3z9rpUuY7+nR
         FWOw==
X-Gm-Message-State: AFqh2kro07oTbvQZazIqvME/9wlCslRJttzDJqYHuegSylBIDtVsPV0F
	FS5ug0EGiDBeIwMZu27e3cAqPA==
X-Google-Smtp-Source: AMrXdXsbrvSXd6u5bwYj0uqlv095hGGPI6g9p+Yw13whSg5c4InwHr8YvQRcNxuFFNr1cGvhnKQhAg==
X-Received: by 2002:aa7:d0c9:0:b0:498:d121:6e00 with SMTP id u9-20020aa7d0c9000000b00498d1216e00mr15824262edo.35.1673523929239;
        Thu, 12 Jan 2023 03:45:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c8-20020aa7df08000000b0046c4553010fsm7057603edy.1.2023.01.12.03.45.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 03:45:28 -0800 (PST)
Message-ID: <758cf086-541b-5c16-2d98-59c7f064378c@linaro.org>
Date: Thu, 12 Jan 2023 12:45:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa
 Compute Module 3
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112105902.192852-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_034531_043306_F9C5C295 
X-CRM114-Status: UNSURE (   9.73  )
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

On 12/01/2023 11:59, Jagan Teki wrote:
> Radxa Compute Module 3(CM3) is one of the modules from a series
> System On Module based on the Radxa ROCK 3 series and is compatible
> with Raspberry Pi CM4 in pinout and form factor.
> 
> Specification:
> - Rockchip RK3566
> - up to 8GB LPDDR4
> - up to 128GB high performance eMMC
> - Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
>   BT 5.0, BLE with onboard and external antenna.
> - Gigabit Ethernet PHY
> 
> Add dt-bindings for Radxa CM3.
> 

Subject: drop second/last, redundant "dt-bindings" (duplicate).

With above:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
