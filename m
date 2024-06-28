Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E879C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 15:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoMlGhHcfFDvotKXRjrTqSHWbq8Htu6NqvHnHqWThDM=; b=WxTOJbzOJc9ox7
	jbV4R2LJSms21VBM04UkKjZWyYlJ4XkYBF18Bo1G+WXXMF9GEQzVqLhziq/tpbQxKRvGsc+3+gN7T
	+ClXjrtT7jn21Yz2uTYkL6PaRFX3+hzpo9FaG0JgguD3dGS1kH3vJFeyCVZoptJ/EvtsLe1Dl18PY
	JpxS3Hjpx3IOr8pSFhDFPpA8FxqrahfXpKA6hs94IcQo5rTOUTyngW+Da4MZScc4eAUCqcoewy3IX
	fZ7gNHemYqiaBLb/8rQrLUOywiiTyl7t9hpnMMybq2VoTyz9v3WKXvLzoIZ1EQBfkc+X6bV3ZfLRo
	gbTRiFg5utgIVPKTqnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNDAM-0000000E8q4-3SSH;
	Fri, 28 Jun 2024 15:05:34 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNDAD-0000000E8o9-00Fc;
	Fri, 28 Jun 2024 15:05:26 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-706738c209bso505415b3a.3;
        Fri, 28 Jun 2024 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719587121; x=1720191921; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ivUyFiHDZ5QXCTCYWIVAND7EWAtzazPUw5d6lB+IJig=;
        b=P8C2CNMuGA807p+zQKTR3A+NA0YWuyn1h+9PC8y9OdmnkAoj+c//daxtKpmLEL824V
         XE/7OwJyewFz2cKmiwIvQIHnSOXYZKXbPyilWb7J8/EOAwg+Op0NbecsCFl8Xg2RXaVM
         MY9DPZ1EGF5kgNvdBXsvpHNyo48pr6YaZ/GmAY13kOJp1dXe8U2nWmWffYyEp87ns6am
         ux1IaOdWkAgg7Rq+BlAwJODq2XrGidXaJeNm6OW0UQ3Sj9fyNJ+jv29jZiCjh/FT0ZLj
         cYWK9uKnQl5WafQPQRlnM/qDYvwlewWNLpB7t7K/eM9T4aSpF9eHx15t65Te/O4mE/Ut
         QkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719587121; x=1720191921;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivUyFiHDZ5QXCTCYWIVAND7EWAtzazPUw5d6lB+IJig=;
        b=QtNIlyLjT/g6dRE6809R6QcwjnCp1+bpxeixiP/N7TZGGHMaJORMz8bGOBlDUeUGXE
         aQNW9RLkaDDg65go/6byxbZD2JGsdlxw41VS1XFkxsBP3KOKbxeS4L46JUWHsJdxDIt9
         KRahSdGGuBpzbxjElubgfeDCUGtPpRR6xXcFKWG6PSfe1hyXTyUU/cYvUxFQgLjQbEpA
         9zUxfg1ivoOhDYOFmzdh9j4MCqDib9CKpgqTBJjTUZzrTnMTnUdxntcHJc5HO2gbQ0S5
         3eSqrt2FW0Hh2y7ctlrMmkBLdB+hcxdUzwFUdOdamKFWhPnEFa9zupx8oZqpUUfMDej6
         435Q==
X-Forwarded-Encrypted: i=1; AJvYcCViZ54/GNwpRlkXtI7cgxqe65mgdcLJtNDpqZHe3kR0o/kNPhvHnvtK2Y5AlCzE8kGUwGBbdag2dwI9t9lC7oeLGMnZJ5t9Dnv8MHDs0jf4CcLEFI0EQ2Y0jAD07RkkYspQNucUXLVJwxKupB2YVOPf7ZFDbl0LCr8=
X-Gm-Message-State: AOJu0YyFCiT/cDA5V3WXuFEYvhkAL1I0pSjkAD5RL7cfMkIMotFVopsm
	frPhGbzbGy3vk9Dgkaver9sEQwmdvuKuMz5uE6VokW5PUuzO+kgCrPsyHQ==
X-Google-Smtp-Source: AGHT+IGeYhlf0RK1HkapzwhDi9gibNLOPPjWcViViABSEc4hBAYRFIWn63Gen48LJn3695Wa1ZmYYA==
X-Received: by 2002:a05:6a20:158b:b0:1bd:29f2:c7d8 with SMTP id adf61e73a8af0-1bd29f2c9a9mr11215427637.42.1719587120671;
        Fri, 28 Jun 2024 08:05:20 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804a95402sm1699946b3a.198.2024.06.28.08.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 08:05:19 -0700 (PDT)
Message-ID: <5ba653be-c1e9-4a39-8cdb-a8c0a4a1bc59@roeck-us.net>
Date: Fri, 28 Jun 2024 08:05:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] Add Mule MFD support
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Peter Rosin <peda@axentia.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
 <fdeea79f-4568-4e70-9b49-0c02abc91170@roeck-us.net>
 <4f92528b-8311-4c0b-998b-f0221d7bd474@cherry.de>
 <c2803eed-b4f4-44cf-a7f7-9557d05e798e@roeck-us.net>
 <19ee521d-298d-4718-bdc6-f282666de371@cherry.de>
 <2a1ae708-3718-4f70-9837-bcc50b7c8f66@roeck-us.net>
 <85b2061a-9f5b-4998-b9cb-21308ee1965f@cherry.de>
 <dbfa52ab-c6fa-4c11-89bd-87445941bac3@roeck-us.net>
 <20999754-c4c3-40f7-a9fd-88b2d3d10785@cherry.de>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20999754-c4c3-40f7-a9fd-88b2d3d10785@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_080525_079883_984A5661 
X-CRM114-Status: GOOD (  16.80  )
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

On 6/28/24 02:03, Farouk Bouabid wrote:
> Hi Guenter,
> 
> On 28.06.24 02:05, Guenter Roeck wrote:
>> On 6/24/24 09:13, Farouk Bouabid wrote:
>>> Hi Guenter,
>>>
>>> On 19.06.24 15:31, Guenter Roeck wrote:
>>>> On 6/19/24 00:45, Farouk Bouabid wrote:
> 
> 
> [...]
> 
> 
>>
>>> If we cannot proceed with that then we could add a compatible to the amc6821 driver to add the mux device (Basically the "tsd,mule" compatible in amc6821 compatible list would be a combo driver with mux logic + amc6821). Do you think that is more appropriate ?
>>>
>>
>> Implement the mux as part of the amc6821 driver ? No. We could discuss
>> instantiating the i2c mux driver from the amc6821 driver.
> 
> 
> If I understand correctly we would have the amc6821 for "tsd,mule" compatible probe the mule-i2c-mux as platform_device. Possible DT representation would be something like:
> 

Yes, something like that. I have a patch series ready which converts the amc6821
to use regmap, so the i2c-mux driver might work as-is with that patch series in place.

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
