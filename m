Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7144FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gvXfLorZxbMflJd8r0XuSg8sdbLhbAU1zG8om/kjUA=; b=mqG44YeO5Dv9Lm
	bYHJ6VfXrcOBR3xpMb6gIf7STBqYHk2y1EIdtRWr5VvCsVQ/WCCajJpopEui6ULoFGEJWFkmem2IU
	7LUZyt4UQhgX+DtF+ntU8KLTADgB9b7ViTQskuVWeYZ3jQRlCyHo+07IdQ9/VmUab3eAQA9C4fjUJ
	35wmJeE9YP6UWBnN2CK0Logk5vTtoQOwZf9noAkwKXZkJhjnuWIJnNJk0XC/T7o86d8khy4hGMJL0
	q9sMzG0dQzY3pKBj2biX2PqQ2ZXj6GLXQOMXwCasjJqDpngdkebnEMibrSThnkxN15KnGr4qzEIgx
	GbUO2ESgsc96uhJoUX6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNB8g-000GJa-20; Thu, 24 Feb 2022 10:14:22 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNB8d-000GHY-Dk
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 10:14:21 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3BF3D3FCAE
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 10:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1645697654;
 bh=R2XzFGsa+EKmA5bAQUzuu09BXbD6MYmLaXLgYZlWR5Y=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=H9yJlbwPbmWZN4SlZsuarVphwBuYWZnn666W0MTUW8Ls4vRUVON+EQmwheOpvqIZ2
 miNcbBzsKdlmD0ls2lMyLEcZVySRUlIzkzmaDUEtKEeObI0OKPEwuB7T5DZvlyKYzz
 G4J5sWIDhh0vhoJP7UkArbioRsNzlqwr/aEmuo7Q/wkiWEsYa9huo/0XLCosdRfC7J
 WFqjBglh7h9Dc3cWjbKEJVLB6EGudaFv//LJrwT+UmY3HNXLadp57LYjfSqm7xsiFN
 gHHVVbH0ZQ2V1W4n/sWITz8D/WflqaaWvaj8uZ9bKPlrFK+d8xAgUMsOvtjEvwGfs/
 9QZowr3GNJhVg==
Received: by mail-ej1-f71.google.com with SMTP id
 sa7-20020a170906eda700b006d1b130d65bso978798ejb.13
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 02:14:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=R2XzFGsa+EKmA5bAQUzuu09BXbD6MYmLaXLgYZlWR5Y=;
 b=5e8d+28rqfVoTmmisZg70ZYydipgpDC4eLKjjjv81I/3nM+c/WIgM3TKvJd25qLDGU
 QhOdXoIy2cmJYpdUREa1KG+ryw1VMM5W4ibbjlz3MgAfgKDO0IfgTr99GntqtV1tG2sv
 enDhmZs4Q2+bRQKmoTeq6l4G05RQvgMYu7SmwLTzVOKz13L3U4gloTMiPRuqFKYhk1AR
 lzyvSxBgvynSqHhzsSxEcwQecYc5716xTJfH7y6+XCBy2n46I/YTYO+40+1g8fDgnaQE
 v1P/f7ceijeEizOt3oWtsS21Jlf1cOStjyeVXfcvqvbwt4uD6He7iHCC8SqygCLryrWQ
 Lyzw==
X-Gm-Message-State: AOAM530ZAESstk7y8OOLkRpGj8exlJ832u00/03MycQB12+9T9utL3V0
 uLBDoAiwFmgjYiOVyL4YkCA8OGC4CD62jb0nsmiM6nDzG+r3fIVb7I7SgvfkmczjWpb4DNpkQnl
 Qlt7BPoboErHJDYwiAdXXTXv3CtYxHBQkDJP32S9rCHYxejgG+Q==
X-Received: by 2002:a17:907:766a:b0:6cf:bb20:70c with SMTP id
 kk10-20020a170907766a00b006cfbb20070cmr1665297ejc.94.1645697653731; 
 Thu, 24 Feb 2022 02:14:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/sLltZSTx8KWRJjI2K/qwIBaOPcUKmFt3AKY4TZ4EYzdTbH9CKy+iaxTYab7Mf5+E65BCKA==
X-Received: by 2002:a17:907:766a:b0:6cf:bb20:70c with SMTP id
 kk10-20020a170907766a00b006cfbb20070cmr1665264ejc.94.1645697653535; 
 Thu, 24 Feb 2022 02:14:13 -0800 (PST)
Received: from [192.168.0.127] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108])
 by smtp.gmail.com with ESMTPSA id o10sm1117979ejj.6.2022.02.24.02.14.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Feb 2022 02:14:12 -0800 (PST)
Message-ID: <ad6e347b-a25b-5309-2a6a-8fd3faba256c@canonical.com>
Date: Thu, 24 Feb 2022 11:14:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/4] dt-bindings: pwm: google, cros-ec: include generic pwm
 schema
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee.jones@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Benson Leung <bleung@chromium.org>,
 Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>, devicetree@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <3248917.W5uN0jUHDo@phil> <YhdXyBvAbdHzc4gH@google.com>
 <1817486.VeUe9BSz9F@phil>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1817486.VeUe9BSz9F@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_021419_708361_5C61B13D 
X-CRM114-Status: GOOD (  21.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 24/02/2022 11:06, Heiko Stuebner wrote:
> Am Donnerstag, 24. Februar 2022, 11:02:48 CET schrieb Lee Jones:
>> On Wed, 23 Feb 2022, Heiko Stuebner wrote:
>>
>>> Hi Lee,
>>>
>>> Am Mittwoch, 23. Februar 2022, 10:16:01 CET schrieb Lee Jones:
>>>> On Mon, 14 Feb 2022, Krzysztof Kozlowski wrote:
>>>>
>>>>> Include generic pwm.yaml schema, which enforces PWM node naming.  Keep
>>>>> the old name in bindings as deprecated.
>>>>>
>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml    | 4 ++++
>>>>
>>>> Acked-by: Lee Jones <lee.jones@linaro.org>
>>>
>>> what is your expectation regarding this patch?
>>>
>>> Are you planning to merge it or are you expecting this to go through
>>> some other tree?
>>>
>>> The binding-change here is backward-comaptible in that the old
>>> node-name is still in it, only marked as deprecated, so in theory
>>> this patch should be able to be applied on its own without
>>> causing defects.
>>
>> In an ideal world, it would be broken up and I would take the MFD
>> part.   Is that possible or are there dependencies?
> 
> That is also what Krzysztof had in mind - see his reply to patch4.
> Binding going through the MFD tree and soc maintainers applying
> the individual dts patches.
> 
> As written the binding change is backward compatible, so no harm.
> 
> I was just confused by the "Acked-by" and wanted to clarify how you
> see it ;-)
>

The bindings patch should not be split more, but itself can be taken
alone. DTS patches can go via SoC maintainer trees.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
