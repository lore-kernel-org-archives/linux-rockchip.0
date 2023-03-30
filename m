Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D524C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 21:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtqGAczUB/fVxk1ACggsjMg8qmNtyo3UA5p0gHs1rlE=; b=YZ+blgJaFJyxBO
	ZpHTACxtBiL4t+BDhLHx/WIR/L49cDdUu3pLgHzs3pKhVlxU4ny6cwCr9S/o7jIQmdQHfjCJ/J28U
	URUc6qpl/oK8viuclPYg9lRUNfhSRlkhetn0oWJZ9DQ23U15XBaXslfqM3wp9piIUH/lH3cFbbZ54
	dyGmQAp3qFzYYveZ6NYymKELm1OkIttI0FAezdVoEod/sKTATOjoI4fP7GVqLZGHLOu+oFTFzs2G8
	QZmzdBYrWrVHJqkAEBK1wb3bN3ocHK+VIlvJFJgDOJA2/bFb39FExNrJfOTAs+d5vPh9uVYtqXoD1
	dX3xS/joz3RNLNGg3Jpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phzai-0056Qk-39;
	Thu, 30 Mar 2023 21:13:52 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phzag-0056Q5-2M
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 21:13:52 +0000
Received: by mail-wm1-x32e.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so8846263wmq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 14:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680210826;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xYJ7UCsO7F5A7GpXsRX+DRI450uHDvtid0ji5HrtybQ=;
        b=TIOuMwmc+8BXKmxoFMV87oMywgcK9gX6n7HKYcIRNQi1qfrrh4vWceK117IiKCBCRl
         /C3RSxWGKAi3MXa9Zq0Ijm8ydELmAe76IJ5Bc+7xX6iqj+yXUxbvQh5MDAo6wjVgSvmh
         sHjDwMm2UP/yiZcOdJekZwww5sxrrPH4jCobUFUm36ZarX3aQ7fG6HfXSr1PkrcXd1ZM
         tfYKHp4DmRrkytK3zstli4lpNVTtBicxQHPnEyi5fOP5UhfS4lTAv9rHOzx1aDSbxxGX
         22zMxMyHp1Jtp6+NPKJKKF6Emzw89VShKFj44OeI+CqNUIb7vaOlUYZJIzYL07KOC3Wx
         cJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680210826;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xYJ7UCsO7F5A7GpXsRX+DRI450uHDvtid0ji5HrtybQ=;
        b=OjQeMHizZ9f07wogAR5qzE/sZvaO7lJojXGd4TPZS8atuLPJQsbD52halZMZGnnpKT
         m0lu5dKcrgkR7zSQZC3X8VITn0mugVgDGAJwOywwbLdtYy3h/3K2yTeAvhZIVxhlT9Wg
         SbwzfqwSyITYZX3izYia+MEaog5NQtn1iZKjZnvEsGiEffHjNB7OdTWSe8CnV8xWZjtY
         jBXLO8ixikA9NzZpktH578Ovw4rqTihV+17EjIId56FERZt1Cb/yLs165x/KrQIknNSM
         aWPxhoxz0r8Y3FVf/yo6jY95YZ6bfJ7Z4uXIEWeo1IEO1eJFPMf6OrAlcx0ll49bqINg
         WDsA==
X-Gm-Message-State: AO0yUKW6ROZG4npSL2Cx74cTm4eBSoX4twoX9glUyAH8QqG2PjokM1qE
	kla+s1xtX45BNU4qAW1yqXm8Cg==
X-Google-Smtp-Source: AK7set/RF9lEynbBcbIUXZaNxVwOwSMZ+BeXGxObXH50aHsfuSIlJxKeFMBWVKZjvnItHxnhRNWXzA==
X-Received: by 2002:a7b:c381:0:b0:3ed:4627:ed09 with SMTP id s1-20020a7bc381000000b003ed4627ed09mr18481456wmj.28.1680210826323;
        Thu, 30 Mar 2023 14:13:46 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:17ff:909e:1b73:8366? ([2a05:6e02:1041:c10:17ff:909e:1b73:8366])
        by smtp.googlemail.com with ESMTPSA id hg13-20020a05600c538d00b003ed793d9de0sm11413067wmb.1.2023.03.30.14.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 14:13:45 -0700 (PDT)
