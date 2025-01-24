Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 331A8C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 19:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHRWTeTCV3SexW8CBzozv5Le/wR8D19riADrZB5nPes=; b=ybVp7w/qTxepwX
	JS+IJNwrOA/E6rfQvcs7XMj1XVcDptM//hq1JbCPtvNX2it0pvx4DXI8zNuD+GBJNLfDN5aa6UQbo
	UXLTnfgRfKR5+6b8sVeZzWG3iRYSCLSECYo6Kc+GOUw5YapI7J/Xahlgc7MDjTtCTHDY4ofxGn6gz
	x4+IsMNXZUmqYC1ZzUf7POXD9xOf5SADgakctjx9mvEguIFKl+8WF9WInt9rL9+DFYebPzb3vOfkE
	vM9BauCqM/NVkO452xkOV+7iDtEuxESvV8jswCEZL6e2KuDmif5LZzhAoB7O5Z4WgrsOPWIgqWKhA
	9ld/18VvpfLmalpgzsEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbPbl-0000000FPKT-47qh;
	Fri, 24 Jan 2025 19:44:49 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbPbi-0000000FPJb-3yF6;
	Fri, 24 Jan 2025 19:44:48 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6e1a41935c3so36791936d6.3;
        Fri, 24 Jan 2025 11:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737747885; x=1738352685; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SOD2UfYHJSjZl/pt9FbtcUXEWsxQSEJ9vHhIuaxcBT8=;
        b=O0WEnaN69fRDcpcf0+/M+LrDHQohIbXX40w/9vM3YrVWpH38egkwskMwdnFAlfWtc8
         L3ZEeOLHMfblRKn82ykm8RWaEakwKZaW4pvffzz5n6f0LgDf/Z5hS8QVPvd2rj7cV3RQ
         hsQqva8HEg6iHR8jH8u98qBEW33e1le5vnNFvqJ4By3KS6TRKuwHNO+7mNBhdK/ZB4x+
         xdkkyo4+/D3Ya+CfR5FM7Nua0kLG+wmVgQcmW4DlswrCHxG5KIGv/4MqT5srxgxykeNr
         RkLO3qFNcO8teQ9n+QQZNnk35RPAXn/71E++uJ17TXO0+bPGEIGerbY9+ASBJdsnLBzJ
         kAyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737747885; x=1738352685;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SOD2UfYHJSjZl/pt9FbtcUXEWsxQSEJ9vHhIuaxcBT8=;
        b=N9ZRZuU0x6CvMB60uF1LvRfQj6PA5DATiOaLFzB0M7yQN2RdqB+IwOwhVKRIcF9veU
         1C5UixOzYvDB8dUKfhNFQj6LxJTBNF438KvY5+at+rfPjNpb1GGHa2/F3kUGS3UlDVh8
         jgMuu6XalIl0hNADT4kaNxgB+2uToV5sP6A7/XGHRaBVHtaOSm/u/vvKzLwMiaunF1Xf
         E7Uuxc6Uio7hk1bIsOkTfHGG+5Xx0vlC3B12skrLTJ2YfcFev0rD5LonBbr2nDzbd9Ov
         HfkvoHculLOvxaUqaon6uaTQ6ggsu1O9ypcmTiQ6bxbMQbBWeesrcglgPydwuH72Y7DD
         NTXw==
X-Forwarded-Encrypted: i=1; AJvYcCW/OQgrxBsdyLBOgNYL8MFfCPmqe2CBNNzkYax/G43QQ5GPwlQkynXF/2yTa/d2LdzkQSfJqmR6uG/WerXJ8PI=@lists.infradead.org, AJvYcCXUZkPLBqtbdQ7hV5k1fB87xpM0cB/2tblJNk+R1M9DvMxpFRHW2rPshIf9L7hHIp8FIlDXhigjlhAgAdZpKT06@lists.infradead.org
X-Gm-Message-State: AOJu0YwQzlLHuTAjqoEoy52T8zRwGzS3v+MwnhpKkFMvU44XkwNfV/jF
	9pD2qmN7fqYwfxv0g99vsA+/J1pgGGa0db0rOo/i+FO5XV+lP8FICUOy23k0m67hJOr8OmdpTXb
	lzzXtkBLSyo9rLQOLPUjZEcNN0pA=
X-Gm-Gg: ASbGncsmyQa7tYVSY7IJGf/QoF2X+t1GutMaEUs4Ip5644TyllLOvXl1HDe5/Cy7bB/
	vI0MzerNiJmEq69MaWWFRSglBr8Lm/+eU5pZJvthV7XIlvPGTgA956P8sYyOpiGk53KFTNliWWA
	==
