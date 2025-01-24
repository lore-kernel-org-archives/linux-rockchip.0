Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2912C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AElLPXZmcimOUbPDpcV+Sw42k16GXO27RTBcEgPcK0=; b=g7ox44akf8sN7D
	ge98rraJL/JPo1Tcx/fXhs9cHLEuNW4/TJiCuunhX3+zmVMnPjKA/EEx6rmpENrxxs5mTplR87uP7
	kiVvx7KV66KkIoMOZ/W7ez3gfEi+fCZ6XLs5M3jMfkkfPR861BhckByW5jE7TvzDWLviMbQx/hB0X
	4ZJWAMWcaRko50gZwVf9y4Mz5j3UCmzYQuV49Ao4Qk+3eTT3Ee5iGxrCUdnJl8ftDilyPjiml2Fqy
	IQiySp1veFOPUsikvWXpTzU+9kCDGy/CtbvixP6wHjL7kujxshGnVdR0M5IBjAB+bsVG/8wUFuyVW
	oLNulTo3P2ghSCH3u9jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGsf-0000000ESH9-1pUF;
	Fri, 24 Jan 2025 10:25:41 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGsc-0000000ESGg-3Jl5;
	Fri, 24 Jan 2025 10:25:39 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4678664e22fso16458591cf.2;
        Fri, 24 Jan 2025 02:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737714337; x=1738319137; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVSfEDxnvDA5rGvCvnbh0Gb+paH+zzrZtcmrNCp+8Yc=;
        b=ct+mi4973TBPramendlW/HBMCvGZBhMNmWkbABckUI0huDtCct+3rR4RblfQW8b8Zk
         DytcI9iUQHmtXuriVNgnbqW1C9AenuMXQ7rZSV8L9iYH3aZuidAnV7//rV5+ltqAdBqP
         tzIXjsbrrneUaXit1qat9rFsqanB7Xc+P9JdU5LR9b9A4i/0RbkxJjaCY78FOYUDHWl/
         Igi6/3VnUf88ZRoPtxxyUCDtEmL9QEtl1HRuPva+PlAVEvJ2V4/xDuduYYsEktcSAyMr
         WhSM7+/nBhV9sIS1DKQ2Cz8ARMJc1FfihkwR0RWBqUPOypLv02kmZwlnJvDErw7HuqSx
         XKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737714337; x=1738319137;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVSfEDxnvDA5rGvCvnbh0Gb+paH+zzrZtcmrNCp+8Yc=;
        b=Rf2dhVwRKS+yVzmteSt+q4s9a4w12e84m6amuba1seQ8TdsDSER7Vi0LUUEpb4mhmU
         gP97epUJ0b0YjHXhpbal2yQyyAGN3SnK4mMsHCWA1nv0SmY1/a+tL7QFh7Nt/WZtsB+e
         01eIs2bF4AKXUVWmkUGTIkynTKERIm0x1vjEQPh//TFR4TFismfL/7hvOeZCcASGwDa4
         IoQVOzkrHNPVAG+pMXkvNTpSb9TZ4iC4r5bVht5GQ8SbJ03Pb1gBZAHjNVTL80DY1wyL
         75/wJ927EREHgKMF8T6XDeigZg7Jdr42lDh4gtOcGI7aHgfHEY3ZB3cjWJV51Gh1ZR/3
         ul/w==
X-Forwarded-Encrypted: i=1; AJvYcCXCfkApyH9EAkkxnQZZNvGvZuAsQc785RiGGa4VDX7dCo//0VSqenVh+up7D2BuCRXCQUNkSCipsOnIvIl88h0=@lists.infradead.org, AJvYcCXlM7u/pPIf62CbMnCFwQXh8xse8cHq8wlSfB7vKqI8OL/bl2PAsJtdBghV7n2Zz3OSVWNhrvMgxMws3VF8TD0x@lists.infradead.org
X-Gm-Message-State: AOJu0YxAxVq1GHNNCkfTY++CKlhJz3qvqacjBlhYTMaGREuR2rYdWhKx
	HBBxmWxNrEO1sjVX5j9WL5fS/gGL6iQ768KzaGwVq7b2S1kh414nO+qWd3UoNbtKazyZfudea4s
	etczWegi76V8XuSS9ov8we+aPlZI=
