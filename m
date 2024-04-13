Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80ECFC04FF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9WKThzaMbjXs/TY1GkO+CzvsYeDUqUQghIVIvk2HkY=; b=A4BPj4t8/ZvSSe
	aaNQRNJ+yl1JXgmjD7Egpo45/jTJKsZ8GZWyPwjpEgnS++j7e29F1PJKP7r69/2L47jb+3jGYdZMj
	61maa+duQz7smlp6WWde7+kuccKuQdxDOHocURY/OQXF1AWXaq4/sxxX0V3mzDQpNU+9a5ZOMxOKz
	AjIaPJb7kYGko6KW3NRWVm0Ycm3pvMJCm2RDpjAAgvo0Hl84Irtu+v2BB0sqRLUoa8X2I5643RuKO
	db2EAJQ2oRfGB9bBi6C5r/xL8pIwtYHgwI0fv0t/C8B6ziIXCthxEWjyQ31ifrt8uRUx5qKh6Ssxh
	39tCyKWsttEVeX0CZXRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvf0j-00000003Or5-3G9m;
	Sat, 13 Apr 2024 15:09:45 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvf0f-00000003Oq6-3BhQ
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 15:09:43 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-56e6a1edecfso2880731a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 13 Apr 2024 08:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713020979; x=1713625779; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uUjiWSpKaaRot8DcPu9d3bUDl81R1NzujRT2QNtvHUg=;
        b=VwxsxcIan6WINl1TfMsLrK3ky7cREsqbiNyqLHVBQuZzdbVc8VGcpLvl+mXni4fSOy
         ayfjx6AP9IlIRSGEb6d4kp7wpxqsBpEJA4d2WM6RQ5wLbbluRMaAp6DjajsOKbWWZiLB
         5xWthqM91fmpeIR2LDbV6vxHKD2atBCtfJCoDwMpG4MqVhlCd8LeQ+d/H9hVSezPPw8H
         ZixXMHGoreOkzdw5l/wifG2qOcQX0swOr88a7XonZXzIaqc1oOnE1jUhW7+GNwp4cPMY
         L322WzgBVEpz/3lgMK2L/jaAhWjfcKGi1KRQbjXFVHZKeQFivfbncLYCMqEHzw6JQFMr
         9hHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713020979; x=1713625779;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUjiWSpKaaRot8DcPu9d3bUDl81R1NzujRT2QNtvHUg=;
        b=R01aXA1pJXDEwMKJe5NsvUBIJzjlePnOrz/YLGwcDzIZTnZJs0rNcLNRi4cdAJ+u9S
         pAa6JimmwotYjexiplxYuFG+PcitM3q8DjLztXNu0whE9axpc1jStncfkuzJ8CnMg1Vx
         TvCuQmD7n2nxQw9HXBJ6mJZBth9nCpXf8w6IIubEpBUZYgfnDjs7CDA9YBKc/Dhh1zas
         LBnopMIlm5NUqIm8nZeEOJuuk8TphUs/6pWTxw4J5KCiCdx4N3zq7Gn4ntiqMyjo6wyO
         p3cEQIOhi8so8X1XLI5gtl/mD9S+yG4mDvIskPDe7js4K2ZL2ZMfN+sEv/xMivmJnU7W
         2tDA==
X-Forwarded-Encrypted: i=1; AJvYcCW7g3z9qEsVGphxnBZXAeyChwHQkseoq/AGJomkgQbuOB52IxFOxMT2QKydIL1lvc4uG6uUbNIyQXvZEw4rgH0qQNlQKrYNuXoASLzr/3MoAWHT
X-Gm-Message-State: AOJu0YzW36Hxuj+Y8HSyjFwSeQ3H8UnhM0uMifLUiPSiA8qk1wG8StUu
	OEkmovCrXUic0sIS/TRAYbmQwY/QL4An3sp9PvxnebwwntalQcEwCYYJqQiFtE4=
X-Google-Smtp-Source: AGHT+IFc3+tRxkNnLJgriwRgYfCZg6Q2OengoVU4yFnYPJb1OCMAgLNnXGgH+u17/mdvLCec6XsXsw==
X-Received: by 2002:a50:8753:0:b0:56b:c210:870c with SMTP id 19-20020a508753000000b0056bc210870cmr4440554edv.15.1713020977139;
        Sat, 13 Apr 2024 08:09:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id g37-20020a056402322500b005700e153647sm806121eda.38.2024.04.13.08.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 08:09:36 -0700 (PDT)
Message-ID: <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
Date: Sat, 13 Apr 2024 17:09:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Avoid error message on rk3328 use
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 shironeko <shironeko@tesaguri.club>, Etienne Buira <etienne.buira@free.fr>,
 Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_080941_979870_A252F49B 
X-CRM114-Status: GOOD (  15.76  )
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

On 13/04/2024 15:56, Etienne Buira wrote:
> rockchip,rk3328-grf-gpio is handled as syscon, but syscon mandates

syscon does not need such property. I see it in gpio-syscon, but not in
syscon.

> presence of gpio,syscon-dev node (or it will call dev_err() when probed).
> Correct rk3328.dtsi and related documentation to follow syscon's
> expectations.

No, look at gpio-syscon driver. Parent is used.


> 
> Signed-off-by: Etienne Buira <etienne.buira@free.fr>
> ---
>  .../devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml      | 2 ++

Please run scripts/checkpatch.pl and fix reported warnings. Then please
run `scripts/checkpatch.pl --strict` and (probably) fix more warnings.
Some warnings can be ignored, especially from --strict run, but the code
here looks like it needs a fix. Feel free to get in touch if the warning
is not clear.

>  arch/arm64/boot/dts/rockchip/rk3328.dtsi                        | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> index d8cce73ea0ae..2c878e7db900 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> @@ -38,6 +38,7 @@ required:
>    - compatible
>    - gpio-controller
>    - "#gpio-cells"
> +  - gpio,syscon-dev

No, not needed. And also incomplete - where is the property defined?

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
