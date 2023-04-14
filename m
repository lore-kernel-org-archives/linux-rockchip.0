Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79579C77B78
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 11:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7eYrqbNYWJ2QiX7UVlhwIfegjn3WmHC+PBgUd8KVEg=; b=O/umtEw57KPxCr
	CvxbS03c8CjAA/ME/CfCtct4+4B+uPzXM8YINuiF2cSycofjCZE4PfuW+ZiTfcocmp+I0jE66Js2p
	+TtgRJOUbs54NEO+FxH4pbxfk1zaPChiaHrnVCbJhtD4f6a55WaXvp0EZMy+ARIhEROaI/pYQ7ETZ
	aOIIgyVdkYL4Vk3jfQdugbr1aew6m2v3jagSmDzzxYuMGTT5KGTwV16vJlZ7FSgzTHM8RwHReNVs8
	XfUtAUhhcjK19dXDgrOFvrSThUcrQznmWVI1BeicLaQ97+Na1jrkiUmytBbCPm6WM5YaOw4HA3Hzn
	FoaimTnpcWuz926u3oHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnHbi-009M0X-1J;
	Fri, 14 Apr 2023 11:28:46 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnHbe-009Lyk-1Q
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Apr 2023 11:28:43 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50674656309so1034942a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Apr 2023 04:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681471719; x=1684063719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4aiRpESCbLxQk+SHaAMEqLmff7Uno7K02X/hy0RYyko=;
        b=dl3Hg++Qv6HfQT/L9JjS5DV2rWbm0glWZt1wU9yWmWgajcJZlOzZzJLa+8AONcugzk
         7pS5VpouSIAQ3edfaPssbx5NVRdQbtCjDh5YISgKCabxnDoLPq93amDKmL1mQpOjIBBN
         MFwdFn2f6zQ9PDGvEDiM5GVPXZqzMJUQPrnSHVeMPzIlC7mUptjMKlEe0ZXHFK5PMFGV
         zznUTSnKxEmIjt01wKa0FyQdcdD5Apmo+kePLjt0EysiN+++oq5u/8XfOZl9wVmn70WK
         5qw+oPQCyJpbo5IO0ML3LsNRW11hsI19uepOIwSn2ZZjQh3cVKslxbKkUHGVXWoq7EDd
         Qg5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681471719; x=1684063719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4aiRpESCbLxQk+SHaAMEqLmff7Uno7K02X/hy0RYyko=;
        b=DBuprBw8rL2LExE2Y0tjz7kk7PIVy+RzwLre3QdSrHnKJ+PXPwD73PzRGKvqTAIuch
         g7go1WYZaO2sO6349+cTRZaDrnJe3SYNTZWxi2CSaLR+FuWHCipRZ7Skn8WizjGoi0xy
         2qkR3isSYNGHx21RNHQKeW0fYUev67db1cC1YYrM/eVav61RK9bz/1L60tSOIRGCjqRl
         ybK/Vkv7WW1Z/ZQos2XsXdbzzVd9wP5fuz8iBVgXuD7Yp0hehk1PqPXWB5DsRhXEx7Jh
         xRvJSsTpgA4i8nx5m1lTZZV8Oz2lB1/+CB7srcLQIdZ8mrYhkA+AZYkO0gqAeirCgoKB
         5Lhg==
X-Gm-Message-State: AAQBX9faaEBzjvXYtvjIqnPfJfxwCjQ/DcfFQvkeFRNEIhUnV49jb9H+
	AW8bwf5BgwCqy/0Llakh4hs9FQ==
X-Google-Smtp-Source: AKy350a3Sy2CqykR/sk8IhliNFf2Djv54ny9JClOEK+yPtCZ5o7ogUd06Gii/jIrfmuVUmcNljWjSw==
X-Received: by 2002:aa7:d7d4:0:b0:504:8c1a:70db with SMTP id e20-20020aa7d7d4000000b005048c1a70dbmr6581398eds.32.1681471718716;
        Fri, 14 Apr 2023 04:28:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id w15-20020aa7da4f000000b00504890a0de5sm2023467eds.34.2023.04.14.04.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:28:38 -0700 (PDT)
Message-ID: <3f6d77cc-5a9b-47b4-db41-5fd172d2ecb6@linaro.org>
Date: Fri, 14 Apr 2023 13:28:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Use generic name for es8316 on
 rk3588-rock-5b
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-3-cristian.ciocaltea@collabora.com>
 <fe746692-fed3-6635-8658-4e91d30f2aa8@linaro.org>
 <4d66fb01-76da-be30-26dd-908ee1a22eb1@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4d66fb01-76da-be30-26dd-908ee1a22eb1@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_042842_482502_EB11B32D 
X-CRM114-Status: GOOD (  14.64  )
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

On 14/04/2023 12:53, Cristian Ciocaltea wrote:
> On 4/14/23 13:26, Krzysztof Kozlowski wrote:
>> On 14/04/2023 11:34, Cristian Ciocaltea wrote:
>>> Use generic 'audio-codec' name for es8316 node on Rock 5B board.
>>>
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> index 62750beb12aa..8cc97d146a73 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>>> @@ -72,7 +72,7 @@ hym8563: rtc@51 {
>>>  &i2c7 {
>>>  	status = "okay";
>>>  
>>> -	es8316: es8316@11 {
>>> +	es8316: audio-codec@11 {
>>
>> This is a trivial change. Fix all instances in all subarch/platform DTS.
>> Not board-per-board.
> 
> Looks like only the rockchip DTS are affected, but not quite sure how to 
> proceed in the case of 'es8316: codec@', should I change them to 
> 'es8316: audio-codec@' as well?
> 
> arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts:   es8316: es8316@11 {

No, fix only this.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
