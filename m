Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2842CC3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 11:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ws2lsZTC4SU5kzgJgq1om4TLcklNOCM4NOTY4dQ7f/c=; b=CMuIIOp9D0DGed
	59j0eU7oc6bNvk/RvCEEWLxBB3svIXBTP82cVs6jqsA3PDxidLt35KZoMmhXPQ5M+C0CP886WjXoC
	fEAIcymeMFQ1KwbLqRwj2Rg2UOMNtvdU989k3bLreb8djnks9PPeHCmu036xiXePss1DdD8vtr1oW
	5Rr/6a5dENqj+DgV5k5YkLQ21jWHJxFSwM3bgf1PJAz9Pl2R8OmbWYINjBWQab8e+VXI3nC2OjrXH
	Kh1r5dEgQCeUljmg8TCFBNdML7qUC+B2RdhS9nwgzq2e+U+mV8TBaz5YeX+jhaozjO+wfoS7KYVfJ
	PfYhoCrSyMhvKFd6f70Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMn1v-0000000A6bw-181y;
	Thu, 27 Jun 2024 11:11:07 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMn1Z-0000000A6W4-0y2e;
	Thu, 27 Jun 2024 11:10:54 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-57d26a4ee65so1354324a12.2;
        Thu, 27 Jun 2024 04:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719486641; x=1720091441; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RjG4NvLPZHP15XSF73Un+NgkQkULbEPKorgzxgkPLfo=;
        b=TJWc1E7aM4tjIa5XaKEghZuBEmpWevBc0/XssDla4mBA6BAzc743Lltacimf6JIjoA
         Ei/11RofSEhRM77CJbEXAqVpUcsUxeOFT0kJcAeLgMSnjjNAyd6MOpVmJ7mn+kfOTtDU
         V2pupoZJzUVzry7YSda485geMpOxxsYX9m8mMe1AAXcA7QQNQeenikFA7AQyFZaOtzeM
         7A68oMvZYwoqn/iPSDNwhjazjJM9P+xTkWhuaz5Z1/utWicrBYnSCuFk6F92HPMyO5nI
         jPt0pJWmGEj3x1Rj+1k6UMyEZ6DiudU0qCiFb9F+yumpPesYS6ZSG6oHx3v2xuhg/4/d
         KS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719486641; x=1720091441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RjG4NvLPZHP15XSF73Un+NgkQkULbEPKorgzxgkPLfo=;
        b=UpfvrNC2qn71CGGA8vu8Y2VwoS2hw4fs4hXgKSfut2xiGiKsVZAR2AVJOTkVZRIEne
         CCjb8xqzubTJS2xWDg6Qb+ax4jN9u8KCfaqFeCYQQaLt+ZMt8XpqaJyXVInNLwG7sxri
         HQZHUVgH4MrqMaMI0c5PJuLfEpIFBMdbVZ7B69YMvl7DNJVKlg6Kpls089MJDqD5f8Om
         g0CohWVk+cI/KTl/ePlkr+kUqHTG7tOZM/qKq6DHvl+SshOH4ROz6KkKY2nozbnQct5B
         mW0RJ8hawPdQ75b705G0ZIXYSPq/7I+VFLPIsTQuWLR93rMR3ck9I9nNvgVO16Me7kqI
         EjEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMnx5nrRuffRtejjLzAOHjWSrLFrtzpljOTXKlvfbw0QaJvjuSDgFBZSeHfTptOEsXBVrsiPaVp8/6Wnc+zRmuDkOZNIWZGQn3tIXdcuyQfiZ6fcTJYlqwNFco1BISyARZ+OWvN6QZ2cOyFYyrAP5ounmJE5wsTr0=
X-Gm-Message-State: AOJu0Yzxy/7GmIlnLUiZ2c9/RNErh69SuaxLCwwOU6fbHjaIq4LqBnQz
	mad0OmsFpj7yi0MP6Mz5kL+s3E+W1xHgQBvpZK814ILajrak5rU=
