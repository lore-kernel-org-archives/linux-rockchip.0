Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BC0BC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 16:19:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80CE1611AC
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 16:19:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80CE1611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aQP+9CpiKP7WlJFd1kzlyqboQ7uaNVkeOK4Roe8mxws=; b=Xb7FlQ9raLkeuc+Rf97s/6IlJ
	a/Adn4xTy5IZwKqSMooL8iIEmF9alnfVTT6Wx8anexIQzCvTf8NPhKapWK50QSlDeiW4a2lxRoIfN
	h7lKuDNrO22iiQMYTg56Mk0HqqNkROUoOvkWrblH8tksWRh8l0uA11QPmNfwRtJGyCXddK0ugXGmi
	01G2URyh9bBYb54/aTCEFmC4dr+US26wpI/OW8nsjEtqyU58LNsyntcbpf57w6ZrOcu2j7/Sz6qtb
	VswkDXSXmNn02ATAzgnfIT+QdhoJoLsx2AwxdvxYDsfQRCEPef3we/G3104PSf6JviwD5hQFyBq6s
	dLygTZEiQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldxle-00GWbF-Dw; Tue, 04 May 2021 16:19:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldxlc-00GWb3-E4; Tue, 04 May 2021 16:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=60fjmSbWautEiAXXZ/arvBTCpd67qkAETXpwdXksLGM=; b=RITbdfFQFP3oFbnoMfMwd+senB
 hnPLR0eWgkRhCIwDELU5Ey9dKEjEMS9pqtT9z4AC3jbqmWWHdgjxFO2WDGGnZgyn8o9rFd6BNjjmc
 /sVKntGdgq7KNA3WmTZlEmn1gOKXWoDC3yY7Z5hVyXDiP7IpW9HxLspeONCggprdhit9KSb4hgDZc
 owhO6snt3CoFpdFZlPK9v/B+m1JQSMeNaCY60ulZGoJr1D4Q90ZeLU52Zfcw3EKbxLlRbv1jxti6j
 OJ+I4buQY5rjV4NXMhDXyX3QMug0rAqR2HCkizAgMN49hTSKh2AbhKrUUfEMsvL7dxsFqolWeB5DV
 aqTeb/Iw==;
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldxlZ-0046Db-Fm; Tue, 04 May 2021 16:19:22 +0000
Received: by mail-ed1-x533.google.com with SMTP id bf4so11116723edb.11;
 Tue, 04 May 2021 09:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=60fjmSbWautEiAXXZ/arvBTCpd67qkAETXpwdXksLGM=;
 b=qFthUpilO16l5BBY7830dFNGPY803Hw8e+Eye/onLP8kMF/PyMLQVAglHZ/BRoZpUy
 8Zy9hEVal3Hu63EPztEAlNQhEkOdTpz3qtqsgegeTfzwfyJgphG/hgv9h1X/dVsvZgaD
 aCiIAJuYjbGOs1xv0FXP9BeBQTHfyCsI4Mz9Re+mtGsmPNcZK4B65VysSNebcz1n4P6F
 MtbWl29/mpRg0uW7w7mFE3RxIYduBBt7pRm77TGEYzRhCoSoULZkV0k/64huszWwPxn8
 MGpuMX4hrUPy4YdXFpLj5LViNUsROaAnWr1g6fbHIZUbTtQVAvnkTqr7CPJWXMkAutRW
 MMrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=60fjmSbWautEiAXXZ/arvBTCpd67qkAETXpwdXksLGM=;
 b=FKkuDK9oTOaY1LZDBBMl7UVnheI57yfzyZgQGjZcx6MQrtCP8o8TYy5iWZN6/I+R2Z
 0vSwwEr3GRcUQ36aaAD/CfnhhXch7Qcg5iWrfmXGx51a8nP958pTVhLrw1R4hiXk6XTe
 TuFFZcCq5DShu7Q6D8K68S23yxvyhRrHmX03X9vxS6piIFa/J+0V5MDfi15tGN8u7dD3
 oOpgeuua/3HKzz2FqDF8FGgHU8hFEi3UXlUToyDIAggiZDpYTQ3/fQtEJk8adn1iOsJb
 LnhnFU/cnn4Tu8FJZDuAh72j1PH0w29vCrx2+cAG7KduHPbFtw2eQVm0+WjqcVww1jf/
 +fQg==
X-Gm-Message-State: AOAM533POTTsr96TghHjdVH1/3kGFOwblBoIkywcZ2rpJc0aB3JMBh7q
 e0GGP3C8/9FQzzVa4FjkC/U=