X-Gm-Gg: ASbGncux9utCvdImHIuIpYQVwejp6RRFHKcwIWMHj5rd2J5cVyNlkvAOzCgz3CwEvB7
	AdRyXLuCO7DP04ZXkpzQiiBgCZG7cxC2GaHg3Cy0vfO/1XGF25FTlHCdwC3adTyLmT4pqkuPe18
	DaJvk+EpUNHT3NS/7LtRI=
X-Google-Smtp-Source: AGHT+IG19zMkzxnogxqTUpCFFCWHU7lU6d2GX59oTfrT4bEh/Qp/+jBldUiAWHgLhmBH9A6JXxMmUJ7olZ5BQkuj30g=
X-Received: by 2002:a05:622a:d4:b0:467:8703:a737 with SMTP id
 d75a77b69052e-46e12a9a34bmr447365691cf.29.1737714337203; Fri, 24 Jan 2025
 02:25:37 -0800 (PST)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com> <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
In-Reply-To: <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 24 Jan 2025 14:25:27 +0400
X-Gm-Features: AWEUYZkJo1DrsP2L7lNkxItCPiQqRHHFgNLzNRHQsNokpADbfabjg0z5a8nFqdE
Message-ID: <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_022538_832535_9A5C8E46 
X-CRM114-Status: GOOD (  32.58  )
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

