Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E827C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 13:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsUoOGW8J0rMy7w2i8zv/ki2MiAXzmXlWedXjeWIfd0=; b=YL5tO217iA7fLd
	qh4dyOg+VQ5zZ0sK8raCvDsehRCuVRDBJmcyIVoRyG3BLTHW3Ti8HhbkyBH4W9YRszsr8b4u44Zob
	JxXxwOEvAcMUpshep7ZDV8VsTMgeJm69Ds1FRaVcRiKU0Qrifm2urI+Nh82jpzwOqC7EShptzKQV7
	wwZ2Xa5GqKt6QfwW+ALKYlkMVT0BCgULBn/EhT3P3eCkA+b0Ey3BAchThJX/2G17kNbnRqdDsAtrn
	4y60z5lrKi/RRRJi0jeu38xiDEvlslcwsPUCBIi+ko2ebTIjIPks0nrDp4ivO6dCt8cs/wXmffQ8U
	kMu7tQkXx0C+l0sQSZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUzl-00000000OZI-0qcj;
	Mon, 12 Aug 2024 13:21:57 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdUz9-00000000OPK-278q;
	Mon, 12 Aug 2024 13:21:20 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-26827ec5235so2145822fac.2;
        Mon, 12 Aug 2024 06:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723468878; x=1724073678; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=0Tmhzkuw6qsmA7+63wGwSz8F//va2twzg7YBJsGrfeg=;
        b=XrqVj65WlGSsN/zUg2Zlwpr4pc90hTp3iGSVonZk4+cpY8bR24rlbcxYOBNsz4yDer
         eRzjovIHLMBSLn17JlzMAC+QxHaoDAWUVGmtq5eNOUBUn12/pQ9xUuG/5IsCJW1cTo0B
         YGX0wUEs0GjVv30HOI4FOYFkksFEDjoKbq1uh7tkEqtcCVRlzdMDrBt5RaiZWI8SfBog
         NoUUkP9UODiNbfV4BIRF4ALY8oL+xQNMXOTEe3tTrFACV3RIYvpP1U1lOYnS8rlHowUT
         qsKCB/dq+qrwEAp3jV+25HtEA/SQPQS3cYV9szf7zFeZ8oG1GQbEoRmEYauQspb6Dqel
         B39g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723468878; x=1724073678;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Tmhzkuw6qsmA7+63wGwSz8F//va2twzg7YBJsGrfeg=;
        b=TOhMQF6mC1hOkItlfSY6paOJpVEY0n/2R4k0hisc/PUZJorJl+XPc3fXHIncohHo/N
         eSDLqCc5WgFdBO6GL4MQ9OQpuDfVgRiFs1HCOJJ0TN+EqIFNCJQIaW6C/X2KtFkRryC8
         vkOCImjmJN42fRC2PaVnbakYPz/OIGH8lbmiEWV43+msTFzJ/2E/hYscLOffAAdl+GdP
         OHtrC25Mb8ai6P5TZlwGWVJJrGJ5qit2ncJ3yRzdhoZPmvi3HBSZleH1BS+0nMHetpDL
         xXOtJ6fE5ovlb1enLtwP4In/5j4P9eJt+YoXEtCXkyW3/TMej4OBHDL7VGrr7RdhS8dL
         DQ9g==
X-Forwarded-Encrypted: i=1; AJvYcCU4hktvmoN4UTM334mq3fSQRYKpadftDTXxRUhRQRYnFjAfeG71fsBgwXh8aE9H6ytddIiIj4x9uSwHSPIXOrooulUAOSX+Uwlcxv7CA4yshDPltTB5xhPM3qMpdbEdsBtb1x4xKCdz8bDMJO7hHeUDSNcE88d8sRc=
X-Gm-Message-State: AOJu0YxpbGtXOXm1X2TZrs4Nq9297CIgWZvNofPBSl1dXM3Vi77kNVim
	5klkWuKka6JkRGjtBK1UWwT3R6H/OjJ+TgPbIs399hTDbAhIJ1Kf
X-Google-Smtp-Source: AGHT+IFAiEJhBSmIMytQn74JGcURa9wm/PTkeCi62feFEMk+7DsJzoWvvr+8xT0TLzcOKMffZ5lD6A==
X-Received: by 2002:a05:6870:2195:b0:254:c512:88c6 with SMTP id 586e51a60fabf-26fcb8d0143mr56523fac.51.1723468877980;
        Mon, 12 Aug 2024 06:21:17 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c3dbe134a1sm3662525a12.31.2024.08.12.06.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 06:21:16 -0700 (PDT)
Message-ID: <46493cf7-6885-4c30-965b-29c158599c58@roeck-us.net>
Date: Mon, 12 Aug 2024 06:21:14 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/8] hwmon: (amc6821) add support for tsd,mule
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>,
 Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
 <20240725-dev-mule-i2c-mux-v6-4-f9f6d7b60fb2@cherry.de>
 <5d5c44cd-6320-4fcd-9409-f3fc97bc5389@roeck-us.net>
 <40ff0c23-f037-454c-9d79-05dd72655052@kernel.org>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <40ff0c23-f037-454c-9d79-05dd72655052@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_062119_579542_1D5DAC5C 
X-CRM114-Status: GOOD (  13.50  )
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

On 8/12/24 04:38, Krzysztof Kozlowski wrote:
> On 31/07/2024 17:12, Guenter Roeck wrote:
>> On Thu, Jul 25, 2024 at 03:27:50PM +0200, Farouk Bouabid wrote:
>>> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
>>> among which is an amc6821 and other devices that are reachable through
>>> an I2C-mux.
>>>
>>> The devices on the mux can be selected by writing the appropriate device
>>> number to an I2C config register (amc6821: reg 0xff)
>>>
>>> Implement "tsd,mule" compatible to instantiate the I2C-mux platform device
>>> when probing the amc6821.
>>>
>>> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
>>> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
>>
>> Applied.
> 
> Eh, there is undocumented dependency on I2C here. Next has warning
> because of this.
> 
> Farouk, please *always mention* the dependencies between patches.
> 
> Best regards,
> Krzysztof
> 
> 
Sorry, I wasn't aware that all bindings have to be in the tree before I apply
patches, and I somehow had the apparently wrong impression that the bindings
were approved. I'll drop the two patches (this one and the DT patch for
amc6821). Someone may need to remind me to re-apply them after all
pre-dependencies are in the tree.

Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