X-Google-Smtp-Source: ABdhPJxhAo3H1iYkoqJEJEahFcx35MkC2p0i2yMzVazAbR2jkzD9gR8K9ooHj8koXp2JKDOUamMMPQ==
X-Received: by 2002:aa7:d594:: with SMTP id r20mr26285506edq.242.1620145159294; 
 Tue, 04 May 2021 09:19:19 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h15sm1618678ejs.72.2021.05.04.09.19.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 May 2021 09:19:18 -0700 (PDT)
Subject: Re: [RFC PATCH v1] dt-bindings: mmc: snps,dwcmshc-sdhci: fix
 rockchip,txclk-tapnum
To: Rob Herring <robh+dt@kernel.org>
Cc: heiko@sntech.de, shawn.lin@rock-chips.com, ulf.hansson@linaro.org,
 Jisheng.Zhang@synaptics.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210430072138.6537-1-jbx6244@gmail.com>
 <CAL_JsqKnD1t7oRDY5sTi3TjJ0vbFK0tQcVj1qCw_jiOfOQh=mA@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4b67c50e-558a-ab76-b8df-531691129837@gmail.com>
Date: Tue, 4 May 2021 18:19:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKnD1t7oRDY5sTi3TjJ0vbFK0tQcVj1qCw_jiOfOQh=mA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_091921_561071_408A65FE 
X-CRM114-Status: GOOD (  22.47  )
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



On 5/4/21 12:40 AM, Rob Herring wrote:
> On Fri, Apr 30, 2021 at 2:21 AM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> A test with the command below gives this error:
>> mmc@fe310000: rockchip,txclk-tapnum: missing size tag in [[8]]
>>
>> With this added to a dts file:
>> rockchip,txclk-tapnum = <0x8>;
>>
>> A look at the driver shows that:
>> DLL_TXCLK_TAPNUM_DEFAULT        0x8
>>
>> Adding the default value to the dts files is not needed.
>> Every clock is divided into 32 taps equally and
>> the max value is 31.
>>
>> Fix rockchip,txclk-tapnum property in snps,dwcmshc-sdhci.yaml by
>> adding a minimum, maximum and default.
>>
>> In the driver the function of_property_read_u8() is used,
>> but with dtbs_check the notifications only disappear in YAML
>> by changing uint8 to uint32.
> 

> Did you check what value the driver sees when you put 8 in the dts. I
> expect it will be 0 because you are reading the 1st byte in big
> endian.
> 

Hi,

Thanks for info.
A test with a dummy module shows that of_property_read_u8() read a 0
instead of 8.
There are approx 23 of_property_read_u8() functions in use in the
mainline kernel. Do they need a recheck?

Johan

=== other Rockchip recheck examples

drivers/mmc/host/sdhci-of-dwcmshc.c

	if (of_property_read_u8(mmc_dev(host->mmc)->of_node,
"rockchip,txclk-tapnum",
				&priv->txclk_tapnum))

drivers/pci/controller/pcie-rockchip-ep.c

	err = of_property_read_u8(dev->of_node, "max-functions",
				  &ep->epc->max_functions);

=== dts test
	dummy {
		compatible = "dummy";
		rockchip,dummy0x8 =        <0x8>;
		rockchip,dummy0x11223344 = <0x11223344>;
	};

=== driver probe
	of_property_read_u8(np,  "rockchip,dummy0x8", &tmp8);
	printk("u8 : 0x%08x\n", tmp8);
	of_property_read_u32(np, "rockchip,dummy0x8", &tmp32);
	printk("u32: 0x%08x\n", tmp32);

	of_property_read_u8(np,  "rockchip,dummy0x11223344", &tmp8);
	printk("u8 : 0x%08x\n", tmp8);
	of_property_read_u32(np, "rockchip,dummy0x11223344", &tmp32);
	printk("u32: 0x%08x\n", tmp32);

=== dmesg
[   18.089694] u8 : 0x00000000
[   18.090123] u32: 0x00000008
[   18.090494] u8 : 0x00000011
[   18.090865] u32: 0x11223344


>> The driver has no limit check for rockchip,txclk-tapnum.
>>
>> make ARCH=arm64 dtbs_check
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> index e6c9a2f77..f43d8d829 100644
>> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>> @@ -48,7 +48,10 @@ properties:
>>
>>    rockchip,txclk-tapnum:
>>      description: Specify the number of delay for tx sampling.
>> -    $ref: /schemas/types.yaml#/definitions/uint8
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    minimum: 0
>> +    maximum: 31
>> +    default: 8
>>
>>
>>  required:
>> --
>> 2.11.0
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
