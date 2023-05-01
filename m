Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6AB4C77B61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZT6+P1FD0q5/UokE8GgSCZET3fUvXEVt5X+4mq2aAHw=; b=u8zbBwLP3inw81
	4JJ1FECGWeRQOhrmfwLGSwo6hpWHhapdouJ8YU/8h7/xEgW0KAcS2ws+YZZE1r6hBQlh5h271Emw5
	kaQPrn6d4scj2BL7MqjRGw5QQXhm/SLPuMdoMxxJq5D79Css60vk1Hau+x9mlHEQAN4TQTz1df7L0
	JTBlMmj1tLWrR2QmzOcvLBK8VIpXysfJawwCMKwWkA8ilV4N8N6EnmwIYHDIi3ofG69+BnaKsuQNN
	Ffuc8xJlYpeyLJfNY0QbgUveLTT9ZkBGhXhzfUZidKg8cE4OLVRKBin2xConEQ4QuWLWhxJJGoosf
	MKUCSm/xlKpSpWBnKPmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptSfY-00Fxr5-1P;
	Mon, 01 May 2023 12:30:16 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptSKy-00Fpk2-2B
	for linux-rockchip@lists.infradead.org;
	Mon, 01 May 2023 12:09:02 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f178da21afso14383875e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 May 2023 05:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682942938; x=1685534938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vUdzf3IvEdsxulw0zrmzJtlZgtzcorWmwsr5oTBgspM=;
        b=yqgRWU3yM9bRw+uA0Y9/HD9qijSv2+UeJZvq2k02CwctK0NGULzDsHbDN2u7d+niop
         fCSv60Fh0cNlH+EfXfbe78rXGb/KYAu+tsx92E9NikV0hgnuCeVpYdbWiOKMdAKEKQko
         i6jNWeMa6lm6/KQg2mZje9mZZqPcagqsINJQ3QBmK9IHJwZi6zuT0ZttriADi1fnhBn+
         ifaVnQXOMCF9iAm8cMYCfna8LsZ0uAw5McQr7C7jcEBr1JTTmCiUSMZJu/DiGcEZ3gLj
         DDBDqeN/xYmEH285DjzyDeAGbNdh6srvuvXakQCjeZOoXi7n5TNa5lSkjPpGwp5P6AVm
         ocYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682942938; x=1685534938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vUdzf3IvEdsxulw0zrmzJtlZgtzcorWmwsr5oTBgspM=;
        b=H/KUAhRcsJuprRulcL0Je0pzWadTRWURApmw/z8fqCeMXEmecJfPLA3PKQJdYk6esQ
         woWbPVsT3EojlyFXg2tMgUpbdokrvbtgy9ewqZtpT1VLaOcWi+kkPwwAqNpLySwMTOFr
         5NDMMEFcBap6/hzhbzxf6NB8eTPkb4xLuMuxeKHsnC1JeuEacQzn9i/bqU50FkCJaF2s
         8Uo2VBKlwnvEcYWDYOLWJIq9vVUaMjs65jftqOUcaOYDgi7d/FMYS6n0G40YUtUveaW9
         uvobIWI74ndFcrEn9XrFyjyAiGmbzcaXM/y3iu02ZqqgVDWPt8vBQQaruq36xCh34OVC
         ib/Q==
X-Gm-Message-State: AC+VfDzgnrvT+iHjH5Ad7jFjUUenX5YMg6cfSPWTzYeAf9LbisM5D6fK
	/EALqb6RGFdTHaAxg578zOEtSw==
X-Google-Smtp-Source: ACHHUZ54tiiVMytDtdZbk+O+s1aS7DXww0a8qsgFqay4XxReSxz3IOKsL6LnMUBSO1RrgEU3WOXjCQ==
X-Received: by 2002:a7b:c8c3:0:b0:3f1:6f53:7207 with SMTP id f3-20020a7bc8c3000000b003f16f537207mr9467082wml.17.1682942937646;
        Mon, 01 May 2023 05:08:57 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:492d:9712:4f67:3b93? ([2a05:6e02:1041:c10:492d:9712:4f67:3b93])
        by smtp.googlemail.com with ESMTPSA id d9-20020a5d6dc9000000b00304adbeeabbsm11417548wrz.99.2023.05.01.05.08.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 05:08:57 -0700 (PDT)
