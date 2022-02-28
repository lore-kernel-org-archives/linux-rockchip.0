Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7066AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 17:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NocpfU3b/xkMMAj/N6hfpkZwJnT8koqAkrmGC9lA3Pk=; b=smoTDk9c8BxFTu
	C5XQ7DUY/TvwgqtJKXGkS19hwDoJpMC4B1Fr4/rD6hOVTcuTZVFO/Amc8V/ufCN8tQ/1/VxLE8Jk/
	ekfkycY6Oj24escExbonJADzhGBtKjoVlVULFkV3ReXxbRadcZdUhyXHbANVC8k5ajCkh8g3gCFS6
	vv4AGRzxmxtiKTFk60bYLZ6ZTz51txqw46IVNIw0/b0YstvFyiqkFRpdIF8KT7L0+E31Qgl89MYQ1
	KhKXAWz0xoXWMnz/G/oYT+JSxIYVlIVMpYdeT/jIMT2iINIGX+iwJL6VJm4cfdpFxUUxHX9Lxqwn9
	bCkMOKVJvcLZoE+CW4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjU8-00DT3k-3D; Mon, 28 Feb 2022 17:06:56 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjTZ-00DSqH-Ff
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 17:06:25 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0CAA03FCAF
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 17:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646067975;
 bh=h4FOiTIqGWppiNVb4WN93SVinniWb4652lod3S4x79M=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=rujXqMRHZuGRk3cHYjEXTKxjQ1jXYDfKtSLdkMqWSzGm3Op4gYn2CPPGPQg7n1to7
 6iOvtbfzbCi+uuP5MHN5V/rWMTPmvhv0Xxt2CjGoMj1vsTIeKEQqr4dbgbBtWjCVuB
 InPLKHeWIopvLlbr/wPxxqva6oijr6RXNhQikP1fVPRdHvyqKIdFQ6K0ULI0nVKWqb
 bUcSRmA3JEx9EFY44RtByMBgc0pMZsp+y+oq2K4NWJzpGZKUTu5QBMt9WYizwj6ACR
 vp9af0wvCHfbuaKNrEDUt/oX/s4gyTMvvtq/W1N2mrNgWzJ6JIaHyRY+SvsRYVvz00
 wIXStCJ8x91FA==
Received: by mail-ej1-f70.google.com with SMTP id
 ga31-20020a1709070c1f00b006cec400422fso5466008ejc.22
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 09:06:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=h4FOiTIqGWppiNVb4WN93SVinniWb4652lod3S4x79M=;
 b=rxnQKFYSXateI60ymiElEPMhNtIHMTXYbeEU7H9T71f3mu0x4TDKh88krLF/DuIyt6
 jDzTfSb/B9pc93OosPha/LWuhRh2jjI38Uknu1jOEpheo1qECh0IdtGtIwpXykx8WVg1
 oVmLfFq2eTxYAUFG2hkYp52NnoK4C73ISFoxAQnQknYTB/OP3sJ3xrgWX3uov71s5Nez
 gtr+U245cy8fkUG4yGLG89+4M40yGv+1E562y/cfdWfJBzK0VEEqAOvO8PL/SCJVWvNW
 X+aCPHDEutc8gxb6/UZ0ZoZDUxPNMJ/L6C7sXBHH3mFD9N9LVf7JBqX6n/uBKuJQNR3s
 hEJQ==
X-Gm-Message-State: AOAM530OC4cYECiKEuzqJ52+RUfCJGZoVtaJbJpDNTggpgNZRZv5QJXk
 k90Y1o4T9cjDwWcL2Fx6UY44pDogZ6NoGnF0AxhTWLjJrhQoXV9/SA13CnmoZJcBmHhyDZ+i2IY
 FZWvhi9/+4dedcq7NNjgg23p7cgl/daSdhHVgHbbjyoSwYYfLOQ==
X-Received: by 2002:a17:906:199a:b0:6d1:aa59:2927 with SMTP id
 g26-20020a170906199a00b006d1aa592927mr15322026ejd.215.1646067973546; 
 Mon, 28 Feb 2022 09:06:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxnrW6Z2hgpLyaCXJWZUUQ0z1Tt4gdOb4FulD2fvmZoIPy6sejI1yUTOFOiqsKx5QAi7Ae9Lw==
