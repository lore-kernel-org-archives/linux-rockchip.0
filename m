Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08250EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 13:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQkXD0vYhlryUOjRdnISnDJdn3+iHse0hoIWyslxxwM=; b=S1vzy/WlDodgdf
	Phz6xoPLO61Vo+lNJip5ErXAyYcb6mAFkjOR+TOJP3SUA5qnoNWCaddiAneeRo/g2BY4PhY9ijA9k
	ioFt+K7/eV15xxtcLQJWscWEQ+x4bXmZmNitiBgJHLZ73aUS+nfDGwP3Q7otL9d19JdHJx71bzTrS
	Ls/kHyaFb1k9L9QWOHzC0F7wRSye8awitGwtouaY2TOtQWhWQGST1hE5CF3hKSE6kkyMjl+4nn3yQ
	nRVkdgKlA1r/xGj0xwk/8VsgSxbbchRiciM5ovGJFZPMGafHPfl+uMMA/lsdDMxpaZeVYEfLqER8D
	U48yZ04gnzlW1ftxecmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHPRi-001okG-0o;
	Thu, 06 Jul 2023 13:54:58 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHPRf-001oi8-17
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jul 2023 13:54:56 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51d93425853so1011886a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Jul 2023 06:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688651692; x=1691243692;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dJZIZaXi9+UMAV6SzKJCfkOpgDP4Lodb3brLJpgo+E0=;
        b=bg5odx8aK40mX3j9+IoldO8bOk7Q6UJ80I6WYOnvN3cvqQ/NzVPYbisFdH42EBncGu
         wRn20470gK3yyXuzRe/PhfrLkGmUP1UBapt+tarplzaNZ4+b7ec2CDJ9ov1KOmn1/UJO
         XqDDKKwMmQ8C735pGjpBTQhOMae4rvglBoJhGZaUcGlIPWTmDA7IKW4Gr/G5rl54UFyG
         Jz8dAdgt5JfmlgKExw7j4Zn87m5S2b6us59580RL7le9ryo9u9C1XfXLquv0yL2slt8V
         jCREiTNvj681GBwkeAaBUw7z3ZqoTJKW9jYyars66wQZ9Rf50fcDWLYAfZSTWgk+Gtlm
         iVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688651692; x=1691243692;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dJZIZaXi9+UMAV6SzKJCfkOpgDP4Lodb3brLJpgo+E0=;
        b=Akr9XkbPorKZ+7eD+BnShbESbJQY3f2JChx7OJX3SYRKu4YLjzusaVfsb0CSr0MgeA
         22vRMHUCYN9LAqYfjkwtYpQLBo9CltbZYe5KlIYpVx5QKnl9bZ4h8Of3PD6rOcMTJf4S
         enFl8VZDtfXGqCr+yxLATuHemWFMhBixtOwMi4VuHxsgNvZKlthQwcyhgThY4sS1/H12
         9hHpulKIQ7jkc+1KvcpJRwFZ2PTWa++Go/haYx4d7O/zss+gw2xdJAM64mTgrs0clJ0Z
         3Hw205E9beG7QG1QMUWv7mBYSXNiyp+kPolMNWD3d/F+/sl7siWObzKAsw965yIl7UVi
         MxKg==
X-Gm-Message-State: ABy/qLbi3fvVFm4YLbB0EQBzo+eUZhCLOzIYL98ZKowcIOVywE6062sX
	9Oe080cENl9yvaq96dYUrKyhAA==
X-Google-Smtp-Source: APBJJlE+2vHvI4Z4KJIJhk8YVlZZPb330YMaIGshIPS5z/4VS8YZ4GrDE6Mi7v6oZzC4po8QkYlzCQ==
X-Received: by 2002:aa7:c610:0:b0:51a:2013:583 with SMTP id h16-20020aa7c610000000b0051a20130583mr1758445edq.13.1688651692535;
        Thu, 06 Jul 2023 06:54:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id h13-20020a50ed8d000000b0051e362db186sm123271edr.60.2023.07.06.06.54.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 06:54:52 -0700 (PDT)
Message-ID: <941ead9e-9e46-b5cb-0a8b-345df6606484@linaro.org>
Date: Thu, 6 Jul 2023 15:54:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RFT PATCH 1/3] arm64: dts: rockchip: correct audio-codec
 interrupt flag in eaidk-610
Content-Language: en-US
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_065455_390837_0E039C3D 
X-CRM114-Status: GOOD (  17.15  )
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

On 05/07/2023 08:48, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
> 
> Correct the interrupt flags, assuming the author of the code wanted same
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW

This should be HIGH in both cases. I will send a v2.

> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> index d1f343345f67..6464ef4d113d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> @@ -773,7 +773,7 @@ brcmf: wifi@1 {
>  		compatible = "brcm,bcm4329-fmac";
>  		reg = <1>;
>  		interrupt-parent = <&gpio0>;
> -		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