X-Google-Smtp-Source: AGHT+IH4fbvY1cFOwHHzrwt3dVlavsf75UZvpMeelUbWWYiwXGXJ5CcSyvDpzggFY+YcW3P4/NbQ2g==
X-Received: by 2002:a05:6402:520c:b0:582:1f66:1472 with SMTP id 4fb4d7f45d1cf-5821f661646mr6043539a12.31.1719486640245;
        Thu, 27 Jun 2024 04:10:40 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:2023:48bf:6b4:88a4? ([2a02:810b:f40:4600:2023:48bf:6b4:88a4])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-584d16bbf1csm733229a12.44.2024.06.27.04.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 04:10:39 -0700 (PDT)
Message-ID: <cc8fd552-c6cb-46d6-a781-28d004b49d52@gmail.com>
Date: Thu, 27 Jun 2024 13:10:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] media: rockchip: Introduce the rkvdec2 driver
To: Jonas Karlman <jonas@kwiboo.se>,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>,
 Andy Yan <andy.yan@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
 <20240620142532.406564-3-detlev.casanova@collabora.com>
 <c7882f94-e2cb-4023-a53e-87ebc8fa3460@gmail.com> <3815203.kQq0lBPeGt@arisu>
 <5a15b138-4e03-4487-8a53-b7ff3527701f@gmail.com>
 <66e56996-4b56-4262-973f-672121071391@kwiboo.se>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <66e56996-4b56-4262-973f-672121071391@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_041045_332374_E67E551C 
X-CRM114-Status: GOOD (  33.23  )
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

