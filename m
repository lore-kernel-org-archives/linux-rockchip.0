Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74B0C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6M6J2Re453MzFMN2cjYIZLKvHP8rbRF6N7vJSEIeArM=; b=mWxbTDJwm79Qjc
	/JqRwuy7yB1dRcD93grGG9VUQsKplrbiFX509/8qbyRvxNOWRGAJ0rCzFeNpOSF7rKi07JrWTXV14
	ZeJFRMa2f9D90i4Xwk9mRkB1r6nXCQkGXskIVuN7nNAeZBVp5yoGfRiNcgaxFFYF4u3KrUwc3NGcZ
	vdC5Inx7yubDMdCKb2EJcU3WRH0qDdomQrGWBV+dZFM8pmbCSjI8i1DD/RnXx9FJwQifon0kduZ4y
	ES1KQRmZFn1h4qRQyAJz/hXIvIoFlAotR1LZrYOfZ9ocRKu5qktqJxtQaOWJGUBGZ05QfAZ/ScipE
	tf9FUIne5SzxVbZ4FOWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj31j-00Alk0-Nk; Mon, 25 Apr 2022 18:01:35 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj31h-00AliL-6k
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:01:34 +0000
Received: by mail-ej1-x62c.google.com with SMTP id m20so10435702ejj.10
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 11:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=cfMZHvtfOOtpqzqGF7A7q6AfqNEDLTUzF7hzywhBr9Q=;
 b=vH2QMU1ey6We0PvkEgJ/ptfQ175t6wD0xgpkFMMJMtwcftkUya13dSdTWRiFwzN1+d
 aDpiA6ZMLjVAXPi/Xoj7F3FZ3wfptJoJIk1TZ2WLz2yceAZTXkX4Y+scllFD90vAvhRp
 xwnnOLG3IT6XofLBMwBCizXRXkJVLnfZSe4vtBjMFmM7OWOGVUoeeqNe8SX2fmAgzQxa
 vXh7RG6OUiSRuOSn3bIwrZLj6HVxjkMMTDeuYfma7FPn5s7jWz+6jx+L6QAB5tSRPkie
 lvloABrLkCYcs5wm2YgP11janJcJ2tFFBYESxzXUjmHr4pSgtPmfz4d4ByZEy/zEmEfR
 Z9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=cfMZHvtfOOtpqzqGF7A7q6AfqNEDLTUzF7hzywhBr9Q=;
 b=KeVwPTPOAUIrFWTDyUraZdXgzWWMLrNXcJOz5h8yDjUS4ObLYxcxOs8QdFRGFynW/u
 AHIrIptvyc21NvcMJI0CHtGWa/rU6t7YTfZS6lM5QTvdezB8AAUyUQjWf6O18wgvaJoG
 YJWslRpyGp1fUoTRN2YzjnSw65X42xWj1GNWK4Hc9qSq1T6E7K4k46sk6EdSZ4zv5NVB
 8ZiMCCNtdsWstfbvwdhH4iDoT6K1ZyYfMM1q3OmzVNyWvj1OQdYtc0VykeobzUB76ZbI
 aCOat7gqOQQGABkFw0yanykVcwxcb0yfKxRPRMx75Skd+iycXzKgHNU0pnFO0H2QG8Af
 z3bw==
X-Gm-Message-State: AOAM530kHiU7av5kM9q6w/DTCfx8D7Z2V17j0g1EwpeVI/YazH6jeQoQ
 /s6ScX+S/YAI1B9xxrlV7qc5OEBGgUAPXg==
X-Google-Smtp-Source: ABdhPJzuXJBp2Ze6NPBKVZ/WJjzHtg+vePMnM6AFJx0uKL77SlAvF6GDXQNiVPtKP6xDyT8jIjWOAg==
X-Received: by 2002:a17:907:6d8a:b0:6f1:7143:1ca3 with SMTP id
 sb10-20020a1709076d8a00b006f171431ca3mr16005452ejc.219.1650909691148; 
 Mon, 25 Apr 2022 11:01:31 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 b8-20020a056402084800b004207931a9cbsm5171751edz.36.2022.04.25.11.01.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 11:01:30 -0700 (PDT)
Message-ID: <3bae519e-be5f-2736-0e7e-d23ea06121c8@linaro.org>
Date: Mon, 25 Apr 2022 20:01:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 2/7] dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-3-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425171344.1924057-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_110133_276628_093C3456 
X-CRM114-Status: UNSURE (   9.35  )
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

On 25/04/2022 19:13, Peter Geis wrote:
> The SoQuartz system on module is designed to be pin compatible with the
> RPi CM4 SoM. It is based on the rk3566 SoC and outputs on uart2 for
> debug and console. The first carrier board supported is the CM4IO board
> from RPi.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
