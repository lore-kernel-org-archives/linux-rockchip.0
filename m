Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64DBFC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 11:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kW80WoVXPC+zJHGseU1sxD/TKegTV8kOiUiGqERpsLI=; b=NHB434AfChU/CM
	Xy3W2ezpVZS+rrV8bgttx8Iu9uYa7HmXhHktxuoPzEOTI/2T9nroyPkFrnZOAdeOQcOsJOhIqv9An
	klNlDgawt6eZdiB68mnBF7dOqWQtWz9cJ3PoEr9BLUw15SoglNxhGFsqYpV3BQ5cKNoz1hpYaZu99
	onFxT2EAaofgXzOdb61n0y1ScrO4wfoHuwlzj9wle+uIMcQjfVWNQ9YQ4E3DtEwZksGu2ofi9OsZV
	5UdX45EWmS7unYqtZr5k3UcG4vuwwZyVe4Li3uLFI313hc0lCcFperZ3Z9NrJDVKvdKSWrETe2g3l
	Ty1ncRQuenRV1nFPUGUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8ftO-006sIh-Rb; Fri, 23 Dec 2022 11:07:10 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8ftH-006s6L-Jw
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 11:07:05 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y25so6670035lfa.9
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 03:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/hMsumwP6KT2UUsGNA6AWGptXKAy5xS1cl3T0zVPx0k=;
        b=HJDOnXZy6oV7VlYeiWa5i593GbfluXa8NJ9ZMW0y3hQjI3oD/hX3sWxM5VylTJ7NrW
         K5+EBpnqltpOFjqy7Q7+LqOQ3VqZ/w7MWTSWrtXKoWUq/cDpHnARxs8Uv1wrAggY5fZW
         0wd/9wHzMU7sba7o45yGLFFCk169BUU153qyrM2CwuYn3GVFI6Us2CVnJ06v1hEHMb5z
         n5Wxc5lOfoEdMmtuN/FWh33xFSI0oAk2i8jN21x55VOH3v3rjw4I95dnkJAMliXvTm5d
         tKYcul2403olv7t1rK/bx2e8pgJzy95YzexHV0nmXNDM6CBHRiCUrCLY1vzLeiz9MQWe
         UlpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/hMsumwP6KT2UUsGNA6AWGptXKAy5xS1cl3T0zVPx0k=;
        b=CvhaX8Pf+NO/ah84kCJV5UeNLKo9bnF8j3R0LdUCkQPJx0/Jmf63QCcjeGAoi4yP8F
         OnxBEtWHdbCAWBANvB4wv8fQppivq9+4GsusE0+JnLFQBvJrHF8zi95dheMvHGXo5akG
         3h2IwvxhKRj7vH/+QFWaTGdAOaLbSSM0MsIpNYKgZ8PVXX1+9RIHkiC+S95KIy0/TMZh
         C++nf5w8J+XqTvmZg7hS+LWdHxRLO7JoQanws+234AZ206cO/unRG41poq3gnsNU7qS7
         bGTqWk1DnkU9tzKoFr8olphSfAVk/kv+8fZnf1Tg9HpvHHSvCrJ/ziR8Z2ITGNeO5gr1
         /kgQ==
X-Gm-Message-State: AFqh2koDEeB9CJ2+BQTs65Fk1UxipJkBGOGz/EUMraubZx7wb/R8PHyP
	Ex5h5qz2kV9Hj178W/JqAMzw9Q==
X-Google-Smtp-Source: AMrXdXuiXxUqsVNqsObnU18wuXFBsbf9EZVBefCEZpE/VJxhS6U9Xl25fzkp53euOGSKLfCyH3rPfg==
X-Received: by 2002:a05:6512:602:b0:4c4:6a8e:30 with SMTP id b2-20020a056512060200b004c46a8e0030mr2558660lfe.30.1671793619322;
        Fri, 23 Dec 2022 03:06:59 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y11-20020a19750b000000b004b4b0a68f67sm478401lfe.185.2022.12.23.03.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 03:06:58 -0800 (PST)
Message-ID: <10750c3f-016d-905d-9c04-e41cd9248dd4@linaro.org>
Date: Fri, 23 Dec 2022 12:06:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
To: Felipe Balbi <balbi@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221219191038.1973807-1-robh@kernel.org>
 <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <878riy9ztm.fsf@balbi.sh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_030703_754653_270C5D81 
X-CRM114-Status: GOOD (  12.59  )
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

On 23/12/2022 11:31, Felipe Balbi wrote:
> 
> Hi,
> 
> Rob Herring <robh@kernel.org> writes:
>>>> The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
>>>> allowed by the schema:
>>>>
>>>> usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>>>>
>>>> Allow DWC3 nodes to have a single power-domains entry. We could instead
>>>> move the power-domains property to the parent wrapper node, but the
>>>> could be an ABI break (Linux shouldn't care). Also, we don't want to
>>>> encourage the pattern of wrapper nodes just to define resources such as
>>>> clocks, resets, power-domains, etc. when not necessary.
>>>>
>>>> Signed-off-by: Rob Herring <robh@kernel.org>
>>>> ---
>>>>  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>>> index 6d78048c4613..bcefd1c2410a 100644
>>>> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>>> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>>>> @@ -91,6 +91,9 @@ properties:
>>>>          - usb2-phy
>>>>          - usb3-phy
>>>>
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>
>>> AFAICT this can be incorrect. Also, you could have Cc the dwc3
>>> maintainer to get comments.
>>
>> When we have a user with more and know what each one is, then we can
>> extend it. All the other users (upstream), put 'power-domains' in the
> 
> Won't that be an ABI break at that point? You'll change the maximum
> number of power-domains.

Usually extending properties (in flexible way) is not an ABI break. What
would be broken here if it becomes three at some point? Does Linux or
other SW depends now on this being equal to 1?


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
