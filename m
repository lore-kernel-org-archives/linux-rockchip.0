Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C68ACD41C33
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 11:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fl/fvsSge5HCErwFOEsnMGXCr9ninvaj/6RehR32KI=; b=SHCn1YB9SsEcPu
	0K735qGitkjY1k5bBK9d7Jl9UqlG4517X8HCcRuGkp/frd2upYVaqpcZn8Cc89gOW9K2FgsOeOHj+
	wzxYnNswx5Ob2gNdaX/yqXoLFPQWzY4KsnxPDFtuRRvMPNhAvgYtPYaMS2T06V18sP6GL0ieoguzc
	943S7HTIxYk6EML41pHGVRXsezSTIoLzXNsonDZWqx64gu5NyqPZ+a5DVeK/cdk0AumoqyVyq8Hi8
	3KhFmqGr2Wd3MtPOaxj26N3AeazcrDGTnqam9sSPTuRR04Vb+kU7FA0IHHeqAiuZNN5FTjzP+fQsG
	+7lpbYRiwzsfl0o1t0uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBBPC-00000006ZpS-3GdC;
	Wed, 13 Nov 2024 11:19:26 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBBNO-00000006ZZF-32nQ;
	Wed, 13 Nov 2024 11:17:36 +0000
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7cd8803fe0aso4517443a12.0;
        Wed, 13 Nov 2024 03:17:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731496653; x=1732101453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VoVwZM5PK/KUvFOBHI86j/rHYVrm+oOdI9cHG70GtxE=;
        b=IG9xzqaWHBQwGa5Un+oZ3GxOA4pEd8daQ7nATgFkof/n35O3fb8DPNF4DnTkNUKX6E
         Yjwp+N2i5cozMlaQnmTnz9vPhddPVgg1RjiXoMuJIJ24j0hi8uDQgpfufSFtgTq2PAvE
         ZATdQ2WBedZxtEhWllR7wesJFpQCUf+9Ka8UVNnIOMf70gosRoyy7R8BmZnzi6OgBDWH
         P7fa3FhgrHt435SiyLJcRRzcI5gdejFKOBwuDzGtxvI6HwmEyE1kNZoCQUYaEiwHq6CQ
         ENC7OnDCHZBTNs4LTD6d++LUevCRw4j27GlJUn7wVuR+QriMjFobTEdVS9UMTR3UG7f1
         dwhA==
X-Forwarded-Encrypted: i=1; AJvYcCU02I7iE29z5tB1I20fdAIyRMnXikoJgzGJ7J7Lg9IYhLjR8ccWcGUTcifMiDrDUDs8vrM1v+kjpyidDAUETWrt@lists.infradead.org, AJvYcCW8FUOM0dtGaDNDciN35CUs0PqiFGbz9k7uyYSxomzr6owULw6lT6VjYJnrll55Bi33cc3HM8brEd6vQdLsWvA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKnrxrNO3/QgbHQhkYIIuue951GJwrglNyMfh2iujPfCN0F+9j
	yYGaZpmPVvfNDPp356HzglRYAOrdpW+2TeXTxwZ3eN9rwkSjNp4ns/cagtVs
X-Google-Smtp-Source: AGHT+IGxch5r+AmptspRc9tOqjYnt7QUEgnomn9SiPf7rZlpBETYpMYjlLGBYPOPuRm3fD4YHUpEdA==
X-Received: by 2002:a17:90b:35c9:b0:2e2:8fb4:502d with SMTP id 98e67ed59e1d1-2e9e4adeffcmr8417078a91.16.1731496653343;
        Wed, 13 Nov 2024 03:17:33 -0800 (PST)
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com. [209.85.210.175])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f3f4fe47sm1218214a91.52.2024.11.13.03.17.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 03:17:33 -0800 (PST)
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-71ec997ad06so5640433b3a.3;
        Wed, 13 Nov 2024 03:17:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUN65E4wtVgGKmi2MfVRocrGyyEv9j7oZff0rO7MAB5kcQETty68cWPJQ8XOeS9pO+9VkhnGXjPBw5Slw5udMfz@lists.infradead.org, AJvYcCXY7whX3vDyaT4xe1BUVLR7hQ7nA1WMYKICYmtkk45I1MLEdYthiKvV03ySi+Nwha5lWSbF217w/FJ+LOovBts=@lists.infradead.org
