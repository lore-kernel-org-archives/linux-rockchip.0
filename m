Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A71B0C77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Apr 2023 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YoRSIqwqQXP6ZX86wlEQwFb97qLFFjDCq0/pH0JBuA=; b=iiAHpmwtcOsW7F
	117j1A1UEnjY3EIXR4+HaUrBPU7ZEsGujqcrpZIdPeuMk0ecFJu0b/o5y6eawLgUzRGhrIkGKAwiO
	2tSDjElXO0DwSX4lkXGEcR9PqkIvHVaBDWWrziwBbgQWINdB1EyUh8jK0rG4DUqRJQBaJxp0kJMKn
	rrqzQ4BQz2B8bSNZFofZ1NstyIxjrDlc7K/goLmaOLgtn7je3Bj8Yyfadpe3dtfbX5EbVMcMFHIou
	fM2eRKWKHKwC5ikD9Hm5eGGN5ZMOfYtbSG6l6uckmi4rQIm35XC/ggQ8ZygP2s8zA+2hKpmLn1ynx
	wUECFN2Ph0wF9+NNQ+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prw9p-005glS-0E;
	Thu, 27 Apr 2023 07:35:13 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prw9j-005giv-1G;
	Thu, 27 Apr 2023 07:35:09 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-2fe3fb8e25fso5019435f8f.0;
        Thu, 27 Apr 2023 00:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682580903; x=1685172903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eehz0WgMbOurSIoTnBIR5YZf1U7dK+275MjB8D7bXEc=;
        b=SwqylI/doMt0gYknw43Bx8zjaJNyMHrvEpQkGw+g4Ib3newQ9JpdkJdmZ6ipTs96no
         Dp3r9iKTeeSQhoUjZ13+SEzNOuXyfwaeeI3lFai0HnN7CHm4LPqyG3S0CSqPNSDY9uk1
         50e6Ja8Qkwh2mSWflVAqgnvGn4/Ol9tEQzZ/2KRvb/kmEGIm7injuF78ugqsmZTkt5ra
         cgQVDE3ESBQZEbqh/ZnC/8EzgPtaX312ttnjQfSh6+FvJtzF0Rbug8+RvOsuz3znKPBp
         TFF1UATHxOHVncKtTmITIMvSyjNA7tCQM9YzgOaEM4MhQbcOyu7OrnZz5u8J4Q7NUi4x
         MDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682580903; x=1685172903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eehz0WgMbOurSIoTnBIR5YZf1U7dK+275MjB8D7bXEc=;
        b=ck2nRZCA/ItGZJl4HUHr5Af4XupgXphVKpARFWLV2aiDJgfK1Jm3c4PMT0nE8ZNR/7
         TpisJcZ1UmIPCaNNI5czu7i+UndOWht0dd8apMVsMYsMDi9uLDprrK1l/H0d5juheEcn
         A68vnBqPkBcmCGToUdanzH1Je/gqFZuw9SsPHQvCKgC/nH5KmASbvGbM8jlrZMU8316w
         Xq8osjwe4UVoo6JUewJWW+0qHJmGIuYNfXKFlpiuhhen07SV7OkZTIX8e3NSVuMVwt67
         8epgAUIlTvGPqmpz8kxmbVBekrrPbfkzfTgd/0LlH8Esxhh2ZE4jOYUmCPN6nlltr+Cn
         hujA==
X-Gm-Message-State: AC+VfDx7+7hmjHBo7NUmEbkDZPl8A+YPXwXf8c+2w5LIQPmjiWShuKsa
	0sRG0pjifP3rVlN6X+1EZ84=
X-Google-Smtp-Source: ACHHUZ59rjOQWXhXKCgkzaGgJ+NbkVRQ83Bem9iGHGoCtXBjm4Ktg2fzITEfCQryin68ol70bxlnKA==
X-Received: by 2002:a05:6000:510:b0:2f1:d17f:cf95 with SMTP id a16-20020a056000051000b002f1d17fcf95mr500077wrf.12.1682580902709;
        Thu, 27 Apr 2023 00:35:02 -0700 (PDT)