X-Received: by 2002:a17:906:199a:b0:6d1:aa59:2927 with SMTP id
 g26-20020a170906199a00b006d1aa592927mr15321996ejd.215.1646067973232; 
 Mon, 28 Feb 2022 09:06:13 -0800 (PST)
Received: from [192.168.0.135] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 pj4-20020a170906d78400b006ce88d5ce8dsm4521931ejb.108.2022.02.28.09.06.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 09:06:12 -0800 (PST)
Message-ID: <22b1de71-a72a-ecb8-44a2-cf055d2a4fc5@canonical.com>
Date: Mon, 28 Feb 2022 18:06:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: Re: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform
 DT bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
 <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
 <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
 <8fbbce9e-4fd9-d420-43ef-953e846d29f1@canonical.com>
 <trinity-f1b6ce3a-6f22-4cf8-bf51-a5e7f007dda7-1646057347735@3c-app-gmx-bs53>
 <ddd09f4f-782f-67e9-ec2f-dd5818ae26c5@canonical.com>
 <trinity-bfe6b2d5-52cd-458d-92b2-66216620a4b3-1646067718759@3c-app-gmx-bs53>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-bfe6b2d5-52cd-458d-92b2-66216620a4b3-1646067718759@3c-app-gmx-bs53>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090621_688962_A491F3E4 
X-CRM114-Status: GOOD (  17.61  )
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

On 28/02/2022 18:01, Frank Wunderlich wrote:
> Hi
> 
>> Gesendet: Montag, 28. Februar 2022 um 15:35 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
>>>> Gesendet: Montag, 28. Februar 2022 um 13:38 Uhr
>>>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
> 
>>>> No, this has to be oneOf. See for example
>>>> Documentation/devicetree/bindings/gpio/gpio-vf610.yaml or many other files.
> 
>>> compatible:
>>>   oneOf:
>>>     - enum:
>>>       - brcm,iproc-ahci
>>>       - cavium,octeon-7130-ahci
>>>       - hisilicon,hisi-ahci
>>>       - ibm,476gtr-ahci
>>>       - marvell,armada-3700-ahci
>>>       - marvell,armada-380-ahci
>>>       - snps,dwc-ahci
>>>       - snps,spear-ahci
>>>     - items:
>>>       - const: generic-ahci
>>>       - enum:
>>>         - brcm,iproc-ahci
>>>         - cavium,octeon-7130-ahci
>>>         - hisilicon,hisi-ahci
>>>         - ibm,476gtr-ahci
>>>         - marvell,armada-3700-ahci
>>>         - marvell,armada-380-ahci
>>>         - snps,dwc-ahci
>>>         - snps,spear-ahci
>>
>> That could be one way, but instead I propose to have only second part
>> (so enum + generic-ahci) for all compatibles mentioned in
>> ahci_platform.c, which do not customize the driver behavior for these
>> compatibles..
> 
> tried many ways of defining it, but none passes with the examples. either to short (first example) or too long (second)
> 
> as far as i understand the logic it should be similar to this:
> 
> properties:
>   compatible:
>     oneOf:
>       - items:
>         - enum:
>           - marvell,berlin2q-achi

You need to extend this enum with all the entries I mentioned before.

>         - const: generic-ahci
>       - items:

No items here, directly enum.

>         - enum:
>           - brcm,iproc-ahci
>           - cavium,octeon-7130-ahci
>           - hisilicon,hisi-ahci
>           - ibm,476gtr-ahci
>           - marvell,armada-3700-ahci
>           - marvell,armada-380-ahci
>           - snps,dwc-ahci
>           - snps,spear-ahci
> 
> this passes the dt-binding_check (examples) for me, but i guess there are many more compatibles defined with the generic.
> 
> dtbs_check found some more like
> 
> 'brcm,iproc-ahci'
> 'marvell,armada-8k-ahci'
> and many more
> 
> it looks like these are also checked in the enum, so the yaml itself look correct, but needs some kind of wildcard instead of the "marvell,berlin2q-achi" as second for the generic-ahci compatible
> 
> regards Frank


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