T24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgMjowNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIEFsZXhleSwKPgo+IE9uIDIwMjUtMDEtMjQgMDk6
MzMsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgOToy
NuKAr0FNIEFsZXhhbmRlciBTaGl5YW4KPiA+IDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29t
PiB3cm90ZToKPiA+Pgo+ID4+IFRoZXJlIGlzIG5vIHBpbmN0cmwgImdwaW8iIGFuZCAib3Rwb3V0
IiAocHJvYmFibHkgZGVzaWduZWQgYXMKPiA+PiAib3V0cHV0IikKPiA+PiBoYW5kbGluZyBpbiB0
aGUgdHNhZGMgZHJpdmVyLgo+ID4+IExldCdzIHVzZSBwcm9wZXIgYmluZGluZyAiZGVmYXVsdCIg
YW5kICJzbGVlcCIuCj4gPgo+ID4gVGhpcyBsb29rcyByZWFzb25hYmxlLCBob3dldmVyIEkndmUg
dHJpZWQgaXQgb24gbXkgUmFkeGEgUm9jayA1QyBhbmQKPiA+IHRoZSBkcml2ZXIgc3RpbGwgZG9l
c24ndCBjbGFpbSBHUElPMCBSS19QQTEgZXZlbiB3aXRoIHRoaXMgY2hhbmdlLiBBcwo+ID4gYSBy
ZXN1bHQsIGEgc2ltdWxhdGVkIHRoZXJtYWwgcnVuYXdheSBjb25kaXRpb24gKEkndmUgY2hhbmdl
ZCB0aGUKPiA+IHRzaHV0IHRlbXBlcmF0dXJlIHRvIDY1MDAwIGFuZCB0c2h1dCBtb2RlIHRvIDEp
IGRvZXNuJ3QgdHJpZ2dlciBhIFBNSUMKPiA+IHJlc2V0LCBldmVuIHRob3VnaCBhIGRpcmVjdCBg
Z3Bpb3NldCAwIDE9MGAgZG9lcy4KPiA+Cj4gPiBBcmUgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyBu
ZWVkZWQgdG8gdGhlIGRyaXZlciBpdHNlbGY/Cj4KPiBJJ3ZlIGJlZW4gZGlnZ2luZyB0aHJvdWdo
IHRoaXMgcGF0Y2ggdGhlIHdob2xlIFRTQURDL09UUCB0aGluZyBpbiB0aGUKPiBsYXN0IGNvdXBs
ZSBvZiBob3VycywgYW5kIEFGQUlLIHNvbWUgcGFydHMgb2YgdGhlIHVwc3RyZWFtIGRyaXZlciBh
cmUKPiBzdGlsbCBtaXNzaW5nLCBpbiBjb21wYXJpc29uIHdpdGggdGhlIGRvd25zdHJlYW0gZHJp
dmVyLgo+Cj4gSSd2ZSBnb3Qgc29tZSBzbWFsbCBzdWdnZXN0aW9ucyBmb3IgdGhlIHBhdGNoIGl0
c2VsZiwgYnV0IHRoZSBpc3N1ZQo+IHlvdSBvYnNlcnZlZCBpcyBvYnZpb3VzbHkgb2YgaGlnaGVy
IHByaW9yaXR5LCBhbmQgSSd2ZSBzaW5nbGVkIGl0IG91dAo+IGFzIHdlbGwgd2hpbGUgZGlnZ2lu
ZyB0aHJvdWdoIHRoZSBjb2RlLgo+Cj4gQ291bGQgeW91LCBwbGVhc2UsIHRyeSB0aGUgcGF0Y2gg
YmVsb3cgcXVpY2tseSwgdG8gc2VlIGlzIGl0IGdvaW5nIHRvCj4gZml4IHRoZSBpc3N1ZSB5b3Ug
b2JzZXJ2ZWQ/ICBJJ3ZlIGdvdCBzb21lICJJUkwgc3R1ZmYiIHRvIHRha2UgY2FyZSBvZgo+IHRv
ZGF5LCBzbyBJIGNhbid0IHRlc3QgaXQgbXlzZWxmLCBhbmQgaXQgd291bGQgYmUgZ3JlYXQgdG8g
a25vdyBpcyBpdAo+IHRoZSByaWdodCBwYXRoIHRvIHRoZSBwcm9wZXIgZml4Lgo+Cj4gZGlmZiAt
LWdpdCBpL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiB3L2RyaXZlcnMvdGhl
cm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBpbmRleCBmNTUxZGY0OGVlZjkuLjYyZjBlMTRhOGQ5
OCAxMDA2NDQKPiAtLS0gaS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gKysr
IHcvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+IEBAIC0xNTY4LDYgKzE1Njgs
MTEgQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdAo+IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgICAgICAgICB0aGVybWFsLT5jaGlwLT5pbml0aWFsaXplKHRoZXJt
YWwtPmdyZiwgdGhlcm1hbC0+cmVncywKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHRoZXJtYWwtPnRzaHV0X3BvbGFyaXR5KTsKPgo+ICsgICAgICAgaWYgKHRoZXJtYWwtPnRz
aHV0X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+ICsgICAgICAgICAgICAgICBwaW5jdHJsX3Nl
bGVjdF9kZWZhdWx0X3N0YXRlKGRldik7Cj4gKyAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAg
IHBpbmN0cmxfc2VsZWN0X3NsZWVwX3N0YXRlKGRldik7CgpJIGJlbGlldmUgbm8gJ2Vsc2UnIGJs
b2NrIGlzIG5lZWRlZCBoZXJlLCBiZWNhdXNlIGlmIHRzaHV0X21vZGUgaXMgbm90ClRTSFVUX01P
REVfR1BJTyB0aGVuIHRoZSBUU0FEQyBkb2Vzbid0IHVzZSB0aGlzIHBpbiBhdCBhbGwsIHNvIHRo
ZXJlJ3MKbm8gcmVhc29uIGZvciB0aGUgZHJpdmVyIHRvIG1lc3Mgd2l0aCBpdHMgcGluY3RybCBz
dGF0ZS4gSSdkIHJhdGhlcgpwdXQgYSBtaXJyb3JpbmcgYmxvY2sgdG8gcHV0IHRoZSBwaW4gYmFj
ayB0byBpdHMgJ3NsZWVwJyBzdGF0ZSBpbiB0aGUKcmVtb3ZhbCBmdW5jdGlvbiBmb3IgdGhlIFRT
SFVUX01PREVfR1BJTyBjYXNlLgoKV2lsbCB0cnkgYW5kIHJldmVydC4KClAuUy4gSnVzdCBsb29r
ZWQgYXQgdGhlIGRvd25zdHJlYW0gZHJpdmVyLCBhbmQgaXQgYWN0dWFsbHkgY2FsbHMKVFNIVVRf
TU9ERV9HUElPIFRTSFVUX01PREVfT1RQIGluc3RlYWQsIHNvIGl0IHNlZW1zIHRoYXQgIm90cG91
dCIgd2FzCm5vdCBhIHR5cG8gaW4gdGhlIGZpcnN0IHBsYWNlLiBTbyBtYXliZSB0aGUgcmlnaHQg
YXBwcm9hY2ggaGVyZSBpcyBub3QKdG8gY2hhbmdlIHRoZSBkZXZpY2UgdHJlZSBidXQgcmF0aGVy
IGZpeCB0aGUgImdwaW8iIC8gIm90cG91dCIgcGluY3RybApzdGF0ZSBoYW5kbGluZyBpbiB0aGUg
ZHJpdmVyLgoKQmVzdCwKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