X-Received: by 2002:a05:6a20:a125:b0:1db:d83e:df34 with SMTP id
 adf61e73a8af0-1dc5f8cc25cmr7381994637.8.1731496652970; Wed, 13 Nov 2024
 03:17:32 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se> <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
 <9330ebb370780c001fd2aaee49aec9e8@manjaro.org> <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
 <0eb19e4daf2cdf3d4a04935876c3d3b0@manjaro.org> <CA+Gksr+E-tZe4sKVNa8zpATwdTW_DiOQxOf_Jujf5SURzhSPSg@mail.gmail.com>
 <dc628e6e50239aac65a4424738000612@manjaro.org>
In-Reply-To: <dc628e6e50239aac65a4424738000612@manjaro.org>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Wed, 13 Nov 2024 12:17:20 +0100
X-Gmail-Original-Message-ID: <CA+GksrJCJRW43ex8u3hD-aQ7YdDrTtaNRXGjer6ROFh2N8P3XQ@mail.gmail.com>
Message-ID: <CA+GksrJCJRW43ex8u3hD-aQ7YdDrTtaNRXGjer6ROFh2N8P3XQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_031734_787114_04ABFAF3 
X-CRM114-Status: GOOD (  34.65  )
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

SGkgRHJhZ2FuLAoKT24gV2VkLCBOb3YgMTMsIDIwMjQgYXQgMTE6MzjigK9BTSBEcmFnYW4gU2lt
aWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBUYW1hcywKPgo+IE9uIDIw
MjQtMTEtMTMgMTE6MjQsIFRhbcOhcyBTesWxY3Mgd3JvdGU6Cj4gPiBPbiBXZWQsIE5vdiAxMywg
MjAyNCBhdCAxMjoyNeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPgo+ID4g
d3JvdGU6Cj4gPj4gT24gMjAyNC0xMS0xMiAyMjowNCwgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiA+
PiA+IE9uIFR1ZSwgTm92IDEyLCAyMDI0IGF0IDQ6MDfigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4KPiA+PiA+IHdyb3RlOgo+ID4+ID4+IFBsZWFzZSBjb3JyZWN0IG1lIGlm
IEknbSB3cm9uZywgYnV0IGlzbid0IHRoaXMgVUFSVCBzdXBwb3NlZCB0byBiZQo+ID4+ID4+IHVz
ZWQgZm9yIHRoZSBCbHVldG9vdGggcGFydCBvZiBhbiBTRElPIFdpRmkgKyBCbHVldG9vdGggbW9k
dWxlLCBpbgo+ID4+ID4+IGZvcm0gb2YgYSBub24tc3RhbmRhcmQgTS4yIG1vZHVsZSB0aGF0IFJh
ZHhhIHNlbGxzPwo+ID4+ID4KPiA+PiA+IFVBUlQ4IGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQgZm9y
IGFueSByYWRpbyBtb2R1bGUgY29ubmVjdGVkIHRvIHRoZSBNMkUKPiA+PiA+IGNvbm5lY3Rvci4K
PiA+PiA+IEl0IHdpbGwgdHlwaWNhbGx5IGJlIHJlc3BvbnNpYmxlIGZvciBCbHVldG9vdGggb3Ig
QkxFIGJ1dCBpdCBjb3VsZCBiZQo+ID4+ID4gODAyLjE1LjQgb3Igd2hhdGV2ZXIuIEluIGFueSBj
YXNlLCBhbGwgd2FudGluZyB0byB1c2UgaXQgd2lsbCBuZWVkIHRoZQo+ID4+ID4gdWFydDggbm9k
ZSBlbmFibGVkLgo+ID4+Cj4gPj4gSSBzZWUsIGJ1dCBJJ20gc3RpbGwgZ3Vlc3Npbmcgd2hhdCdz
IHRoZSBhY3R1YWwgdXNlIG9mIGVuYWJsaW5nIHRoZQo+ID4+IFVBUlQ4IHdoZW4gaXQgd2lsbCBy
ZW1haW4gcHJldHR5IG11Y2ggdXNlbGVzcyB3aXRob3V0IHRoZSBhZGRpdGlvbmFsCj4gPj4gRFQg
Y29uZmlndXJhdGlvbiwgc3VjaCBhcyBpbiB0aGUgV2lGaStCbHVldG9vdGggRFQgb3ZlcmxheSB0
aGF0IEpvbmFzCj4gPj4gc2VudCBhIGJpdCBlYXJsaWVyPwo+ID4KPiA+IFRoZSBhY3R1YWwgdXNl
IGlzIGRldmljZSBlbmFibGVtZW50Lgo+Cj4gSG1tLCBJJ2xsIG5lZWQgdG8gdGhpbmsgbW9yZSBh
Ym91dCBob3cgaXQgZml0cyB0b2dldGhlci4KPgo+ID4+IEkgdGhpbmsgdGhhdCB0aGUgVUFSVDgg
c2hvdWxkIGJlIGVuYWJsZWQgdG9nZXRoZXIgd2l0aCBzb21ldGhpbmcgdGhhdAo+ID4+IGFjdHVh
bGx5IG1ha2VzIHVzZSBvZiBpdCwgd2hpY2ggaW4gdGhpcyBjYXNlIHVuZm9ydHVuYXRlbHkgY2Fu
bm90IGJlCj4gPj4gYXV0b21hdGljYWxseSBkZXRlY3RlZCBhbmQgY29uZmlndXJlZCwgc28gaXQg
YmVsb25ncyB0byBhIERUIG92ZXJsYXkuCj4gPj4gSSdsbCBnZXQgYmFjayB0byB0aGlzIGluIG15
IG5leHQgcmVzcG9uc2UuCj4gPgo+ID4gSSBhZ3JlZSwgYmx1ZXRvb3RoIGJsb2NrcyBkZWRpY2F0
ZWQgdG8gc3BlY2lmaWMgbW9kdWxlcyBzaG91bGQgYmVsb25nCj4gPiB0byBEVCBvdmVybGF5cy4K
PiA+Cj4gPj4gPj4gV2l0aCB0aGF0IGluIG1pbmQsIEkgc2VlIHZlcnkgbGl0dGxlIHNlbnNlIGlu
IGp1c3QgZW5hYmxpbmcgdGhlIFVBUlQsCj4gPj4gPj4gd2l0aG91dCBkZWZpbmluZyB0aGUgZW50
aXJlIEJsdWV0b290aCBpbnRlcmZhY2UsIHdoaWNoIEFGQUlLIHByb2R1Y2VzCj4gPj4gPgo+ID4+
ID4gRGVmaW5pbmcgYSBibHVldG9vdGggbm9kZSB3b3VsZCBoYXJkd2lyZSBpZGlvc3luY3Jhc2ll
cyBvZiBhIGdpdmVuCj4gPj4gPiByYWRpbyBtb2R1bGUncyBCbHVldG9vdGggY29yZS4gU3VyZSB5
b3UgY291bGQgYWRkIGEgc2xlZXAgY2xvY2ssIGFsbAo+ID4+ID4ga2luZCBvZiBzaWRlYmFuZCBz
aWduYWxzIGZvciB3YWtldXBzLCByZXNldCwgcG93ZXIgZG93biwgZXRjLiBCdXQgaGV5LAo+ID4+
ID4gc29tZSB3aWxsIHVzZSB0aGVtLCBzb21lIHdvbid0LiBJIHRoaW5rIGl0J3MgdW5kZXNpcmFi
bGUgYW5kCj4gPj4gPiB1bm5lY2Vzc2FyeS4gWW91IGNhbiBoY2lhdHRhY2ggZnJvbSBoZXJlIGFu
ZCBtb3N0IHdpbGwgd29yayBqdXN0IGxpa2UKPiA+PiA+IHRoYXQuIFRpZ2h0ZXIgaW50ZWdyYXRp
b24gb3IgYW55dGhpbmcgc3BlY2lhbCwgbW9kdWxlIHNwZWNpZmljIG9uIHRvcAo+ID4+ID4gc2hv
dWxkIGJlIGhhbmRsZWQgaW5kaXZpZGlhbGx5LCBvbiBhIGNhc2UtYnktY2FzZSBiYXNpcy4gVGhp
cyBpcyBhIGRldgo+ID4+ID4gYm9hcmQgYWZ0ZXIgYWxsLiBJIHNheSB0cmljayBvZiBhbGwgdHJh
ZGVzLgo+ID4+ID4KPiA+PiA+PiBuYXN0eSBsb29raW5nIGVycm9yIG1lc3NhZ2VzIGluIHRoZSBr
ZXJuZWwgbG9nIHdoZW4gdGhlcmUncyBhY3R1YWxseQo+ID4+ID4+IG5vdGhpbmcgY29ubmVjdGVk
IHRvIHRoZSBVQVJULgo+ID4+ID4KPiA+PiA+IE15IGRtZXNnIGlzIGNsZWFuIGFzIGEgd2hpc3Rs
ZQo+ID4+ID4gcm9vdEByb2NrLTNiOn4jIGRtZXNnIHwgZ3JlcCAtRSAnZmU2YzAwMDB8dHR5UzAn
Cj4gPj4gPiBbICAgIDAuMzQ0ODE4XSBmZTZjMDAwMC5zZXJpYWw6IHR0eVMwIGF0IE1NSU8gMHhm
ZTZjMDAwMCAoaXJxID0gMjYsCj4gPj4gPiBiYXNlX2JhdWQgPSAxNTAwMDAwKSBpcyBhIDE2NTUw
QQo+ID4+ID4gV2hhdCBraW5kIG9mIG5hc3R5IGVycm9ycyBkbyB5b3UgcmVjYWxsPwo+ID4+Cj4g
Pj4gVGhvc2Ugd291bGQgYmUgdGhlIGtlcm5lbCBlcnJvciBtZXNzYWdlcyBwcm9kdWNlZCB3aXRo
IHRoZSBCbHVldG9vdGgKPiA+PiBEVCBjb25maWd1cmF0aW9uIGluIHBsYWNlLCBidXQgd2l0aCBu
byBTRElPIG1vZHVsZSBpbnN0YWxsZWQuCj4gPgo+ID4gVGhlc2UgYXJlIHRoZSBrZXJuZWwgbWVz
c2FnZXMgcmVsYXRlZCB0byBVQVJUOCB3aXRoIHRoZSB1YXJ0OCBEVCBub2RlCj4gPiBlbmFibGVk
IGFuZCBhbiBTRElPIG1vZHVsZSBpbnN0YWxsZWQuCj4KPiBPdXQgb2YgY3VyaW9zaXR5LCB3aGF0
IE0uMiBtb2R1bGUgYXJlIHlvdSB0ZXN0aW5nIGl0IHdpdGg/CgpodHRwczovL3d3dy51LWJsb3gu
Y29tL2VuL3Nob3J0LXJhbmdlLXJhZGlvLW1vZHVsZXMjSG9zdC1iYXNlZAphbmQgc29tZSBtb3Jl
IHlvdSBkb24ndCBzZWUgaGVyZS4KCktpbmQgcmVnYXJkcywKVGFtYXMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
