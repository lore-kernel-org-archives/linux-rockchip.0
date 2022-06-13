Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6DCC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 09:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8/oLk7Rjm4UMM2tcW/uU/EOPKt96Oico/bSXuTUKnY=; b=ndLeMJNXq2e/39
	CbhCft92bpJgNZC/1cd4gTa0F5h7maB33gQkvvJTPSV6NnlWlOHTKobAwwRcIiglZ39JazjCfOZPF
	ZGFcoKc8e8TclN6+0OnrKlau7FKZNUAEZOMndYq6c0yzlDsQAZfbNtvup7qo3svjG0FaDDD9cA164
	GThuxDlHh3ncGxoQUY9TpwCi1PBd3RtK5WQEnsO4F/V0SF/WenOJZh+6RCJHxKgxrqpQcWyCBEZtT
	YkiJFxpiiMRC0T6jawfOWtLYnG4KDYnXWwwQotPtpwrOrpXUe6BG3bULgeTsxb5ECriYHqr31A2W1
	h0HHhXv86bSt6ReDcn+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gcK-002bym-9L; Mon, 13 Jun 2022 09:44:16 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gc6-002bo3-4I
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 09:44:04 +0000
Received: by mail-wr1-x435.google.com with SMTP id m24so6353239wrb.10
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 02:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=u5xXrnLk8hPXTTCgmE1G5BVTn8vjO1QNkaM0LsIMZ/M=;
        b=RnT9p3BnlZcKJ+9k77nktxR/mJdxoTKVTVzhRpnkeIPreRviuXH/pJvtT/tkYSSeTG
         2kqdGIWDkK33N/EnIu8qFX4zCH97K1WVrgzY3D5cFiMZ690o1Gjt8UZ4AlSNUO3AAJCP
         oHpD36BMy81sPCjqu4ZGYnY/0FNWgSN9FwTdzpUdkXc+zJfvcyn8keKpliZITc/sRCy3
         ncyHaYf4uX1Crdh2N52HC1EiAKtzcta2dTpGbcTJS/jj1sW4XMTqb0aWxgTqKG2Txcm5
         Zz7pAvKrNGsjnEZbdcqhQ/X/Geb4TBYjxZF6Tmf+rh4ax9jbo5smw9C3twR4SaA6G0aW
         bFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=u5xXrnLk8hPXTTCgmE1G5BVTn8vjO1QNkaM0LsIMZ/M=;
        b=Ghaf9au6fa4x6FXCx/QAZW8ZjXQJ0cy4jMF+G0QpsLE95u0sktYoWvHDjOIea5n8lB
         FwB9f/7Gq3u00sUuJP402Sk9nyC8JHUAiCNcZwabAPxFcO7HqVLQTXpCI1o9ZT3dP9jy
         RjkVvtjzRkDf9W10gBclx+LfnP465kuDlksZuEuBn0e/uu5PotiBj8bAqOyitgp2gDBN
         ue9fSyUc+Oy1g6t00NSRwISNNAmfQj6ULrYnuQiEtFv3uBwYUIVqUpiqEz0MxIFXiCqs
         GTGfZKYrkiHrMmcurcoBga42oauwLHmF4Sbyi0JvN7Jm+NrmfGKyXIMEcNDDKxl6ji51
         B9IA==
X-Gm-Message-State: AOAM531aCgo7OqGMT9XhyToLd6/ntBd4QX0syaJvgRZcyvu96y2LHo33
	LWstQb4F34Doz43tX+R/FdNVAg==
X-Google-Smtp-Source: ABdhPJzoBeEFaoVtayPoYOl8lsPHAw5X904LIdYL9UKaIUafLUSDbNfAQiWgXvz8QJEfh/DA+IizhQ==
X-Received: by 2002:a05:6000:15c1:b0:218:468b:4c01 with SMTP id y1-20020a05600015c100b00218468b4c01mr36804058wry.60.1655113440581;
        Mon, 13 Jun 2022 02:44:00 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id m185-20020a1c26c2000000b003974d0d981dsm12823357wmm.35.2022.06.13.02.43.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:44:00 -0700 (PDT)
Message-ID: <4ee7e805-d4ed-a765-6b5f-c78183a64fe7@linaro.org>
Date: Mon, 13 Jun 2022 11:43:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 1/3] media: dt-binding: media: Add rockchip-vepu
 binding
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220514133604.174905-1-frattaroli.nicolas@gmail.com>
 <20220514133604.174905-2-frattaroli.nicolas@gmail.com>
 <440a7dc6-7ec4-d7a9-0c56-3b3dc15b79d0@linaro.org>
 <1885873.U9Vi27CkfU@archbook>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1885873.U9Vi27CkfU@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_024402_232104_5122C25D 
X-CRM114-Status: GOOD (  12.91  )
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

On 12/06/2022 17:05, Nicolas Frattaroli wrote:

>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: aclk
>>> +      - const: hclk
>>
>> Since these are new bindings, it would be good to follow DT convention
>> and not add common "clk" prefix to clocks. Just like DMA is "tx" not
>> "txdma". However clock names "a" and "h" are also not good and maybe
>> this is already shared implementation?
> 
> This is indeed a shared implementation. Theoretically I could change
> the driver for this one case but that seems pointless, especially
> since "aclk" and "hclk" are the usual clk names for AXI and AHB on
> ARM as far as I understand. I think I've been told before that those
> two clocks should always be called aclk and hclk.
> 

ok


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