Message-ID: <db038749-253b-cafc-2346-d684c81461be@linaro.org>
Date: Mon, 1 May 2023 14:08:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] soc/rockchip: dtpm: use C99 array init syntax
Content-Language: en-US
To: Randy Dunlap <rdunlap@infradead.org>, linux-arm-kernel@lists.infradead.org
Cc: patches@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20230501024950.31518-1-rdunlap@infradead.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230501024950.31518-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_050900_744153_FEB6EDCA 
X-CRM114-Status: UNSURE (   7.84  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDEvMDUvMjAyMyAwNDo0OSwgUmFuZHkgRHVubGFwIHdyb3RlOgo+IEVsaW1pbmF0ZSBzcGFy
c2Ugd2FybmluZ3MgaW4gc29jL3JvY2tjaGlwL2R0cG0uYzoKPiAKPiBkcml2ZXJzL3NvYy9yb2Nr
Y2hpcC9kdHBtLmM6MTU6MTI6IHNwYXJzZTogd2FybmluZzogb2Jzb2xldGUgYXJyYXkgaW5pdGlh
bGl6ZXIsIHVzZSBDOTkgc3ludGF4Cj4gZHJpdmVycy9zb2Mvcm9ja2NoaXAvZHRwbS5jOjE3OjEy
OiBzcGFyc2U6IHdhcm5pbmc6IG9ic29sZXRlIGFycmF5IGluaXRpYWxpemVyLCB1c2UgQzk5IHN5
bnRheAo+IGRyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYzoyMDoxMjogc3BhcnNlOiB3YXJuaW5n
OiBvYnNvbGV0ZSBhcnJheSBpbml0aWFsaXplciwgdXNlIEM5OSBzeW50YXgKPiBkcml2ZXJzL3Nv
Yy9yb2NrY2hpcC9kdHBtLmM6MjM6MTI6IHNwYXJzZTogd2FybmluZzogb2Jzb2xldGUgYXJyYXkg
aW5pdGlhbGl6ZXIsIHVzZSBDOTkgc3ludGF4Cj4gZHJpdmVycy9zb2Mvcm9ja2NoaXAvZHRwbS5j
OjI2OjEyOiBzcGFyc2U6IHdhcm5pbmc6IG9ic29sZXRlIGFycmF5IGluaXRpYWxpemVyLCB1c2Ug
Qzk5IHN5bnRheAo+IGRyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYzoyOToxMjogc3BhcnNlOiB3
YXJuaW5nOiBvYnNvbGV0ZSBhcnJheSBpbml0aWFsaXplciwgdXNlIEM5OSBzeW50YXgKPiBkcml2
ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmM6MzI6MTI6IHNwYXJzZTogd2FybmluZzogb2Jzb2xldGUg
YXJyYXkgaW5pdGlhbGl6ZXIsIHVzZSBDOTkgc3ludGF4Cj4gZHJpdmVycy9zb2Mvcm9ja2NoaXAv
ZHRwbS5jOjM1OjEyOiBzcGFyc2U6IHdhcm5pbmc6IG9ic29sZXRlIGFycmF5IGluaXRpYWxpemVy
LCB1c2UgQzk5IHN5bnRheAo+IGRyaXZlcnMvc29jL3JvY2tjaGlwL2R0cG0uYzozODoxMjogc3Bh
cnNlOiB3YXJuaW5nOiBvYnNvbGV0ZSBhcnJheSBpbml0aWFsaXplciwgdXNlIEM5OSBzeW50YXgK
PiBkcml2ZXJzL3NvYy9yb2NrY2hpcC9kdHBtLmM6NDE6MTI6IHNwYXJzZTogd2FybmluZzogb2Jz
b2xldGUgYXJyYXkgaW5pdGlhbGl6ZXIsIHVzZSBDOTkgc3ludGF4Cj4gCj4gRml4ZXM6IGI5ZDZj
NDdhMmJlOCAoInJvY2tjaGlwL3NvYy9kcml2ZXJzOiBBZGQgRFRQTSBkZXNjcmlwdGlvbiBmb3Ig
cmszMzk5IikKPiBTaWduZWQtb2ZmLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5sYXBAaW5mcmFkZWFk
Lm9yZz4KPiBDYzogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmc+Cj4g
Q2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gQ2M6IGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKCkFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxl
emNhbm9AbGluYXJvLm9yZz4KCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