CkFtIDI3LjA2LjI0IHVtIDExOjQxIHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBIaSBBbGV4LAo+
Cj4gT24gMjAyNC0wNi0yNiAxMToxMiwgQWxleCBCZWUgd3JvdGU6Cj4+IEhpIERldGxldiwKPj4K
Pj4gQW0gMjUuMDYuMjQgdW0gMTg6NTYgc2NocmllYiBEZXRsZXYgQ2FzYW5vdmE6Cj4+PiBIaSBB
bGV4LAo+Pj4KPj4+IE9uIFN1bmRheSwgSnVuZSAyMywgMjAyNCA1OjMzOjI4IEEuTS4gRURUIHlv
dSB3cm90ZToKPj4+PiBIaSBEZXRsZXYsCj4+Pj4KPj4+PiBBbSAyMC4wNi4yNCB1bSAxNjoxOSBz
Y2hyaWViIERldGxldiBDYXNhbm92YToKPj4+Pj4gVGhpcyBkcml2ZXIgc3VwcG9ydHMgdGhlIHNl
Y29uZCBnZW5lcmF0aW9uIG9mIHRoZSBSb2NrY2hpcCBWaWRlbwo+Pj4+PiBkZWNvZGVyLCBhbHNv
IGtub3duIGFzIHZkcHUzNHguCj4+Pj4+IEl0IGlzIGN1cnJlbnRseSBvbmx5IHVzZWQgb24gdGhl
IFJLMzU4OChzKSBTb0MuCj4+Pj4+Cj4+Pj4+IFRoZXJlIGFyZSAyIGRlY29kZXJzIG9uIHRoZSBS
SzM1ODggU29DIHRoYXQgY2FuIHdvcmsgaW4gcGFpciB0byBkZWNvZGUKPj4+Pj4gOEsgdmlkZW8g
YXQgMzAgRlBTIGJ1dCBjdXJyZW50bHksIG9ubHkgdXNpbmcgb25lIGNvcmUgYXQgYSB0aW1lIGlz
Cj4+Pj4+IHN1cHBvcnRlZC4KPj4+Pj4KPj4+Pj4gU2NoZWR1bGluZyByZXF1ZXN0cyBiZXR3ZWVu
IHRoZSB0d28gY29yZXMgd2lsbCBiZSBpbXBsZW1lbnRlZCBsYXRlci4KPj4+Pj4KPj4+Pj4gVGhl
IGNvcmUgc3VwcG9ydHMgSDI2NCwgSEVWQywgVlA5IGFuZCBBVlMyIGRlY29kaW5nIGJ1dCB0aGlz
IGRyaXZlcgo+Pj4+PiBjdXJyZW50bHkgb25seSBzdXBwb3J0cyBIMjY0Lgo+Pj4+Pgo+Pj4+PiBU
aGUgZHJpdmVyIGlzIGJhc2VkIG9uIHJrdmRlYyBhbmQgdGhleSBtYXkgc2hhcmUgc29tZSBjb2Rl
IGluIHRoZQo+Pj4+PiBmdXR1cmUuCj4+Pj4+IFRoZSBkZWNpc2lvbiB0byBtYWtlIGEgZGlmZmVy
ZW50IGRyaXZlciBpcyBtYWlubHkgYmVjYXVzZSBya3ZkZWMyIGhhcwo+Pj4+PiBtb3JlIGZlYXR1
cmVzIGFuZCBjYW4gd29yayB3aXRoIG11bHRpcGxlIGNvcmVzLgo+Pj4+Pgo+Pj4+PiBUaGUgcmVn
aXN0ZXJzIGFyZSBtYXBwZWQgaW4gYSBzdHJ1Y3QgaW4gUkFNIHVzaW5nIGJpdGZpZWxkcy4gSXQg
aXMgSU8KPj4+Pj4gY29waWVkIHRvIHRoZSBIVyB3aGVuIGFsbCB2YWx1ZXMgYXJlIGNvbmZpZ3Vy
ZWQuCj4+Pj4+IFRoZSBkZWNpc2lvbiB0byB1c2Ugc3VjaCBhIHN0cnVjdCBpbnN0ZWFkIG9mIHdy
aXRpbmcgYnVmZmVycyBvbmUgYnkgb25lCj4+Pj4+Cj4+Pj4+IGlzIGJhc2VkIG9uIHRoZSBmb2xs
b3dpbmcgcmVhc29uczoKPj4+Pj4gICAgIC0gUm9ja2NoaXAgY29yZXMgYXJlIGtub3duIHRvIG1p
c2JlaGF2ZSB3aGVuIHJlZ2lzdGVycyBhcmUgbm90IHdyaXR0ZW4KPj4+Pj4gICAgIAo+Pj4+PiAg
ICAgICBpbiBhZGRyZXNzIG9yZGVyLAo+Pj4+PiAgICAgCj4+Pj4+ICAgICAtIFRob3NlIGNvcmVz
IGFsc28gbmVlZCB0aGUgc29mdHdhcmUgdG8gd3JpdGUgYWxsIHJlZ2lzdGVycywgZXZlbiBpZgo+
Pj4+PiAgICAgCj4+Pj4+ICAgICAgIHRoZXkgYXJlIHdyaXR0ZW4gdGhlaXIgZGVmYXVsdCB2YWx1
ZXMgb3IgYXJlIG5vdCByZWxhdGVkIHRvIHRoZSB0YXNrCj4+Pj4+ICAgICAgICh0aGlzIGNvcmUg
d2lsbCBub3Qgc3RhcnQgZGVjb2Rpbmcgc29tZSBIMjY0IGZyYW1lcyBpZiBzb21lIFZQOQo+Pj4+
PiAgICAgICByZWdpc3RlcnMgYXJlIG5vdCB3cml0dGVuIHRvIDApCj4+Pj4+ICAgICAKPj4+Pj4g
ICAgIC0gSW4gdGhlIGZ1dHVyZSwgdG8gc3VwcG9ydCBtdWx0aXBsZSBjb3JlcywgdGhlIHNjaGVk
dWxlciBjb3VsZCBiZQo+Pj4+PiAgICAgCj4+Pj4+ICAgICAgIG9wdGltaXplZCBieSBzdG9yaW5n
IHRoZSBwcmVjb21wdXRlZCByZWdpc3RlcnMgdmFsdWVzIGFuZCBjb3B5IHRoZW0KPj4+Pj4gICAg
ICAgdG8gdGhlIEhXIGFzIHNvb3MgYXMgYSBjb3JlIGJlY29tZXMgYXZhaWxhYmxlLgo+Pj4+Pgo+
Pj4+PiBUaGlzIG1ha2VzIHRoZSBjb2RlIG1vcmUgcmVhZGFibGUgYW5kIG1heSBicmluZyBwZXJm
b3JtYW5jZSBpbXByb3ZlbWVudHMKPj4+Pj4gaW4gZnV0dXJlIGZlYXR1cmVzLgo+Pj4+Pgo+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBEZXRsZXYgQ2FzYW5vdmEgPGRldGxldi5jYXNhbm92YUBjb2xsYWJv
cmEuY29tPgo+Pj4+PiAtLS0KPj4+Pj4KPj4+Pj4gICAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9L
Y29uZmlnICAgICAgICAgICAgICAgIHwgICAgMSArCj4+Pj4+ICAgICBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgIDEgKwo+Pj4+PiAgICAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL3JrdmRlYzIvS2NvbmZpZyAgICAgICAgfCAgIDE1ICsKPj4+Pj4gICAgIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMyL01ha2VmaWxlICAgICAgIHwgICAgMyArCj4+Pj4+
ICAgICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjMi9UT0RPICAgICAgICAgICB8ICAgIDkg
Kwo+Pj4+PiAgICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYzIvcmt2ZGVjMi1oMjY0LmMg
fCAgNzM5ICsrKysrKysrKysrCj4+Pj4+ICAgICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
Mi9ya3ZkZWMyLXJlZ3MuaCB8ICAzNDUgKysrKysKPj4+Pj4gICAgIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMyL3JrdmRlYzIuYyAgICAgIHwgMTI1MyArKysrKysrKysrKysrKysrKysKPj4+
Pj4gICAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMyL3JrdmRlYzIuaCAgICAgIHwgIDEz
MCArKwo+Pj4+PiAgICAgOSBmaWxlcyBjaGFuZ2VkLCAyNDk2IGluc2VydGlvbnMoKykKPj4+Pj4g
ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjMi9LY29u
ZmlnCj4+Pj4+ICAgICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYzIvTWFrZWZpbGUKPj4+Pj4gICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmt2ZGVjMi9UT0RPCj4+Pj4+ICAgICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYzIvcmt2ZGVjMi1oMjY0LmMKPj4+Pj4gICAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjMi9ya3ZkZWMyLXJlZ3MuaAo+
Pj4+PiAgICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMy
L3JrdmRlYzIuYwo+Pj4+PiAgICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMyL3JrdmRlYzIuaAo+Pj4+IC4uLgo+Pj4+Cj4+Pj4+ICtzdGF0aWMgaW5saW5l
IHZvaWQgcmt2ZGVjMl9tZW1jcHlfdG9pbyh2b2lkIF9faW9tZW0gKmRzdCwgdm9pZCAqc3JjLAo+
Pj4+PiBzaXplX3QgbGVuKSArewo+Pj4+PiArI2lmZGVmIENPTkZJR19BUk02NAo+Pj4+PiArCV9f
aW93cml0ZTMyX2NvcHkoZHN0LCBzcmMsIGxlbik7Cj4+Pj4+ICsjZWxpZiBkZWZpbmVkKENPTkZJ
R19BUk0pCj4+Pj4gSSBndWVzcyB0aGF0IGNhbiBnZXQgYW4gIiNlbHNlIiBzaW5jZSBtZW1jcHlf
dG9pbyBleGlzdHMgZm9yIGFsbCBhcmNocy4KPj4+Pgo+Pj4+PiArCW1lbWNweV90b2lvKGRzdCwg
c3JjLCBsZW4pOwo+Pj4+PiArI2VuZGlmCj4+Pj4+ICt9Cj4+Pj4+ICsKPj4+PiAuLi4KPj4+Pgo+
Pj4+PiArCS8qIFNldCB0aW1lb3V0IHRocmVzaG9sZCAqLwo+Pj4+PiArCWlmIChwaXhlbHMgPCBS
S1ZERUMyXzEwODBQX1BJWEVMUykKPj4+Pj4gKwkJcmVncy0+Y29tbW9uLnRpbWVvdXRfdGhyZXNo
b2xkID0gUktWREVDMl9USU1FT1VUXzEwODBwOwo+Pj4+PiArCWVsc2UgaWYgKHBpeGVscyA8IFJL
VkRFQzJfNEtfUElYRUxTKQo+Pj4+PiArCQlyZWdzLT5jb21tb24udGltZW91dF90aHJlc2hvbGQg
PSBSS1ZERUMyX1RJTUVPVVRfNEs7Cj4+Pj4+ICsJZWxzZSBpZiAocGl4ZWxzIDwgUktWREVDMl84
S19QSVhFTFMpCj4+Pj4+ICsJCXJlZ3MtPmNvbW1vbi50aW1lb3V0X3RocmVzaG9sZCA9IFJLVkRF
QzJfVElNRU9VVF84SzsKPj4+Pj4gKwo+Pj4+IERpZCB5b3UgdGVzdCBpZiBpdCB3b3JrcyB3aXRo
IGFueXRoaW5nID4gOEs/IElmIHNvLCB5b3UgcHJvcGFibHkgd2FudCB0bwo+Pj4+IG1ha2UgdGhl
IGNoZWNrIGFib3ZlCj4+Pj4KPj4+PiArCWVsc2UKPj4+PiArCQlyZWdzLT5jb21tb24udGltZW91
dF90aHJlc2hvbGQgPSBSS1ZERUMyX1RJTUVPVVRfOEs7Cj4+Pj4KPj4+PiBPdGhlcndpc2UgdGhl
IHRpbWVvdXQgbWF5IG5vdCBiZSBzZXQvY29udGFpbiBpbnZhbGlkIHZhbHVlcyBmcm9tIGFueSBm
b3JtZXIKPj4+PiBzdHJlYW0uCj4+PiBUaGF0J3MgcmlnaHQsIGJ1dCBpdCB3b3VsZCBiZSBzZXQg
dG8gMCBiZWNhdXNlIG9mIHRoZSBtZW1zZXQuCj4+PiBSS1ZERUMyX1RJTUVPVVRfOEsgbWlnaHQg
bm90IGJlIGVub3VnaCBmb3IgYmlnZ2VyIGZyYW1lIHNpemVzLCBzbyBJJ2xsIHNldCBpdAo+Pj4g
dG8gdGhlIG1heGltdW0gdmFsdWUgKDB4ZmZmZmZmZmYpIHdoZW4gZnJhbWVzIGFyZSBiaWdnZXIg
dGhhbiA4SyBhbmQgYWxzbyBhZGFwdAo+Pj4gdGhlIHdhdGNoZG9nIHRpbWU6IFJLVkRFQzJfVElN
RU9VVF84SyBpcyBhcm91bmQgMTAwIG1zLCBidXQgMHhmZmZmZmZmZiBpcyBhcm5vdWQKPj4+IDUu
MyBzZWNvbmRzIChyZWcwMzIvYXhpX2Nsb2NrX2ZyZXEpCj4+Pgo+Pj4gSSdsbCBkbyBtb3JlIHRl
c3RzIHdpdGggdGhpcyBhcyB3ZWxsLgo+Pj4KPj4+PiAuLi4KPj4+Pgo+Pj4+PiArCj4+Pj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlYzJfY29kZWRfZm10X2Rlc2Mgcmt2ZGVjMl9jb2RlZF9m
bXRzW10gPSB7Cj4+Pj4+ICsJewo+Pj4+PiArCQkuZm91cmNjID0gVjRMMl9QSVhfRk1UX0gyNjRf
U0xJQ0UsCj4+Pj4+ICsJCS5mcm1zaXplID0gewo+Pj4+PiArCQkJLm1pbl93aWR0aCA9IDE2LAo+
Pj4+PiArCQkJLm1heF93aWR0aCA9ICA2NTUyMCwKPj4+Pj4gKwkJCS5zdGVwX3dpZHRoID0gMTYs
Cj4+Pj4+ICsJCQkubWluX2hlaWdodCA9IDE2LAo+Pj4+PiArCQkJLm1heF9oZWlnaHQgPSAgNjU1
MjAsCj4+Pj4+ICsJCQkuc3RlcF9oZWlnaHQgPSAxNiwKPj4+Pj4gKwkJfSwKPj4+Pj4gKwkJLmN0
cmxzID0gJnJrdmRlYzJfaDI2NF9jdHJscywKPj4+Pj4gKwkJLm9wcyA9ICZya3ZkZWMyX2gyNjRf
Zm10X29wcywKPj4+Pj4gKwkJLm51bV9kZWNvZGVkX2ZtdHMgPQo+Pj4gQVJSQVlfU0laRShya3Zk
ZWMyX2gyNjRfZGVjb2RlZF9mbXRzKSwKPj4+Pj4gKwkJLmRlY29kZWRfZm10cyA9IHJrdmRlYzJf
aDI2NF9kZWNvZGVkX2ZtdHMsCj4+Pj4+ICsJCS5zdWJzeXN0ZW1fZmxhZ3MgPQo+Pj4gVkIyX1Y0
TDJfRkxfU1VQUE9SVFNfTTJNX0hPTERfQ0FQVFVSRV9CVUYsCj4+Pj4+ICsJfSwKPj4+Pj4gK307
Cj4+Pj4+ICsKPj4+PiBOb3RlLCB0aGF0IHRoaXMgaXMgYWxzbyBnaXZlbiB0byB1c2Vyc3BhY2Ug
KFZJRElPQ19FTlVNX0ZSQU1FU0laRVMpIGFuZAo+Pj4+IHRoaXMgaXMgYWxyZWFkeSBpbmNvcnJl
Y3QgaW4gdGhlIG9sZCBya3ZkZWMgZHJpdmVyIChhbmQgaGFudHJvKTogRnJvbQo+Pj4+IHVzZXJz
cGFjZSBwZXJzcGVjdGl2ZSB3ZSBkbyBub3QgaGF2ZSBhIHJlc3RyaWN0aW9uIGluCj4+Pj4gc3Rl
cF93aWR0aC9zdGVwX3dpZHRoLCBhcyB3ZSBhcmUgYWxpZ25pbmcgYW55IGdpdmVuIHdpZHRoL2hl
aWdodCB0byBIVwo+Pj4+IHJlcXVpcmVtZW50cyBpbiB0aGUgZHJpdmVyIC0gd2hhdCB3ZSBzaG91
bGQgZ2l2ZSB0byB1c2Vyc3BhY2UgaXMKPj4+PiBmc2l6ZS0+dHlwZSA9IFY0TDJfRlJNU0laRV9U
WVBFX0NPTlRJTlVPVVM7IGZzaXplLT5zdGVwd2lzZS5taW5faGVpZ2h0ID0KPj4+PiAxOyBmc2l6
ZS0+c3RlcHdpc2UubWluX3dpZHRoID0gMTsgZnNpemUtPnN0ZXB3aXNlLm1heF9oZWlnaHQgPSA2
NTUyMDsKPj4+PiBmc2l6ZS0+c3RlcHdpc2UubWF4X3dpZHRoID0gNjU1MjA7Cj4+PiBJcyBmc2l6
ZS0+c3RlcHdpc2UubWluX2hlaWdodCA9IDE7IGFuZCBmc2l6ZS0+c3RlcHdpc2UubWluX3dpZHRo
ID0gMSBjb3JyZWN0ID8KPj4+IE9yIGRvIHlvdSBtZWFuIGZzaXplLT5zdGVwd2lzZS5zdGVwX2hl
aWdodCA9IDE7IGFuZCBmc2l6ZS0+c3RlcHdpc2Uuc2V0cF93aWR0aAo+Pj4gPSAxID8KPj4+Cj4+
PiBJdCB3b3VsZCBnaXZlIHRoaXMgaW5zdGVhZDoKPj4+Cj4+PiAuZnJtc2l6ZSA9IHsKPj4+IAku
bWluX3dpZHRoID0gMTYsCj4+PiAJLm1heF93aWR0aCA9ICA2NTUyMCwKPj4+IAkuc3RlcF93aWR0
aCA9IDEsCj4+PiAJLm1pbl9oZWlnaHQgPSAxNiwKPj4+IAkubWF4X2hlaWdodCA9ICA2NTUyMCwK
Pj4+IAkuc3RlcF9oZWlnaHQgPSAxLAo+Pj4gfSwKPj4+Cj4+PiBhbmQgLnZpZGlvY19lbnVtX2Zy
YW1lc2l6ZXMgc2V0cyBmc2l6ZS0+dHlwZSA9IFY0TDJfRlJNU0laRV9UWVBFX0NPTlRJTlVPVVM7
Cj4+IFlvdSBjYW4ndCBhZGFwdCB0aGlzIGhlcmUsIGJlY2F1c2UgdGhpcyAuZnJtc2l6ZSBpcyBh
bHNvIGdpdmVuIHRvIHRoZQo+PiB2NGwyX2FwcGx5X2ZybXNpemVfY29uc3RyYWludHMgaGVscGVy
LCB3aGljaCBkb2VzIHRoZSBhY3R1YWwgYWxpZ25tZW50IHRvCj4+IEhXIHJlcXVpcmVtZW50cyBh
bmQgcmVxdWlyZXMgdGhlIEhXIHN0ZXBfd2l0aCBhbmQgc3RlcF9oZWlnaHQuCj4+IElJUkMsIHdl
IGFsc28gYWxpZ24gZnJhbWVzaXplcyB3aGljaCBhcmUgYmVsb3cgbWluaW11bSBIVyByZXF1aXJl
bWVudCwgYXQKPj4gbGVhc3QgaW4gcmt2ZGVjMSBkcml2ZXIgYW5kIGl0IGxvb2tzIGEgbG90IGxp
a2UgdGhpcyBpcyBkb25lIGhlcmUgdGhlIHNhbWU6Cj4+IHNvIHRoaXMgc2hvdWxkIGJlIC5taW5f
aGVpZ2h0ID0gMSBhbmQgLm1pbl93aWR0aCA9IDEuIChJIHJlbWVtYmVyIGJlY2F1c2UKPj4gdGhl
cmUgYXJlIFZQOSBjb25mb3JtYW5jZSB0ZXN0cyB3aXRoIHZlcnkgc21hbGwgZnJhbWVzaXplcyku
IEFuZCB5ZXMsIGl0Cj4+IGxvb2tzIGxpa2UgeW91J3ZlIGhhZCB0byBzZXQgLnN0ZXBfd2lkdGgg
YW5kIC5zdGVwX2hlaWdodCB0byAxIGZvcgo+PiBWNEwyX0ZSTVNJWkVfVFlQRV9DT05USU5VT1VT
LCBub3Qgc3VyZSB3aHkgdGhhdCBpcyByZXF1aXJlZC4KPj4KPj4gU28sIGltaG8sIHRoZSBmaW5h
bCBya3ZkZWMyX2VudW1fZnJhbWVzaXplcyBzaG91bGQgbG9vayBsaWtlCj4+Cj4+ICtzdGF0aWMg
aW50IHJrdmRlYzJfZW51bV9mcmFtZXNpemVzKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2
LAo+PiArwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgwqAgc3RydWN0IHY0bDJfZnJtc2l6
ZWVudW0gKmZzaXplKQo+PiAuLi4uCj4+ICvCoMKgwqAgZm10ID0gcmt2ZGVjMl9maW5kX2NvZGVk
X2ZtdF9kZXNjKGZzaXplLT5waXhlbF9mb3JtYXQpOwo+PiArwqDCoMKgIGlmICghZm10KQo+PiAr
wqDCoMKgIMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4gKwo+PiArwqDCoMKgIGZzaXplLT50eXBl
ID0gVjRMMl9GUk1TSVpFX1RZUEVfQ09OVElOVU9VUzsKPj4gK8KgwqDCoCBmc2l6ZS0+c3RlcHdp
c2UubWluX2hlaWdodCA9IDE7Cj4+ICvCoMKgwqAgZnNpemUtPnN0ZXB3aXNlLm1heF9oZWlnaHQg
PSBmbXQtPmZybXNpemUubWF4X2hlaWdodDsKPj4gK8KgwqDCoCBmc2l6ZS0+c3RlcHdpc2UubWlu
X3dpZHRoID0gMTsKPj4gK8KgwqDCoCBmc2l6ZS0+c3RlcHdpc2UubWF4X3dpZHRoID0gZm10LT5m
cm1zaXplLm1heF93aWR0aDsKPj4gK8KgwqDCoCBmc2l6ZS0+c3RlcHdpc2UubWluX3dpZHRoID0g
MTsKPj4gK8KgwqDCoCBmc2l6ZS0+c3RlcHdpc2Uuc3RlcF9oZWlnaHQgPSAxOwo+PiArwqDCoMKg
IGZzaXplLT5zdGVwd2lzZS5zdGVwX3dpZHRoID0gMTsKPj4gK8KgwqDCoCByZXR1cm4gMDsKPj4g
K30KPj4KPj4gTm90ZTogTm90IGV2ZW4gYnVpbGQgdGVzdGVkIDopCj4+IEpvbmFzOiBtYXliZSB5
b3UgY2FuIGFkZCBhIGZpeHVwIHBhdGNoIHRvIHlvdXIgcmt2ZGVjIHBhdGNoZXMgYXMgd2VsbC4K
PiBUaGFua3MsIHdpbGwgdGFrZSBhIGNsb3NlciBsb29rIGFuZCBpbmNsdWRlIHNvbWV0aGluZyBm
b3Igcmt2ZGVjIGhpZ2gxMAo+IHY2IGxhdGVyIHRvZGF5L3RvbW9ycm93LgpHcmVhdCwgdGhhbmtz
LgoKVG8gYmFjayB1cCB0aGUgIklJUkMiIHBhcnQgb2YgbXkgcHJldmlvdXMgcmVwbHkgYWJvdXQg
Lm1pbl93aWR0aCBhbmQKLm1pbl9oZWlnaHQ6IHY0bDJfYXBwbHlfZnJtc2l6ZV9jb25zdHJhaW50
cyBkb2VzIGNsYW1wX3JvdW5kdXAgb24gd2lkdGggYW5kCmhlaWdodCwgd2hpY2ggbWVhbnMgaXQg
c2V0cyBoZWlnaHQgPSBod19taW5faGVpZ2h0IGFuZC9vciB3aWR0aCA9Cmh3X21pbl93aWR0aCBp
ZiB0aGUgZ2l2ZW4gd2lkdGgvaGVpZ2h0IGlzIHNtYWxsZXIuIFRodXMgdXNlcnNwYWNlIGRvZXNu
J3QKbmVlZCB0byBjYXJlIGFib3V0IHdpZHRoL2hlaWdodCBhcyBsb25nIGFzIGl0J3MgMSA8PQpo
d19tYXhfaGVpZ2h0L2h3X21heF93aWR0aC4KCkFsZXgKCj4gUmVnYXJkcywKPiBKb25hcwo+Cj4+
IFJlZ2FyZHMsCj4+Cj4+IEFsZXgKPj4KPj4+PiBJIGd1ZXNzIHRoaXMgbmV3IGRyaXZlciBzaG91
bGQgYmUgYW4KPj4+PiBvcHBvcnR1bml0eSB0byBmaXggdGhhdCBhbmQgZGlzdGluZ3Vpc2ggYmV0
d2VlbiBpbnRlcm5hbCBhbmQgZXh0ZXJuYWwKPj4+PiBmcmFtZSBzaXplIHJlcXVpcmVtZW50cyBh
bmQgdGhlIC52aWRpb2NfZW51bV9mcmFtZXNpemVzIGNhbGxiYWNrIHNob3VsZAo+Pj4+IGFkYXB0
ZWQgYWNjb3JkaW5nbHkuIFJlZ2FyZHMsIEFsZXgKPj4+IERldGxldi4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
