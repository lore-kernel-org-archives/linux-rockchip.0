Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCD4DC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 10:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nd+52zDict8LSiGs96Z97DGKyx+MYpzov2PwBPfw0Wo=; b=FUr0RVdzqSyml8
	uTiQRpWcCyfxbDHgVTT6pRCdYUN6ZC+rmx5SHQ+9tT/I1WW16QF1TyrF057OyZru3qRQs8lkrLzsA
	h4EoTrqtzf7YZsKEytxP/NoHro2IB7MXo9urVnEkql43KhcBQrrJpfcJ7V5tELurxV56iyYA8sIg6
	7m9tp1RIjwDwDtnDDMFqZNtaT2yCbXxI77juwwV090I0Z4CdDeVohv9rj/Ee+dAOnwhaS5dK5lIWD
	ki709g88zu54d+3O4Bx3A35dvN6NEwdCnbw8K3NS4cMiefSurNV5t5f3zZrVRY35OFPi58Bx7iIhu
	0TGZnxtKXi8UTCGmEPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbLl-00000008jPX-30Nv;
	Fri, 21 Jun 2024 10:18:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbLh-00000008jNU-0jsL;
	Fri, 21 Jun 2024 10:18:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8150A624FF;
	Fri, 21 Jun 2024 10:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4848C4AF12;
	Fri, 21 Jun 2024 10:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718965107;
	bh=U1hz+8/bzdauintFQu1B2mPpB7R33BaC4FjDhvSa8R8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=AN4S2eu+2StK8dntclq6UzVlpDLAtIOCFvnr1RahBqyXLmC2oLqjkYJR456Ms+40R
	 hKf49obq+VfQyyGDiFPJaNQKXjHTMd4eN7RmAR61ZmQhI5cBjA/FRNba68ucSrY3yb
	 aCW+yht4NYfHN8sRxRhggSGoxgvHOoijcDFiM2MmjCXua1hOm1ga7PWMgXJWKnm4pe
	 /8j1uoPfogZRlPIpXkl2jMKZvbHsLtG47/0y9tbngsb2Scy6jGuxJq89FS8o6L4FwG
	 XXSGFPQsedLRozheV3qz5odtHkmUg+uZYkaftLv2QfZ5cEK8AMvZ3xVvIjknpgpfAS
	 JFR2P5xf0Szwg==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ec17eb4493so25839241fa.2;
        Fri, 21 Jun 2024 03:18:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU2QJRjNaQ3wxvirqQz52SdpXltLTeiWODXfI8j29AS9y4YiSMxclMXwA25CZBdd/0iXjICSLkeAt1gSPJk9SZt+kKa2WKv8LuotyYZ58v4JUP/lzZkryzy+1SSN7xWz9K3i3UnmEIZD+G/epUDLhs+KRcbTLdsZV0=
X-Gm-Message-State: AOJu0YyygeMbUHb9Vi93cHESCqXWSoMgTqiVow/UtaL3jwDno1OuhK1v
	dVRqIE8iUweMrPXDxzKG6YERXMutqGzRAkejoO+kS9gFXkqLQkyMZfewOuYmmMA8jRFyP0zyfir
	VbgqmaG0NDEpo1t7MtNtNmsX1Dq8=
X-Google-Smtp-Source: AGHT+IHO98/2KxxNQSI6Iov2uFjwnOJvJY9CeBR3g6jopu9QSIJvgzBeO6l1TKdjqUov1zSWO5URR/C24lztI0UaSCk=
X-Received: by 2002:a05:651c:1311:b0:2ec:4a91:c38b with SMTP id
 38308e7fff4ca-2ec4a91d4b4mr22199161fa.5.1718965106029; Fri, 21 Jun 2024
 03:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1718921174.git.daniel@makrotopia.org> <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
 <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
