Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D18F0C61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Feb 2023 11:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFYKecXBTKjZb0GmT0FDxXi/EBLdc8CffCP63JjlT7s=; b=2EFy4jGAl2SU8A
	Dap4g74yyxSK0ygU79DmhwqJ0Ffj+gCeBdpcQRjEIA+RFCC5OMa/c7nZc0wgXVUHIeu+tWwtYGj6Z
	3ODy8l1Wy55EXC7XW7XVBkmgGUNq8eNdjjwde0fk+rn7Oud5zQCg6fiahkeeBz7ImPui3EP7vKr6Y
	9XeHa5UHtTzcGydz30uc1ZRr9XYAJlFNCw59xJ0q/eXAaVAcPlUpZFb8e6HuPUuvycHkKZbjiSjxJ
	i581hQjDJvPnoCcppNQBfPsYYx/be3fpSWvuxxi8ru1SIfkgSLHdngxkcNPJ+WdpPARdzHedMGuxd
	KvpgxoqOeqFnvwsyShCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVW1d-002DeZ-C9; Fri, 24 Feb 2023 11:14:05 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVW1a-002DdX-Sy
	for linux-rockchip@lists.infradead.org; Fri, 24 Feb 2023 11:14:04 +0000
Received: by mail-ed1-x52d.google.com with SMTP id cq23so53144983edb.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Feb 2023 03:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b4D6hX91fb92VP82KNoA4xeL0ZK1TUyb4FSrEk92iZw=;
        b=zNcNrNzKfAKA5t/pAA7zijWFeVt36mJVhdHAeL4/YAlXPxdmWlKdR6R+xi+LrlWP33
         z2Dt9BjXIn+4OqbmsvOUYbfiwdwSYia64/Lw2AxfOP49gPuxf+r7nWvl/96yHIQSaZ5D
         +1bNEERoen9tf9vFvKxn6+SYz7+jID2wwp4PMWG2lkqm61CmdgDJoIJfDMs+sQ7HRiVx
         uLFboR8A41OR6Mgl8CKjyZPx4ZDnUNuVa9z9bS4I+4wxDNf8EcoPR0YCcIfxtKYuS8tj
         F6gSTyQBPPWtQ5Uit7thD9i9mwfZvqfj3mQaP5u369414I1D16RU1XlRwAshaGKww/QR
         329g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b4D6hX91fb92VP82KNoA4xeL0ZK1TUyb4FSrEk92iZw=;
        b=Sxk6HcF1sF8scTYYmOQE7jommAgyLgTwvF7VdwKPgoE9zMqHCZ8kQT0W8plGmW9hkM
         3yEeb7N7bgtwI0HDdBAHfJrdtWpISgVZgaQbsFrIaml6HAnyNHli5m5f1wicc3aAkPJN
         C2d3ZbYK3EOK4yZ1luB0CBKqi3aU+NdbSxypO72Vban9jAf65lBvcXrXv0jX0B8r+MDZ
         uCbpzv2t7LkQs5V3enaOFcRP36zvrxaBxx+UraF+56ciLAkrobz3TbEDqU46R5S4nCvu
         qXEJRqwndWYRQa9ztBP7rhmj5/PmKIdMSU2ZY/Ds/BMUfVmpMP912bpXhbc7g8sWNRma
         mQYQ==
X-Gm-Message-State: AO0yUKXyiuZZkVnSoSh4iCGEWyahNR4pqaXM6Fgco/nI92ErwcF7LfXQ
	HwQkDk64YNhiP9uBPHuYbIlLgg==
X-Google-Smtp-Source: AK7set+gc4yhE+A0IXsPpE9c67JqLb4w2Z5XdXbf0h0MLlfYinTEULSVEUAfshoVmYErhQRuFjwloQ==
X-Received: by 2002:a05:6402:54c:b0:4ad:7224:ce94 with SMTP id i12-20020a056402054c00b004ad7224ce94mr15016385edx.15.1677237241273;
        Fri, 24 Feb 2023 03:14:01 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w15-20020a50c44f000000b004af70c4b4a7sm1534058edf.97.2023.02.24.03.14.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 03:14:00 -0800 (PST)
Message-ID: <d4d4c5e6-4700-2404-618a-5cb21946b555@linaro.org>
Date: Fri, 24 Feb 2023 12:13:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 2/7] dt-bindings: gpio: rockchip,gpio-bank: add unique
 hardware GPIO ID
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com>
 <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_031402_983495_81DB5EC6 
X-CRM114-Status: GOOD (  13.93  )
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

On 23/02/2023 20:46, Johan Jonker wrote:
> Add a unique hardware GPIO ID to the Rockchip GPIO nodes with
> the "rockchip,gpio-controller" property to be independent from aliases
> and probe order. "gpio-ranges" can't be used for that, because there is
> no semantic restrictions on how they are set up.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> See discussion:
> https://lore.kernel.org/u-boot/CACRpkdZx8EaSFLeh4vruRsdC+Sx_ieBiKmuE7t37zhiYqtS3WQ@mail.gmail.com/
> ---
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index 2e9a5179c..39ac41e9d 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -52,6 +52,12 @@ properties:
> 
>    gpio-line-names: true
> 
> +  rockchip,gpio-controller:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maximum: 8
> +    description:
> +      Unique hardware GPIO ID.

Neither commit msg nor this description explain why do you need it.
Also: what is a unique ID? why only 8 of them are allowed? Why assigning
arbitrary numbers should be a property of DT (answer: it's not)?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