Message-ID: <3e9154df-bae4-23a6-7c5d-d42477800b19@linaro.org>
Date: Thu, 30 Mar 2023 23:13:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RESEND] [PATCHv3 4/7] thermal: rockchip: Simplify channel id
 logic
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <ec66d4e7-cb82-46c6-84ae-bd51df7cab7c@mercury.local>
 <bae80282-cb80-462d-e554-1934d090e216@linaro.org> <2066924.KlZ2vcFHjT@diego>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <2066924.KlZ2vcFHjT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_141350_798330_38BC740E 
X-CRM114-Status: GOOD (  14.58  )
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

T24gMzAvMDMvMjAyMyAxOTowNywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMTYuIE3DpHJ6IDIwMjMsIDExOjA1OjI1IENFU1Qgc2NocmllYiBEYW5pZWwgTGV6Y2FubzoK
Pj4KPj4gSGkgSGVpa28sCj4+Cj4+IE9uIDA4LzAzLzIwMjMgMTk6NDIsIFNlYmFzdGlhbiBSZWlj
aGVsIHdyb3RlOgo+Pj4gSGkgRGFuaWVsLAo+Pj4KPj4+IE9uIFdlZCwgTWFyIDA4LCAyMDIzIGF0
IDA3OjEzOjIyUE0gKzAxMDAsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+Pj4+IE9uIDA4LzAzLzIw
MjMgMTI6MjIsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+Pj4+PiBSZXBsYWNlIHRoZSBjaGFu
bmVsIElEIGxvb2t1cCB0YWJsZSBieSBhIHNpbXBsZSBvZmZzZXQsIHNpbmNlCj4+Pj4+IHRoZSBj
aGFubmVsIElEcyBhcmUgY29uc2VjdXRpdmUuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFNl
YmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+Pj4+Cj4+
Pj4gQXMgYWxsIHRoZSBvdGhlciBwYXRjaGVzIGFyZSByZXZpZXdlZCBieSBIZWlrbywgaXMgdGhl
IHRhZyBtaXNzaW5nIGhlcmU/Cj4+Pgo+Pj4gSGVpa28gd2FzIG5vdCBoYXBweSB3aXRoIHRoaXMg
aW4gUEFUQ0h2Miwgd2hlbiBoZSByZXZpZXdlZCBtb3N0Cj4+PiBvZiB0aGUgcGF0Y2hlczoKPj4+
Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMzYwMTAzOS5lOUo3TmFLNFczQHBoaWwv
Cj4+Pgo+Pj4gSSByZXBsaWVkLCBidXQgbmV2ZXIgZ290IGEgcmVzcG9uc2UsIHNvIEkga2VwdCBp
dCBhcyBpczoKPj4+Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjEyMDYxNzAy
MzIueHNtNGtjYmZ3cm1scnJpd0BtZXJjdXJ5LmVsZWt0cmFub3gub3JnLwo+Pj4KPj4+IEZXSVcg
aXQgaXMgZXNzZW50aWFsIGZvciB0aGUgc2VyaWVzIGFuZCBjYW5ub3QgYmUgZHJvcHBlZCwgYmVj
YXVzZQo+Pj4gUkszNTg4IGhhcyBtb3JlIHRoYW4gMiBjaGFubmVscy4KPj4KPj4gRG8geW91IGhh
dmUgYSBzdWdnZXN0aW9uIHRvIGltcHJvdmUgdGhlIHByb3Bvc2VkIGNoYW5nZSA/Cj4gCj4gSSBn
dWVzcyBpdCdzIGZpbmUgYWZ0ZXIgYWxsLgo+IAo+IFNlYmFzdGlhbidzIHJlc3BvbnNlIG1ha2Vz
IHNlbnNlIGFuZCB0aGVyZSBpcyBub3QgcmVhbGx5IGEgcmVhc29uIHRvIGtlZXAKPiBpbmZyYXN0
cnVjdHVyZSBhcm91bmQgZm9yIGEgaHlwb3RoZXRpY2FsIGNhc2UgdGhhdCBtYXkgbmV2ZXIgaGFw
cGVuLgo+IAo+IElmIHRoYXQgcmVhbGx5IGNoYW5nZXMgd2l0aCBzb21lIFNvQyBpbiB0aGUgZmFy
IGZ1dHVyZSB3ZSBjYW4gYWx3YXlzCj4gcmUtZXZhbHVhdGUuCgpUaGFua3MsIEkndmUgYWRkZWQg
eW91ciB0YWcKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
