Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12E5AC678D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Mar 2023 13:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEWmfoF1mIeU4vBtMTYu6zluGO/kSs37xSYGr0sE9zY=; b=Z5Jj7GQnAewLlF
	V1vzYpZP+66jDFa5khN6jM1d7hSwbsiG62xTd0AG3h6TRyG23JVLyQEyL/STe4dcp5qxm39PE5vtq
	NQ9dSPpPdMdb/6YqZUouqz86OSaKtNCHvGsCEQdpX1FbTaPWv5oV1SFKkGaVVwtv6I2EFtlQ2TjJW
	w8rqZtIE8PmkxUsFE8j32NMrDJn0BDGZs4zOggdtbthdENyVMkZUiGm2j57K+EGyl7D95SPVnGyE3
	vx6/9lni6vs31cSzRh24S02abqGgoM4+yJsu1vCuhtlH8NxCkQRaBF1GYsKL9nG7qFYbqRbOSKprz
	3hgloCf9eDa5nJrkAP+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAff-00Cpva-Mz; Mon, 06 Mar 2023 13:14:31 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAfS-00CprR-3n
	for linux-rockchip@lists.infradead.org; Mon, 06 Mar 2023 13:14:22 +0000
Received: by mail-yb1-xb33.google.com with SMTP id e82so8016700ybh.9
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Mar 2023 05:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678108455;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sjrCU8dfwt2r52mtNocw9w9eS+r3p5I80G2XWIYONwo=;
        b=imkXfalDXcbd10QyjB+ndurA7z/hros2mKvpPj+lajBxpK6l2mtOWPDMjulcfDSG89
         crCR8HVY6dBSwt7NVI3bOt+C2Sieo7BRVTCr4+H3hKkjNf3S6ln9WStozd7Kuv1oNJhe
         N+THPGLK9MWrG9CeSWXXIJxfW2pwgeJNBDIopflzJJJlj6OoubbnBHQ8nEba/EeI76dZ
         V2eaEoPOTKjg5UFYk2KFzJPDnpdauXGNAeJsSXeW5i045uPT+5Mix3RIqc1v55+LDY7H
         86RIM/qNIfL1v92hDWXybUJlTfaI17VDaUTlz0ODnx/fc8sIbJdsULEqZM0cuR994xc+
         wUDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678108455;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sjrCU8dfwt2r52mtNocw9w9eS+r3p5I80G2XWIYONwo=;
        b=Oqdwy15UrHogjUSw2qbA9QYyKPlLu3M5YBX74NA6hXuRlHbJ9DwcQxvc6BF/Y6FRrb
         kJP1SCW1UwiEzJLhHe5oFeVOCPZeQ1YAQWaTdGNtWgv1SKm3SB6UlRcVjl8VoAeZCt9N
         1OTkIaCubeVzteIgEA6eSmGbn6Rz87ZQwaZM+f7oe8mi5a33Av9ftgXQp+nRCH+0lZxy
         1W2HkmGo7Hrhcrom+iqHYXgeXjkvTO1iH87L+ZM/g7dR0UKWVJOricffYeo9RJjVEGv0
         tDcJCHQhrGUQNBTYvt+DFqksrMsvEIH0iw05IbnGpnlKn57dgETC7uFKSSDOroKptwpx
         6jcA==
X-Gm-Message-State: AO0yUKVkT5jap8z4gs+yH4glGnQf6ub7z1Q5hxzo3rSpCwTCehSGe3TE
	/v7QfJZWNnlm1q+JMjJxyruVQrEO+jChpwmTQKH6Lw==
X-Google-Smtp-Source: AK7set/9eXofjnPoXZfw7UlW58CMp0dIpumH5qKagGWd2A1jVBQssoZ5W4hJK0gzmJ5RZgIOkmp/e1aK3WLMpy2vXoE=
X-Received: by 2002:a5b:b84:0:b0:ab8:1ed9:cfd2 with SMTP id
 l4-20020a5b0b84000000b00ab81ed9cfd2mr6441002ybq.5.1678108455003; Mon, 06 Mar
 2023 05:14:15 -0800 (PST)
MIME-Version: 1.0
References: <3eeaa940-9d40-5e33-bc36-c9b0449ded9f@gmail.com> <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
In-Reply-To: <774d712d-bcdf-677a-2d9c-a49ed829e965@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Mar 2023 14:14:03 +0100
Message-ID: <CACRpkdbkKgPnkop5V0Diw5goZ9Km4mHXD7=7sb_Nj8k1UtMTvA@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: gpio: rockchip,gpio-bank: add unique
 hardware GPIO ID
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_051418_866280_E80367C9 
X-CRM114-Status: GOOD (  16.26  )
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

On Thu, Feb 23, 2023 at 8:46 PM Johan Jonker <jbx6244@gmail.com> wrote:

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

So we need to discuss this with the Device Tree people because if this is needed
it need to be motivated in terms of "any operating system needs this".

Very similar precedents exist:

pinctrl/renesas,rzg2l-poeg.yaml

  renesas,poeg-id:
    $ref: /schemas/types.yaml#/definitions/uint32
    enum: [ 0, 1, 2, 3 ]
    description: |
      POEG group index. Valid values are:
        <0> : POEG group A
        <1> : POEG group B
        <2> : POEG group C
        <3> : POEG group D

pinctrl/st,stm32-pinctrl.yaml

      st,bank-name:
        description:
          Should be a name string for this bank as specified in the datasheet.
        $ref: "/schemas/types.yaml#/definitions/string"
        enum:
          - GPIOA
          - GPIOB
          - GPIOC
          - GPIOD
          - GPIOE
          - GPIOF
          - GPIOG
          - GPIOH
          - GPIOI
          - GPIOJ
          - GPIOK
          - GPIOZ

I don't know how the above properties are used in practice, but any creative
driver writer can use them exactly as you intend to do with this, so we need to
figure out if this is something all operating systems actually need or
whether we
should let driver authors just keep smuggling it in under the radar as
is already
happening.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
