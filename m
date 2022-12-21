Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 443A8C10F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 16:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VurZ2dBdEp1c39B17QBHoaWyDpPu0DhPekMf1BqjMKM=; b=CRvHsQMW8yfQgJ
	3Ne/2OgSqFdlddZJTmkupH5TevRwleOBNlBMvzCFlPs5RvlOjux1esa77wxoWbujU5AmrPbzfEOma
	sqQANZHfaWGsuPScJnTjOrV4hrH69gHthr8nH5K7qbL9NO1E51svEMGW7cZtYqU11gnmKOLN1A4iV
	6CB2mPe3FUEsCQ0le2JgoxmGo1nEJgaagQqFmq0Lj5TwDcC4KJAqC0xuyLQeNP0Hvl4R9XqYkI9j0
	uVAU8bhtcZWTJPSc4DjhZbLDJc/CwsmTvC2yPGqSnIr31r3HMjuJ7DLDpPkPzgDAfSzlzFNqXfw0r
	+vSBkfPbpjrGz3yCqSaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p81lY-00GxUA-6N; Wed, 21 Dec 2022 16:16:24 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p81lV-00GxNw-2y
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 16:16:22 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id b189so15145279vsc.10
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 08:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V0Jr0ncaFatQ1llU1BzfDYX0DgcfVDK5RFBuq4i0i/I=;
        b=cIEeX/c30k4UKyOj4eR0nz6PRiwIs1u/WY+Y/KZnMgS1n898SM4jfwvbYDeHBD6CP+
         1yh7dxh7J44S9bInD6Wc7znYCP8AFqjsuXW6wbpBgPoBcCDCP+D5aPDlchtW1tskqth0
         JDrPXLgkL3+R8WYxhpjRlwLNeCbjex7oY7GkjIXJY7ss6zRbrgM150WYsaIGhIfM/fZM
         d3K7kg+xL4COP5+w3lgfACkztRVqpnbGcP1373A/lt5EIkP6g95+l/KvupNu/ParlyLD
         d2alslZ88NZsl9wMWzzdqMG0pOFIyz6iLPU5nBOCkS5GxORX8oFmIeCr4CMEAMT84oSA
         8CVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V0Jr0ncaFatQ1llU1BzfDYX0DgcfVDK5RFBuq4i0i/I=;
        b=2bXjLkdllYB5f37WwjIum2YHfsyu6h8ud8jsbZaA1M2XpOEcSHBWsdyOsFSsUaRjVw
         vg7X9LTgfUrV0oS6maahNOaAQs2d181SL/WZVkkaPNZqDZ7ZDmWCDO0ZUPtgBe1yIqxB
         zCtmaJvJJiAtSDwqrBuNO3alukqlawt0DwwvEPw6JAVSr0BZ54JaEbdc/8L4j7oB05xr
         LGTykaVbJsx4BXaAznyK4INGNJavBFPYm0tzuslvO8wg5Xe0RybaWCJtsHOJyGtLEvOz
         nw+QgngCS0kxp8Vzc8qEdomKz78EAZLpJJ+N45/JTaIynj3aUkYXxSKM1qDU47d61tvJ
         iy3Q==
X-Gm-Message-State: AFqh2kr/BPShiw2W2+S1pp9jBG8m9keUatCKeIkuHHpA6dr7d6MRsMgm
	X+p4frsh910RJDibLeL9/+tjkg==
X-Google-Smtp-Source: AMrXdXus2f0EloCt7a3u9bTW2ujIpOXjtqLhrlnsSr1Wm1BTZtnm2QKIoG59T4IHC7fJp76J6j25yA==
X-Received: by 2002:a05:6102:356c:b0:3b1:3719:f2cf with SMTP id bh12-20020a056102356c00b003b13719f2cfmr972540vsb.24.1671639376650;
        Wed, 21 Dec 2022 08:16:16 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([192.222.136.102])
        by smtp.gmail.com with ESMTPSA id dt20-20020a05620a479400b006fbf88667bcsm10926041qkb.77.2022.12.21.08.16.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 08:16:15 -0800 (PST)
Message-ID: <0417e11649150202f717646809e7db5c55f7ac83.camel@ndufresne.ca>
Subject: Re: [PATCH v1 4/9] media: verisilicon: Check AV1 bitstreams bit
 depth
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Wed, 21 Dec 2022 11:16:12 -0500
In-Reply-To: <4aae8684-5ab4-c5a6-cc73-5dc61309b745@collabora.com>
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
	 <20221219155616.848690-5-benjamin.gaignard@collabora.com>
	 <e3663c85c75d09259a3135cb6ccfe7d6231bd752.camel@ndufresne.ca>
	 <4aae8684-5ab4-c5a6-cc73-5dc61309b745@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_081621_427136_F12DC5AC 
X-CRM114-Status: GOOD (  20.20  )
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

