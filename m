Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F5EC63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 11:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrItW9PltqlBDn9Pp3iPO3c1Bn3JpkfSOgg1KE2TZxM=; b=xSY/UQzO38V8+J
	BCbWjsEYS7wSiffe0PlS2kJXpeRCplAQYe4XH9uk1c1yofOfElewB+TyYa2Z0LtFaNt2/tOSARbU1
	6tQnjlkIlpFzhJfcbF7sq9r89qlEIWtlY1Sfz4s8xSVmwFuI/PV4f4v+/8Wn1ai0G8PIE3DAU6C/K
	bdbjqJhLlpS4rJj3x0NWIBa0BDKMmdbhDMj+6cK7PwLaYvWvAuWvUqwiEGPhEqPh8QSLivJ3gLFYL
	XCwbs2PcdWg79ihF4RK4RwqHf9zMuAESlEpcwTg9BZ5TZET0EUb34gGHS+NDPROnPelMBPlGZLLGA
	Hw3dJh0TW0IeIxzVlMmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjpD-00DwBi-KQ; Tue, 17 Jan 2023 11:08:19 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjp8-00Dw0g-8b
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 11:08:15 +0000
Received: by mail-wr1-x42d.google.com with SMTP id t5so25770079wrq.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 03:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YKpwDr0UUktSDgsQPjg+oJ20FdKqwcj/JdiWGfoHTc=;
        b=Y7GVv3NebXhn+bTHG6Wy+IAWfFJ3kREvxXhRMu7K0wWx3n9n2QL8uut15TsLJ1PW8w
         OPq/tVa0lZW7Yu6g3ye5hhZt5J8lsX669PnW9v0WlFRkOnKJ/fXOdRIiL1qbyBrDK7rx
         fOQDlMSn8UfrZxZAfHPx8tgsqrHV2N0aUUjCeqPY58a+9AQ/9rld6JSGbnkcvZqZK+8w
         dLDLNr0jQMElRHbEd3Oz99zSi0z1974IEAStlPC/ioaHXNqbHfxWBOzaqS4MT6Tt1ulp
         lmIB1V1yyO+z58wpqdCCHnZLrn4s72vLIs3+QpnaUizw5nJYkw9JNyKDO62ZPba0TqLw
         Q+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YKpwDr0UUktSDgsQPjg+oJ20FdKqwcj/JdiWGfoHTc=;
        b=xUsEH2hkZZ4BTBNYYbLK+wJBgK8yeligM5lZj9+5cYijJkxWwLkTtVIhV8d9x9hD9N
         siW3UKHAWdw3+QmmhQdjHD4vCJlogJJmbg1qhFMeUw3yDbW9WyrZB0y9mVLGDpl3xsk7
         gz8SSdyZU77D4p0E510jpm5PyxxzSxzDtSi2Bg6HAXJjFwXdmr+G01c1cMi4KQJ+BPhs
         LIyB9f9upK6mQa+DxGDzzlU+TVvrb9eESaumVLJBA+Q+WoSN5itT1RCWi5E2JsO+G47g
         HOVpeZcbEqlOWd7ABEX8W7xo5g8eqsQjG/1JfmGkbcBsw+rtDEnUpOd4DxjJYRJoZJ/D
         NV8Q==
X-Gm-Message-State: AFqh2kqwWMM/skQyRdrT2x2QcdLVA4LQCZzx+IcZ4I8y1emf4EvM968C
	KB910X3VDV2l3hbLwX2EP4tc7A==
X-Google-Smtp-Source: AMrXdXtbOcrj5+56lXkypFDSjytXH5w1/JHUeAOyfhMXO94sWxbA0n1svGQKodEALb2FyXvyBBAt1Q==
X-Received: by 2002:adf:f0c7:0:b0:2bd:e18d:c9e5 with SMTP id x7-20020adff0c7000000b002bde18dc9e5mr2494090wro.40.1673953657463;
        Tue, 17 Jan 2023 03:07:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d62cf000000b002bbedd60a9asm22862139wrv.77.2023.01.17.03.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:07:37 -0800 (PST)
Message-ID: <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
Date: Tue, 17 Jan 2023 12:07:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-4-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_030814_311175_C5B70AF3 
X-CRM114-Status: GOOD (  17.71  )
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

On 17/01/2023 11:55, Jagan Teki wrote:
> Fix the model name and compatible strings for Radxa CM3i SoM
> and Carrier board based on Radxa recommendation.
> 
> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 225dbbe4955d..0c9a918b809a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -7,7 +7,7 @@
>  
>  / {
>  	model = "Radxa CM3 Industrial Board";
> -	compatible = "radxa,cm3i", "rockchip,rk3568";
> +	compatible = "radxa,radxa-cm3i", "rockchip,rk3568";

Nope, second radxa is redundant.

>  
>  	aliases {
>  		mmc0 = &sdhci;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index a4c33310ca42..8ca15b723799 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -4,8 +4,8 @@
>  #include "rk3568-radxa-cm3i.dtsi"
>  
>  / {
> -	model = "Radxa E25";
> -	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> +	model = "Radxa E25 Carrier Board";
> +	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";

NAK. You just changed it in patch 2. Don't add broken compatibles in one
patch (cm3i) and fix them next one. It's like adding intentional bugs
and fixing them immediately...

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
