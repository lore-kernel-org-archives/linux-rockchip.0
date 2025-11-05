Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029EDCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 11:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq9mV7A8LGx08jzr8ecG+ZwoBrhmqx8/V5ucuk9bofg=; b=Ll7XeUGf9PPwT0
	/rdusN2EzAclehjszd2TKZOyseQ7IO0QHDIATZpKSCK7yQn7ae0cTKFd9ZtnuE75khQYVzDpUjcJs
	RiJiebW1aUXfiwDy/fE5Mlz4jskQZhaG4dFCyXJk5o6tisG1y8a2Shdi6wJO7M3iIqCS+7vWOz22G
	zhJCQu9VuyxEjpJSOP45PtkqMlg8/zd/ThJHm75DQhDfRbHfs7QT5rySuMZO+1889GLHSmEY0Dezy
	B8OGsbYFV6sykKJLwcA3fDUyMVi+zGyjaPf1SkJ/AkBdeBJTs+MYXQW/OeN8gosKupWfy/EWbR/qM
	Fwv7Nt2vozkSQC719HxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGcAp-0000000DZdc-3Fuf;
	Wed, 05 Nov 2025 11:59:35 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGcAn-0000000DZcs-2FR0
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 11:59:34 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-64074f01a6eso11039155a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 03:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762343970; x=1762948770; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGA4yt8JGp+St6is/Io1asPfAbg43aJnzQEEcQdlRFo=;
        b=e0eDOnngTcyH5pqjQqc8MmghkQvU618fkvJ7sxz4972BE9v9uVopws2qaskPXGjhM5
         LUn3pov7jXoqLAa5rcGsfont4ujAJV9tFi9Ss7XVTkF82Om84I00ptpNtv68YyFp9mbw
         k7lU1Gg7HvAVrmtgSlwFR+4QwOyEB3c5GusnbNGWd1/NEH9LY+kb1VJSZbhooYmRjUBP
         AKCTDOnFnaY5YbcYVwTMFiT7Yy8vl8E9kUpEgFmDLJkYTeq1k/zVS0V8vp5uQ8eTkV6F
         mM0nc8ocUaxxegOEEb5DJOmGHjyRnmkbFfxn1tI0CXXAsPJjrL9Nk98r3sY0yquVlAFa
         U5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762343970; x=1762948770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGA4yt8JGp+St6is/Io1asPfAbg43aJnzQEEcQdlRFo=;
        b=hReqvEK2iQdNb+kl8mSXNk7n/TvMDZLemD4XsxkbCMerqb1jekHT7Lkq6VYZ5OD8mP
         cg+qk/1kqvmu55bWQ3gQU/wh0ZZfOqkHPplnJA8ZOVa82uwxqU/0B1lqd/lzfr/uLmo9
         7d+EDOAegyBmhAY/PWNKCirJFN7DL8UMO5jY9Xa3S8fZ2bnWXBxrWNwGw1YGHU4iAy2C
         TjSJHDaNxXXB1JmYBEwwhmzeXiTYdZ6EoaScfeveZ09K1+k6JjqmeBGWFZ6JUVqTJml4
         LYeXiZ7K9bhegRV5t7yB+1M29AhT0aLP+DrNJ5PRpNKllaRL+uS3pUSam2LDZYU8Z7ac
         daFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMwLlk1wcIQCm7kSeg9e64GsgtX0UD2flemvGSe4fX320dStMYJgMavwSL8xo5nSvBFm/71K7QJaqzPhW9pQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUigTiZNnZkplh887VnjsLlP78+PzB8kihlZF8qMtwNqJf7nPI
	IFTbvterjkWw44AV6kkrh2HNX8ggk1YNURgR7aB2cA3PzsSK+4tp7FY/3feqVOr79OkZnStZ95s
	wkI7msOrSyhVkJAUHfRBrrkw9aBOXoPA=
X-Gm-Gg: ASbGncsnWlpK5XLpxKV9IQoyHFANce6gjK3aBoFBjlfFdCjKrRwTtc4W8Zyeeotklg0
	MImCRufMhlKWs/lMq8D7QDm1SmPnxrrM3+1PZsyI1ZVFXu8lioDDb6isSt5ULCU9tYVjqahWxME
	OjCJ8f9E9r53DL7Pcadtr/ME9bMO/9PpBwL05EJLBdkafzl4EHJj6VVLSc9njcfv0cMaF7aSRPX
	S5zaRAtl5yuK0iX87qebeynY0yWDHD/2Xggimc66V0lOADHOAWsdw6bLU0=