X-Google-Smtp-Source: AGHT+IEwdcGyIv8lm858FpPS9WNGZiSmay44cu0Hl9ikO4VKi94V+TJkWI5vKNLFcYt7f/0KTwOHH8wB/TpJhS5EnOk=
X-Received: by 2002:a05:6214:3b81:b0:6dd:13b0:1008 with SMTP id
 6a1803df08f44-6e1b220a25emr426812666d6.30.1737747885315; Fri, 24 Jan 2025
 11:44:45 -0800 (PST)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org> <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org> <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
In-Reply-To: <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 24 Jan 2025 23:44:34 +0400
X-Gm-Features: AWEUYZm_EiKPNGxbgHDs4gZQ4CmxiOcxC-PdiZ0tcOXrYDeOTA-NItxJz0l0e0g
Message-ID: <CABjd4Yy14bpjzvFyc8et-=pmds5uwzfxNqcs7L=+XRXBogZEsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_114446_986747_855A06FB 
X-CRM114-Status: GOOD (  44.35  )
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

T24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgOToyM+KAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEphbiAyNCwgMjAyNSBhdCAyOjM34oCvUE0g
RHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIDIwMjUt
MDEtMjQgMTE6MjUsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gPiBPbiBGcmksIEphbiAyNCwg
MjAyNSBhdCAyOjA24oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiA+
IHdyb3RlOgo+ID4gPj4gT24gMjAyNS0wMS0yNCAwOTozMywgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gPiA+PiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDk6MjbigK9BTSBBbGV4YW5kZXIgU2hp
eWFuCj4gPiA+PiA+IDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29tPiB3cm90ZToKPiA+ID4+
ID4+Cj4gPiA+PiA+PiBUaGVyZSBpcyBubyBwaW5jdHJsICJncGlvIiBhbmQgIm90cG91dCIgKHBy
b2JhYmx5IGRlc2lnbmVkIGFzCj4gPiA+PiA+PiAib3V0cHV0IikKPiA+ID4+ID4+IGhhbmRsaW5n
IGluIHRoZSB0c2FkYyBkcml2ZXIuCj4gPiA+PiA+PiBMZXQncyB1c2UgcHJvcGVyIGJpbmRpbmcg
ImRlZmF1bHQiIGFuZCAic2xlZXAiLgo+ID4gPj4gPgo+ID4gPj4gPiBUaGlzIGxvb2tzIHJlYXNv
bmFibGUsIGhvd2V2ZXIgSSd2ZSB0cmllZCBpdCBvbiBteSBSYWR4YSBSb2NrIDVDIGFuZAo+ID4g
Pj4gPiB0aGUgZHJpdmVyIHN0aWxsIGRvZXNuJ3QgY2xhaW0gR1BJTzAgUktfUEExIGV2ZW4gd2l0
aCB0aGlzIGNoYW5nZS4gQXMKPiA+ID4+ID4gYSByZXN1bHQsIGEgc2ltdWxhdGVkIHRoZXJtYWwg
cnVuYXdheSBjb25kaXRpb24gKEkndmUgY2hhbmdlZCB0aGUKPiA+ID4+ID4gdHNodXQgdGVtcGVy
YXR1cmUgdG8gNjUwMDAgYW5kIHRzaHV0IG1vZGUgdG8gMSkgZG9lc24ndCB0cmlnZ2VyIGEgUE1J
Qwo+ID4gPj4gPiByZXNldCwgZXZlbiB0aG91Z2ggYSBkaXJlY3QgYGdwaW9zZXQgMCAxPTBgIGRv
ZXMuCj4gPiA+PiA+Cj4gPiA+PiA+IEFyZSBhbnkgYWRkaXRpb25hbCBjaGFuZ2VzIG5lZWRlZCB0
byB0aGUgZHJpdmVyIGl0c2VsZj8KPiA+ID4+Cj4gPiA+PiBJJ3ZlIGJlZW4gZGlnZ2luZyB0aHJv
dWdoIHRoaXMgcGF0Y2ggdGhlIHdob2xlIFRTQURDL09UUCB0aGluZyBpbiB0aGUKPiA+ID4+IGxh
c3QgY291cGxlIG9mIGhvdXJzLCBhbmQgQUZBSUsgc29tZSBwYXJ0cyBvZiB0aGUgdXBzdHJlYW0g
ZHJpdmVyIGFyZQo+ID4gPj4gc3RpbGwgbWlzc2luZywgaW4gY29tcGFyaXNvbiB3aXRoIHRoZSBk
b3duc3RyZWFtIGRyaXZlci4KPiA+ID4+Cj4gPiA+PiBJJ3ZlIGdvdCBzb21lIHNtYWxsIHN1Z2dl
c3Rpb25zIGZvciB0aGUgcGF0Y2ggaXRzZWxmLCBidXQgdGhlIGlzc3VlCj4gPiA+PiB5b3Ugb2Jz
ZXJ2ZWQgaXMgb2J2aW91c2x5IG9mIGhpZ2hlciBwcmlvcml0eSwgYW5kIEkndmUgc2luZ2xlZCBp
dCBvdXQKPiA+ID4+IGFzIHdlbGwgd2hpbGUgZGlnZ2luZyB0aHJvdWdoIHRoZSBjb2RlLgo+ID4g
Pj4KPiA+ID4+IENvdWxkIHlvdSwgcGxlYXNlLCB0cnkgdGhlIHBhdGNoIGJlbG93IHF1aWNrbHks
IHRvIHNlZSBpcyBpdCBnb2luZyB0bwo+ID4gPj4gZml4IHRoZSBpc3N1ZSB5b3Ugb2JzZXJ2ZWQ/
ICBJJ3ZlIGdvdCBzb21lICJJUkwgc3R1ZmYiIHRvIHRha2UgY2FyZSBvZgo+ID4gPj4gdG9kYXks
IHNvIEkgY2FuJ3QgdGVzdCBpdCBteXNlbGYsIGFuZCBpdCB3b3VsZCBiZSBncmVhdCB0byBrbm93
IGlzIGl0Cj4gPiA+PiB0aGUgcmlnaHQgcGF0aCB0byB0aGUgcHJvcGVyIGZpeC4KPiA+ID4+Cj4g
PiA+PiBkaWZmIC0tZ2l0IGkvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4g
Pj4gdy9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gPiA+PiBpbmRleCBmNTUx
ZGY0OGVlZjkuLjYyZjBlMTRhOGQ5OCAxMDA2NDQKPiA+ID4+IC0tLSBpL2RyaXZlcnMvdGhlcm1h
bC9yb2NrY2hpcF90aGVybWFsLmMKPiA+ID4+ICsrKyB3L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hp
cF90aGVybWFsLmMKPiA+ID4+IEBAIC0xNTY4LDYgKzE1NjgsMTEgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdAo+ID4gPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4gPj4gICAgICAgICAgdGhlcm1hbC0+Y2hpcC0+aW5pdGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRo
ZXJtYWwtPnJlZ3MsCj4gPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRo
ZXJtYWwtPnRzaHV0X3BvbGFyaXR5KTsKPiA+ID4+Cj4gPiA+PiArICAgICAgIGlmICh0aGVybWFs
LT50c2h1dF9tb2RlID09IFRTSFVUX01PREVfR1BJTykKPiA+ID4+ICsgICAgICAgICAgICAgICBw
aW5jdHJsX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRldik7Cj4gPiA+PiArICAgICAgIGVsc2UKPiA+
ID4+ICsgICAgICAgICAgICAgICBwaW5jdHJsX3NlbGVjdF9zbGVlcF9zdGF0ZShkZXYpOwo+ID4g
Pgo+ID4gPiBJIGJlbGlldmUgbm8gJ2Vsc2UnIGJsb2NrIGlzIG5lZWRlZCBoZXJlLCBiZWNhdXNl
IGlmIHRzaHV0X21vZGUgaXMgbm90Cj4gPiA+IFRTSFVUX01PREVfR1BJTyB0aGVuIHRoZSBUU0FE
QyBkb2Vzbid0IHVzZSB0aGlzIHBpbiBhdCBhbGwsIHNvIHRoZXJlJ3MKPiA+ID4gbm8gcmVhc29u
IGZvciB0aGUgZHJpdmVyIHRvIG1lc3Mgd2l0aCBpdHMgcGluY3RybCBzdGF0ZS4gSSdkIHJhdGhl
cgo+ID4gPiBwdXQgYSBtaXJyb3JpbmcgYmxvY2sgdG8gcHV0IHRoZSBwaW4gYmFjayB0byBpdHMg
J3NsZWVwJyBzdGF0ZSBpbiB0aGUKPiA+ID4gcmVtb3ZhbCBmdW5jdGlvbiBmb3IgdGhlIFRTSFVU
X01PREVfR1BJTyBjYXNlLgo+ID4KPiA+IFlvdSdyZSByaWdodCwgYnV0IHRoZSAiZWxzZSBibG9j
ayIgaXMgd2hhdCB0aGUgZG93bnN0cmVhbSBkcml2ZXIgZG9lcywKPgo+IERvZXMgaXQgdGhvdWdo
PyBJdCBvbmx5IGhhbmRsZXMgdGhlIFRTSFVUX01PREVfR1BJTyBjYXNlIGFzIGZhciBhcyBJCj4g
Y2FuIHRlbGwgKG9yIFRTSFVUX01PREVfT1RQIGluIGRvd25zdHJlYW0gZHJpdmVyIGxpbmdvKSBb
MV0KPgo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2IvZWRiM2VlZWFh
NDY0M2VjYWM2ZjQxODVkNmQzOTFjNTc0NzM1ZmNhMS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jI0wyNTY0Cj4KPiA+IHNvIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gc2ltcGx5IHN0
YXkgb24gdGhlIHNhZmUgc2lkZSBhbmQgZm9sbG93IHRoYXQKPiA+IGxvZ2ljIGluIHRoZSB1cHN0
cmVhbSBkcml2ZXIuICBJcyBpdCByZWFsbHkgbmVlZGVkPyAgUGVyaGFwcyBub3QsIGJ1dAo+ID4g
aXQgYWxzbyBzaG91bGRuJ3QgaHVydC4KPiA+Cj4gPiA+IFdpbGwgdHJ5IGFuZCByZXZlcnQuCj4g
Pgo+ID4gQXdlc29tZSwgdGhhbmtzIQo+ID4KPiA+ID4gUC5TLiBKdXN0IGxvb2tlZCBhdCB0aGUg
ZG93bnN0cmVhbSBkcml2ZXIsIGFuZCBpdCBhY3R1YWxseSBjYWxscwo+ID4gPiBUU0hVVF9NT0RF
X0dQSU8gVFNIVVRfTU9ERV9PVFAgaW5zdGVhZCwgc28gaXQgc2VlbXMgdGhhdCAib3Rwb3V0IiB3
YXMKPiA+ID4gbm90IGEgdHlwbyBpbiB0aGUgZmlyc3QgcGxhY2UuIFNvIG1heWJlIHRoZSByaWdo
dCBhcHByb2FjaCBoZXJlIGlzIG5vdAo+ID4gPiB0byBjaGFuZ2UgdGhlIGRldmljZSB0cmVlIGJ1
dCByYXRoZXIgZml4IHRoZSAiZ3BpbyIgLyAib3Rwb3V0IiBwaW5jdHJsCj4gPiA+IHN0YXRlIGhh
bmRsaW5nIGluIHRoZSBkcml2ZXIuCj4gPgo+ID4gSW5kZWVkLCAib3Rwb3V0IiB3YXNuJ3QgYSB0
eXBvLCBhbmQgSSd2ZSBhbHJlYWR5IGFkZHJlc3NlZCB0aGF0IGluIG15Cj4gPiBjb21tZW50cyB0
byBBbGV4YW5kZXIncyBwYXRjaC4gIFdpbGwgc2VuZCB0aGF0IHJlc3BvbnNlIGEgYml0IGxhdGVy
Lgo+ID4KPiA+IEkgdGhpbmsgaXQncyBhY3R1YWxseSBiZXR0ZXIgdG8gYWNjZXB0IHRoZSBhcHBy
b2FjaCBpbiBBbGV4YW5kZXIncwo+ID4gcGF0Y2gsIGJlY2F1c2UgdGhlIHdob2xlIHRoaW5nIGFw
cGxpZXMgdG8gb3RoZXIgUm9ja2NoaXAgU29DcyBhcyB3ZWxsLAo+ID4gbm90IGp1c3QgdG8gdGhl
IFJLMzU4OChTKS4KPgo+IEFueXdheSwgSSd2ZSBqdXN0IHRyaWVkIGl0IGFmdGVyIGluY2x1ZGlu
ZyB0aGUgY2hhbmdlcyBiZWxvdywgYW5kCj4gd2hpbGUgL3N5cy9rZXJuZWwvZGVidWcvcGluY3Ry
bC9waW5jdHJsLWhhbmRsZXMgc2hvd3MgdGhlIGV4cGVjdGVkCj4gcGluY3RybHMgdW5kZXIgdHNh
ZGMsIHRoZSBkcml2ZXIgc3RpbGwgZG9lc24ndCBzZWVtIHRvIGJlIHRyaWdnZXJpbmcgYQo+IFBN
SUMgcmVzZXQuIFdlaXJkLiBBbnkgdGhvdWdodHMgd2VsY29tZS4KCkkgZm91bmQgdGhlIGN1bHBy
aXQuICJvdHBvdXQiIChvciAiZGVmYXVsdCIgaWYgd2UgZm9sbG93IEFsZXhhbmRlcidzCnN1Z2dl
c3RlZCBhcHByb2FjaCkgcGluY3RybCBzdGF0ZSBzaG91bGQgcmVmZXIgdG8gdGhlICZ0c2FkY19z
aHV0X29yZwpjb25maWcgaW5zdGVhZCBvZiAmdHNhZGNfc2h1dCAtIHRoZW4gdGhlIFBNSUMgcmVz
ZXQgd29ya3MuCgpCZXN0LApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
