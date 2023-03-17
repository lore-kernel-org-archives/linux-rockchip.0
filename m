Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09718C7618A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 08:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1ZmnM0npm7sNLr2MAzktwh8YTZNNp1MUYYOGU5auw0=; b=SWhiJsKCmInrFG
	EZfl+fmahnFHAV/4rr3hWPWikUAR+BOzth+cKT1gjRb68ombAhVKNuXC0HwrIfelJu9vvhLzal8Px
	VW7mAzHGZDga1a9LBna8a+8+bI0VqAuW0zOqd7j5Y6AkU8WZQFnqRiNazfMzBo9uPHXsqYLM0hqzJ
	DvO7FhYuQm1+ETGd1QB+8g8umZ5dxjkJXkkz8ddDJPZ0a6GdU4q9QueOrvoPDusbHDwnwaJvCZ3D+
	ABWkWCwCOMs4sZAnEUWjQQHFvADtc9l10U70iWZBkBonb8BxxlR8cTNqFOHbSp6LuwU26wkEShiT4
	Km1OUROB2WYWtFnaBjAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd5Pa-001U78-0Z;
	Fri, 17 Mar 2023 08:26:06 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd5PX-001U5u-01
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 08:26:04 +0000
Received: by mail-ed1-x536.google.com with SMTP id x13so17374938edd.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Mar 2023 01:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679041561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HMtLSDM2IpcbrZYXetfebgedF+TZqbOtztzNmGwB5dg=;
        b=xNllU9x8j042ml+H77bhJMLbAZm/wDqztms6ARNM/UBOwP/3sBmjX4gAploxexEUve
         +bFJEiXaRBZfSo7ac37NHA6XU1MGfIpk4ctudTT40enYtG9VmyVnCjTmuDAYRGbi+Qxx
         488pWaIR39lMNK5g08vChO81pZVys635EQyxFcIs8rTTVAevI5qPxHVU9vV7kHjI4Fdc
         fB0ddsE65sIxlUFutxo94A2dGNg1kTvJX/t5odR5i+2mnW9GEN8FoHKbaX/BtlHRv1kH
         q81Bqe4ZHhDkMonv1DFAAeDkvcfjzc0vaT85Tx9mSXvpgObwoP0R8skRwAOxW5RRWcMU
         kxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679041561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMtLSDM2IpcbrZYXetfebgedF+TZqbOtztzNmGwB5dg=;
        b=5bIFy6dY5meWMRjVRMrZvLjKqBsSRwTfJj43ek6jZ6xP12Q2cUYASCZPIAB9zFiInd
         PJW259Dp/XUwS+xEoJnBtGU4GHaIyVihRas5xdmibhryFtdx9gV7RbAJsjZfvxCVTERQ
         uo0F0dSlz+57Rz6fkIyQB7vYrpEmElEhh+P0O38QMUKsuXicWeqQvpdTmrbY/BmEtSaL
         JHRP1UkKp/kbCCd12kNE/yWKIFuXqQSOpJdwm5rQqoozu+3SJk8QsWpJg8Usc2jMlHv8
         g3XsToAMxxzv+xMMVKqnd9vYWeti6V3V84J/Av8CrnnA6t++GkVxcBQEE0nYq6SLCkZV
         65nQ==
X-Gm-Message-State: AO0yUKUc6QCrssTWzYVsFvZWN/NUquYmk5u+rGyXCC/YO0I0DBgcMhzb
	PEsGLhblxEiqzsLvdO8zXRNq1w==
X-Google-Smtp-Source: AK7set9U+jKH5QZ3dnCfo6p1cM7zkAUSBIUFa3e0ySbP7S+RFF8CHkYY/up8+gxdnycP2TQP8pxpyw==
X-Received: by 2002:a17:906:9f0a:b0:8b1:7fa:6588 with SMTP id fy10-20020a1709069f0a00b008b107fa6588mr14042511ejc.12.1679041561663;
        Fri, 17 Mar 2023 01:26:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id h24-20020a1709062dd800b008db605598b9sm689819eji.67.2023.03.17.01.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 01:26:01 -0700 (PDT)
Message-ID: <68f6c2f3-298d-156d-b336-b5ae957358bc@linaro.org>
Date: Fri, 17 Mar 2023 09:26:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3 V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
 johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
 <20230315173657.28692-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315173657.28692-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_012603_050270_953DF7BB 
X-CRM114-Status: UNSURE (   8.71  )
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

On 15/03/2023 18:36, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
