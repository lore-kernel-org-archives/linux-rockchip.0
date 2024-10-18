Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF81D3C55E
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 07:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipfuqby1hkKjaSAvaKfnANiqqdOGItoQmgjJfDCnRao=; b=mOO3rsM5y6fBT5
	FhsmwukcwSW5A/Y6jJOSZDKJfhOlMk05gTpGmkj/acK6Erzm/sc3hpZdW8WURWB+vKHfQVEflR+0V
	rJa5ZypcZB7WgunU6xQvFOUhNghU5LC81ty6/QUlUONYVTQZXmLZmbd4dH00PpWf0yTGYNdetCBj4
	68XfPwkMEk6rRA+cBiu5TbgEr2xQwRwdN3JPaXwuIR7bl1hGniIoOFi651PdUzWcvekjj6A6R1E6T
	f7gVKGfE1r3AiW5T15ZAvS45E0OGTk9iHNCCoCX5NbKpECtZI01OGLBDrUmkXn4I6nuZTJy8glciB
	50LAfelayG3V0YGo1fZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hYV-0000000HMNb-1Lxv;
	Fri, 18 Oct 2024 07:37:51 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1hVJ-0000000HLXU-0JS0;
	Fri, 18 Oct 2024 07:34:34 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e2ee0a47fdso322509a91.2;
        Fri, 18 Oct 2024 00:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729236872; x=1729841672; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BE1vQWp4gl/Ca50JBXWtWLVPTPuHPjeem6iZP1NO0ik=;
        b=j+OKCfCN5ZtTBmmkGZEzfrAtGI+5b87U4y46P7Ta38TqDxXVsqucX1lmUzuAK0xJu0
         ZPZmSkPoK5q0SPcyC/8kRHgnaKt3lj8x6pT2bZwYDksrxERbBl325mZkCpRe6hZ6rDKz
         2030wczE4DfDgAu/W1rszSKNEPel9A1jttROY70IeFxEs/mg0RMIS0dw1EB0lPAM42YS
         YyANP83CWQXNRB9ldHaQeirA3lMsHhO/aADES8hQWomOc9kEiseQ1zxyLsFWvOHypOTl
         KAwmYHaTDkJQklbUntrtWdFkkBb2/7fEGlteU5+m8yIENLhwO4/gSCMlrM9X3oRI2+JO
         l3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729236872; x=1729841672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BE1vQWp4gl/Ca50JBXWtWLVPTPuHPjeem6iZP1NO0ik=;
        b=ALWERnUfozExf7kDDknDV5FWw8zXqME6iO9ay2GzthwmDI5Zd1+wTWzU6nXRijUhh4
         ptPevaI8XWMji9zjK7Ne/pAPB7hRMdpAzP1lsjSHzNXPJAfYO/d21QvCbeyAxEEDw7Yf
         D97VsJP3sRyONCjfENmDxIsKYuNpc2WpDYddpRV0hFkfl4pnwcqe9wUtq9VgPJa6/V+b
         RdDF1ma4MRV9cKQe+aR8ShO3r32fojXwKcN/CITwPfKbbJbOupSlBcTj/OxOiqeEVcC6
         L9LCm4OaOKpezETjgpysV5fx4Ikq4A4OwbNIW1Pmqv0DI7EqR5pJ2lzZRsRSpGH7VXve
         4T8w==
X-Forwarded-Encrypted: i=1; AJvYcCW+TANJa04oYw3FuSlaBfGtVphdJ/WS4rzbMaGKG+rh78ZMtyY7ffVSx6gDOCq779JVSeq4pEz4V1DOdsMrlZk/@lists.infradead.org, AJvYcCXGqWOd8f/HH/KprLAgeLrCGuOc+Uwcy/1KPK/yREf2uv/seOTrV6xDPgp+tRIv2ASVfUU7KXXfX/FF83NL8OI=@lists.infradead.org, AJvYcCXIR/zUoSRfjh9sb5GISkU8uLSZD7KvpYnKKs9aCEw0tCTnXcE95im1IW6YL3+oKrWNVnlVnY1RsupB@lists.infradead.org
X-Gm-Message-State: AOJu0YySAwoReT1sgy86MeBPUTN4UdgxMSj8tqc1DUZLo4D01uXveLES
	d/mwNdB9+PGYSWukDbWZd9NwM3i+YI8muaNtaczWa+26ahf2svz2
X-Google-Smtp-Source: AGHT+IGtmuIgcIKvK3x5XpGlcMFj9hlDpBsifrljjglg5JsYwsKk2FFU4HGoKay0+/WgcAah+/gZxg==
X-Received: by 2002:a05:6a20:9184:b0:1cf:2be2:8dd1 with SMTP id adf61e73a8af0-1d92c5847b5mr1001142637.10.1729236872114;
        Fri, 18 Oct 2024 00:34:32 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eacc25249esm742612a12.55.2024.10.18.00.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2024 00:34:30 -0700 (PDT)
Message-ID: <3cd260c8-86e5-4833-b23e-b73dc6417f81@gmail.com>
Date: Fri, 18 Oct 2024 15:34:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf
 syscon
To: Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 yubing.zhang@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
 <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
 <d2a200aa-1301-4940-a39c-0412fe741994@gmail.com>
 <ee27926c06bedd62f417dbd7d01ce8b3@manjaro.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <ee27926c06bedd62f417dbd7d01ce8b3@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_003433_155928_562E19C6 
X-CRM114-Status: GOOD (  18.63  )
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