In-Reply-To: <f8e6b1b9-f8ff-42df-b1ef-bcc439c2e913@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 21 Jun 2024 18:18:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v66VHXvBGH9X9nj1=fSnCgP035HEMU-L2NShg08rE5Qnug@mail.gmail.com>
Message-ID: <CAGb2v66VHXvBGH9X9nj1=fSnCgP035HEMU-L2NShg08rE5Qnug@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
To: Daniel Golle <daniel@makrotopia.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Anand Moon <linux.amoon@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_031829_812758_6D9148F1 
X-CRM114-Status: GOOD (  25.32  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gMjEsIDIwMjQgYXQgNTo1OOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMS8wNi8yMDI0IDAzOjI1LCBEYW5pZWwgR29s
bGUgd3JvdGU6Cj4gPiBGcm9tOiBBdXJlbGllbiBKYXJubyA8YXVyZWxpZW5AYXVyZWwzMi5uZXQ+
Cj4gPgo+Cj4gPiArCj4gPiArc3RhdGljIGludCBya19ybmdfaW5pdChzdHJ1Y3QgaHdybmcgKnJu
ZykKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3Qgcmtfcm5nICpya19ybmcgPSBjb250YWluZXJfb2Yo
cm5nLCBzdHJ1Y3Qgcmtfcm5nLCBybmcpOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsKPiA+ICsg
ICAgIC8qIHN0YXJ0IGNsb2NrcyAqLwo+ID4gKyAgICAgcmV0ID0gY2xrX2J1bGtfcHJlcGFyZV9l
bmFibGUocmtfcm5nLT5jbGtfbnVtLCBya19ybmctPmNsa19idWxrcyk7Cj4gPiArICAgICBpZiAo
cmV0IDwgMCkgewo+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKChzdHJ1Y3QgZGV2aWNlICopIHJr
X3JuZy0+cm5nLnByaXYsCj4gPiArICAgICAgICAgICAgICAgICAgICAgIkZhaWxlZCB0byBlbmFi
bGUgY2xrcyAlZFxuIiwgcmV0KTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsg
ICAgIH0KPiA+ICsKPiA+ICsgICAgIC8qIHNldCB0aGUgc2FtcGxlIHBlcmlvZCAqLwo+ID4gKyAg
ICAgd3JpdGVsKFJLX1JOR19TQU1QTEVfQ05ULCBya19ybmctPmJhc2UgKyBUUk5HX1JOR19TQU1Q
TEVfQ05UKTsKPiA+ICsKPiA+ICsgICAgIC8qIHNldCBvc2MgcmluZyBzcGVlZCBhbmQgZW5hYmxl
IGl0ICovCj4gPiArICAgICB3cml0ZWxfcmVsYXhlZChUUk5HX1JOR19DVExfTEVOXzI1Nl9CSVQg
fAo+ID4gKyAgICAgICAgICAgICAgICAgICAgVFJOR19STkdfQ1RMX09TQ19SSU5HX1NQRUVEXzAg
fAo+ID4gKyAgICAgICAgICAgICAgICAgICAgVFJOR19STkdfQ1RMX0VOQUJMRSwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgIHJrX3JuZy0+YmFzZSArIFRSTkdfUk5HX0NUTCk7Cj4KPiBJIGRvdWJ0
IHJlbGF4ZWQgd3JpdGUgaXMgaGVyZSBpbnRlbnRpb25hbC4gRW5hYmxpbmcgc2hvdWxkIGJlIGxh
c3QKPiBpbnN0cnVjdGlvbiwgc28gdGhpcyBzaG91bGQgYmUgb3JkZXJlZCB3cml0ZS4KCkkgYWdy
ZWUgdGhhdCB0aGUgZHJpdmVyIHNob3VsZCBqdXN0IGRvIGFsbCBub24tcmVsYXhlZCB3cml0ZXMg
Zm9yIHNpbXBsaWNpdHkuClRoZSBwZW5hbHR5IGlzbid0IHRoYXQgc2V2ZXJlIHNpbmNlIGNvbW1p
dCAyMmVjNzE2MTVkODIgKCJhcm02NDogaW86IFJlbGF4CmltcGxpY2l0IGJhcnJpZXJzIGluIGRl
ZmF1bHQgSS9PIGFjY2Vzc29ycyIpLgoKSnVzdCB0byBjbGFyaWZ5LCB3cml0ZXMgdG8gZGV2aWNl
cyBhcmUgYWx3YXlzIG9yZGVyZWQuIFRoZSBub24tcmVsYXhlZAp3cml0ZXMgYXJlIG9yZGVyZWQg
dG8gX21lbW9yeSB3cml0ZXNfLCB3aGljaCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIgZm9yCnRoaXMg
ZHJpdmVyLgoKQ2hlbll1CgoKPiA+ICsKPiA+ICsgICAgIHJldHVybiAwOwo+ID4gK30KPiA+ICsK
PiA+ICtzdGF0aWMgdm9pZCBya19ybmdfY2xlYW51cChzdHJ1Y3QgaHdybmcgKnJuZykKPiA+ICt7
Cj4gPiArICAgICBzdHJ1Y3Qgcmtfcm5nICpya19ybmcgPSBjb250YWluZXJfb2Yocm5nLCBzdHJ1
Y3Qgcmtfcm5nLCBybmcpOwo+ID4gKwo+ID4gKyAgICAgLyogc3RvcCBUUk5HICovCj4gPiArICAg
ICB3cml0ZWxfcmVsYXhlZCgwLCBya19ybmctPmJhc2UgKyBUUk5HX1JOR19DVEwpOwo+Cj4gVGhp
cyBzaG91bGQgbm90IGJlIHJlbGF4ZWQuIFRoaXMgbWlnaHQgbGVhZCB0byB2ZXJ5IHRyaWNreSB0
byBkZWJ1ZyBpc3N1ZXMuCj4KPiA+ICsKPiA+ICsgICAgIC8qIHN0b3AgY2xvY2tzICovCj4gPiAr
ICAgICBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShya19ybmctPmNsa19udW0sIHJrX3JuZy0+
Y2xrX2J1bGtzKTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIGludCBya19ybmdfcmVhZChzdHJ1
Y3QgaHdybmcgKnJuZywgdm9pZCAqYnVmLCBzaXplX3QgbWF4LCBib29sIHdhaXQpCj4gPiArewo+
ID4gKyAgICAgc3RydWN0IHJrX3JuZyAqcmtfcm5nID0gY29udGFpbmVyX29mKHJuZywgc3RydWN0
IHJrX3JuZywgcm5nKTsKPiA+ICsgICAgIHNpemVfdCB0b19yZWFkID0gbWluX3Qoc2l6ZV90LCBt
YXgsIFJLX1JOR19NQVhfQllURSk7Cj4gPiArICAgICB1MzIgcmVnOwo+ID4gKyAgICAgaW50IHJl
dCA9IDA7Cj4gPiArCj4gPiArICAgICByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKChzdHJ1Y3Qg
ZGV2aWNlICopIHJrX3JuZy0+cm5nLnByaXYpOwo+Cj4gV2h5IHRoaXMgY2Fubm90IGJlIGp1c3Qg
c2ltcGxlciBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCk/Cj4KPiA+ICsgICAgIGlmIChyZXQg
PCAwKQo+ID4gKyAgICAgICAgICAgICBnb3RvIG91dDsKPgo+IFRoaXMgZG9lcyBub3QgbG9vayBs
aWtlIGNvcnJlY3QgZXJyb3IgcGF0aC4gRGV2aWNlIHdhcyBub3QgYnVzeSBoZXJlLgo+Cj4gPiAr
Cj4gPiArICAgICAvKiBTdGFydCBjb2xsZWN0aW5nIHJhbmRvbSBkYXRhICovCj4gPiArICAgICB3
cml0ZWxfcmVsYXhlZChUUk5HX1JOR19DVExfU1RBUlQsIHJrX3JuZy0+YmFzZSArIFRSTkdfUk5H
X0NUTCk7Cj4gPiArCj4gPiArICAgICByZXQgPSByZWFkbF9wb2xsX3RpbWVvdXQocmtfcm5nLT5i
YXNlICsgVFJOR19STkdfQ1RMLCByZWcsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIShyZWcgJiBUUk5HX1JOR19DVExfU1RBUlQpLAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFJLX1JOR19QT0xMX1BFUklPRF9VUywKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSS19STkdfUE9MTF9USU1FT1VUX1VTKTsKPiA+ICsgICAgIGlmIChyZXQgPCAw
KQo+ID4gKyAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICsKPiA+ICsgICAgIC8qIFJlYWQgcmFu
ZG9tIGRhdGEgc3RvcmVkIGluIHRoZSByZWdpc3RlcnMgKi8KPiA+ICsgICAgIG1lbWNweV9mcm9t
aW8oYnVmLCBya19ybmctPmJhc2UgKyBUUk5HX1JOR19ET1VULCB0b19yZWFkKTsKPiA+ICtvdXQ6
Cj4gPiArICAgICBwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5KChzdHJ1Y3QgZGV2aWNlICopIHJr
X3JuZy0+cm5nLnByaXYpOwo+ID4gKyAgICAgcG1fcnVudGltZV9wdXRfc3luY19hdXRvc3VzcGVu
ZCgoc3RydWN0IGRldmljZSAqKSBya19ybmctPnJuZy5wcml2KTsKPiA+ICsKPiA+ICsgICAgIHJl
dHVybiB0b19yZWFkOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgaW50IHJrX3JuZ19wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkZXZp
Y2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiArICAgICBzdHJ1Y3Qgcmtfcm5nICpya19ybmc7Cj4g
PiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgcmtfcm5nID0gZGV2bV9remFsbG9jKGRl
diwgc2l6ZW9mKCpya19ybmcpLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgIGlmICghcmtfcm5nKQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ICsKPiA+ICsgICAgIHJrX3JuZy0+
YmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiA+ICsgICAg
IGlmIChJU19FUlIocmtfcm5nLT5iYXNlKSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIFBUUl9F
UlIocmtfcm5nLT5iYXNlKTsKPiA+ICsKPiA+ICsgICAgIHJrX3JuZy0+Y2xrX251bSA9IGRldm1f
Y2xrX2J1bGtfZ2V0X2FsbChkZXYsICZya19ybmctPmNsa19idWxrcyk7Cj4gPiArICAgICBpZiAo
cmtfcm5nLT5jbGtfbnVtIDwgMCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJv
YmUoZGV2LCBya19ybmctPmNsa19udW0sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJGYWlsZWQgdG8gZ2V0IGNsa3MgcHJvcGVydHlcbiIpOwo+ID4gKwo+ID4gKyAgICAg
cmtfcm5nLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0KCZwZGV2LT5kZXYsIGZh
bHNlLCBmYWxzZSk7Cj4gPiArICAgICBpZiAoSVNfRVJSKHJrX3JuZy0+cnN0KSkKPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHJrX3JuZy0+cnN0KSwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkZhaWxlZCB0byBnZXQgcmVz
ZXQgcHJvcGVydHlcbiIpOwo+ID4gKwo+ID4gKyAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQocmtf
cm5nLT5yc3QpOwo+ID4gKyAgICAgdWRlbGF5KDIpOwo+ID4gKyAgICAgcmVzZXRfY29udHJvbF9k
ZWFzc2VydChya19ybmctPnJzdCk7Cj4gPiArCj4gPiArICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0
YShwZGV2LCBya19ybmcpOwo+ID4gKwo+ID4gKyAgICAgcmtfcm5nLT5ybmcubmFtZSA9IGRldl9k
cml2ZXJfc3RyaW5nKGRldik7Cj4gPiArI2lmbmRlZiBDT05GSUdfUE0KPiA+ICsgICAgIHJrX3Ju
Zy0+cm5nLmluaXQgPSBya19ybmdfaW5pdDsKPiA+ICsgICAgIHJrX3JuZy0+cm5nLmNsZWFudXAg
PSBya19ybmdfY2xlYW51cDsKPiA+ICsjZW5kaWYKPiA+ICsgICAgIHJrX3JuZy0+cm5nLnJlYWQg
PSBya19ybmdfcmVhZDsKPiA+ICsgICAgIHJrX3JuZy0+cm5nLnByaXYgPSAodW5zaWduZWQgbG9u
ZykgZGV2Owo+ID4gKyAgICAgcmtfcm5nLT5ybmcucXVhbGl0eSA9IDkwMDsKPiA+ICsKPiA+ICsg
ICAgIHBtX3J1bnRpbWVfc2V0X2F1dG9zdXNwZW5kX2RlbGF5KGRldiwgUktfUk5HX0FVVE9TVVNQ
RU5EX0RFTEFZKTsKPiA+ICsgICAgIHBtX3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGRldik7Cj4g
PiArICAgICBwbV9ydW50aW1lX2VuYWJsZShkZXYpOwo+ID4gKwo+ID4gKyAgICAgcmV0ID0gZGV2
bV9od3JuZ19yZWdpc3RlcihkZXYsICZya19ybmctPnJuZyk7Cj4gPiArICAgICBpZiAocmV0KQo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJG
YWlsZWQgdG8gcmVnaXN0ZXIgUm9ja2NoaXAgaHdybmdcbiIpOwo+ID4gKwo+ID4gKyAgICAgZGV2
X2luZm8oJnBkZXYtPmRldiwgIlJlZ2lzdGVyZWQgUm9ja2NoaXAgaHdybmdcbiIpOwo+Cj4gRHJv
cCwgZHJpdmVyIHNob3VsZCBiZSBzaWxlbnQgb24gc3VjY2Vzcy4KPgo+Cj4gQmVzdCByZWdhcmRz
LAo+IEtyenlzenRvZgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