Received: from [192.168.1.135] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id b9-20020adfee89000000b002f777345d21sm17659980wro.95.2023.04.27.00.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 00:35:01 -0700 (PDT)
Message-ID: <273a9ff1-ceb2-bcf6-b3a5-be34746ed45f@gmail.com>
Date: Thu, 27 Apr 2023 09:34:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Content-Language: en-US, ca-ES, es-ES
To: Ansuel Smith <ansuelsmth@gmail.com>, Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-oxnas@groups.io, linux-arm-msm@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CA+_ehUw3eAEHRsi1ATSKeK4jtX+EoVSwUodNL3bcpTJaX-r9cA@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
In-Reply-To: <CA+_ehUw3eAEHRsi1ATSKeK4jtX+EoVSwUodNL3bcpTJaX-r9cA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_003507_429680_7DE60DD3 
X-CRM114-Status: GOOD (  39.49  )
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

CgpPbiAyNS8wNC8yMDIzIDAwOjIzLCBBbnN1ZWwgU21pdGggd3JvdGU6Cj4gSWwgZ2lvcm5vIG1h
ciAyNSBhcHIgMjAyMyBhbGxlIG9yZSAwMDoxMCBSb2IgSGVycmluZwo+IDxyb2JoK2R0QGtlcm5l
bC5vcmc+IGhhIHNjcml0dG86Cj4+Cj4+IE9uIFR1ZSwgTWFyIDI5LCAyMDIyIGF0IDg6MjfigK9B
TSBBbnN1ZWwgU21pdGggPGFuc3VlbHNtdGhAZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBPbiBU
dWUsIE1hciAyOSwgMjAyMiBhdCAwMzoyMDoxOFBNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+Pj4+IE9uIDI4LzAzLzIwMjIgMDI6MDksIEFuc3VlbCBTbWl0aCB3cm90ZToKPj4+
Pj4gSGksCj4+Pj4+IGFzIHRoZSB0aXRsZSBzYXksIHRoZSBpbnRlbnRpb24gb2YgdGhpcyAiInNl
cmllcyIiIGlzIHRvIGZpbmFsbHkgY2F0ZWdvcml6ZQo+Pj4+PiB0aGUgQVJNIGR0cyBkaXJlY3Rv
cnkgaW4gc3ViZGlyZWN0b3J5IGZvciBlYWNoIG9lbS4KPj4+Pj4KPj4+Pj4gVGhlIG1haW4gcmVh
c29uIGZvciB0aGlzIGlzIHRoYXQgaXQgYmVjYW1lIHVucHJhY3RpY2FsIHRvIGhhbmRsZSAyNjAw
Cj4+Pj4+IGR0cyBmaWxlcyBhbmQgdHJ5IHRvIGV2ZW4gdW5kZXJzdGFuZC9lZGl0L2NoZWNrIHRo
ZSBzaXR1YXRpb24gZm9yIGEKPj4+Pj4gc3BlY2lmaWMgdGFyZ2V0Lgo+Pj4+Pgo+Pj4+PiBJbiBh
cm02NCB3ZSBhbHJlYWR5IGhhdmUgdGhpcyBraW5kIG9mIHNlcGFyYXRpb24gYW5kIEkgaG9uZXN0
bHkgdGhpbmsKPj4+Pj4gdGhhdCB0aGlzIHdhcyBuZXZlciBwcm9wb3NlZCBmb3IgQVJNIGR1ZSB0
byB0aGUgZmFjdCB0aGF0IHRoZXJlIGFyZQo+Pj4+PiAyNjAwKyBmaWxlcyB0byBzb3J0IGFuZCB0
aGUgZmFjdCB0aGF0IGl0IHdpbGwgYmUgYSBtZXNzIHRvIG1lcmdlIHRoaXMKPj4+Pj4gZW50aXJl
bHkgYnV0IElNSE8gd2l0aCBhIGxpdHRsZSBiaXQgb2YgZWZmb3J0IHdlIGNhbiBmaW5hbGx5IHNv
bHZlIHRoaXMKPj4+Pj4gcHJvYmxlbSBhbmQgaGF2ZSBhIHdlbGwgb3JnYW5pemVkIGRpcmVjdG9y
eSBqdXN0IGxpa2UgYXJtNjQuCj4+Pj4+Cj4+Pj4+IFNvbWUgcHJlcmVxdWlzaXRlIG9uIGhvdyB0
aGlzIHdvcmsgd2FzIGRvbmU6Cj4+Pj4+IC0gVGhpcyBjb21lcyBlbnRpcmVseSBmcm9tIGEgcHl0
aG9uIHNjcmlwdCBjcmVhdGVkIGJ5IG1lIGZvciB0aGUgdGFzay4KPj4+Pj4gICAgbGlua2VkIGhl
cmUgWzFdCj4+Pj4+IC0gSSBoYWQgdG8gbWFudWFsbHkgY2F0ZWdvcml6ZSBhbGwgdGhlIGRpZmZl
cmVudCBhcmNoIGluIHRoZSBtYWtlZmlsZQo+Pj4+PiAgICBiYXNlZCBvbiB0aGUgb2VtLiBJIHNl
YXJjaGVkIGV2ZXJ5IGFyY2ggb24gdGhlIGludGVybmV0IHRyeWluZyB0bwo+Pj4+PiAgICB1bmRl
cnN0YW5kIHRoZSBjb3JyZWN0IG9lbS4gSSBob3BlIHRoZXkgYXJlIGNvcnJlY3QgYnV0IEkgd291
bGQgbG92ZQo+Pj4+PiAgICBzb21lIGNvbW1lbnRzIGFib3V0IHRoZW0uCj4+Pj4+IC0gVGhpcyBj
dXJyZW50ICIic2VyaWVzIiIgaXMgYWxsIHNxdWFzaGVkIGluIG9uZSBiaWcgY29tbWl0IHRvIGJl
dHRlcgo+Pj4+PiAgICByZWNlaXZlIGNvbW1lbnRzIGZvciB0aGlzLiBUaGUgZmluYWwgdmVyc2lv
biBpZGVhbGx5IHdvdWxkIGhhdmUgYWxsCj4+Pj4+ICAgIGNoYW5nZXMgaW4gc2VwYXJhdGUgY29t
bWl0cy4gVGhlIHNjcmlwdCBjYW4gYWxyZWFkeSBkbyB0aGlzLCBpdCdzIGp1c3QKPj4+Pj4gICAg
Y29tbWVudGVkLgo+Pj4+Pgo+Pj4+PiBIZXJlIGlzIGEgbGlzdCBvZiBzb21lIGRpc2NvdmVyaWVz
IHdoaWxlIGRvaW5nIGFsbCB0aGUgc29ydGluZy4KPj4+Pj4gVGhlc2UgYXJlIHRvdGFsbHkgYWRk
aXRpb25hbCByZWFzb24gd2h5IHdlIG5lZWQgdGhpcy4KPj4+Pj4KPj4+Pj4gV2hpbGUgY3JlYXRp
bmcgdGhlIHNjcmlwdCBJIGRpc2NvdmVyZWQgc29tZSBmdW5ueSB0aGluZ3M6Cj4+Pj4+IC0gV2Ug
aGF2ZSBvcnBoYW4gZHRzISBUaGVyZSBhcmUgZHRzIHRoYXQgYXJlIG5ldmVyIGNvbXBpbGVkIGFu
ZCBhcmUKPj4+Pj4gICAgdGhlcmUganVzdCBmb3IgcmVmZXJlbmNlLiBXZSB3b3VsZCBuZXZlciBo
YXZlIG5vdGljZWQgdGhpcyB3aXRob3V0IHRoaXMKPj4+Pj4gICAgY2hhbmdlIGFuZCBwcm9iYWJs
eSBub2JvZHkgbm90aWNlZCBpdC4gVGhleSBhcmUgY3VycmVudGx5IGFsbCBsaXN0ZWQKPj4+Pj4g
ICAgaW4gdGhlIHB5dGhvbiBzY3JpcHQuCj4+Pj4+IC0gV2UgaGF2ZSBkdHNpIHNoYXJlZCBhY3Jv
c3MgZGlmZmVyZW50IG9lbS4gTXkgY3VycmVudCBzb2x1dGlvbiBmb3IgdGhlbQo+Pj4+PiAgICBp
czogTk9UIFNPUlQgVEhFTSBhbmQgbGVhdmUgdGhlbSBpbiB0aGUgZ2VuZXJpYyBkaXJlY3Rvcnkg
YW5kIGNyZWF0ZSBhCj4+Pj4+ICAgIGxpbmsgaW4gZWFjaCBvZW0gZHRzIHRoYXQgcG9pbnRzIHRv
IHRoZXNlIGR0c2kuIFRoaXMgaXMgdG8gdHJ5IGluCj4+Pj4+ICAgIGV2ZXJ5IHdheSBwb3NzaWJs
ZSB0byBza2lwIGFueSBhZGRpdGlvbmFsIGNoYW5nZXMgdG8gdGhlIGR0cy4KPj4+Pj4gICAgQ3Vy
cmVudCBkdHNpIHRoYXQgc3VmZmVycyBmcm9tIHRoaXMgYXJlIG9ubHkgMy4gKGxpc3RlZCBpbiB0
aGUgc2NyaXB0KQo+Pj4+PiAtIGFybTY0IGR0cyBhbmQgZHRzaSByZWZlcmVuY2UgQVJNIGR0cy4g
T2J2aW91c2x5IHRoaXMgY2hhbmdlIHdvdWxkIGNhdXNlCj4+Pj4+ICAgIGJyb2tlbiBpbmNsdWRl
IGZvciB0aGVzZSBzcGVjaWFsIGR0c2kuIFRoZSBzY3JpcHQgY3JlYXRlcyBhIGRlcGVuZGVuY3kK
Pj4+Pj4gICAgdGFibGUgb2YgdGhlIGVudGlyZSBhcm02NCBkaXJlY3RvcnkgYW5kIGZpeCBldmVy
eSBicm9rZW4gZGVwZW5kZW5jeQo+Pj4+PiAgICAoaG9waW5nIHRoZXkgYWxsIHVzZSBhIHNhbmUg
aW5jbHVkZSBsb2dpYy4uLiByZWdleCBpcyB1c2VkIHRvIHBhcnNlCj4+Pj4+ICAgIGFsbCB0aGUg
ZGlmZmVyZW50IGRlcGVuZGVuY3kpCj4+Pj4+Cj4+Pj4+IFNvIGluIHNob3J0IHRoZSBzY3JpcHQg
ZG9lcyB0aGUgZm9sbG93aW5nIHN0ZXBzOgo+Pj4+PiAxLiBFbnVtZXJhdGUgYWxsIHRoZSBhY3Rp
b24gdG8gZG8uLi4gKGR0cyB0byBtb3ZlLCBzY2FuIGRlcGVuZGVuY3kgZm9yCj4+Pj4+ICAgICB0
aGUgZHRzLi4uKQo+Pj4+PiAyLiBHZW5lcmF0ZSB0aGUgYXJtNjQgZGVwZW5kZW5jeQo+Pj4+PiAz
LiBDcmVhdGVzIHRoZSBNYWtlZmlsZQo+Pj4+PiA0LiBHZW5lcmF0ZSB0aGUgTWFrZWZpbGVzIGZv
ciB0aGUgY3VycmVudCBvZW0KPj4+Pj4gNS4gTW92ZSBhbGwgdGhlIHJlbGF0ZWQgZHRzIGFuZCBk
dHNpIGZvciB0aGUgY3VycmVudCBvZW0KPj4+Pj4gNi4gQ2hlY2sgYnJva2VuIGRlcGVuZGVuY3kg
YW5kIGZpeCB0aGVtIGJ5IGVkaXRpbmcgdGhlIGR0cyBhbmQgd3JpdGluZwo+Pj4+PiAgICAgdGhl
IGNvcnJlY3QgaW5jbHVkZSAob3IgZml4IGFueSBzeW1ib2xpYyBsaW5rKQo+Pj4+Pgo+Pj4+PiBU
aGlzIGlzIGFuIG91dHB1dCB0aGF0IGRlc2NyaWJlcyBhbGwgdGhlIHRoaW5ncyBkb25lIGJ5IHRo
ZSBzY3JpcHQgWzJdCj4+Pj4+Cj4+Pj4+IEkgcmVhbGx5IGhvcGUgSSBkaWRuJ3QgY29tbWl0IGFu
eSBsb2dpYyBtaXN0YWtlIGluIHRoZSBzY3JpcHQgYnV0IG1vc3QKPj4+Pj4gb2YgdGhlIHdvcmsg
c2hvdWxkIGJlIGRvbmUuCj4+Pj4+Cj4+Pj4KPj4+PiArQ2MgQXJuZCBhbmQgT2xvZiwKPj4+Pgo+
Pj4+IEFuc3VlbCwKPj4+PiBUaGFua3MgZm9yIHlvdSBwYXRjaC4gUGxlYXNlIGNjIHRoZSBTb0Mg
bWFpbnRhaW5lcnMgaW4gc3VjaCBzdWJtaXNzaW9ucy4KPj4+PiBJdCBzZWVtcyB0aGF0IHlvdSBn
b3Qgc29tZSBxdWl0ZSBuaWNlIGRpc2N1c3Npb24sIGJ1dCBzdGlsbCB0aGUgY29yZQo+Pj4+IGZv
bGtzIGFyZSBub3QgQ2NlZCwgc28gbm8gb25lIHdvdWxkIGJlIGFibGUgdG8gdGFrZSB5b3VyIHBh
dGNoLi4uCj4+Pj4KPj4+Cj4+PiBJIGhhZCBzb21lIHByb2JsZW0gd2l0aCBnbWFpbCBhbmQgc2Vu
ZGluZyBtYWlsIHRvbyBtdWNoIHVzZXJzLiBJIHB1dCBSb2IKPj4+IGFuZCBZb3UgYW5kIGFsbCB0
aGUgdmFyaW91cyBsaXN0IHRvIHRyeSB0byB3b3JrYXJvdW5kIHRoZSAiZ21haWwgc3BhbQo+Pj4g
cHJvdGVjdGlvbiIKPj4+Cj4+Pj4gSSBhbSBwcmV0dHkgc3VyZSB3ZSB3ZXJlIGRpc2N1c3Npbmcg
c3VjaCBzcGxpdCBpZGVhIGluIHRoZSBwYXN0IGFuZCBpdAo+Pj4+IGRpZCBub3QgZ2V0IHRyYWN0
aW9uLCBidXQgSSBjYW5ub3QgcmVjYWxsIHRoZSBleGFjdCBkaXNjdXNzaW9uLgo+Pj4+Cj4+Pgo+
Pj4gSSB0aGluayB0aGUgbWFpbiBpc3N1ZSBoZXJlIGlzIGhvdyB0byBoYW5kbGUgYm90IGFuZCBo
b3cgcHJvYmxlbWF0aWMgaXMKPj4+IHRvIG1lcmdlIHRoaXMuIEFzIHdyaXR0ZW4gaW4gdGhlIGNv
dmVyIGxldHRlciB0aGUgZmluYWwgdmVyc2lvbiBvZiB0aGlzCj4+PiBzaG91bGQgYmUgYSBiaWcg
c2VyaWVzIG9mIDUwKyBwYXRjaCB3aXRoIGV2ZXJ5IGNvbW1pdCBzcGVjaWZpYyB0byBlYWNoCj4+
PiBvZW0uIEluIHRoZW9yeSB3ZSBzaG91bGQgYmUgYWJsZSB0byBtZXJnZSB0aGUgZGlmZmVyZW50
IG9lbSBzZXBhcmF0ZWx5Cj4+PiBhbmQgdHJ5IHRvIGF0IGxlYXN0IHN0YXJ0IHRoZSBjYXRlZ29y
aXphdGlvbi4KPj4+IEFub3RoZXIgaWRlYSBJIGdvdCB0byBhdCBsZWFzdCBoYXZlIGEgIm1pZ3Jh
dGlvbiBwYXRoIiBpcyB0byBjb252ZXJ0Cj4+PiBldmVyeSBkdHMgaW4gdGhlIGR0cy8gZGlyZWN0
b3J5IHRvIGEgc3ltYm9saWMgbGluayB0aGF0IHRhcmdldCB0aGUgZHRzCj4+PiBpbiB0aGUgY29y
cmVjdCBvZW0uIEJ1dCBJIGFzc3VtZSB0aGF0IHdvdWxkIGZpeCBvbmx5IHBhcnQgb2YgdGhlIHBy
b2JsZW0KPj4+IGFuZCBnaXQgYW0gd2lsbCBzdGlsbCBiZSBwcm9ibGVtYXRpYy4KPj4KPj4gSSBo
YXZlIGEgc2NyaXB0WzFdIHRoYXQgZG9lcyB0aGUgY29udmVyc2lvbiB3cml0dGVuIHRoZSBsYXN0
IHRpbWUgdGhpcwo+PiBjYW1lIHVwLiBKdXN0IGhhdmUgdG8gYWdyZWUgb24gZGlyZWN0b3J5IG5h
bWVzLiBJIHRoaW5rIHRoZSBlYXNpZXN0Cj4+IHdvdWxkIGJlIGZvciBBcm5kL09sb2YgdG8gcnVu
IGl0IGF0IHRoZSBlbmQgb2YgYSBtZXJnZSB3aW5kb3cgYmVmb3JlCj4+IHJjMS4KPj4KPj4gSSdt
IHZlcnkgbXVjaCBpbiBmYXZvciBvZiB0aGlzIGhhcHBlbmluZyBlc3BlY2lhbGx5IGJlZm9yZSAq
YW55Kgo+PiBvdmVybGF5cyBhcmUgYWRkZWQgdG8gYWRkIHRvIHRoZSBtZXNzIChpdCdzIHByb2Jh
Ymx5IGFscmVhZHkKPj4gaGFwcGVuZWQpLgo+Pgo+PiBSb2IKPj4KPj4gWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDE4MTIwNDE4MzY0OS5HQTU3MTZAYm9ndXMvCj4gCj4gSGkgUm9i
LAo+IHRoYW5rcyBmb3IgcmVjb3ZlcmluZyB0aGlzLiBJIHJlbWVtYmVyIGFsc28gcHJvdmlkaW5n
IGEgc2NyaXB0Lgo+IAo+IEFueXdheSBjb25zaWRlcmluZyB0aGUgYW1vdW50IG9mIHN0dWZmIHRv
IG1vdmUsIEkgZmVlbCBsaWtlIHNvbWUKPiBPRU0gbWlnaHQgYmUgcHJvYmxlbWF0aWMgdG8gbW92
ZSBkdWUgdG8gcmViYXNlIGFuZCBtZXJnaW5nIHByb2JsZW1zLgo+IAo+IFdlIHNob3VsZCBjb25z
aWRlciBhY2NlcHRpbmcgbW92aW5nIG9ubHkgc29tZSBhbmQga2VlcCBvdGhlcgo+IGluIHRoZSB1
bnNvcnRlZCBwYXRoLiBBbmQgbW92ZSB0aGVtIGF0IHRoZSBmaXJzdCB0aW1lIHBvc3NpYmxlIHdp
dGgKPiB0aGUgaGVscCBvZiB0aGUgbWFpbnRhaW5lcnMuCj4gCj4gT25lIG1haW4gYmxvY2tlciBv
ZiB0aGlzIGlzIHNvbWUgcWNvbSBkdHMgdGhhdCBhcmUgbGlua2VkIHRvIGFybTY0Cj4gZGlyZWN0
b3J5LCBzbyBmb3Igc29tZSBkdHMgc3BlY2lhbCBjYXJlIGlzIG5lZWRlZC4KPiAKClNhbWUgaGFw
cGVucyBmb3IgYnJvYWRjb20gUmFzcGJlcnJ5UGkgRFRTLiBUaGUgYXJtNjQgb25lcyBpbmNsdWRl
IHRoZSBhcm0gb25lcy4KClJlZ2FyZHMsCk1hdHRoaWFzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
