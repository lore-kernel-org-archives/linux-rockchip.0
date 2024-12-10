Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7204CE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdG5UtPEN/2ZjwtSd+d1nzuNX4fJTOy72PH9tuWLRP4=; b=S7lz0OEs+eXodi
	t2FhWFn7Ut54xl2K2cbUqB/36lnjaI1LFWDACKwu25IwH4aRa0m3WyMjcouISLxW8ZMMHnqvpufsP
	2Od1KdsPaDw17FetgcCiamilHArakWoOz1Om3q3O+QZmeFdnYUcTMn7YORMIlH1xbJ2J1QxRb6ywp
	VAmOGPJec9IGEV+JTGbwcrlkDathN6Nr+apuhITZfI6J4Y2SZjOElaJUGXNwr4XN3bFgwkEU60/oH
	RjUM3KpCrJg0gvqWkkkwLw6dUGN6u3EGL6haxGTZ+QVEIJscg46H0Bz2CnF2BKYo8rRIv0TmYSFX6
	JttpzZv+iZZAZAYcbkGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL04F-0000000BYAW-1VtY;
	Tue, 10 Dec 2024 13:14:23 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKzv4-0000000BWh3-1Pt0;
	Tue, 10 Dec 2024 13:04:55 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5d0f6fa6f8bso7919009a12.0;
        Tue, 10 Dec 2024 05:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733835892; x=1734440692; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYMf51hbwh0y4SlVLJRmvMBBa3wNftbLie6alipMgHM=;
        b=MCgE+71FOkkjGTm+bKahF3fZPvTUiibYGW8WJoktD7saeH2/PhrfLeKUxa3rLQnpmS
         Z6082BZNLngGNM+Yqy2LVKafbCQWv/qqjsOiET5cHjoFJtWEDdd7hvRy5nGNmyqSaphf
         JShHpCrOax9r9d57a2CplZNQtIpnObOK4OhJviYAcCOJuNDjffTbcLCTL2Vs9/hismxa
         AtEVah7n/jPJgKNvNfYGTy0QdzhdwBvJF0EeWtwK36lKBdyQuoOqfdDED2r1RiAyUTIi
         el+OyFbADs88fFWTvW23m38nqF7e2tyPL+7Zz9oMlw1Hy8LCbwX0EUpXaK5+6/zWJE2K
         yRPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733835892; x=1734440692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eYMf51hbwh0y4SlVLJRmvMBBa3wNftbLie6alipMgHM=;
        b=LCi2CZAkLwA4x7762lo/3MZ3+CMN3NBWsv4CJZm0J21X0twgNF79bsSeOV/ovrUWJB
         QGKMu1EeACaPjJ6SgkBoqjRst1uXsVLy/0MH982iQmFFeH1FeSrXqIyjDGGPN7qRwWmH
         U0J8rQlH1Y4bmJOYK/CUTR+5PHaKKoMJ9Qwhov3LbosBth5Le3IAF+A0wnYi3iAu1t3Q
         Iy7v5WVn4De8DBiRugJ/Psq9A0KQ2e+T/Q4UnZs12l+LxApnnEnB5rkMIPqkFvbIMoOv
         ZAD7uwrSLeYZFSY6LcdR2QNFItfd6fTSRy1yZyPUKwqvun4FDi5kQsOPL49GdTwOjmaq
         1hog==
X-Forwarded-Encrypted: i=1; AJvYcCV0oBjFAHMNSdLA+kFRGMfNPKB2PE0RlmdlBSU5AstD6PG8Xcg69NgylRaeZmQbWiF14om8zO+ijJ+GsXVHyff9@lists.infradead.org, AJvYcCWdFYZnb9L52JipCm9+Q/FkViebXnbBq1wcDCbTZr36Qv6+hUMxznp56c5aXPDaNdqLyXjLeS11T4b9LrJeR3c=@lists.infradead.org
X-Gm-Message-State: AOJu0YwImIIBU7p3OmPDw+gvnAr8HRd0GN7RmBXPVFMMEdBcUOiJS+mf
	tAjK3xC2mnv1b211n1+isbufENYENpiw7V0hXIo5xSwzZTT8J17PiU6Qp5OoGbagxAoButfCPOe
	uyeJ8L7bXAOZW3XWzNGggPPJU6xY=
X-Gm-Gg: ASbGncv5VxCkxei97tylTMibVWZ7tsFCqZZHySZ6iMYqwlBvYK1qGjWO+ISNTFQAljt
	LV029pDVjIgMYoLz9vu5qVEqv1PCbpSmQxzhE62LpvU9vaU2u7NuInMRrzRk=
