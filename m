Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB2CC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 07:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uX23TfywBE3yNEygLZmirECCrcPS0+GNRs5FGaQVkNQ=; b=khnhf+Cs4EIcmV
	KAl9joptIkVEwHZOaGulIp0IWpxIEskeoNVbKAgfuqk86xHA3OrWV8xt+frRLSl0ogeByY6bTcUD7
	j77nzLKhO0ThssMVbKJ3bFbtTMqzLnpvnQ+FBWADwCwUVB/F+NIsppuUYgaBrDn0NZLzCbQ3DyMGe
	Si8/2dZLtrEdkhvaWnC2t6aHeDKQ0Zhi5SFCTGS/M1GCj50Odtg2i72tmElgBp3PxulHr+K1W48hj
	buMd4mql43DNNvGdOl6SW5iER7Yy0R4ior1m8UWzDlBwhfHWyhSirF039zkxJd6SRLXeuILQNtK77
	cHmiKLmemJi4d1Eui1xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrYdu-0000000A5H3-0jVf;
	Tue, 02 Apr 2024 07:33:14 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrYdp-0000000A5FL-3XGp
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Apr 2024 07:33:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-56b0af675deso5345437a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Apr 2024 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712043187; x=1712647987; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Mg/pjAtpcbs7Ow5BFq/7idg/rMkZ8mTaIRHsXrVMLtY=;
        b=dGFgG67q6tRAx03DsJCXlE35CvuSkFJSOpsUipUkXEnswQdAyahyZ1TOrTDtyExfkt
         Tngco90kyg9muB3uLD6A/BYGan9XjzRCZ1Zk9HECsXBMnIJOIC0jrBd5Jn1mIYiTm+VZ
         30prgzk7cj6g5pWxzMfYLsd/I+iarEodKcRVcAYkK4CiXiLuxYsgdM9cyYAVd7hhtJOU
         IXWt+8qmAqiUCLGv8+7UdTCpVUOtNjtoFMDNgIX1Kz4vfaRJUt3yLXRRZJBDQpTzLvY/
         2zLUOyN4h4QYobDhhQnJQEg7RzU2o7KU+WJzh86Xk+VR4acY7TlvryK/BYMYRccHq3qx
         6Gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712043187; x=1712647987;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mg/pjAtpcbs7Ow5BFq/7idg/rMkZ8mTaIRHsXrVMLtY=;
        b=b0gSUDHW+I68lQmzbv55CAVjIwX7WUBIGkAJVZoApZQINXrMrrhgIKO5+eX18wewJC
         rFthW6zJlYXc+f3hm/jkxo5EpsD6NuO/SYQGDC6V/8PcOYdIrEvXg0q16SpIh8Q/7rga
         f4jL1evbZEbphyC5Lhc/H5L3doLvYBDCnmGZs9OldF6lJ39EhcxIYxcjco4XZtQOZ5Rj
         rzjLBgdjROXjPuocGw0hk1zp+kyUImntFHVuHT2N/v27PLkxQKzeTelWw8++qtiHK4jj
         nzTk51OUqpfBoRVW6W2uVjRCKgJz40hgX7JXd9n0Og8Yw+tjPygbCkqE4xkNCf4PQ5QD
         THVA==
X-Gm-Message-State: AOJu0Yxi5SGn7KoFEwnbqZa1GmoXILss4Bq+GvKir1YVUbXQlEveyvn7
	3s+c8FGrKC4M1qEbiLk4QX/6HEZk+rGgiJ2YMuC9OUj9xk60ivKvBCPPyf9tzxI=
X-Google-Smtp-Source: AGHT+IErDsg/pEuIoRa2mt+GxweVndlzLrSXmSlHNfiNRXxf4maBZVWOxOrVexYLkFwAl3dClM2Zog==
X-Received: by 2002:a17:906:32c5:b0:a4d:f901:477d with SMTP id k5-20020a17090632c500b00a4df901477dmr8116027ejk.19.1712043186931;
        Tue, 02 Apr 2024 00:33:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id l3-20020a1709067d4300b00a466af74ef2sm6163712ejp.2.2024.04.02.00.33.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Apr 2024 00:33:06 -0700 (PDT)
Message-ID: <57d5d6ea-5fef-423c-9f85-5f295bfa4c5f@linaro.org>
Date: Tue, 2 Apr 2024 09:33:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/18] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
To: Damien Le Moal <dlemoal@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-18-dlemoal@kernel.org>
 <b020b74e-8ae1-448a-9d47-6c9bb13735f9@linaro.org>
 <c75cb54a-61c7-4bc3-978e-8a28dde93b08@kernel.org>
 <518f04ea-7ff6-4568-be76-60276d18b209@linaro.org>
 <49ecab2e-8f36-47be-a1b0-1bb0089dab0f@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <49ecab2e-8f36-47be-a1b0-1bb0089dab0f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_003309_954943_3CB7453F 
X-CRM114-Status: GOOD (  17.52  )
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

On 02/04/2024 01:36, Damien Le Moal wrote:
> On 4/1/24 18:57, Krzysztof Kozlowski wrote:
>> On 01/04/2024 01:06, Damien Le Moal wrote:
>>> On 3/30/24 18:16, Krzysztof Kozlowski wrote:
>>>> On 30/03/2024 05:19, Damien Le Moal wrote:
>>>>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>>
>>>>> Describe the `ep-gpios` property which is used to map the PERST# input
>>>>> signal for endpoint mode.
>>>>>
>>>>> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>>>> ---
>>>>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
>>>>>  1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>> index 6b62f6f58efe..9331d44d6963 100644
>>>>> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>> @@ -30,6 +30,9 @@ properties:
>>>>>      maximum: 32
>>>>>      default: 32
>>>>>  
>>>>> +  ep-gpios:
>>>>> +    description: Input GPIO configured for the PERST# signal.
>>>>
>>>> Missing maxItems. But more important: why existing property perst-gpios,
>>>> which you already have there in common schema, is not correct for this case?
>>>
>>> I am confused... Where do you find perst-gpios defined for the rk3399 ?
>>> Under Documentation/devicetree/bindings/pci/, the only schema I see using
>>> perst-gpios property are for the qcom (Qualcomm) controllers.
>>
>> You are right, it's so far only in Qualcomm.
>>
>>> The RC bindings for the rockchip rk3399 PCIe controller
>>> (pci/rockchip,rk3399-pcie.yaml) already define the ep-gpios property. So if
>>
>> Any reason why this cannot be named like GPIO? Is there already a user
>> of this in Linux kernel? Commit msg says nothing about this, so that's
>> why I would expect name matching the signal.
> 
> The RC-mode PCIe controller node of the rk3399 DTS already defines the ep-gpios
> property for RC side PERST# signal handling. So we simply reused the exact same
> name to be consistent between RC and EP. I personnally have no preferences. If
> there is an effort to rename such signal with some preferred pattern, I will
> follow. For the EP node, there was no PERST signal handling in the driver and
> no property defined for it, so any name is fine. "perst-gpios" would indeed be
> a better name, but again, given that the RC controller node has ep-gpios, we
> reused that. What is your recommendation here ?

Actually I don't know, perst and ep would work for me. If you do not
have code for this in the driver yet (nothing is shared between ep and
host), then maybe let's go with perst to match the actual name.

Anyway, you need maxItems. I sent a patch for the other binding:
https://lore.kernel.org/all/20240401100058.15749-1-krzysztof.kozlowski@linaro.org/

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
