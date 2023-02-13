Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A66C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YE0tWzTZURRzuZaJyc5rdbsUmHKj1OWIphoRY8TUIxw=; b=BxOaKYb3So3JGB
	EO2msA4bxUxJM1Jc8egrCaEdgTXvf0ERhyayAl94iBj14j/yYOH11q86cilu+WY9WI5Errc7Wy+Jh
	tpsTZzTxHsAKKM3DHKkElBsR3SpJIEZGw2XL8Dt+yTC7Ydi51Tsz2aJ2So0WMen9uzt/M8GyT/Zl6
	R21FIF7oi/jOfcFvaTDzmUDC1MB82XIinrs1kJZzN9V2Mmvj3Iuhsli/q1ZuxPTkUFszfHipCj+p3
	Wzzt08rr1xMd9y0cSXvpCDPoz0DXApLn80+WP0iFUX0/qKa65g7qBkv1hyg4IghwXTy0IbhsZjUqx
	KGbp4LrANo0VLwx3YHOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRazH-00FGiZ-Ct; Mon, 13 Feb 2023 15:43:27 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRaz5-00FGeF-Ux
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 15:43:17 +0000
Received: by mail-wr1-x42f.google.com with SMTP id m10so3785368wrn.4
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 07:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=grZOW/8aqAxwWW1v+gy6Pklv/5DczNl6MJ8KfdGTD48=;
        b=Mn0epFcPhTHPvPIiTCKz49cfIAIM+YjqM9xB6cayrF/pkYdfjOIHLc/xGZGhBMVE2X
         1FVAmEk7CYrsaIzgV01uHkXgmnVZceRHE9SYeB0Otpxsd37gxUa2ZAeBAVHESnp9iNwI
         qeawgugiKeIuqjajD0obzmYzQ13jcEzo9gc59pN65kx+0euEYDnM8XmT3mTzQxegoptM
         QUQZ+mwp46/thb1S44mhedYlAkOVuOwnqAGAkdyTps8DgUFH92F7Jz8OLBUnKwJ84ty3
         IYrCywkjd5TuUfWpeTOAYYrOpBeSNtVsRAmyFiU1bu+zSJ8vCa5DYc1X6SbXSL/16+O9
         sp5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=grZOW/8aqAxwWW1v+gy6Pklv/5DczNl6MJ8KfdGTD48=;
        b=QYf8y6Xm5tGygD4dc8gT2S1UI2Ve7AZ6uTNJUuyiBOLMLb/nUW7MCahvYh4atxD0f9
         MVdnJ13whrh+FUdNvuzM5W00DPPRZv+lSZcaMcwo/Ela5q5/CYKUWMbh2xcL1sE3BsMD
         2NwPQHpmdKD/XS20hRKvBTtf63DTYdsHtirNp+IluQg7YuxqAk0MurZbnteTax2qejiI
         SgGclYEeukZga6xR6ZsceYCsAP8R72nONnaIwxvaLCnumfslhWp44oHwxRTdT8FvrPIB
         wJpm4ILafZXuxDSMx3pRNgoxlQThKQzh33NdYSraPCRWaqcDpUtYVXDH6zaaVuh5UK7I
         oZcA==
X-Gm-Message-State: AO0yUKUeKXWfYjjJ2R0gqbNKLeU1nmGP2P7LeMYJKZDg8TeED/sCQhGX
	Uy08tbc0pH03B7qoKUGS7Q1kzg==
X-Google-Smtp-Source: AK7set/fv3IfkRhQdb43GUNWPWUP+KWdabW3q7k8WpoMLDKXd9GZktRrSRP+huAK9bzTxI9M3fP0XQ==
X-Received: by 2002:adf:ec83:0:b0:2c5:56f6:52ce with SMTP id z3-20020adfec83000000b002c556f652cemr4737026wrn.26.1676302993959;
        Mon, 13 Feb 2023 07:43:13 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a4-20020adfeec4000000b002bfc0558ecdsm10735081wrp.113.2023.02.13.07.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 07:43:13 -0800 (PST)
Message-ID: <ea8b3ed4-2a94-5378-8c93-4bff1f58c70b@linaro.org>
Date: Mon, 13 Feb 2023 16:43:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] dt-bindings: mmc: rockchip-dw-mshc: Add RK3588
 compatible string
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230213152740.359055-1-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213152740.359055-1-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_074316_006658_697B43D5 
X-CRM114-Status: UNSURE (   7.74  )
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

On 13/02/2023 16:27, Lucas Tanure wrote:
> Add RK3588 compatible string for SD interface.
> 
> Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