X-Google-Smtp-Source: AGHT+IGICcjixAzI2SIhHHtwX1o19IzdeFrNyrwuHTNzsJc3Mbcq6z2Y41yDiwu7RsNEQv44rmtawJBTP3F2DCV1BXs=
X-Received: by 2002:a05:6402:4005:b0:5d0:bdc1:75df with SMTP id
 4fb4d7f45d1cf-5d4185ff932mr5610289a12.24.1733835892180; Tue, 10 Dec 2024
 05:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-6-pgwipeout@gmail.com>
 <D67ZJ6MOM5TH.2WBYCCU20DDJO@cknow.org>
In-Reply-To: <D67ZJ6MOM5TH.2WBYCCU20DDJO@cknow.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 08:04:42 -0500
Message-ID: <CAMdYzYorTNiAybGhPu0u_YPj2J7qxCO72KBU1ozTde+2zK9Hxg@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: correct rk3328-roc regulator map
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Levin Du <djw@t-chip.com.cn>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_050454_373881_3FD38F77 
X-CRM114-Status: GOOD (  22.27  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNjozMeKAr0FNIERpZWRlcmlrIGRlIEhhYXMgPGRpZGku
ZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IFRoYW5rcyBmb3IgdGhp
cyBzZXJpZXMsIEkgYWxyZWFkeSBzYXcgc29tZSBmYW1pbGlhciBlcnJvciBtc2dzCj4gbWVudGlv
bmVkLCBzbyB3aWxsIHRyeSB0aGlzIHNlcmllcyBvdXQgc29vbiAodG0pLgo+Cj4gT24gVHVlIERl
YyAxMCwgMjAyNCBhdCAyOjMwIEFNIENFVCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IFRoZSByazMz
Mjgtcm9jLWNjIGlucHV0IHBvd2VyIGlzIHNvdXJjZWQgZnJvbSBhIG1pY3JvLXVzYiBwb3J0LCB3
aGlsZQo+ID4gdGhlIHJrMzMyOC1yb2MtcGMgaW5wdXQgcG93ZXIgaXMgc291cmNlZCBmcm9tIGEg
dXNiLWMgcG9ydC4gQm90aCBpbnB1dHMKPiA+IGFyZSA1dmRjIG9ubHkuIFJlbW92ZSB0aGUgMTJ2
IGlucHV0IGZyb20gdGhlIGRldmljZSB0cmVlLgo+ID4KPiA+IFdoaWxlIHdlIGFyZSBhdCBpdCwg
YWRkIG1pc3Npbmcgdm9sdGFnZXMgYW5kIHN1cHBseSB0byB2Y2NfcGh5LCBtaXNzaW5nCj4gPiB2
b2x0YWdlcyB0byB2Y2NfaG9zdDFfNXYsIGFuZCBzdGFuZGFyZGl6ZSB0aGUgb3JkZXIgb2YgcmVn
dWxhdG9yCj4gPiBwcm9wZXJ0aWVzIGFtb25nIHRoZSBmaXhlZCByZWd1bGF0b3JzLgo+Cj4gQmln
IGZhbiBvZiBzdGFuZGFyZGl6YXRpb24gOi0pIC4uLgo+Cj4gPgo+ID4gRml4ZXM6IDIxNzFmNGZk
YWMwNiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgcm9jLXJrMzMyOC1jYyBib2FyZCIpCj4g
PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4gLS0t
Cj4gPgo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpIHwg
MjMgKysrKysrKysrKysrKy0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1yb2MuZHRzaQo+ID4gaW5kZXggZjc4MmM4MjIwZGQzLi42OTg0Mzg3ZmY4YjMg
MTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2Mu
ZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0
c2kKPiA+IEBAIC0yNCwyMiArMjQsMjMgQEAgZ21hY19jbGtpbjogZXh0ZXJuYWwtZ21hYy1jbG9j
ayB7Cj4gPiAgICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICAgICAgIH07Cj4g
Pgo+ID4gLSAgICAgZGNfMTJ2OiByZWd1bGF0b3ItZGMtMTJ2IHsKPiA+ICsgICAgIC8qIGZlZCBm
cm9tIHBhc3NpdmUgdXNiIGlucHV0IGNvbm5lY3RvciAqLwo+ID4gKyAgICAgZGNfNXY6IHJlZ3Vs
YXRvci1kYy01diB7Cj4gPiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZp
eGVkIjsKPiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiZGNfMTJ2IjsKPiA+ICsg
ICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiZGNfNXYiOwo+ID4gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsK
PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTIwMDAwMDA+Owo+
ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4g
PiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4g
KyAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ICAg
ICAgIH07Cj4gPgo+ID4gICAgICAgdmNjX3NkOiByZWd1bGF0b3Itc2RtbWMgewo+ID4gICAgICAg
ICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiArICAgICAgICAgICAg
IHJlZ3VsYXRvci1uYW1lID0gInZjY19zZCI7Cj4gPiAgICAgICAgICAgICAgIGdwaW8gPSA8Jmdw
aW8wIFJLX1BENiBHUElPX0FDVElWRV9MT1c+Owo+ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnNkbW1jMG0x
X3Bpbj47Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gLSAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc2QiOwo+ID4gICAgICAgICAgICAgICByZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkg
PSA8JnZjY19pbz47Cj4KPiAuLi4gYnV0IHdoeSBub3QgcHV0IHJlZ3VsYXRvci1uYW1lIGFzIHRo
ZSBmaXJzdCBvZiB0aGUgcmVndWxhdG9yCj4gcHJvcGVydGllcyBhcyBpcyBkb25lIGluIHRoZSBy
azMzMjgtcm9jazY0LmR0cyAuLi4KPgo+ID4gQEAgLTUwLDIyICs1MSwyNSBAQCB2Y2Nfc2Rpbzog
cmVndWxhdG9yLXNkbW1jaW8gewo+ID4gICAgICAgICAgICAgICBzdGF0ZXMgPSA8MTgwMDAwMCAw
eDE+LCA8MzMwMDAwMCAweDA+Owo+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2
Y2Nfc2RpbyI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci10eXBlID0gInZvbHRhZ2UiOwo+
ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiA+ICAgICAgICAgICAgICAgcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiAtICAgICAgICAgICAgIHJlZ3Vs
YXRvci1hbHdheXMtb247Cj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjY19zeXM+
Owo+ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICB2Y2NfaG9zdDFfNXY6IHZjY19vdGdfNXY6IHJl
Z3VsYXRvci12Y2MtaG9zdDEtNXYgewo+ID4gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJl
Z3VsYXRvci1maXhlZCI7Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY19o
b3N0MV81diI7Cj4gPiAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ICAgICAg
ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICAgICAgICAgICAgICAgcGlu
Y3RybC0wID0gPCZ1c2IyMF9ob3N0X2Rydj47Cj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1u
YW1lID0gInZjY19ob3N0MV81diI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMt
b247Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+
Owo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsK
PiA+ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4gPiAgICAgICB9Owo+
Cj4gLi4uIGFuZCB3YXMgdGhlIGNhc2UgaGVyZT8KClRoYXQncyBmYWlyLCB0aGFuayB5b3UuIEkg
bGlrZSB0aGUgYWxwaGFiZXRpY2FsIGFwcHJvYWNoLCBJJ2xsIGdvIHRoYXQKd2F5IHdoZW4gSSBz
cGxpdCB0aGlzIG91dC4KCj4KPiBDaGVlcnMsCj4gICBEaWVkZXJpawo+Cj4gPgo+ID4gKyAgICAg
Lyogc291cmNlZCBmcm9tIHVzYiBpbnB1dCB0aHJvdWdoIDNBIGZ1c2UgKi8KPiA+ICAgICAgIHZj
Y19zeXM6IHJlZ3VsYXRvci12Y2Mtc3lzIHsKPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2
Y2Nfc3lzIjsKPiA+IEBAIC03Myw3ICs3Nyw3IEBAIHZjY19zeXM6IHJlZ3VsYXRvci12Y2Mtc3lz
IHsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiAgICAgICAgICAgICAg
IHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+IC0gICAgICAgICAgICAgdmlu
LXN1cHBseSA9IDwmZGNfMTJ2PjsKPiA+ICsgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmZGNf
NXY+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICB2Y2NfcGh5OiByZWd1bGF0b3ItdmNjLXBo
eSB7Cj4gPiBAQCAtODEsNiArODUsOSBAQCB2Y2NfcGh5OiByZWd1bGF0b3ItdmNjLXBoeSB7Cj4g
PiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY19waHkiOwo+ID4gICAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItYm9v
dC1vbjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAw
MD47Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+
Owo+ID4gKyAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2NfaW8+Owo+ID4gICAgICAgfTsK
PiA+Cj4gPiAgICAgICBsZWRzIHsKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
