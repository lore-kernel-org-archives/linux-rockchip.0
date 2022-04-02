Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E4B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 12:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhyK86LLBwzEV2Yg9RngGx2ZHlkS9rBh6+fW1y3Z5kk=; b=2lDp7amnANd1ma
	tWjFTRwF552JSdhmzfKZiEJCP4+SKoNZFHEIWlzoenvfSfCzt68CUxtHaFd1AJEbT1Vo2kS6UNTzv
	h4enw9MqTi9bFzlyOM484J3To3vK+mGW/SUR18fiPRynKvn844Rb2elheJ4dVqtA/sLpReipJwV+S
	Y1E0zfv9f94Lv0mqyt9sqeofdI5ygB9r9m+/u+ekKudT2StidACHD928GXUvRGpzvQhvwgxEcXkQl
	ECN+YKIcVYk+Xf4wOkU+2eImd+RL/etbsE+UOL7Q74z8NPatro595mQJpGVZrpz2T7z0yHAVFjpTp
	cYm2gFOMN4xkkvRXwPsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacXW-008fmk-Ig; Sat, 02 Apr 2022 12:07:34 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacXU-008fls-Bl
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 12:07:33 +0000
Received: by mail-wr1-x429.google.com with SMTP id c7so7801308wrd.0
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 05:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language
 :from:to:cc:references:in-reply-to:content-transfer-encoding;
 bh=tWegABcqL32JHQCEXG4tw1Wn/lH2n3sQgzMVGFju1Cs=;
 b=HwCMC7Fs6Qb2QuSS8MU8sCLzdNl7szuWzkPtuaSXnBrOLarJ3PbGvfeLwluwcvbANo
 wMeuL2E4kruh+TfEEIyAO+P/tPVOsdKkwv0GKef9xJBdpCY3yYVDyE1L8lIFXocAkmWa
 9tjAMMQNnX6hwP430p/DwN6j1VFyaC5J7U5KynJLlBn3Pf723UmxBlrhB4ow3rWX6mMh
 +ZII1a4q5/NtTYGYtPV9dvMLGJmizPNEygoNv47iawEG30LTay2GZbInsZdsPB2iXvxe
 MrqKuRrDzDCh5aOQzqtKvbTf1qy5mz+QD1+tajr1b/TCD2rcWcluptG0Z591lj3JrUUI
 YShw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:from:to:cc:references:in-reply-to
 :content-transfer-encoding;
 bh=tWegABcqL32JHQCEXG4tw1Wn/lH2n3sQgzMVGFju1Cs=;
 b=b3NeZshadHdCOHyPtt8bNqoLvU+sVQdDRiGsxBHMXu51cMpyklMHtKTXi44W2A1RLj
 LN8zoz/CG0+M6cJSbpp9kdrmn+DDL72dYUVV9+oHXjtOd06Itgf3hW16NQ8MFzPCyKQe
 4eKryOvPNN3kTTy30IuTFrhZ1HnooLnpLbYftnzx6znAv9/0dyvzglpVANOG/MkuN2nu
 1Q6mETg4H8xRN1AWARj6bPsxjskBAsT5d6cx2lS3g3FYuR5sNdSWInf0abQmaT87xjRg
 ksDz05weIOlKEVeykpIbG+C3zT1avCAEO35L1+6myic1XsnjGG0Z1+lDAg8g++3mBkgu
 A0Pw==
X-Gm-Message-State: AOAM531YET/RxyZdIgprd04KiDCNkrx7vV8ROBWRaqGZi6wikkMULqEY
 k2GeUIGcKiF7S4YxkwTw03QlRQ==
X-Google-Smtp-Source: ABdhPJzPZitI3n3ThcnCdyRgnFmVRxYn14MRQvub5AGIgjbCh1t8vEmzIgc5aZBv+SEfIpvDoJTA7g==
X-Received: by 2002:a5d:6dae:0:b0:205:dfbd:789f with SMTP id
 u14-20020a5d6dae000000b00205dfbd789fmr10672074wrs.142.1648901248486; 
 Sat, 02 Apr 2022 05:07:28 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 e13-20020a05600c4e4d00b0038e44e316c1sm6356644wmq.6.2022.04.02.05.07.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 05:07:28 -0700 (PDT)
Message-ID: <d092ede9-df92-9b34-d2d0-5da043e11679@linaro.org>
Date: Sat, 2 Apr 2022 14:07:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-29-clabbe@baylibre.com>
 <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
In-Reply-To: <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_050732_456633_88735EF9 
X-CRM114-Status: GOOD (  19.06  )
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

On 02/04/2022 13:53, Krzysztof Kozlowski wrote:
> On 01/04/2022 22:17, Corentin Labbe wrote:
>> The latest addition to the rockchip crypto driver need to update the
>> driver bindings.
>>
>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
>> ---
>>  .../crypto/rockchip,rk3288-crypto.yaml        | 68 +++++++++++++++++--
>>  1 file changed, 63 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>> index 66db671118c3..e6c00bc8bebf 100644
>> --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>> @@ -11,8 +11,18 @@ maintainers:
>>  
>>  properties:
>>    compatible:
>> -    enum:
>> -      - rockchip,rk3288-crypto
>> +    oneOf:
>> +      - description: crypto IP present on RK3288 SoCs
>> +        items:
>> +          - const: rockchip,rk3288-crypto
>> +      - description: crypto IP present on RK3328 SoCs
> 
> These two comments are not helping, so this should be just enum.
> 
>> +        items:
>> +          - const: rockchip,rk3328-crypto
>> +      - description: crypto IPs present on RK3399. crypto0 is the first IP with
>> +                     RSA support, crypto1 is the second IP without RSA.
> 
> The second part of this comment is helpful, first not. You have chosen
> enum in your first patch, so just extend it with comments. Additionally
> indexing does not scale. What if next generation reverses it and crypto0
> does not have RSA and crypto1 has?

Actually let me re-think this. Is programming model (registers?) same
between crypto0 and crypto1? If yes, this should be same compatible and
add a dedicated property "rockchip,rsa"?

I looked at your driver and you modeled it as main and sub devices. I
wonder why - are there some dependencies? It would be helpful to have
such information here in commit msg as well. Your commit #26 says that
only difference is the RSA.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