SGkgRHJhZ2FuLAoKT24gMjAyNC8xMC8xOCAxNDozNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIEZyYW5rLAo+Cj4gT24gMjAyNC0xMC0xOCAwODoxOCwgRnJhbmsgV2FuZyB3cm90ZToKPj4g
T24gMjAyNC8xMC8xOCAxMzowMiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gT24gMjAyNC0xMC0x
NyAwNDo1MiwgRnJhbmsgV2FuZyB3cm90ZToKPj4+PiBGcm9tOiBGcmFuayBXYW5nIDxmcmFuay53
YW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+Cj4+Pj4gQWRkIHJvY2tjaGlwLHJrMzU3Ni12bzEtZ3Jm
IHN5c2NvbiBjb21wYXRpYmxlLCB0aGUgdm8xLWdyZiBpcwo+Pj4+IGNvbmZpZ3VyZWQgaW4gdXNi
ZHAgcGh5IGRyaXZlci4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5r
LndhbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gQ2hhbmdlbG9nOgo+Pj4+IHYyOgo+
Pj4+IMKgLSBUaGlzIGlzIGEgbmV3IHBhdGNoIGFkZHMgcmszNTc2LXZvMS1ncmYgc3lzY29uLgo+
Pj4KPj4+IENvdWxkIHlvdSwgcGxlYXNlLCBjbGFyaWZ5IGEgYml0IHdoeSBpcyB0aGlzIGFkZGl0
aW9uYWwgcGF0Y2gKPj4+IG5lZWRlZCBpbiB0aGlzIHNlcmllcz8KPj4KPj4gSSBtZW50aW9uZWQg
aW4gdGhlIGNvbW1pdCBjb250ZW50LiBUaGUgdXNiZHAtcGh5IGRyaXZlciBzZWxlY3QgZHAKPj4g
bGFuZXMgdmlhIGNvbmZpZ3VyaW5nIHRoZSB2bzEtZ3JmLgo+Cj4gWWVzLCBJIGFscmVhZHkgc2F3
IHRoYXQgaW4gdGhlIHBhdGNoIGRlc2NyaXB0aW9uLsKgIFRob3VnaCwgYW5kCj4gSSBhcG9sb2dp
emUgaWYgSSdtIG1pc3Npbmcgc29tZXRoaW5nIG9idmlvdXMsIEkgY2FuJ3Qgc2VlIHdoZXJlCj4g
aXMgaXQgYWN0dWFsbHkgdXNlZCBpbiB0aGUgY29kZT/CoCBJcyBpdCB5ZXQgdG8gYmUgdXNlZCBp
biB0aGUKPiBkdHMoaSkgZmlsZXM/Cj4KPiBJJ2QgYXBwcmVjaWF0ZSBpZiB5b3UgY291bGQgY2xh
cmlmeSB0aGF0IGp1c3QgYSBiaXQgZnVydGhlciwgc28KPiBJIGNhbiBob3BlZnVsbHkgdW5kZXJz
dGFuZCBpdCBiZXR0ZXIuCj4KClllcywgdGhlIHVzYmRwX3BoeSBub2RlIGluIGR0cyhpKSB3aWxs
IGFzc2lnbiB0aGUgdm8xLWdyZiBwaGFuZGxlIGxpa2UgdGhpczoKCnVzYmRwX3BoeTogcGh5QDJi
MDEwMDAwIHsKIMKgwqDCoMKgwqDCoMKgIC4uLgogwqDCoMKgwqDCoMKgwqAgcm9ja2NoaXAsdm8t
Z3JmID0gPCZ2bzFfZ3JmPjsKfTsKCkFuZCB0aGUgdXNiZHAtcGh5IGRyaXZlciBwYXJzZXMgaXQg
YW5kIGFzc2lnbiB0byB1ZHBoeS0+dm9ncmYsIGl0IHVzZXMgCmluIHJrX3VkcGh5X2RwbGFuZV9z
ZWxlY3QoKS4KClRoZSByZWxhdGVkIGNvZGVzIGhhdmUgYWxyZWFkeSBleGlzdGVkIGluIHRoZSBj
dXJyZW50IGRyaXZlciwgc28gZm9yIApSSzM1NzYsIGp1c3Qgb25seSBuZWVkIHRvIGRvIGEgY29u
ZmlndXJhdGlvbi4KCgpCZXN0IHJlZ2FyZHMsCkZyYW5rCgo+Pj4+IHYxOgo+Pj4+IMKgLSBub25l
Cj4+Pj4KPj4+PiDCoERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2No
aXAvZ3JmLnlhbWwgfCAyICsrCj4+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4+IGluZGV4IDUwZDcyN2Y0Yjc2YzYuLmZk
NDIyMTdhYjg1ZTcgMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPj4+PiBAQCAtMzMsNiArMzMs
NyBAQCBwcm9wZXJ0aWVzOgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2Nr
Y2hpcCxyazM1NzYtdXNiLWdyZgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBy
b2NrY2hpcCxyazM1NzYtdXNiZHBwaHktZ3JmCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIHJvY2tjaGlwLHJrMzU3Ni12bzAtZ3JmCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gcm9ja2NoaXAscmszNTc2LXZvMS1ncmYKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTc2LXZvcC1ncmYKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTg4LWJpZ2NvcmUwLWdyZgo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1ODgtYmlnY29yZTEtZ3JmCj4+Pj4g
QEAgLTI4Myw2ICsyODQsNyBAQCBhbGxPZjoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGli
bGU6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGVudW06Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9j
a2NoaXAscmszNTc2LXZvMS1ncmYKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0g
cm9ja2NoaXAscmszNTg4LXZvLWdyZgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSByb2NrY2hpcCxyazM1ODgtdm8wLWdyZgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSByb2NrY2hpcCxyazM1ODgtdm8xLWdyZgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKPj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
