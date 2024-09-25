Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B22E3CF9C69
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 01:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4piNubuSygd6RBM8FNPKX+dHGnmjLOAqQLnJqknIBBQ=; b=etKo09ukIgpvaV
	c3WJuV4DExU01q65JM9V7j6ad9UcOrDg/4Bn6hu7JeMcrjFiSwRc7mvkRBLfC/QepqF64orIKOF2Z
	5RHTTCkglCZxtJ2Lhg8obaU8M2ZBa6cN3////B0xbZTPGGqXpKXo6k+H6IP8giEvWuZF8E1YBIU1o
	GFkEEkt6qArQzQJIhTS2YPRdMirMR7La8Y5ufTW+Vfb6mAMA/PF4C0HUIjIdsOBNcovNF+mXuDN0N
	LwkngdFlj1ofwrUNp7S8XWR0hJKQcQQSTjwxsBaOHJUAGCW0r7J56TfKAS1U2EUVMOVxZXGeREmQE
	mKB9AF87WrzBqO5DnogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stHBG-00000003lr9-2MdD;
	Wed, 25 Sep 2024 01:51:02 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stHA6-00000003lkm-0hB0;
	Wed, 25 Sep 2024 01:49:51 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2d8afdd62e8so1122564a91.3;
        Tue, 24 Sep 2024 18:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727228989; x=1727833789; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qfgOUAOcbkxFyXWTo9S/L0xB7TtcO2Ot01YMhuKobrk=;
        b=QinsCHMfyHjWaBpYnbUTHxTfXVjbJdqCIWlQlebh71yXSzNvAkTMTCnH3aDcTrseWE
         Tsq3XfecJ9GFSVhoji4C3sIqH5PGQaZYwt1sv5Bp7dVfTDzPjxq27rQf1/yMKrJeDa57
         caFlYyBaNWPqCnEQ35aoyp0CeSDE/v45AFP8tM8L7qWc0PUNHIKlaJ1yHDxMYPe/CzEf
         Mpxx4in4qRsMSM5xWBFUVA109VIvw0R9pNVTKi9N8kQuuhj3+uvUZhHvRAxXKPxq522F
         Ed5O6nEjP5RSsqCTwbGDNOVhcnJp1Fv3GFJ8SfS7lpVFkEtln7WLcL9kAjbiRnjoTKfR
         GQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727228989; x=1727833789;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qfgOUAOcbkxFyXWTo9S/L0xB7TtcO2Ot01YMhuKobrk=;
        b=NyMQvLe0qivVzvetpyCB9ywGqbSxptzWLiZrbRPveyzhaWImpKM1tqFVzZZTZpxD36
         vNnZA2QPs17eryUfmzOW5u450Bdtu1nAjNAPHJHBcEPbdpQcAF9liKdUU7nXWymPzUpF
         ii5qHGgZAExlQDCqHJla9zpR7NIisF+QJcJNq8z20A4z3eEkCy4QWGop+iA9C2PY8+rf
         E6fqleO57brt8H7vSmEaq2ZBmZpBFwiGL2O38fo/chO2OLFmaIrrKFyINP5oyA3/G50U
         LAlcTA1RxbA2scn3eF1/GRrNjjGsFKh58hCLIdlQtFhweVkHrozNWLnph1X3rx2+RxC4
         uUwg==
X-Forwarded-Encrypted: i=1; AJvYcCWbf3UTUelh5aU6OgOe1/JClFAohKRP8osFm3Eb1tZ7WH66OWOSvqNYOEnawvcg9JfmgQxzl5fdFj4dbrh4AJ/9@lists.infradead.org, AJvYcCXTOBtifdojbDgjIxxxQQLS68L07UDdnaSZyu1uVelZYnE3fnsTwtjR2ZRFJExrWRJLT3XHEaxv2GO0kyK71lM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9TxAFbkhHoQF011VQorxkobGXclUPA7T5IS7D8C2Iox0iwGru
	vF5AwryeZTbZiGEzAswHMvLKfc8/m+lI3Hcl0c0rxSWu6Rla8r9C
X-Google-Smtp-Source: AGHT+IF42uHxU+McaJwOYqt74xfZ3X9l8ZaBFNhvW3sc2MTkO66TCrdx6QmGA70vRyBEU069n7D27w==
X-Received: by 2002:a17:902:eccc:b0:205:9112:6c38 with SMTP id d9443c01a7336-20afc47bbe0mr6799845ad.10.1727228988969;
        Tue, 24 Sep 2024 18:49:48 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20af16e5551sm15517245ad.6.2024.09.24.18.49.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 18:49:48 -0700 (PDT)
Message-ID: <285d7b52-956a-412d-ba85-7641e95226e5@gmail.com>
Date: Wed, 25 Sep 2024 09:49:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <11146778.5MRjnR8RnV@phil>
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <11146778.5MRjnR8RnV@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_184950_245104_0A664424 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 2024/9/24 18:01, Heiko Stuebner wrote:
> Hi Frank,
>
> Am Dienstag, 24. September 2024, 10:55:09 CEST schrieb Frank Wang:
>> From: Frank Wang <frank.wang@rock-chips.com>
>>
>> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
> can you please add some details to the commit message, about those
> new clocks. I.e. what they do.

OK, I shall add in the next version.

BR.
Frank

> Thanks
> Heiko
>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>> Changelog:
>> v2:
>>   - Categorize clock names by oneOf keyword.
>>
>> v1:
>>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
>>
>>   .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
>>   1 file changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> index 5254413137c64..8af4e0f8637fc 100644
>> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> @@ -20,6 +20,7 @@ properties:
>>         - rockchip,rk3366-usb2phy
>>         - rockchip,rk3399-usb2phy
>>         - rockchip,rk3568-usb2phy
>> +      - rockchip,rk3576-usb2phy
>>         - rockchip,rk3588-usb2phy
>>         - rockchip,rv1108-usb2phy
>>   
>> @@ -34,10 +35,20 @@ properties:
>>       const: 0
>>   
>>     clocks:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 3
>>   
>>     clock-names:
>> -    const: phyclk
>> +    minItems: 1
>> +    maxItems: 3
>> +    items:
>> +      oneOf:
>> +        - description: aclk for USB MMU.
>> +          const: aclk
>> +        - description: aclk_slv for USB MMU.
>> +          const: aclk_slv
>> +        - description: PHY input reference clocks.
>> +          const: phyclk
>>   
>>     assigned-clocks:
>>       description:
>> @@ -143,6 +154,7 @@ allOf:
>>             contains:
>>               enum:
>>                 - rockchip,rk3568-usb2phy
>> +              - rockchip,rk3576-usb2phy
>>                 - rockchip,rk3588-usb2phy
>>   
>>       then:
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