X-Google-Smtp-Source: AGHT+IHz+PW+hI6DHk/+yycP53/owJKFK51FLmbG3Xn9iePHYqTjIDevvgVm2fd1OHm0B5cu1KiyF7i4XCTMNvcSxeY=
X-Received: by 2002:a05:6402:50c8:b0:63c:1e15:b9fb with SMTP id
 4fb4d7f45d1cf-64105a4c967mr2540436a12.22.1762343970155; Wed, 05 Nov 2025
 03:59:30 -0800 (PST)
MIME-Version: 1.0
References: <20251017073954.130710-1-cnsztl@gmail.com> <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com> <10751338.nUPlyArG6x@phil> <e52de2b5-bf10-ce0e-66b7-66b1c46525f3@manjaro.org>
In-Reply-To: <e52de2b5-bf10-ce0e-66b7-66b1c46525f3@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 5 Nov 2025 17:29:12 +0530
X-Gm-Features: AWmQ_bkTo815Ekf1XKwqKW52Tftmcvjv3vglHmEOmCXrknL0gcm_NsK2eBkal2U
Message-ID: <CANAwSgRXwozYr8sYtV8RRb1jJAb=9VNPfsLGMmW=f38XV-u=MQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Jonas Karlman <jonas@kwiboo.se>, 
	Jianfeng Liu <liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_035933_600873_37CED822 
X-CRM114-Status: GOOD (  33.83  )
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

