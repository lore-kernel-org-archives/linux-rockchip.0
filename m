Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 301E6C77B6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 16:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14qTKeluuSdNzqOUGZPpf7GXqfS1aYlACPCOm5uTFSs=; b=YyY54X6FHTDtc5
	Wumy7L6gj9/djiARhJ+3ulU82OXVwcUwpX3Q7IBCGUCEa26A9jq99GcA5eLA0QRs7CYMxXMcGeeGD
	yxUVY2xfwb4lmXIHjbnHMO5FOW5JZizP3w/RfnvnyLOMQDg7w4VcMOLXAPk0hsfIX9AenjhC40eDl
	c8hHfA7Vtm6kf504pjGKG3eE5z8M2yjvMmuPJ5CAkh0KTXNh9itgTXxKMOoeFCJXYHY5eytpO72LV
	qGyUdIq7LqAzEO1anO2vtUjUecB7DeI4Zsa5t7/iHzNaKZ5o8zEvSLV8RW+243P5j9pc3/Av0o5m8
	qliIb0WylPhPk2wiupgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzYE-006bYa-0v;
	Thu, 13 Apr 2023 16:11:58 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzY8-006bU2-0C
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 16:11:53 +0000
Received: by mail-ej1-x62f.google.com with SMTP id xd13so4819666ejb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Apr 2023 09:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681402309; x=1683994309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SbVnJjK+PB772pYnknlZK9wnUbYBaN9qse3IlUBuCzs=;
        b=UahYXf0feyrrLrSXPnMPRxws4s0dn3vMlu9FYF4QFhxTW44A/T/t05a5yaOPQ3IBT3
         CiiX8sX9J4c19T0iOl6JzjcrRaqhdTvgmMH3WxghBQUz7jWQi6akMxcBDYfK4jcaBsaZ
         mQhXAifS6W8lI+r+UeWAapTvEFoyes/gFx32Jhco+hvAojjURtsj+wkBd5Rh1sCuEBOl
         7I5hkBPYGQGaK+M4zatZsiplLruusP2qhtFm+VQcBxrGM1mlpkzBkBSDP/FUtkhd8sE1
         8t++hScZrntWfvlxiAO/kIBRndgQtJL3oxX0HPoKd3dGmgLCSHVBwehLfTcnhN5T/xPZ
         mKhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681402309; x=1683994309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbVnJjK+PB772pYnknlZK9wnUbYBaN9qse3IlUBuCzs=;
        b=f4ctmA850CnzIbBRMk9+rRVeoOJN/NJMR9LMXn/urE3ymCu7ZjzHIb2X5zK1dT3Ugh
         ZC68H31pdfVZ+QoCOphotgdMrQlxjCgViJYGKH7Sz+xNawlRYYF3MP9i3i4VtrISejVF
         dCQ6gK/k1tPt3lVnoV1pBmoTws517Xia8M2pAdD2uETkzFgq+kGUGAO3tzpJFq/yq1Vy
         WdLWyqgWnOQ6sOtUBYQ38El9BLPI6PIvW6fIWCrJaTOVMtZtCb/7i5u+n3oeVxIhfVyB
         SZZwXtrn6r1eVvnCmIIgOdUES2qulzgz8Mh4UKWewYR/Pzgb7eywp8ir0Lm8rHbdQJGq
         Ig5Q==
X-Gm-Message-State: AAQBX9css83Ai+EoeAl11kDGYVhyRXwR4VgHMaVcoGKiG5zBDptIGfuk
	TsVMyQhXY+d0qBxet4Tb0EmI4Q==
X-Google-Smtp-Source: AKy350aLhdVzeZnAveuwnehn2FcS0a//QQGJZJFK26Vetabdq21GE3OUskbeU5SKq9Xj1qW3+lXcmg==
X-Received: by 2002:a17:906:7109:b0:931:85f8:6d00 with SMTP id x9-20020a170906710900b0093185f86d00mr3328716ejj.47.1681402309228;
        Thu, 13 Apr 2023 09:11:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5032:d2d4:ece5:b035? ([2a02:810d:15c0:828:5032:d2d4:ece5:b035])
        by smtp.gmail.com with ESMTPSA id gv16-20020a1709072bd000b0094a785e362dsm1203912ejc.141.2023.04.13.09.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 09:11:48 -0700 (PDT)
Message-ID: <93a34302-282e-0d3a-e7bb-b692eb2d78c6@linaro.org>
Date: Thu, 13 Apr 2023 18:11:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
Content-Language: en-US
To: John Clark <inindev@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230413144316.4247-1-inindev@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230413144316.4247-1-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_091152_150252_4C7928F5 
X-CRM114-Status: GOOD (  14.60  )
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

On 13/04/2023 16:43, John Clark wrote:
> Add gpio-range properties to the pinctrl gpio nodes in rk356x.dtsi
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 802fcc96384e..793dbcb981dc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1796,11 +1796,11 @@ usb2phy1_otg: otg-port {
>  
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
> +		ranges;
>  		rockchip,grf = <&grf>;
>  		rockchip,pmu = <&pmugrf>;
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> -		ranges;

Not related to your patch.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
