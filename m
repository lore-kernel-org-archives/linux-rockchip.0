Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7F91C44520
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 12:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfuF6fxV8mD5+MZKICbAdxbFzH6zqqa50y19OQ4UYrA=; b=vZW26fBNUhPaOj
	0DNFoF3ebTpAqmAm/IcJCaf4wDcZlAsHxMi/GBeSZYMSiYg4yQRhDzpj8vEUoZ9z0BLYZ/gLzmr1W
	GQ4hcpDZHBBkHcIG/5gQUaM6+IlCSpDo6/l8PkSS02EtTT6wO9DfVe34p0XFoJyHKJRpe2SPDZdT7
	USuprX1iIGCe5bOvczQ5orpSiyqvdWz6jICNbJYcwu35geIoC/HJzXNeVudFtmswXCNNYCPRanqVv
	p0SxbdfoTVGroJxKRAyAfxxW9NEF/v2TJ4loADuib+FpayI3FLnJNZlp60fE5hthgh1vNtqKjii3E
	Dl0iLf5UeEUT4QgK5Dqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wln8t-00000006hNl-3NpP;
	Mon, 20 Jul 2026 12:30:43 +0000
Received: from mail-yx1-xb130.google.com ([2607:f8b0:4864:20::b130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wln8r-00000006hML-20JG
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 12:30:42 +0000
Received: by mail-yx1-xb130.google.com with SMTP id 956f58d0204a3-6646fd19d8cso1168151d50.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 05:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784550640; cv=none;
        d=google.com; s=arc-20260327;
        b=aPK5y9mhqYNPDbql8bXdiEGZfdP5vl56OuC110gk7Bfn0YuIH7y02YQ9IiPixOm2Mg
         DyHSiKVC3syvaJsEox/O6gE3CB4Pf/kp2F808ZVFTBLGU0uupw2UI/gvB/azfhJC3QVE
         0imPnkISSjCEFHOxpmOOVJeJdUV2jdgJ5GMklGrfB4LCDgcwoeDNLXESaCxZvBZO/dSp
         5nIeF2VvWrJTp7WaceESdt4zHPBHtR/P/QQqom7fVWpnrR6W+s6J7XDW33b51M3P3IPU
         iml85vIToJ6htJiJ1qFLKMZZGEPv8rR9LDWCKBKB5FSbrMDiAz9YLiSMs1/lCOyGO6B/
         7M2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RK3orBipLvBxv9OpAnJ3z8fX6ifrA1MYoB2RBjJvzSM=;
        fh=qaK20RcYsxPHcyV3HKjW8cnNIX6OGYEAg76Z42cK4t8=;
        b=PftE13nahXaN126IFxdNrK7AQSM3NfobbpBLrhW4zD9jZUAryf9bUTHduiG3TtOlh4
         9nGCfLHquIR6Sf9mEZwBb0E8R1NeQabgU7vcBOhDPD05H4cAstsl7qP1VMWhwVYhH6Sb
         pku6aAFR5WTAZJFoz7iLkk/m/Rq+HNiAuAwxHi7EIP8FFE9tc1tbKcqbzkEaO/Nn41mB
         UE746Py+Dh+7XVcO8NRy3VSjGXcDgGWILr4xOkVj7l+GKX5xfRPcw5GcY/E5riDf0vlS
         rXLzFXrU1rzZBd9lLqVAsEKBhUG7TOE+pVjyz8SEY6iBBW7P0pd6BAVKtkxbCNj1ZJO/
         L/9g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784550640; x=1785155440; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=RK3orBipLvBxv9OpAnJ3z8fX6ifrA1MYoB2RBjJvzSM=;
        b=lfueju9bymihNYWS7f+FnnxrN6HCRUDsXa+r/lQ8NvCC7hHlutPuZdBTwn+FXcWBC1
         UDx8to2RaI71hojCIG8tvdYN8rFTXhMwAAb5AJPeX04jV4QsDNTxgwV7MKt/nSk6Bli7
         PrDnoDUyzGnM5bRurUfidQ/qV0gfkoZjs7fQWaU4e7D3Tsg0sf/vichPojVhbeLi2udd
         katikwf59CoxlOD9Ppb7Y21flcfb7mt9+bSeYZJIbRQ5h3OaOMmTDN5BnS6RzydJurv5
         gQl78UMWuxDqmELo8L+cufBo6FJ2dAMMFdKItu0xvcDXy1Niv4E6H4YMz3dwLN+slLdM
         Pm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784550640; x=1785155440;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RK3orBipLvBxv9OpAnJ3z8fX6ifrA1MYoB2RBjJvzSM=;
        b=hOuXjS1KWgWI9nM83dwbMogC/PukLW4hj/X3fmH1zs0p5zrHiPuTj+hKw4Ufco6SDF
         f3B5+aJIdeeDivEGbfhbx3cBXO+agihUdN4EAdStnPf401GEmPDvvYci02lJ/sI2Vd05
         wQ+j+KZyF/Cfev1rOVAUKD0QRvOOZOvBfkUjzJqkau0U04Zitt5o7dibExFIJ/SAITon
         J2u2vwBqq0yLESRKhK84VVM0+mSQTmCk4lIZqC7XjhsnVm6i93DUR3hy7bdZYUvmuLsA
         P2gpiACj5Na8CULpuk3ePmLNCcEWuE5xchqRi7e0/zkITzqsxmgyJ3QtjuATHtxLbL3G
         VycA==
X-Forwarded-Encrypted: i=1; AHgh+RpH/G0tISOMZ0kk2sB3tRiYLsNh8X2jy7SPNa/8n1PNg581TA/zYyX8r9vRwxjhw3qujBQa2KgV2qvpSjrdxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxqyLDV/qU/ibEXBB+1se4BQ85GpY+qTHEbe+4iRtjUMNmvDjQc
	MfoHTJZ/cmfUwY1AIAa8+COx7KUfD1tu9H5rU1uAaE7SQ6pAqAvM4zXZ1K+0MD/YSgh0i4BBc8T
	sG6G62b4optHcZf9cd8G4xPZjJSTqP+E=
X-Gm-Gg: AR+sD11Rpni5fOQYdM8j4F8U5SVSSFkp+EdsfN3csISKo5uisgWuLj40UayI7jUEmQo
	cqFBzmxn/OGCJ77hOFnuyJPde9jbXKrttB4XgQTY6QkvBMSnJv9sdfJG5KsXDh4J5E9zUF0IXRn
	XcknJw2yNWQA8adllKu2GObbmKUULrv7MeyKLj2sAVD2OGXM9jkj6raLQPeDiH6LVr0qbWKqhky
	Xnjxkzcl4urlXsUqvIPhhPWvrtAzlLMV/MFS+O+yoewm7/zMf2rNhFHSXBwrtUD/mUINAlLeHy+
	Wwx9xDMxHmeCykseic5jYcYfOtYwOV4=
X-Received: by 2002:a53:b185:0:b0:664:afd7:e41d with SMTP id
 956f58d0204a3-6683bd3225fmr3054006d50.6.1784550639803; Mon, 20 Jul 2026
 05:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-3-royalnet026@gmail.com>
 <25922edc-4ff1-4d28-9a64-2c28b2b690cb@collabora.com>
In-Reply-To: <25922edc-4ff1-4d28-9a64-2c28b2b690cb@collabora.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Mon, 20 Jul 2026 14:30:26 +0200
X-Gm-Features: AUfX_mxl6V0Fcqr3p7PwGpYbAibraD_hti9tBU-fCmVXnkE6AMcEpLARKs3E8NU
Message-ID: <CAEWPSH70FecQRuGtA=S8+_CnLY5sMyf1j57Uwzwv54zceS1HZg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_053041_518864_D2BEED1C 
X-CRM114-Status: GOOD (  27.40  )
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

SGkgRG1pdHJ5LAoKR3JlYXQgdG8gaGVhciBpdCB3b3JrcyBvbiB0aGUgNUIgLS0gdGhhbmtzIGZv
ciB0ZXN0aW5nIQoKQWdyZWVkIG9uIHRoZSAtRUJVU1kgZ3VhcmQsIGRvbmUgaW4gbXkgdHJlZSBl
eGFjdGx5IGFzIHlvdSB3cm90ZSBpdC4KSXQgYWxzbyBzdXBlcnNlZGVzIHRoZSBzdXNwZW5kIGNh
bmNlbC9yZS1hcm0gSSBoYWQgcXVldWVkIGZyb20gdGhlCmJvdCByZXZpZXc6IHdpdGggc3VzcGVu
ZCByZWZ1c2VkIHdoaWxlIGF1ZGlvX3N0cmVhbWluZyBpcyBzZXQsIHRoZQp3b3JrZXIgY2FuIG5l
dmVyIGJlIGFybWVkIGF0IHN1c3BlbmQgdGltZSwgc28gdGhvc2UgaHVua3MgYXJlCmRyb3BwZWQu
Cgp2NCBmb2xsb3dzIHNob3J0bHkgd2l0aCB0aGlzIHBsdXMgU2ViYXN0aWFuJ3MgZHRzIHJlc3Ry
dWN0dXJpbmcKKHNoYXJlZCBkaXNhYmxlZC1ieS1kZWZhdWx0IGNhcmQgaW4gcmszNTg4LWV4dHJh
LmR0c2ksIHJlbmFtZWQgdG8KIlJLMzU4OCBIRE1JLUlOIikgYW5kIEtyenlzenRvZidzIGJpbmRp
bmcgY29tbWVudHMgKGRhaS1jb21tb24ueWFtbApyZWZlcmVuY2UgKyB1bmV2YWx1YXRlZFByb3Bl
cnRpZXMpLgoKSWdvcgoKT24gTW9uLCBKdWwgMjAsIDIwMjYgYXQgMzo0M+KAr0FNIERtaXRyeSBP
c2lwZW5rbwo8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gNy8x
OC8yNiAxMTo1NywgSWdvciBQYXVub3ZpYyB3cm90ZToKPiA+IFRoZSBTeW5vcHN5cyBEZXNpZ25X
YXJlIEhETUkgUlggY29udHJvbGxlciBleHRyYWN0cyB0aGUgYXVkaW8gc3RyZWFtCj4gPiBlbWJl
ZGRlZCBpbiB0aGUgaW5jb21pbmcgSERNSSBzaWduYWwgYW5kIGZlZWRzIGl0IHRvIGFuIG9uLVNv
QyBJMlMKPiA+IGNvbnRyb2xsZXIuIEV4cG9zZSBpdCBhcyBhbiBBTFNBIGNhcHR1cmUgZGV2aWNl
IGJ5IHJlZ2lzdGVyaW5nIHRoZQo+ID4gZ2VuZXJpYyBoZG1pLWNvZGVjIGFzIGEgY2hpbGQgb2Yg
dGhlIGNvbnRyb2xsZXIsIHNvIHRoYXQgYQo+ID4gc2ltcGxlLWF1ZGlvLWNhcmQgaW4gdGhlIGRl
dmljZSB0cmVlIGNhbiBiaW5kIHRoZSBIRE1JIFJYIGF1ZGlvIERBSS4KPiA+Cj4gPiBUaGUgc2Ft
cGxlIHJhdGUgaXMgcmVjb3ZlcmVkIGZyb20gdGhlIEFDUiBOL0NUUyB2YWx1ZXMgdG9nZXRoZXIg
d2l0aCB0aGUKPiA+IG1lYXN1cmVkIFRNRFMgY2hhcmFjdGVyIHJhdGUuIEEgcGVyaW9kaWMgd29y
a2VyIGtlZXBzIHRoZSBsb2NhbCBhdWRpbwo+ID4gcmVmZXJlbmNlIGNsb2NrIGxvY2tlZCB0byB0
aGUgc291cmNlIGJ5IG51ZGdpbmcgaXQgaW4gc21hbGwgcHBtIHN0ZXBzIHRvCj4gPiBob2xkIHRo
ZSBhdWRpbyBGSUZPIGZpbGwgbGV2ZWwgbmVhciBpdHMgdGFyZ2V0LCB3aGljaCBhdm9pZHMgRklG
Two+ID4gdW5kZXIvb3ZlcmZsb3cgYW5kIHRoZSByZXN1bHRpbmcgZHJvcHBlZCBzYW1wbGVzLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gQ2hhbmdlcyBpbiB2MzoKPiA+IC0gcmVzdG9yZSB0aGUgdjEgYXVkaW8g
dGVhcmRvd24gaW4gcmVtb3ZlKCk6IGF1ZGlvX3NodXRkb3duKCkgYWxyZWFkeQo+ID4gICBzdG9w
cyB0aGUgd29ya2VyIHdoZW4gdGhlIHN0cmVhbSBjbG9zZXMsIHNvIHRoZSBleHRyYSBmbGFnIGNs
ZWFyCj4gPiAgIGFuZCB0cmFpbGluZyBjYW5jZWwgYWRkZWQgaW4gdjIgd2VyZSByZWR1bmRhbnQg
KERtaXRyeSBPc2lwZW5rbykKPiA+IC0gcmVuYW1lIHRoZSBBQ1IgcmVhZCBsb2NhbHMgYW5kIGFk
ZCBhIGNvbW1lbnQgZG9jdW1lbnRpbmcgdGhlCj4gPiAgIHJlZ2lzdGVyIGJ5dGUgcGFja2luZwo+
ID4gLSBkcm9wIHRoZSBnZXRfZGFpX2lkIHN0dWIgc28gT0YtZ3JhcGggY2FyZHMgcmVzb2x2ZSB0
aGUgREFJIGluZGV4Cj4gPiAgIGZyb20gdGhlIHJlZyBwcm9wZXJ0eQo+ID4KPiA+IENoYW5nZXMg
aW4gdjI6Cj4gPiAtIHJlZ2lzdGVyIHRoZSBTL1BESUYgREFJIHNvIHRoZSBpbmRleGVzIG1hdGNo
IHRoZSBiaW5kaW5nIGFuZCByZWplY3QKPiA+ICAgaXQgd2l0aCAtRU9QTk9UU1VQUCB1bnRpbCB3
aXJlZCB1cCAoU2ViYXN0aWFuIFJlaWNoZWwpCj4gPiAtIHVzZSBwbGF0Zm9ybV9kZXZpY2VfcmVn
aXN0ZXJfZGF0YSgpIGFuZCBkcm9wIHRoZSBmaXhlZCAzMi1iaXQgRE1BCj4gPiAgIG1hc2sgKERt
aXRyeSBPc2lwZW5rbykKPiA+IC0gZG9uJ3QgbGVhdmUgYW4gRVJSX1BUUiBpbiBhdWRpb19wZGV2
IG9uIHJlZ2lzdHJhdGlvbiBmYWlsdXJlCj4gPiAtIGZpeCB0ZWFyZG93biBvcmRlcmluZyBpbiBy
ZW1vdmUoKQo+ID4gLSBzdG9wIHRoZSB3b3JrZXIgYmVmb3JlIHJlcHJvZ3JhbW1pbmcgc2hhcmVk
IHN0YXRlIGluIGh3X3BhcmFtcygpCj4gPiAtIGxvb2sgdXAgdGhlICJhdWRpbyIgY2xvY2sgYnkg
bmFtZSBpbnN0ZWFkIG9mIGluZGV4aW5nIGNsa3NbMV0KPiA+IC0ga2VlcCB0aGUgd29ya2VyIG9u
IHN5c3RlbV91bmJvdW5kX3dxIHdoZW4gcmUtYXJtaW5nCj4gPgo+ID4gIC4uLi9wbGF0Zm9ybS9z
eW5vcHN5cy9oZG1pcngvc25wc19oZG1pcnguYyAgICB8IDI3MSArKysrKysrKysrKysrKysrKysK
PiA+ICAuLi4vcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4LmggICAgfCAgIDgg
Kwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjc5IGluc2VydGlvbnMoKykKPgo+IFdvcmtzIHdlbGwg
b24gNWIsIHRoYW5rcy4gT25seSBvbmUgYWRkaXRpb25hbCByZXZpZXcgY29tbWVudDoKPgo+IFBs
ZWFzZSB1cGRhdGUgaGRtaXJ4X3N1c3BlbmQoKSB0byByZXR1cm4gLUVCVVNZIGlmIGF1ZGlvX3N0
cmVhbWluZz10cnVlLgo+Cj4gYGBgCj4gc3RhdGljIF9fbWF5YmVfdW51c2VkIGludCBoZG1pcnhf
c3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gewo+ICAgICAgICAgc3RydWN0IHNucHNfaGRt
aXJ4X2RldiAqaGRtaXJ4X2RldiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Cj4gICAgICAgICBp
ZiAoUkVBRF9PTkNFKChoZG1pcnhfZGV2LT5hdWRpb19zdHJlYW1pbmcpKSkKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIC1FQlVTWTsKPiBgYGAKPgo+IC0tCj4gQmVzdCByZWdhcmRzLAo+IERtaXRy
eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