SGkgQWxsLAoKT24gU2F0LCAxIE5vdiAyMDI1IGF0IDE4OjIxLCBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBIZWlrbywKPgo+IE9uIFNhdHVyZGF5LCBO
b3ZlbWJlciAwMSwgMjAyNSAxMjo1NCBDRVQsIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IHdyb3RlOgo+ID4gQW0gTW9udGFnLCAyNy4gT2t0b2JlciAyMDI1LCAxODozNDoyNSBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFRpYW5saW5nIFNoZW46Cj4gPiA+IE9u
IDIwMjUvMTAvMjAgMTI6NDQsIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPiA+ID4gT24gMjAyNS8x
MC8yMCA5OjUzLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+ID4+IE9uIDIwMjUvMTAvMTcgRnJpZGF5
IDE1OjM5LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+ID4gPiA+Pj4gRnJvbTogR3J6ZWdvcnogU3Rl
cm5pY3p1ayA8Z3J6ZWdvcnpAc3Rlcm5pY3oudWs+Cj4gPiA+ID4+Pgo+ID4gPiA+Pj4gU29tZSBO
YW5vUEMtVDYgYm9hcmRzIHdpdGggQTNBNDQ0IGVNTUMgY2hpcHMgZXhwZXJpZW5jZSBJL08gZXJy
b3JzIGFuZAo+ID4gPiA+Pj4gY29ycnVwdGlvbiB3aGVuIHVzaW5nIEhTNDAwIG1vZGUuIERvd25n
cmFkZSB0byBIUzIwMCBtb2RlIHRvIGVuc3VyZQo+ID4gPiA+Pj4gc3RhYmxlIG9wZXJhdGlvbi4K
PiA+ID4gPj4KPiA+ID4gPj4gTWF5IEkgYXNrIHlvdSB0byB0ZXN0IGFub3RoZXIgcGF0Y2ggSSBq
dXN0IHBvc3RlZCB0byBzZWUgaWYgaXQgZml4ZXMKPiA+ID4gPj4geW91ciBpc3N1ZT8KPiA+ID4g
Pj4KPiA+ID4gPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LW1t
Yy8KPiA+ID4gPj4gcGF0Y2gvMTc2MDkyNDk4MS01MjMzOS0xLSBnaXQtc2VuZC1lbWFpbC1zaGF3
bi5saW5Acm9jay1jaGlwcy5jb20vCj4gPiA+ID4KPiA+ID4gPiBUaGFuayB5b3UgZm9yIHRoZSBw
YXRjaCEgSSB3aWxsIGFzayBteSBmcmllbmQgdG8gdGVzdCBpdCBidXQgaGUgdXNlcwo+ID4gPiA+
IHRoaXMgYm9hcmQgYXMgYSBob21lIHJvdXRlciwgc28gaXQgbWF5IHRha2UgYSBmZXcgZGF5cyBv
ciB3ZWVrcyB0bwo+ID4gPiA+IHJlcG9ydCB0aGUgcmVzdWx0Lgo+ID4gPgo+ID4gPiBIaSBhbGws
IHNvcnJ5IGZvciB0aGUgbGF0ZS4gTXkgZnJpZW5kIGhhcyB0ZXN0ZWQgdGhpcyBwYXRjaCBhbmQg
aXQgd29ya3MKPiA+ID4gZmluZSBhZnRlciA1MCB0aW1lcyBkZCBvcGVyYXRpb24uIEEgYmlnIHRo
YW5rcyB0byBTaGF3biEKPiA+Cj4gPiBTbyBJIGd1ZXNzLCB3ZSBkb24ndCBuZWVkIHRoZSBwYXRj
aCByZWR1Y2luZyB0aGUgc3BlZWQgYW55bW9yZSwgcmlnaHQ/Cj4KPiBFeGFjdGx5LCB0aGUgYXBw
cm9hY2ggb2YgbG93ZXJpbmcgdGhlIHNwZWVkIG9mIGVNTUMgdG8gaW1wcm92ZQo+IGl0cyByZWxp
YWJpbGl0eSBpcyBubyBsb25nZXIgbmVlZGVkLCB0aGFua3MgdG8gU2hhd24gY29ycmVjdGluZwo+
IHRoZSBETExfU1RSQklOX1RBUE5VTV9ERUZBVUxUIHZhbHVlIGluIHRoZSBhYm92ZS1saW5rZWQg
cGF0Y2guCj4KPiBXZSBqdXN0IG5lZWQgdG8gdGVzdCBkb2VzIEhTNDAwIHdvcmsgb24gdGhlIFJP
Q0sgNSBJVFggcmVsaWFibHkKPiBhcyB3ZWxsLCBzbyB0aGUgcHJldmlvdXMgbG93ZXJpbmcgdG8g
SFMyMDAgaW4gY29tbWl0IGIzNjQwMmU0YTA3Nwo+ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IHNs
b3cgZG93biBlbW1jIGZyZXEgZm9yIHJvY2sgNSBpdHgiLCAyMDI1LQo+IDAyLTI4KSBjb3VsZCBi
ZSByZXZlcnRlZCBhcyBubyBsb25nZXIgbmVlZGVkLgo+Cj4gPiA+IEFuZCBoaSBKaWFuZmVuZywg
SSBmb3VuZCB5b3UgbWFkZSBhIHNpbWlsaWFyIHBhdGNoWzFdIGZvciB0aGUgUk9DSyA1IElUWAo+
ID4gPiBib2FyZCB0byBsb3dlciBkb3duIHRoZSBtbWMgc3BlZWQsIGNvdWxkIHlvdSBwbGVhc2Ug
Y2hlY2sgaWYgdGhpcyBwYXRjaAo+ID4gPiBhbHNvIGZpeGVzIHlvdXIgaXNzdWU/Cj4gPiA+Cj4g
PiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MDIyODE0
MzM0MS43MDI0NC0xLWxpdWppYW5mZW5nMTk5NEBnbWFpbC5jb20vCj4gPiA+Cj4gPiA+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4K
PiA+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+
Cj4gPiA+ID4+PiAtLS0KPiA+ID4gPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtbmFub3BjLXQ2LmR0c2kgfCAzICstLQo+ID4gPiA+Pj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4+Pgo+ID4gPiA+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNp
IGIvCj4gPiA+ID4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+ID4gPiA+Pj4gaW5kZXggZmFmZWFiZTlhZGY5Li41ZjYzZjM4ZjczMjYgMTAwNjQ0
Cj4gPiA+ID4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5v
cGMtdDYuZHRzaQo+ID4gPiA+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtbmFub3BjLXQ2LmR0c2kKPiA+ID4gPj4+IEBAIC03MTcsOCArNzE3LDcgQEAgJnNkaGNp
IHsKPiA+ID4gPj4+ICAgICAgIG5vLXNkOwo+ID4gPiA+Pj4gICAgICAgbm9uLXJlbW92YWJsZTsK
PiA+ID4gPj4+ICAgICAgIG1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKPiA+ID4gPj4+IC0g
ICAgbW1jLWhzNDAwLTFfOHY7Cj4gPiA+ID4+PiAtICAgIG1tYy1oczQwMC1lbmhhbmNlZC1zdHJv
YmU7Cj4gPiA+ID4+PiArICAgIG1tYy1oczIwMC0xXzh2Owo+ID4gPiA+Pj4gICAgICAgc3RhdHVz
ID0gIm9rYXkiOwo+ID4gPiA+Pj4gICB9Owo+CllvdSBjYW4gYWxzbyB0cnkgdGhpcyBwYXRjaCwg
d2hpY2ggZW5hYmxlcyBzdG9iZXIgaW4gdGhlIGVNTUMgY29udHJvbGxlci4uCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKYi9kcml2ZXJzL21tYy9ob3N0
L3NkaGNpLW9mLWR3Y21zaGMuYwppbmRleCBlZWJkNDUzODk5NTYuLjYyYzlmYWY4ZWM4NSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKKysrIGIvZHJpdmVy
cy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKQEAgLTc3LDYgKzc3LDEwIEBACiAjZGVmaW5l
IENWMThYWF9SRVRSWV9UVU5JTkdfTUFYICAgICAgICAgICAgICAgICAgICAgICAgNTAKCiAvKiBS
b2NrY2hpcCBzcGVjaWZpYyBSZWdpc3RlcnMgKi8KKyNkZWZpbmUgRFdDTVNIQ19FTU1DX0NUUkwg
ICAgICAgICAgICAgIDB4NTJjCisjZGVmaW5lICBFTU1DX0NUUkxfQ0FSRF9JU19FTU1DICAgICAg
ICBCSVQoMCkKKyNkZWZpbmUgIEVNTUNfQ1RSTF9FTkhfU1RST0JFX0VOQUJMRSAgIEJJVCg4KQor
CiAjZGVmaW5lIERXQ01TSENfRU1NQ19ETExfQ1RSTCAgICAgICAgICAweDgwMAogI2RlZmluZSBE
V0NNU0hDX0VNTUNfRExMX1JYQ0xLICAgICAgICAgMHg4MDQKICNkZWZpbmUgRFdDTVNIQ19FTU1D
X0RMTF9UWENMSyAgICAgICAgIDB4ODA4CkBAIC02NjAsNiArNjY0LDEyIEBAIHN0YXRpYyB2b2lk
IGR3Y21zaGNfcmszNTY4X3NldF9jbG9jayhzdHJ1Y3QKc2RoY2lfaG9zdCAqaG9zdCwgdW5zaWdu
ZWQgaW50IGNsb2NrCiAgICAgICAgICAgICAgICAgICAgICAgIERMTF9DTURPVVRfVEFQTlVNXzkw
X0RFR1JFRVMgfAogICAgICAgICAgICAgICAgICAgICAgICBETExfQ01ET1VUX1RBUE5VTV9GUk9N
X1NXOwogICAgICAgICAgICAgICAgc2RoY2lfd3JpdGVsKGhvc3QsIGV4dHJhLCBERUNNU0hDX0VN
TUNfRExMX0NNRE9VVCk7CisKKyAgICAgICAgICAgICAgIGV4dHJhID0gc2RoY2lfcmVhZGwoaG9z
dCwgRFdDTVNIQ19FTU1DX0NUUkwpOworICAgICAgICAgICAgICAgaWYgKGV4dHJhICYgRU1NQ19D
VFJMX0NBUkRfSVNfRU1NQykgeworICAgICAgICAgICAgICAgICAgICAgICBleHRyYSB8PSBFTU1D
X0NUUkxfRU5IX1NUUk9CRV9FTkFCTEU7CisgICAgICAgICAgICAgICAgICAgICAgIHNkaGNpX3dy
aXRlbChob3N0LCBleHRyYSwgRFdDTVNIQ19FTU1DX0NUUkwpOworICAgICAgICAgICAgICAgfQog
ICAgICAgIH0KCiAgICAgICAgZXh0cmEgPSBEV0NNU0hDX0VNTUNfRExMX0RMWUVOQSB8CgpUaGFt
a3MKLUFuYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
