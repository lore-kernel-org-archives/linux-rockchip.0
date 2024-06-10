Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D32C27C5E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jun 2024 13:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16SQQNWXcifLxl+pf6/DvEgbSkbV2q+DTXhZPhfDPec=; b=s5gBBlaC9AnyKt
	vn06XHiEHR8dB+IQxtmyoWLZ2o8pfJPlhElYYBnYjVhhx3ONQHK0X+rjnXEHCyv/jEsnyEs3iBP7B
	DMf2T+xCwebfrGgobOQDMUqKQDQCV5aspFtFl8FT5YK/ednOQc8T2NCH8BQZi96ZUV54SsoRIW3qj
	Fzsk0JlK212snhU00AU/cuK0Hs7B0VtIl4WfYegehA9R/hd9bPyaboFkG+aV+wh5W7dNBTk1C8gTm
	Qckm2cX59kkXe1u4puNGE7Q6K+AIkMOPD9MQBcKONXnMgy+6d3CfjrhKkBvxcjceEMWeyX35xmFpe
	g2bW6o567UQx4pDNez3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGfVm-00000005Iz9-1UkL;
	Mon, 10 Jun 2024 13:56:38 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGfVk-00000005IyG-0T2y;
	Mon, 10 Jun 2024 13:56:37 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a6f21ff4e6dso87548266b.3;
        Mon, 10 Jun 2024 06:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718027792; x=1718632592; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aKiRdG6IE0dAu5/ML0DRkz7ioaoUbf9nHeDRsbZ/6cg=;
        b=G/Uzdw0O7+OHkRa30uwP/VPwAVc08GgK4KYFkjM9qNDg4gBy0fEOJtUFxKJA3HNI6T
         ivm67e7/Jyt2RnkiEAbcdq8j7F/Do3G0Vzg2vP37ouGMIrp/4VAVUm+EhHzhAXrJ84o2
         M7+upvdzGgCht8oeb463BQuW7agFxCCHjABm29UoZZ4ls4ClITM/YtMi8EIomtOsdHI2
         nhq1rHcXsT8gLsMeC5V1OsJUn+3+RdxCOkL53pedYsT2lAG6Q0/NXcVVkyduUUqi99YK
         Asi5CVxL7mXchsj7oJzDc4zTFIHQquZr/cefhRRaXl0nCovcy4bv2L25N9zTMrtkvxBk
         BLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718027792; x=1718632592;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKiRdG6IE0dAu5/ML0DRkz7ioaoUbf9nHeDRsbZ/6cg=;
        b=NgRd5WbWHvrtoro6lYhBEiO3Kn3WXVfEat/UPaLiI9whGW+XIlmOUbKyaLx48Wlsdk
         zgHRRvNBmBY5yFUmO8/N5QEvnrBHvl+3fNbIyCb/134q4xiIqPMBNxKX5hSJnChTDKdB
         LSaPDe4+F64WvlDKiUe5/iSOck4WdBBBO7DvTCeEVAvYVVDeM3+QbYtEZagIaG+x5+dR
         YE4QRjJy1SLDEq9MRz0VvOws5LINCzyuTySr5aFmYYRNc3cbtjkxtxsT8yTKYhyd4FdG
         5oOIDeIAT2mQc5UN2lTphbZWCFQJxFoA+08Rqqk8pJi428tbLn8goCHeazs4HvS1sr1c
         UuCg==
X-Forwarded-Encrypted: i=1; AJvYcCVNEEOlyfuEgjOC2V/zP21KHBoNzJ6kEL9ivljPcDCctfaG1T1al9W54ExSqSJHptlpr4b+CKD0LgjGJ2zt0JnZTDql2TL9fqjVLJpTzqjhYZnytq648aOXViJCS9kMjHNmkctRDgD6nIorBemJNxyd08D72zmh9k4=
X-Gm-Message-State: AOJu0YwVkw+GTHqiFi6Lnfj/pxt0xywQcpag6TVOhpzQiXdaNKMdK5Zq
	s4iIphiqr7fC9k4pNv0mQvxLYhsIJkun6f5nwgO1cOa8UyjL6So=
