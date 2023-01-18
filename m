Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A222BC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 18:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnhjThyGB7T6JDVXQNFJn7OKWW5B07K09sOjBp4K5zM=; b=g6d9jsl8aoLRNQ
	hDK4EEYQ8cNKZDwHsiMqAa4JZ37CGVcbWu6ACt30JbkskzOZtNWv+hWOuloxkm9ad2MhTY4OByxSh
	SZz1fOzqHpcKNtz3iNwq4RbtZlHa0lel/xgrKoEoS3U94fm/IphwtSWfdAgEVAqmgNazw5mCuLVMZ
	4F7dk0lz1vqx65auJkz6yVa77DYkarTJbgdRHNMedU/TtEqhD8A7XqnBarUOkF/QeSxH0oEZzziWU
	MV5y8Dw7GquL6AhzTSIC5TpgU0NpYETQqEKayK3ykVXDHqsDsHtWPa19LyZsZLTp1zVpOL4YoIAix
	7t7N2peYJN65C4fUkS0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDEh-002Krl-Oe; Wed, 18 Jan 2023 18:32:35 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIDEQ-002KmK-6J
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 18:32:19 +0000
Received: by mail-wm1-x330.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so2022717wml.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 10:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDOMgu1R5MZdFuG1WoMkXEWXWPDB9V7oXEVPOSPFqMk=;
        b=WHaUr7JkLqMIDHA/hXsqBjkSWmDZFiUxCHf2dftPrBezsoW+dLizp4JrGqrPYf3WLl
         JOm5jBVrjlBDqw5Ha/qcs+r/dwUOKQCzYpcjU/p04GEBOccP9SeLIz6EDm/vLWbo8tBW
         hhP3cVm1n6WGcDMAyMBWpQlW8F1PpQp5l0Qpge5N4cUjxUm/ty47jo8J4zHUcSvJ5vOA
         uCzsdRdwwtJTcc2fW7Pg6xl1CgeYurWytPgfrvv3PGxI3FiNCLWGc9M0i6VWbXlKpWUX
         S5zfo7sem5bmk2tW1QoVf3Swfgrwvtg28GBXWO3v/IVC9sjGqgTrpxoDQVkt1cLUwWeA
         FL4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDOMgu1R5MZdFuG1WoMkXEWXWPDB9V7oXEVPOSPFqMk=;
        b=huu26uVv8L80zmS0770PxIlkNIjJI3nJ+ZenBOzNPNRtBRErDSHH6Zf70bNKvkNehZ
         H9+E60r5lGtwbBFu+7T6hsDhrTj0YvZKBr4EfqHn1lqraR2UXFVGrFLu6ES66xTNXO5g
         FY4NSo60hN581VcTVWVtHj6i8Bz/U8OiziEP2LIqUP1VCuTVgZmCUM+1pb27Xd0lisgX
         +N3Vj6T22Ac8+BTdpeDppw0fdoTdy7xmCuXU1TlSS2+KnV0j37SGKXMGEgc1YlG+5zYc
         ViaFdnbx+AaC97Q0ZwgA33MNQSwi593tToIt2wG5khKY8dV5IbCnzfdSKJSsct2pkw6j
         +JMA==
X-Gm-Message-State: AFqh2kok1j0i8QnUXNUI8wic9DMtZ7edarHSKjbrkmuUlXkb3I8E2FXS
	wQvfGp5aGMm0P1jfjagHKeQi+g==
X-Google-Smtp-Source: AMrXdXtdP5gAkiej7sOvZztosqeKCQeZenZx5m8n552mmlJwQ5zMJxYUgthGWLC97j6Vtmg0xkfOIw==
X-Received: by 2002:a05:600c:214f:b0:3d9:ecae:84f2 with SMTP id v15-20020a05600c214f00b003d9ecae84f2mr7409139wml.25.1674066734461;
        Wed, 18 Jan 2023 10:32:14 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg1-20020a05600c3c8100b003db09eaddb5sm2270616wmb.3.2023.01.18.10.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 10:32:13 -0800 (PST)
Message-ID: <a60e7f50-c39f-07e5-7238-e3a4031b45a4@linaro.org>
Date: Wed, 18 Jan 2023 19:32:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 1/4] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu
References: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
 <20230118153236.GA33699-robh@kernel.org>
 <f624fcf3-f8f1-68c0-eab0-43bcda3cbe90@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f624fcf3-f8f1-68c0-eab0-43bcda3cbe90@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_103218_338751_BD625734 
X-CRM114-Status: GOOD (  22.02  )
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

On 18/01/2023 18:12, Johan Jonker wrote:
> 
> 
> On 1/18/23 16:32, Rob Herring wrote:
>> On Wed, Jan 18, 2023 at 01:13:23PM +0100, Johan Jonker wrote:
>>> Currently all Rockchip gpio nodes have the same compatible.
>>> Replace all the compatibles in gpio nodes to be able to
>>> give them a consistent ID independent from probe order or alias.
>>
>> I fail to see how the compatible change affects probe order or aliases. 
>> It is also an ABI break if there is not the existing compatible as a 
>> fallback. State the problem you are trying to solve with this change, 
>> not just what your solution is.
> 
> Hi Rob,
> 
> Since the yaml conversion of rockchip,gpio-bank.yaml we have generic "gpio" names instead of "gpio-1".
> For both Linux and U-boot there's a need for a consisted ID order between the nodes.

Still do not see how compatible is related to this.

> 
> The kernel has no logic to decide between the first compatible and the fallback.
> A fallback doesn't have ability to add/select "data" with probe, but have to use
> of_device_is_compatible(np, "rockchip,rk3188-gpio-bank") for  "15"  SoCs instead.
> 
> I can produce a serie with fall back.
> Let us know how to move forward here.
> 
> Kind regards,
> 
> Johan Jonker
> 
> 
> ===
> Linux driver behavior:
> 
> 	id = of_alias_get_id(np, "gpio");
> 	if (id < 0)
> 		id = gpio++;
> 
> Problems:
> Alias not always available in existing DT files(not part of the binding)
> Probe order is not guarantied and possible number gap for rk3066a between gpio4 and gpio6.
> (id counter gives not consistent result)

Again, how compatible is related to this?

> 
> ===
> U-boot rk_gpio.c current behavior:
> 
> 	end = strrchr(dev->name, '@');
> 	priv->bank = trailing_strtoln(dev->name, end);
> 	priv->name[0] = 'A' + priv->bank;
> 	uc_priv->bank_name = priv->name;
> 
> Problems:
> Crash when node name has no "gpio-1" format
> 
> U-boot rk-gpio proposed: 
> 
> 	priv->name[0] = 'A' + dev_seq(dev);
> 	uc_priv->bank_name = priv->name;
> 
> Problems:
> Reduced FDT's and rk3066a gives number gaps.
> 
> ===
> 
> My proposal:
> 
> struct lookup_table rk_gpio_rk3188_data[] = {
> 	{0x2000a000, "A"},
> 	{0x2003c000, "B"},
> 	{0x2003e000, "C"},
> 	{0x20080000, "D"},
> };
> 
> 	{ .compatible = "rockchip,rk3188-gpio-bank", .data = &rk_gpio_rk3188_data },

Which you did not do... Your patch is doing something entirely else.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