TGUgbWFyZGkgMjAgZMOpY2VtYnJlIDIwMjIgw6AgMTQ6MDIgKzAxMDAsIEJlbmphbWluIEdhaWdu
YXJkIGEgw6ljcml0wqA6Cj4gTGUgMTkvMTIvMjAyMiDDoCAyMTozOCwgTmljb2xhcyBEdWZyZXNu
ZSBhIMOpY3JpdMKgOgo+ID4gTGUgbHVuZGkgMTkgZMOpY2VtYnJlIDIwMjIgw6AgMTY6NTYgKzAx
MDAsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4gPiA+IFRoZSBkcml2ZXIgc3VwcG9y
dHMgOCBhbmQgMTAgYml0cyBiaXRzdHJlYW1zLCBtYWtlIHN1cmUgdG8gZGlzY2FyZAo+ID4gPiBv
dGhlciBjYXNlcy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyB8IDYgKysrKysrCj4g
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+ID4gaW5k
ZXggOGU5MzcxMGRjZmVkLi5lMTBmYzU5NjM0ZGQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gPiA+IEBAIC0yODIs
NyArMjgyLDEzIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0cmwg
KmN0cmwpCj4gPiA+ICAgCQkvKiBXZSBvbmx5IHN1cHBvcnQgcHJvZmlsZSAwICovCj4gPiA+ICAg
CQlpZiAoZGVjX3BhcmFtcy0+cHJvZmlsZSAhPSAwKQo+ID4gPiAgIAkJCXJldHVybiAtRUlOVkFM
Owo+ID4gPiArCX0gZWxzZSBpZiAoY3RybC0+aWQgPT0gVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9T
RVFVRU5DRSkgewo+ID4gPiArCQljb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2F2MV9zZXF1ZW5jZSAq
c2VxdWVuY2UgPSBjdHJsLT5wX25ldy5wX2F2MV9zZXF1ZW5jZTsKPiA+ID4gKwo+ID4gPiArCQlp
ZiAoc2VxdWVuY2UtPmJpdF9kZXB0aCAhPSA4ICYmIHNlcXVlbmNlLT5iaXRfZGVwdGggIT0gMTAp
Cj4gPiA+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiA+IEFzIHlvdSBzdGF0ZSBpbiB0aGUgY292ZXIg
bGV0dGVyLCBzaG91bGQgdGhpcyBqdXN0IGJlIHRoaXMgZm9yIG5vdyA/Cj4gCj4gVGhlIGRyaXZl
ciBjYW4gZGVjb2RlIDggb3IgMTAgYml0cyBiaXRzdHJlYW1zIGJ1dCB3aWxsIG9uIHByb2R1Y2Ug
OGJpdHMgKE5WMTJfNEw0IG9yIE5WMTIpCj4gZnJhbWVzLiBUaGUgaGFyZHdhcmUgaXMgYWJsZSB0
byB0cnVuY2F0ZSAxMGJpdHMgYml0c3RyZWFtcyB0byA4IGJpdHMgb3V0cHV0LgoKSSB0ZXN0ZWQg
dGhhdCwgYW5kIE5WMTIgd29ya3MsIHBpY2tpbmcgTlYxMl80TDQgdGhvdWdoIGxlYWRzIHRvIGNv
cnJ1cHRlZApidWZmZXJzLiBJIHRoaW5rIHRoZSBQUCBpcyBub3QgYmVpbmcgYWN0aXZhdGVkLiBH
Mi9WQzgwMDAgYW5kIGxpa2VseSBWQzkwMDAgY2FuCm9ubHkgcHJvZHVjZSB0aWxlIHJlZmVyZW5j
ZSBpbiB0aGUgb3JpZ2luYWwgZGVwdGggY2hvc2VuIChoZW5jZSB3aHkgaXQgZ29lcyBub3QKaGF2
ZSBhIGZvcm1hdCByZWdpc3RlciBsaWtlIEcxIGRvZXMpLgoKQXMgeW91IGFyZSBhd2FyZSwgdGhl
IGRyaXZlciBkaWRuJ3QgcGljayBOVjEyXzEwTEU0MF80TDQgYXV0b21hdGljYWxseSwgYW5kCnRo
YXQncyB3aGF0IGJyb2tlIGZsdXN0ZXIgMTBiaXQgdGVzdCBpbiB0aWxlZCBtb2RlIGZvciAxMGJp
dC4gSSBzdXNwZWN0IGluIHYyLAp3ZSdsbCBoYXZlIGFsbCB0aGlzIGZpeGVkIGFuZCAxMGJpdCB3
aWxsIGJlIGFjdGl2YXRlZCwgc28gdGhpcyBjb21tZW50IHdpbGwgYmUKaWdub3JlZC4KCj4gCj4g
PiAKPiA+IAo+ID4gPiArCQlpZiAoc2VxdWVuY2UtPmJpdF9kZXB0aCAhPSA4KQo+ID4gPiArCQkJ
cmV0dXJuIC1FSU5WQUw7Cj4gPiAKPiA+ID4gICAJfQo+ID4gPiArCj4gPiA+ICAgCXJldHVybiAw
Owo+ID4gPiAgIH0KPiA+ID4gICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
