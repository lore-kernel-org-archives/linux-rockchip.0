Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40023C19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 10:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17XsgUUofiA6LGibqxDfQHqr3kNfn7J6JPEoFRne9Mc=; b=fGkoaT9Z2uhSJJ
	SdP25+xL+v0ikYjJv0iKvHQzAT2plvL0vFIAX91hqoObbf8atKKR2XQBpkoLTPhcPmxcSVyIEqCom
	mu+Y+kaEDJlM/AppNdyKYpvNubm60WwC0wpy5qPi3h283XBAnQDypJ3NFX8xbiGK1ZInCaUFeY1zS
	5PvweYZzch7zUvaybffQu3emS6V2GUgbA0FZfXFZhi6V6CRi5Piz0QFR6ccpSm8T7DzYKGVFPIk6N
	dUBlwfkNV4jt/LLgv0b8na3bEHgKWzsk6iJZXcJjcgXVIjNoBriZvtWaYOLfncBItUb9ivbYGg3yz
	ezrZ2sKBhMmpO2BgESqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBt9-004zpi-PA; Wed, 03 Aug 2022 10:46:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJBqC-004yji-6m
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 10:43:05 +0000
Received: by mail-lj1-x232.google.com with SMTP id r14so18515349ljp.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=y8guwFRu5Cqttb+XuOtzMQ+iyWYv+5edvz/dSBNOIpg=;
        b=LmcsdAMhL0mUMJHowkbaNxLItPQefTs8KuMWDXq1uzz4t3153ei+MhAs7InTg5l3Dv
         3AFNxfFxX0FZQvvZWP7bnlNPNBWVjLXwsTW0Mmsu+ZBEo6HImVQ7K3JnK7rbkAZJifzU
         8oiIxCrwH6fHzksUU3YzRZnE0OBjreW8c4dVWOx8IzTeDxINsSCmgsJ7ugccjHWK++hh
         toIzd6hJPkZA+F2z6nQFWh5vypwfAJ463OlvG+lpKWG0NOv9JAnNE08PDyft7sN1rtXn
         8vKtd0P5r7XQYa7+W+hwiaIvvFjgcasNpHTgRypEAc3zpnTMY1KecPcJnIJPZG512UrU
         9Kjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=y8guwFRu5Cqttb+XuOtzMQ+iyWYv+5edvz/dSBNOIpg=;
        b=r+V7zjgD+gmIMOWsz4uhYGpiM3tFPGkFMlsjFeh8oMwSgVPOdmAj2EAhYjKPHxO2NA
         Rtb643/sLAPziOgNahTUo7EQCRlaUuB1k8UCOl0XEeWd2UeuZZF+8Xf6YlQIhC3O3zRY
         ljOMv8/jOGYNjQmfDEVowIVtpDlWNbuno6h/0u7GWYh4qMZRokcNb/xz1fKlpN1Ce3Y3
         FP5N9ZL+nK+kxbH6Mybvy72beGqd8+qcayNg3l76A1Z8QR94rcSVZB5keLBq3fBRgrrx
         yCCwncs3uSEsdmAaljJbFK9QcmrK/J3JxX9oK3W75eRJfJTRbxIxYaQHOigszQFFpUPS
         v+9g==
X-Gm-Message-State: AJIora8Phc9ZVsA/53oAuqPnYbRoLY+/+HApIuZDZeV8Vn4mBCgpWxYZ
	Gbyl1fiFV8/XsPz+JfOX/wPC2w==
X-Google-Smtp-Source: AGRyM1u1s3fUQuSzb8gjKq34siziQh0H8dCeEG8J+QAUMdHQm9fzWYP+GaPzsnrCbXDObriKFNUPtA==
X-Received: by 2002:a05:651c:2c1:b0:25d:79be:766a with SMTP id f1-20020a05651c02c100b0025d79be766amr7651031ljo.225.1659523382076;
        Wed, 03 Aug 2022 03:43:02 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id dt9-20020a0565122a8900b0048b23c609c9sm135352lfb.102.2022.08.03.03.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 03:43:01 -0700 (PDT)
Message-ID: <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
Date: Wed, 3 Aug 2022 12:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_034304_412155_8A21DA5B 
X-CRM114-Status: GOOD (  13.88  )
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

On 03/08/2022 12:24, Jagan Teki wrote:
>> Vendor in filename is needed.
> 
> Yes this follows how similar rockchip vendor notation
> 
> $ ls include/dt-bindings/power/rk3* -l
>  include/dt-bindings/power/rk3036-power.h
>  include/dt-bindings/power/rk3066-power.h
>  include/dt-bindings/power/rk3128-power.h
>  include/dt-bindings/power/rk3188-power.h
>  include/dt-bindings/power/rk3228-power.h
>  include/dt-bindings/power/rk3288-power.h
>  include/dt-bindings/power/rk3328-power.h
>  include/dt-bindings/power/rk3366-power.h
>  include/dt-bindings/power/rk3368-power.h
>  include/dt-bindings/power/rk3399-power.h
>  include/dt-bindings/power/rk3568-power.h


So when are we going to switch to vendor,device pattern if you keep
adding files with wrong naming?

> 
>>
>>> new file mode 100644
>>> index 000000000000..38a68e000d38
>>> --- /dev/null
>>> +++ b/include/dt-bindings/power/rv1126-power.h
>>> @@ -0,0 +1,35 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>
>> Dual license, please, unless some copyrights are no allowing this.
> 
> Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

OK


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
