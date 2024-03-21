Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07A8C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 09:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7GmQzn7c4R+KE0Pf3Vwu9IffSBmGcUntlsDxU3Vt+8=; b=eJBvT3+N/Qjfyc
	eos2pFeEej9cttEMv64CM/KzrHOO65obksegQ11zj7CgBuk95mCwjVUxCubgKMLhJDMMe9tBxHluc
	gL6I3q59BkFU8A4j9MOu34S99rrHs0AuUndI44Z6NeqM50W2nRUovTttwAofr6TsMxSjDIyOToVeF
	I0Zqr3xJVQLdA12/wCGGQG8vht+e2BrD1vO79fyZCrtvp6dvfjQLdm2lbS1yWEKfbiw5gSjlNdddk
	I0zadh7gdRifQfYjygLvkxCFQaDxFyYRmE+zSL+knGyBLNxzQF3FzfnWqBFvh7QUI5PI/YeDl4WiF
	IQ8i+buvuHIhhLLFcMmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnEal-00000002SiQ-0p2x;
	Thu, 21 Mar 2024 09:20:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnEah-00000002SgA-3GWu
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 09:20:05 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a44665605f3so80949766b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Mar 2024 02:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711012798; x=1711617598; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y9o6XSHuV6Rg9KXXUPNQI/05zH9LN9kPlAx4Zl2+03o=;
        b=yzdUuGE0XN4YozrJLET3q5d6ugXo7TlZykugW4+uLBTs69xPh8/uwQ3jrtgEN38m2e
         9VLeVva5KW+54uBakTlPWeYujtInte6cLkTzZbFZVqDJAgHdfw4oZFdYRRVrQXIi6V/O
         x8rlplWuRpwJAMFYYWPOF5130Qe55mzwRet4y6NH5CNHlQ+Gzl0tG7W0VL1wqGl5eNgQ
         sD71Pqkxaw3KR3M2d+g5Zghem9kVle2wAm4HNydbvsUecFD01uXRFxjGqGkR74fOzodz
         scrrNwJoVEH/Qh8TVS88jzuH/71NSkI24KC8rwtlDDxNWB7YjT4snIHAj+e7tmxMfXRP
         3Jig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711012798; x=1711617598;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9o6XSHuV6Rg9KXXUPNQI/05zH9LN9kPlAx4Zl2+03o=;
        b=B4RBO86U2JfFExNa44oGTOIJvFKp6A3xzvB8z5Cw+fcXXPaNBwwhgc8/Yay00p3Of1
         CyYCiRgpaho/UFS5LVMwWEpCWTiKPBLm7cRuI/ZzMGu6+7Hs2mxupZZpX+ZnQfT41piw
         WRkRZIBlzJBTcsfthmrfNOyUNSjIO5avCNBriplIyMdGccI1wCLCsAscRv4HjE3uZgHg
         Xw0lS600Bisf9pTR4atJm1NPRKkla6c0X+GH81Q0sXn8av7PdMW+ElchQ9XBUTxOQw+U
         x2CVlT5nrfBATfxatBFJspbLUXQ2ycvw+z4+WIW400ZBAABuVxmGWbp0ucHcePSw1wrs
         9vMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh0TMG8BZJIa9kupilLLTklUKoGL1b7/HclK8X+2ATxAMdXQOEn6BvlxRAECoxLqinZTPzwAip0I5pTSe8d3upIEvS7rf6Fc9Lahu72r++Fsk6
X-Gm-Message-State: AOJu0YzkUG7iYc9mq6sEhNVq3tE2GcfGzmxlVXZnAbD6T1Q2f9qOYYRH
	q8z/9y3pan4HHSvYK1SOq5bgrvjSxECrHOUlI9tAEHkjUWh3OB+32pSswPolB50=
X-Google-Smtp-Source: AGHT+IF9916kM88PSoRglR66YCcVmLN+62YSmph8pj40Ei4HCql0ciJAUzxwTQXAbPksJsFHjE255A==
X-Received: by 2002:a17:906:190a:b0:a46:8c10:c75a with SMTP id a10-20020a170906190a00b00a468c10c75amr3106595eje.38.1711012798372;
        Thu, 21 Mar 2024 02:19:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id gf9-20020a170906e20900b00a46a27794f6sm6172838ejb.123.2024.03.21.02.19.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 02:19:57 -0700 (PDT)
Message-ID: <70439a01-7949-46bf-a701-c82ba961171a@linaro.org>
Date: Thu, 21 Mar 2024 10:19:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5BPATCH_2/4=5D_media=3A_dt-binding=3A_media=3A_Doc?=
 =?UTF-8?Q?ument_rk3588=E2=80=99s_vepu121?=
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-3-linkmauve@linkmauve.fr>
 <4c05d3c0-aa79-4ce0-918c-7d0967ace520@linaro.org>
 <855507987.0ifERbkFSE@diego>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <855507987.0ifERbkFSE@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_022003_829975_545A43C8 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjEvMDMvMjAyNCAwOTo0NywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiAgICAgIGVudW06
Cj4+PiAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtdmVwdQo+Pj4gKyAgICAgIC0gcm9ja2NoaXAs
cmszNTg4LXZlcHUxMjEKPj4KPj4gV2hhdCBpcyAxMjE/Cj4gCj4gVGhhdCBpcyB0aGUgc3RyYW5n
ZSBuYW1pbmcgb2YgdGhlIGlwIGJsb2NrIGluc2lkZSB0aGUgc29jLgo+IAo+IEkuZS4gdGhlIHJr
MzU4OCBUUk0gbGlzdHMgYSBudW1iZXIgb2YgZGlmZmVyZW50IHZpZGVvIGVuY29kZXJzIGFuZCBk
ZWNvZGVyczoKPiAtIFZEUFUxMjEgaXMgZGVjb2RpbmcgaC4yNjMgYW5kIG1wZWcxLDIsNAo+IC0g
VkRQVTM4MSBpcyBkZWNvZGluZyBoLjI2NSwgaC4yNjQgYW5kIHNvbWUgbW9yZQo+IC0gVkRQVTcy
MCBpcyBkZWNvZGluZyBqcGVnCj4gLSBWRFBVOTgxIGRlY29kZXMgQVYxCj4gLSBWRVBVMTIxIGlz
IHRoZSBqcGVnIGVuY29kZXIgYWJvdmUKPiAtIFZFUFU1ODAgZW5jb2RlcyBoLjI2NCBhbmQgaC4y
NjUKPiAKPiBFYWNoIG9mIHRob3NlIGFyZSBzZXBhcmF0ZSBJUCBibG9ja3Mgd2l0aCB0aGVpciBv
d24gaW8tbWVtb3J5LCB0aGVpciBvd24KPiBpbnRlcnJ1cHRzIGFuZCB0aGVpciBvd24gaW9tbXVz
LCBldGMuCgpUaGFua3MgZm9yIGV4cGxhbmF0aW9uLiBTaG9ydCBpbnRyb2R1Y3Rpb24gaW4gY29t
bWl0IG1zZyB3b3VsZCBiZSBuaWNlCihlLmcuIFZFUFUxMjEsIG9uZSBvZiB0d28gVkVQVSBlbmNv
ZGVycykuIE9UT0gsIHdoeSBub3QgZG9jdW1lbnRpbmcgYWxsCm9mIHRoZW0/IEJpbmRpbmdzIGFy
ZSBzdXBwb3NlZCB0byBiZSBhcyBjb21wbGV0ZSBhcyBwb3NzaWJsZS4KCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