X-Google-Smtp-Source: AGHT+IEaCfhpaGaeNvro0IJoqapFgXHDI0HHYONRa7o82dj+8EDsxBZg7VHJktoUt9EW7H6Z824NaQ==
X-Received: by 2002:a17:906:285a:b0:a6f:1f18:2b72 with SMTP id a640c23a62f3a-a6f1f182ccamr169363966b.0.1718027792023;
        Mon, 10 Jun 2024 06:56:32 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:efc5:4499:36c1:811e? ([2a02:810b:f40:4600:efc5:4499:36c1:811e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f200ce38esm122278266b.92.2024.06.10.06.56.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jun 2024 06:56:31 -0700 (PDT)
Message-ID: <aa475252-701c-4d1a-b495-8079dfd01a86@gmail.com>
Date: Mon, 10 Jun 2024 15:56:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: media: rockchip,vpu: Document RK3128
 compatible
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240523185633.71355-1-knaerzche@gmail.com>
 <20240523185633.71355-2-knaerzche@gmail.com> <3639993.hdfAi7Kttb@diego>
 <20240528083747.z55laxnmioorzaru@basti-XPS-13-9310>
Content-Language: en-US
In-Reply-To: <20240528083747.z55laxnmioorzaru@basti-XPS-13-9310>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_065636_176057_5DDF25B3 
X-CRM114-Status: GOOD (  17.19  )
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

SGksCgpBbSAyOC4wNS4yNCB1bSAxMDozNyBzY2hyaWViIFNlYmFzdGlhbiBGcmlja2U6Cj4gSGV5
IEhlaWtvLAo+Cj4gT24gMjguMDUuMjAyNCAxMDoxOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+
IEFtIERvbm5lcnN0YWcsIDIzLiBNYWkgMjAyNCwgMjA6NTY6MzEgQ0VTVCBzY2hyaWViIEFsZXgg
QmVlOgo+Pj4gVGhlIGludGVncmF0aW9uIGZvciB0aGlzIFNvQyBpcyBzaW1pbGFyIHRvIFJLMzA2
Ni9SSzMxODguCj4+Pgo+Pj4gRG9jdW1lbnQgaXQncyBjb21wYXRpYmxlLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+Pgo+PiBSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4KPj4gTWVkaWEgcGVvcGxlLCBj
YW4geW91IGFwcGx5IHRoaXMgcGF0Y2ggYWxvbmUgZnJvbSB0aGUgc2VyaWVzPwo+Cj4gWWVzLCB3
aWxsIGRvIGdvdCB0aGlzIG9uIG15IGxpc3QgYWxyZWFkeSA6KS4KPgppcyB0aGVyZSBhbnl0aGlu
ZyBob2xkaW5nIHlvdSBiYWNrIGZyb20gYXBwbHlpbmcgdGhpcz8gSXQncyByZWFsbHkgb25seSB0
aGUKYmluZGluZ3Mgd2hpY2ggZ28gdGhvdWdoIHRoZSBtZWRpYSB0cmVlIChpLmUuIHRoaXMgcGF0
Y2gpIGFuZCBpdCBoYXMKYmVlbiBhY2tlZCBhbmQgcmV2aWV3ZWQgc29tZSB3ZWVrcyBhZ28uIEl0
J2QgYmUgZ3JlYXQgaWYgd2UgY291bGQgYWRkIHRoZQp2cHUgdG8gdGhlIFNvQyBEVCBiZWZvcmUg
Ni4xMSBtZXJnZSB3aW5kb3cgb3BlbnMgYnV0IHRoZSBhZGRpdGlvbiBkZXBlbmRzCm9uIHRoZSBj
b21wYXRpYmxlIHRvIGJlIGRvY3VtZW50ZWQuIFBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGVyZSdz
IGFueXRoaW5nCmxlZnQgdG8gZG8gZm9yIG1lLgoKQWxleAo+Pgo+PiBUaGFua3MKPj4gSGVpa28K
Pgo+IFJlZ2FyZHMsCj4gU2ViYXN0aWFuCj4KPj4KPj4+IC0tLQo+Pj4gwqBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1LnlhbWwgfCA0ICsrKy0KPj4+
IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+
IGRpZmYgLS1naXQgCj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9yb2NrY2hpcC12cHUueWFtbCAKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL3JvY2tjaGlwLXZwdS55YW1sCj4+PiBpbmRleCBjNTdlMWY0ODg4OTUuLmQxYjQ3
YjE0Y2E1NyAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXZwdS55YW1sCj4+PiBAQCAtMjYsNyArMjYsOSBA
QCBwcm9wZXJ0aWVzOgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1Njgt
dnB1Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4OC1hdjEtdnB1Cj4+
PiDCoMKgwqDCoMKgwqAgLSBpdGVtczoKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDog
cm9ja2NoaXAscmszMTg4LXZwdQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGVudW06Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMxMjgtdnB1Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMxODgtdnB1Cj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMwNjYtdnB1Cj4+PiDCoMKgwqDCoMKg
wqAgLSBpdGVtczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzIyOC12cHUKPj4+Cj4+Cj4+Cj4+Cj4+Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
