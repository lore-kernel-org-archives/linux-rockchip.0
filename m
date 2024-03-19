Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25BCBC54E60
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 12:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQRUx3+NC9UOmT2JRmVyEqk64uQU0lvi+pgBRv30OU0=; b=1HScmTDvtKBwMu
	1hvvos4Zq+aUiX7WbRJ/gSvwJhtbR+vv1zi7ouhggoV/vvACJBP3l1kV83GmoHrNQGRmMxOLcC8vG
	DpgBelHhqZz2enheaq3hhuCM8w/VVukojyt0yZuh8gQSB7pV9i9i5hrSGxlBFHVLDxNMnKaXUcW16
	TxN59NYVhVtNSynqKhUuj0kZ/34QJ+7dP003yfiD7eTewuoNA2Jy/B+m9qoTLpb291N9DyyqlvJM3
	GVrt933QOnu2AlPvikSx2A/snZR+JZ//BfpCBHDnOX0NUgyvNYj/Ub8pHIBmuIII5X7XbuwebXoJW
	QaIQq/B1yuuwJsXTDoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmYnb-0000000Ceq2-0ym4;
	Tue, 19 Mar 2024 12:42:35 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmYnX-0000000Ceov-2Bdl
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 12:42:33 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a46cd9e7fcaso215477466b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Mar 2024 05:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710852148; x=1711456948; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aTCcKrDyZV/VE20k5CxghomHj3uJ8QFCRB9EkJC2C6M=;
        b=Stx2lQ3OSYrhHgIgTtfBlqvLHg1jZOq/LziNpS81GuG0ucnTFdfuq0jdI1VXRaELGJ
         EqWIBBsmharDIoLBbuwQ6awP5n4VtFamfIDpZJf62rgvSP0EioqWH6ZIcRfSXs24UMYt
         s+/A5w7zkouf/8jrGBGfSKu7xqnWVXogrCleYbw13dxGqpsFlFVm7mUqTlp86uojLcGf
         qgPu8YjtNrA90Rk7XW18zwh7+scy7oO4Dht/1jtYH8CxnMmqXkxwuB4Bfz85W5BOTJUn
         SgEb2gTH+T40stzWMPjybYjZnoh2dTaaFa9X1gIhxW/xQ+z5lux3IjhzM2rEqef0bYZM
         cK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710852148; x=1711456948;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTCcKrDyZV/VE20k5CxghomHj3uJ8QFCRB9EkJC2C6M=;
        b=MrD10nMesRV7x9YH6tnCGZCWuib2DMqBAaKOGrcdjuBRrf0EGJm4fFLXhDFc/kmaPG
         1d0rv0IA+i8PzbgbQKh7waFP/Yvy1lA29mYfrvw9kQosoiyDw+V5+x66Yx+BGep1ESxm
         TRUmn8O70UU3uuo40/MuMTpCn2YRa569s/hasCSwVde+9Ork8UorSkLn5kcRZZ0dHx7o
         UTdvN61k2Inz0N+eGD/19slFjes3nXT5yDMiK8MMWoeL0pZPeKUOY+UaHl4p0DytIba/
         RClIzxHiuIOBAqjq8gz8oSMIxDZ29dI3nYZDaOPJsEevjZU4vzwYBt1tpJvL78j9i8R1
         v9dg==
X-Forwarded-Encrypted: i=1; AJvYcCWNz5N7OFYHjUXJ4xdhfjUEWhsnyuqHr9F0j7drcP8ISZ74TQeAlnRUubBnOoqy8heVE4knEpS85JCTUOYnfE5VnXAzZE0ftBU8meSoXgBs41qI
X-Gm-Message-State: AOJu0Yzs6y0+RLKOwIedFoP7B4foZciL2zt8iC+IxE3IDS/eXdoS5RoB
	jRKhHL4KA61sjFXDDSdaJjOWwCxgCWn6FbW0gaLmLdzyvPQCI/AKjkKMnCP0Vbo=
X-Google-Smtp-Source: AGHT+IHcG/0AcklTyrIjXvHAHx/CFXgKd5Zd8KREBD0avXzjH7Ps2xKivaQv32xOCsJiS8g0t4Fq7g==
X-Received: by 2002:a17:906:794:b0:a46:da57:6ee4 with SMTP id l20-20020a170906079400b00a46da576ee4mr1535310ejc.73.1710852148534;
        Tue, 19 Mar 2024 05:42:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id ml16-20020a170906cc1000b00a4666866d02sm6060270ejb.97.2024.03.19.05.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 05:42:28 -0700 (PDT)
Message-ID: <b43f6dd8-221d-40b1-bbc9-d5f778fe1954@linaro.org>
Date: Tue, 19 Mar 2024 13:42:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: iesy: add support for iesy PX30 SoM OSM-S
To: Dominik Poggel <pog@iesy.com>, robh+dt@kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tianling Shen <cnsztl@gmail.com>, Chris Morgan <macromorgan@hotmail.com>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240319095411.4112296-1-pog@iesy.com>
 <20240319095411.4112296-2-pog@iesy.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240319095411.4112296-2-pog@iesy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_054231_686929_B5939B94 
X-CRM114-Status: UNSURE (   9.56  )
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

On 19/03/2024 10:54, Dominik Poggel wrote:
> This adds support for the iesy SoM px30-iesy-osm-sf and the matching
> evalboard px30-iesy-eva-mi V2.XX.
> 
> Signed-off-by: Dominik Poggel <pog@iesy.com>


> +
> +	/* BB138a: MAX9867ETJ+ audio codec */
> +	max9867-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "rockchip,max9867-codec";
> +		simple-audio-card,format = "i2s";
> +
> +		simple-audio-card,widgets =
> +			"Speaker", "Jack",
> +			"Microphone", "Mic";
> +		simple-audio-card,routing =
> +			"Jack", "LOUT",
> +			"Jack", "ROUT",
> +			"Mic", "DMICL",
> +			"Mic", "DMICR";
> +
> +		simple-audio-card,frame-master = <&cpudai>;
> +		simple-audio-card,bitclock-master = <&cpudai>;
> +
> +		status = "okay";

One more: Drop it. The same applies in all other places when not needed.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
