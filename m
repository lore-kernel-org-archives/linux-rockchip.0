Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B18B4C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kTYnCIJNhD1COvi6h7PYxrb+kaVki5uTqjIaPfBBVY=; b=p3piKfoQIGXXfz
	XPb0Sscmt0tDxav+nbuvALkjWw3wBVqLhiE3Q6vPNEWVIw5VkU0DkjG2oqcM8Paco6xaAv4RHq/7A
	HHA6KQq90QYSW70WZcnmd/T5WB8SgNjBP+NnXsqt+C/mGKJYgPOCdyIKd1pYR8jJImdcwsrVrKiqt
	XA43mUnqQgPKivRUchVqrKJfCaZxIPxsEhEfyg6nWun2I96ohqTin4aRZVghfftag6uiPsE+5K3D1
	H7DVLPT7yGfJ3cD7IeILthyvAyMO/34qc0G1kQWfaRlaDkwiCUUNh0AzghrYutM8BhRyKlklnRCTF
	VFbrBUnO1bfP4tp1VrFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dBF-00H5Es-7Y; Thu, 16 Jun 2022 00:16:13 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dB3-00H5B7-3K
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:16:02 +0000
Received: by mail-pf1-x42c.google.com with SMTP id y6so24313pfr.13
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8D9FgmNCtnFvNkZSyfQkke9P9azukxsmZNnMNfiMAdM=;
        b=w9G+1de4NYInQjvbjJk0CIZpahMQ/ffE5HGK6nFeqOI/OGzPV8HYklRQsyz3TmvybF
         CSzoOmfBECVna47TvFDiLXp90Y2fxDI45MeVOf1xMQ4xGOeCtCpg0bqGAbBVniW498ve
         Oc0hH4MwpiFwC3Kr+lyoU/zP70Slj88gjyTy+k0+abDkLH6r7k1DY5TRLfhlACJgQ7BJ
         9UWYxavsT1HY4u1UEGGLCEMBD9nV5IIuACk07LcBQU7CL3KCEim0ypIWlyb6MMt/1yyY
         K1G6eaeoUhu+ifD4smwx69p4Zu5TaGyX+Zu8rSqYPzrgqE67dPjydpzNZW5mYIZUEt27
         7JQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8D9FgmNCtnFvNkZSyfQkke9P9azukxsmZNnMNfiMAdM=;
        b=1O/CGG+WZI5SfvTf08VCRL6VBtenOPLFig7ah+rRnKcV8mn1JeFSq9SnfvonPsDaOb
         lkIyo/3haxh7M0dMudkDtEUSDoTg6x7P8SePSIIjjWbtan81en/CnpCML8uy5rP1tL8Z
         /LKaA3ym7at4PlRM2gqAKKmP0orw3wfz0qTS/ZbRW5iDlW4cNn7wfDTb1g/NU75xV/7/
         oNC0v+/IwF6BcRwQwn45c2D7lMOYtc+2ZfcSaARg1NlbK3+hFljtR58nQbcl/FT8wO7k
         ODdFoCXKaATvmL71aYts/OHEEAgQhW/bMThv+4uK7i6OfWJMi4a6PL5pslKM1zIE+SFZ
         llYg==
X-Gm-Message-State: AJIora9gSVOr9O203r9pU5obh32OEykVGUOE3P/GagNSW/UbLS6iIE7P
	nuqbusQKsofUm/1uoPvkzzRKhw==
X-Google-Smtp-Source: AGRyM1taVMk9lP1uUfLG08U7BQZFgr5GaPMYYjQ8yY6ue4mNYfuse0AuUMhr1oRfRjnGsBgB+wryuQ==
X-Received: by 2002:a05:6a00:b52:b0:522:cf46:18f9 with SMTP id p18-20020a056a000b5200b00522cf4618f9mr2033361pfo.33.1655338558177;
        Wed, 15 Jun 2022 17:15:58 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902d88d00b0016196bcf743sm191767plz.275.2022.06.15.17.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:15:57 -0700 (PDT)
Message-ID: <900b26b6-1f83-a159-3ee5-6696863cf2b9@linaro.org>
Date: Wed, 15 Jun 2022 17:15:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/6] arm64: dts: hisilicon: Add missing space around
 properties
Content-Language: en-US
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
 <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_171601_164921_CB68BFE7 
X-CRM114-Status: UNSURE (   9.71  )
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

T24gMTIvMDYvMjAyMiAxNTozMSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gQWRkIHRoZSBt
aXNzaW5nIHNwYWNlIGFyb3VuZCBwcm9wZXJ0aWVzIGJlZm9yZSB0aGUgdHlwbyBzcHJlYWRzIHRv
IG90aGVyCj4gZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIFPDtmRlcmx1bmQgPG5p
a2xhcy5zb2Rlcmx1bmQrcmVuZXNhc0ByYWduYXRlY2guc2U+Cj4gLS0tCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvaGlzaWxpY29uL2hpcDA2LmR0c2kgfCA2ICsrKy0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2hpc2lsaWNvbi9oaXAwNy5kdHNpIHwgNiArKystLS0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpUaGlzIChhbmQgb3RoZXIgc2ltaWxh
ciBpc3N1ZXMpIGlzIGZpeGVkIGhlcmU6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIy
MDUyNjIwNDQ1My44MzI2ODEtMS1rcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmcvCgoKQmVz
dCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
